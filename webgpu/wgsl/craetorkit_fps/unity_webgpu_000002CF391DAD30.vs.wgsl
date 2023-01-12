struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  unity_GUIClipTextureMatrix : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec2<f32>;
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
  vs_COLOR0 = x_82;
  let x_84 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = x_17.unity_MatrixV[1i];
  let x_89 : vec2<f32> = (vec2<f32>(x_84.y, x_84.y) * vec2<f32>(x_87.x, x_87.y));
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_89.x, x_89.y, x_90.z, x_90.w);
  let x_93 : vec4<f32> = x_17.unity_MatrixV[0i];
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = u_xlat1;
  let x_100 : vec2<f32> = ((vec2<f32>(x_93.x, x_93.y) * vec2<f32>(x_95.x, x_95.x)) + vec2<f32>(x_98.x, x_98.y));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_104 : vec4<f32> = x_17.unity_MatrixV[2i];
  let x_106 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec2<f32> = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(x_106.z, x_106.z)) + vec2<f32>(x_109.x, x_109.y));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_115 : vec4<f32> = x_17.unity_MatrixV[3i];
  let x_117 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(x_117.w, x_117.w)) + vec2<f32>(x_120.x, x_120.y));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = x_17.unity_GUIClipTextureMatrix[1i];
  u_xlat2 = (vec2<f32>(x_127.y, x_127.y) * vec2<f32>(x_131.x, x_131.y));
  let x_135 : vec4<f32> = x_17.unity_GUIClipTextureMatrix[0i];
  let x_137 : vec4<f32> = u_xlat0;
  let x_140 : vec2<f32> = u_xlat2;
  let x_141 : vec2<f32> = ((vec2<f32>(x_135.x, x_135.y) * vec2<f32>(x_137.x, x_137.x)) + x_140);
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = x_17.unity_GUIClipTextureMatrix[3i];
  vs_TEXCOORD1 = (vec2<f32>(x_146.x, x_146.y) + vec2<f32>(x_149.x, x_149.y));
  let x_155 : vec2<f32> = in_TEXCOORD0;
  let x_157 : vec4<f32> = x_17.x_MainTex_ST;
  let x_161 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_155 * vec2<f32>(x_157.x, x_157.y)) + vec2<f32>(x_161.z, x_161.w));
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

