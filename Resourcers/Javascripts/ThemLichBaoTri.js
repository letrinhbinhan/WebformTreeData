// JScript File

'use strict';

const e = React.createElement;

class ThemLichBaoTri extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
        tenthietbi: "",
        phongban: "",
        ngaybatdau: "",
        ngayketthuc: "",
        loaihinh: "",
        ghichu: ""
     };
     this.handleChange = this.handleChange.bind(this);
  }

    handleChange() {
        console.log(this.state.tenthietbi);
        console.log(this.state.phongban);
        console.log(this.state.ngaybatdau);
        console.log(this.state.ngayketthuc);
        console.log(this.state.loaihinh);
        console.log(this.state.ghichu);
    }
  render() {
    if (this.state.liked) {
      return 'You liked this.';
    }
    return (
        <div>
            <h1>Thêm lịch bảo trì</h1>
            <div>
                <label>Thiết bị:</label>
                <input type="text" id="txttenthietbi" name="message" placeholder="tên thiết bị" onChange={event => this.setState({tenthietbi: event.target.value})}/>
            </div>
            <div>
                <label>Phòng ban:</label>
                <input id="txtphongban" name="message" type="text" placeholder="phòng ban" onChange={event => this.setState({phongban: event.target.value})}/>
            </div>
            <div>
                <label>Ngày bắt đầu:</label>
                <input id="txtngaybatdau" name="message" type="date" onChange={event => this.setState({ngaybatdau: event.target.value})}/>
            </div>
            <div>
                <label>Ngày kết thúc:</label>
                <input id="txtngayketthuc" name="message" type="date" onChange={event => this.setState({ngayketthuc: event.target.value})}/>
            </div>
            <div>
                <label>Loại hình:</label>
                <input id="txtloaihinh" name="message" type="text" onChange={event => this.setState({loaihinh: event.target.value})}/>
            </div>
            <div>
                <label>Ghi chú:</label>
                <input id="txtghichu" name="message" type="text" placeholder="ghi chú" onChange={event => this.setState({ghichu: event.target.value})}/>
            </div>
            <div>
                <div id="btnsubmit" onClick={this.handleChange}>Thêm</div>
            </div>
            
            <div>
                <p>{this.state.tenthietbi}</p>
                <p>{this.state.phongban}</p>
                <p>{this.state.ngaybatdau}</p>
                <p>{this.state.ngayketthuc}</p>
                <p>{this.state.loaihinh}</p>
                <p>{this.state.ghichu}</p>
            </div>
        </div>
    );
  }
}
const domContainer = document.querySelector('#themlichbaotri');
ReactDOM.render(e(ThemLichBaoTri), domContainer);