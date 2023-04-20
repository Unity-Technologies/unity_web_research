diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ChunkCount : i32,
}

alias Arr = array<u32, 1u>;

struct x_DebugFragmentation_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<x_DebugFragmentation_type>;

struct x_DebugFragmentation {
  /* @offset(0) */
  x_DebugFragmentation_buf : RTArr,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlati0 : vec3<i32>;

var<private> u_xlati1 : i32;

@group(0) @binding(0) var<storage, read> x_63 : x_DebugFragmentation;

var<private> u_xlatb0 : bool;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : i32 = x_13.x_ChunkCount;
  u_xlat0.x = f32(x_17);
  let x_24 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_24);
  let x_28 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_28);
  let x_32 : vec3<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = (vec2<f32>(x_32.x, x_32.x) * x_36);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_38.x, x_37.x, x_37.y);
  let x_43 : vec3<f32> = u_xlat0;
  u_xlati0 = vec3<i32>(x_43);
  let x_48 : i32 = u_xlati0.z;
  let x_50 : i32 = u_xlati0.x;
  let x_54 : i32 = u_xlati0.y;
  u_xlati0.x = ((x_48 * x_50) + x_54);
  let x_65 : i32 = u_xlati0.x;
  let x_68 : u32 = x_63.x_DebugFragmentation_buf[x_65].value[0i];
  u_xlati1 = bitcast<i32>(x_68);
  let x_74 : i32 = u_xlati0.x;
  let x_76 : i32 = x_13.x_ChunkCount;
  u_xlatb0 = (x_74 < x_76);
  let x_79 : i32 = u_xlati1;
  u_xlatb1 = (x_79 != -1i);
  let x_82 : bool = u_xlatb1;
  let x_83 : bool = u_xlatb0;
  u_xlatb0 = (x_82 & x_83);
  let x_88 : bool = u_xlatb0;
  SV_Target0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f), vec4<bool>(x_88, x_88, x_88, x_88));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


