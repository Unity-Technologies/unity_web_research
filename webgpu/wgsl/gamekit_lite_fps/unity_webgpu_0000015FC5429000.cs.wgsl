type Arr = array<u32, 1u>;

struct x_HistogramBuffer_origX0X_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_origX0X_type>;

struct x_HistogramBuffer_origX0X {
  x_HistogramBuffer_origX0X_buf : RTArr,
}

var<private> u_xlatb0 : bool;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var<storage, read_write> x_28 : x_HistogramBuffer_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : u32 = gl_GlobalInvocationID.x;
  u_xlatb0 = (x_16 < 128u);
  let x_19 : bool = u_xlatb0;
  if (x_19) {
    let x_32 : u32 = gl_GlobalInvocationID.x;
    x_28.x_HistogramBuffer_origX0X_buf[x_32].value[0i] = 0u;
  }
  return;
}

@compute @workgroup_size(16i, 1i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

