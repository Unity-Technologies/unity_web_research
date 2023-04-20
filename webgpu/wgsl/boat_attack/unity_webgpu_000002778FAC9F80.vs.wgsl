diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(128) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(192) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(208) */
  x_Color : vec4<f32>,
  /* @offset(224) */
  unity_GUIClipTextureMatrix : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  let x_82 : vec4<f32> = in_COLOR0;
  let x_85 : vec4<f32> = x_17.x_Color;
  vs_COLOR0 = (x_82 * x_85);
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = x_17.unity_MatrixV[1i];
  let x_93 : vec2<f32> = (vec2<f32>(x_88.y, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_97 : vec4<f32> = x_17.unity_MatrixV[0i];
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_99.x, x_99.x)) + vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = x_17.unity_MatrixV[2i];
  let x_110 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_110.z, x_110.z)) + vec2<f32>(x_113.x, x_113.y));
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_119 : vec4<f32> = x_17.unity_MatrixV[3i];
  let x_121 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat0;
  let x_126 : vec2<f32> = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(x_121.w, x_121.w)) + vec2<f32>(x_124.x, x_124.y));
  let x_127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_131 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = x_17.unity_GUIClipTextureMatrix[1i];
  u_xlat2 = (vec2<f32>(x_131.y, x_131.y) * vec2<f32>(x_135.x, x_135.y));
  let x_139 : vec4<f32> = x_17.unity_GUIClipTextureMatrix[0i];
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec2<f32> = u_xlat2;
  let x_145 : vec2<f32> = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_141.x, x_141.x)) + x_144);
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = x_17.unity_GUIClipTextureMatrix[3i];
  vs_TEXCOORD1 = (vec2<f32>(x_150.x, x_150.y) + vec2<f32>(x_153.x, x_153.y));
  let x_159 : vec2<f32> = in_TEXCOORD0;
  let x_161 : vec4<f32> = x_17.x_MainTex_ST;
  let x_165 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_159 * vec2<f32>(x_161.x, x_161.y)) + vec2<f32>(x_165.z, x_165.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0);
}


