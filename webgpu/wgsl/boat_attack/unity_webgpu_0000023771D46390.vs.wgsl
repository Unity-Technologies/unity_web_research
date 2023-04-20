diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(128) */
  x_TerrainNormalmapGenSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
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
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_73 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat1;
  gl_Position = ((x_72 * vec4<f32>(x_73.w, x_73.w, x_73.w, x_73.w)) + x_76);
  let x_86 : f32 = in_TEXCOORD0.x;
  u_xlat0.z = x_86;
  let x_90 : vec2<f32> = in_TEXCOORD0;
  let x_93 : vec4<f32> = x_17.x_TerrainNormalmapGenSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.y, x_90.x) + vec2<f32>(x_93.y, x_93.x));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_99 : f32 = u_xlat1.x;
  u_xlat0.w = x_99;
  let x_102 : vec2<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_17.x_TerrainNormalmapGenSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_102.y, x_102.x) + -(vec2<f32>(x_105.y, x_105.x)));
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_112 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec4<f32>(x_112.z, x_112.x, x_112.z, x_112.w);
  let x_115 : f32 = in_TEXCOORD0.y;
  u_xlat1.w = x_115;
  let x_118 : f32 = u_xlat0.y;
  u_xlat1.z = x_118;
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec3<f32> = vec3<f32>(x_122.y, x_122.x, x_122.x);
  let x_124 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_123.z);
  let x_127 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec4<f32>(x_127.z, x_127.w, x_127.y, x_127.w);
  let x_130 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_130.z, x_130.x, x_130.y, x_130.x);
  let x_133 : f32 = u_xlat1.y;
  vs_TEXCOORD2.z = x_133;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD1, vs_TEXCOORD3);
}


