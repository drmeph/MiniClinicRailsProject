SELECT * FROM thinkresearch.Patient WHERE lastname LIKE "%mit%";

'6','Sandy','Aria','Mits','55','145','THC124'

SELECT distinct p.* FROM thinkresearch.Patient as p JOIN thinkresearch.Encounter as e ON p.patientId = e.patientId WHERE e.dischargedAt IS NOT NULL group by patientId;

'5','James','John','John','85','180','THC123'
'6','Sandy','Aria','Mits','55','145','THC124'
'7','Bently','Frank','Lee','90','178','THC125'

SELECT distinct p.* FROM thinkresearch.Patient as p JOIN thinkresearch.Encounter as e ON p.patientId = e.patientId WHERE e.admittedAt > '2014-07-05' AND e.admittedAt < '2014-08-19' group by patientId;

'6','Sandy','Aria','Mits','55','145','THC124'
'7','Bently','Frank','Lee','90','178','THC125'
