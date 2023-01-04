struct Params {
  x_Params : vec4<f32>,
}

type Arr = array<u32, 1u>;

struct x_VectorscopeBuffer_origX0X_type {
  value : Arr,
}

type RTArr = array<x_VectorscopeBuffer_origX0X_type>;

struct x_VectorscopeBuffer_origX0X {
  x_VectorscopeBuffer_origX0X_buf : RTArr,
}

var<private> u_xlatu0 : u32;

@group(0) @binding(0) var<uniform> x_13 : Params;

var<private> u_xlatb0 : vec2<bool>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(1) var<storage, read_write> x_74 : x_VectorscopeBuffer_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = x_13.x_Params.z;
  u_xlatu0 = u32(x_19);
  let x_29 : vec3<u32> = gl_GlobalInvocationID;
  let x_31 : u32 = u_xlatu0;
  let x_34 : vec4<bool> = (vec4<u32>(x_29.x, x_29.y, x_29.x, x_29.x) < vec4<u32>(x_31, x_31, x_31, x_31));
  u_xlatb0 = vec2<bool>(x_34.x, x_34.y);
  let x_39 : bool = u_xlatb0.y;
  let x_42 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_39 & x_42);
  let x_46 : bool = u_xlatb0.x;
  if (x_46) {
    let x_53 : vec3<u32> = gl_GlobalInvocationID;
    u_xlat0 = vec2<f32>(vec2<u32>(x_53.y, x_53.x));
    let x_58 : f32 = u_xlat0.x;
    let x_60 : f32 = x_13.x_Params.z;
    let x_63 : f32 = u_xlat0.y;
    u_xlat0.x = ((x_58 * x_60) + x_63);
    let x_67 : f32 = u_xlat0.x;
    u_xlatu0 = u32(x_67);
    let x_75 : u32 = u_xlatu0;
    x_74.x_VectorscopeBuffer_origX0X_buf[x_75].value[0i] = 0u;
  }
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

