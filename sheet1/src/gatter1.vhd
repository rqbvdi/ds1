entity gatter1 is
port(
    A : in bit;
    B : in bit;
    Y : out bit);
end gatter1;
architecture beh of gatter1 is
begin
    Y <= (not A OR not B) AND (A OR B) after 1 ns;
end beh;
