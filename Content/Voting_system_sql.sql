create table users (id nvarchar(15) Primary Key,firstname nvarchar(20), lastname nvarchar(20), mobile nvarchar(11), email nvarchar(30), stateuser nvarchar(30), birthdate date, cgpa decimal(4,2), hostel nvarchar(10), course nvarchar(10), yearuser int, section nvarchar(1), gender nvarchar(1));
select * from users;
delete from users where id='sdfsdfs';
alter table users add passworduser nvarchar(30);

create table elections (id int identity(1000,1), title nvarchar(30), starttime datetime, endtime datetime, descriptionelection nvarchar(100));
select * from elections;
insert into elections values ('Gymkhana','2016-5-7','2016-5-9','ertert');
alter table elections add bme int;
delete from elections
drop table elections;
update elections set bme = 1 where id=1007

create table candidates (cid nvarchar(15), eid int, ename nvarchar(30));
select * from candidates;
alter table candidates add ename nvarchar(30);
delete from candidates where eid=1008;

create table selected_candidates( cid nvarchar(15), eid int, ename nvarchar(30));
select * from selected_candidates;
alter table selected_candidates add ename nvarchar(30);
delete from selected_candidates;

create table votes (eid int not null,title nvarchar(30) not null, candidate nvarchar(15), voter nvarchar(15));
select * from votes;
delete from votes;
insert into votes values (1003,'Gymkhana','ii2014503','iit2014001')
drop table votes;

select candidate, COUNT(voter) as no_of_voters from votes where eid=1001 group by candidate order by no_of_voters DESC;

select votes.candidate, COUNT(votes.voter) as IT_votes from votes join users on votes.voter = users.id where users.branch = 'IT' group by candidate
union
select votes.candidate, COUNT(votes.voter) as ECE_votes from votes join users on votes.voter = users.id where users.branch = 'ECE' group by candidate;

select v1.candidate, COUNT(v1.voter) as IT_votes, COUNT(v2.voter) as ECE_votes from
votes as v1 join users u1 join votes as v2 join users as u2
where v1.voter = u1.id and u1.branch = 'IT'
and v2.voter = u2.id and u2.branch = 'ECE'
and v1.voter = v2.voter
group by v1.candidate;

SELECT * 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'candidates'


    ALTER TABLE votes
    ALTER COLUMN voter nvarchar(15) NOT NULL
    ALTER TABLE votes ADD PRIMARY KEY (eid,candidate,voter)

    ALTER TABLE history
    DROP CONSTRAINT userId
    DROP CONSTRAINT name
    GO
    
    select votes.candidate, (select COUNT(votes.voter) as IT_votes from votes join users on votes.voter = users.id where users.branch = 'IT' group by candidate), (select COUNT(votes.voter) as ECE_votes from votes join users on votes.voter = users.id where users.branch = 'ECE' group by candidate)
    from votes
    left join votes on ();
    
    select DISTINCT vn.candidate, sq1.IT_votes,sq2.ECE_votes,sq3.BME_votes
    from votes as vn
    left outer join
    (select v.candidate,COUNT(v.voter) as IT_votes from votes as v
      join users on v.voter = users.id where users.branch = 'IT' 
      group by v.candidate)
      as sq1 on sq1.candidate = vn.candidate
     left outer join
     (select v.candidate,COUNT(v.voter) as ECE_votes from votes as v
      join users on v.voter = users.id where users.branch = 'ECE' 
      group by v.candidate)
      as sq2 on sq2.candidate = vn.candidate
       left outer join
     (select v.candidate,COUNT(v.voter) as BME_votes from votes as v
      join users on v.voter = users.id where users.branch = 'BME' 
      group by v.candidate)
      as sq3 on sq3.candidate = vn.candidate 
      where vn.eid = @eid;
      
      
      
    select DISTINCT vn.candidate, sq1.state_votes
    from votes as vn
    left outer join
    (select v.candidate,users.stateuser as state_votes from votes as v
      join users on v.voter = users.id where users.branch = 'IT' 
      group by v.candidate)
      as sq1 on sq1.candidate = vn.candidate;
      
      
      select candidate, COUNT(voter) as no_of_voters from votes 
      group by candidate order by no_of_voters DESC;
      
      select candidate , stateuser from votes,users
      
      
      select stateuser , (COUNT(stateuser)) from users
      group by stateuser;