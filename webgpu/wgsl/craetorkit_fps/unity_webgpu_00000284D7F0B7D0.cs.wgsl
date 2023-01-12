struct Params {
  x_Params : vec4<f32>,
}

type Arr = array<u32, 4u>;

struct x_WaveformBuffer_origX0X_type {
  value : Arr,
}

type RTArr = array<x_WaveformBuffer_origX0X_type>;

struct x_WaveformBuffer_origX0X {
  x_WaveformBuffer_origX0X_buf : RTArr,
}

@group(1) @binding(0) var<uniform> x_14 : Params;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var<storage, read_write> x_72 : x_WaveformBuffer_origX0X;

fn main_1() {
  var u_xlatu0 : vec2<u32>;
  var u_xlatb1 : vec2<bool>;
  var u_xlati0 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec4<f32> = x_14.x_Params;
  u_xlatu0 = vec2<u32>(vec2<f32>(x_20.x, x_20.y));
  let x_31 : vec3<u32> = gl_GlobalInvocationID;
  let x_33 : vec2<u32> = u_xlatu0;
  let x_36 : vec4<bool> = (vec4<u32>(x_31.x, x_31.y, x_31.x, x_31.x) < vec4<u32>(x_33.x, x_33.y, x_33.x, x_33.x));
  u_xlatb1 = vec2<bool>(x_36.x, x_36.y);
  let x_41 : bool = u_xlatb1.y;
  let x_44 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_41 & x_44);
  let x_48 : bool = u_xlatb1.x;
  if (x_48) {
    let x_55 : u32 = gl_GlobalInvocationID.y;
    let x_59 : u32 = u_xlatu0.x;
    let x_63 : u32 = gl_GlobalInvocationID.x;
    u_xlati0 = ((bitcast<i32>(x_55) * bitcast<i32>(x_59)) + bitcast<i32>(x_63));
    let x_73 : i32 = u_xlati0;
    x_72.x_WaveformBuffer_origX0X_buf[x_73].value[0i] = 0u;
    let x_76 : i32 = u_xlati0;
    x_72.x_WaveformBuffer_origX0X_buf[x_76].value[1i] = 0u;
    let x_79 : i32 = u_xlati0;
    x_72.x_WaveformBuffer_origX0X_buf[x_79].value[2i] = 0u;
    let x_82 : i32 = u_xlati0;
    x_72.x_WaveformBuffer_origX0X_buf[x_82].value[3i] = 0u;
  }
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

