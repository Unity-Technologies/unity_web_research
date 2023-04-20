diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(144) */
  unity_FogParams : vec4<f32>,
  /* @offset(160) */
  x_HaloFalloff_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat0;
  gl_Position = x_78;
  let x_84 : f32 = u_xlat0.z;
  let x_87 : f32 = x_17.x_ProjectionParams.y;
  u_xlat0.x = (x_84 / x_87);
  let x_92 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_92) + 1.0f);
  let x_98 : f32 = u_xlat0.x;
  let x_100 : f32 = x_17.x_ProjectionParams.z;
  u_xlat0.x = (x_98 * x_100);
  let x_104 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_104, 0.0f);
  let x_109 : f32 = u_xlat0.x;
  let x_111 : f32 = x_17.unity_FogParams.x;
  u_xlat0.x = (x_109 * x_111);
  let x_115 : f32 = u_xlat0.x;
  let x_117 : f32 = u_xlat0.x;
  u_xlat0.x = (x_115 * -(x_117));
  let x_124 : f32 = u_xlat0.x;
  vs_TEXCOORD1 = exp2(x_124);
  let x_128 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_128;
  let x_134 : vec2<f32> = in_TEXCOORD0;
  let x_137 : vec4<f32> = x_17.x_HaloFalloff_ST;
  let x_141 : vec4<f32> = x_17.x_HaloFalloff_ST;
  vs_TEXCOORD0 = ((x_134 * vec2<f32>(x_137.x, x_137.y)) + vec2<f32>(x_141.z, x_141.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : f32,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD0);
}


