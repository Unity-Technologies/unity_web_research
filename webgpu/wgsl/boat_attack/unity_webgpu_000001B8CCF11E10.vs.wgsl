struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FaceColor : vec4<f32>,
  x_FaceDilate : f32,
  @size(12)
  padding : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  x_GradientScale : f32,
  x_Sharpness : f32,
  unity_GUIClipTextureMatrix : mat4x4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_COLOR1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec2<f32>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : f32 = x_18.x_VertexOffsetX;
  let x_26 : f32 = x_18.x_VertexOffsetY;
  let x_28 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_23, x_26));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_29.z, x_29.w);
  let x_32 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_32.y, x_32.y, x_32.y, x_32.y) * x_38);
  let x_41 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_41 * vec4<f32>(x_42.x, x_42.x, x_42.x, x_42.x)) + x_45);
  let x_49 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_49 * vec4<f32>(x_50.z, x_50.z, x_50.z, x_50.z)) + x_53);
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_55 + x_58);
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_63);
  let x_66 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_86 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = u_xlat1;
  gl_Position = ((x_86 * vec4<f32>(x_87.w, x_87.w, x_87.w, x_87.w)) + x_90);
  let x_95 : vec4<f32> = in_COLOR0;
  let x_97 : vec4<f32> = x_18.x_FaceColor;
  u_xlat0 = (x_95 * x_97);
  let x_101 : vec4<f32> = u_xlat0;
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec3<f32> = (vec3<f32>(x_101.w, x_101.w, x_101.w) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_106 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_111 : f32 = u_xlat0.w;
  vs_COLOR0.w = x_111;
  let x_116 : f32 = in_COLOR0.w;
  let x_119 : f32 = x_18.x_OutlineColor.w;
  u_xlat0.x = (x_116 * x_119);
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = x_18.x_OutlineColor;
  let x_130 : vec3<f32> = (vec3<f32>(x_125.x, x_125.x, x_125.x) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = vs_COLOR1;
  vs_COLOR1 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_134 : f32 = u_xlat0.x;
  vs_COLOR1.w = x_134;
  let x_137 : vec4<f32> = in_POSITION0;
  let x_140 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_137.y, x_137.y, x_137.y, x_137.y) * x_140);
  let x_143 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = in_POSITION0;
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_156 + x_158);
  let x_160 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = x_18.unity_MatrixV[1i];
  let x_165 : vec2<f32> = (vec2<f32>(x_160.y, x_160.y) * vec2<f32>(x_163.x, x_163.y));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
  let x_169 : vec4<f32> = x_18.unity_MatrixV[0i];
  let x_171 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec2<f32> = ((vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_171.x, x_171.x)) + vec2<f32>(x_174.x, x_174.y));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_180 : vec4<f32> = x_18.unity_MatrixV[2i];
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : vec2<f32> = ((vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_182.z, x_182.z)) + vec2<f32>(x_185.x, x_185.y));
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
  let x_191 : vec4<f32> = x_18.unity_MatrixV[3i];
  let x_193 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec2<f32> = ((vec2<f32>(x_191.x, x_191.y) * vec2<f32>(x_193.w, x_193.w)) + vec2<f32>(x_196.x, x_196.y));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_199.z, x_199.w);
  let x_203 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = x_18.unity_GUIClipTextureMatrix[1i];
  u_xlat2 = (vec2<f32>(x_203.y, x_203.y) * vec2<f32>(x_207.x, x_207.y));
  let x_211 : vec4<f32> = x_18.unity_GUIClipTextureMatrix[0i];
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec2<f32> = u_xlat2;
  let x_217 : vec2<f32> = ((vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_213.x, x_213.x)) + x_216);
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_218.w);
  let x_222 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = x_18.unity_GUIClipTextureMatrix[3i];
  vs_TEXCOORD2 = (vec2<f32>(x_222.x, x_222.y) + vec2<f32>(x_225.x, x_225.y));
  let x_230 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_230.x, x_230.y);
  let x_237 : f32 = in_TEXCOORD0.w;
  u_xlatb0 = (0.0f >= x_237);
  let x_239 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_239);
  let x_245 : f32 = x_18.x_WeightNormal;
  let x_249 : f32 = x_18.x_WeightBold;
  u_xlat2.x = (-(x_245) + x_249);
  let x_253 : f32 = u_xlat0.x;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_18.x_WeightNormal;
  u_xlat0.x = ((x_253 * x_255) + x_258);
  let x_262 : f32 = u_xlat0.x;
  let x_267 : f32 = x_18.x_FaceDilate;
  u_xlat0.x = ((x_262 * 0.25f) + x_267);
  let x_271 : f32 = u_xlat0.x;
  let x_274 : f32 = x_18.x_ScaleRatioA;
  u_xlat0.x = (x_271 * x_274);
  let x_279 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = ((-(x_279) * 0.5f) + 0.5f);
  let x_287 : f32 = x_18.x_GradientScale;
  u_xlat0.x = (x_287 * 1.333299994f);
  let x_293 : f32 = x_18.x_Sharpness;
  u_xlat2.x = (x_293 + 1.0f);
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = (x_297 * x_299);
  let x_303 : f32 = u_xlat0.x;
  let x_307 : f32 = x_18.x_MainTex_TexelSize.z;
  vs_TEXCOORD1.y = (x_303 / x_307);
  let x_312 : f32 = x_18.x_OutlineWidth;
  let x_314 : f32 = x_18.x_ScaleRatioA;
  u_xlat0.x = (x_312 * x_314);
  let x_318 : f32 = u_xlat0.x;
  vs_TEXCOORD1.z = (x_318 * 0.5f);
  vs_TEXCOORD1.w = 0.0f;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1);
}

