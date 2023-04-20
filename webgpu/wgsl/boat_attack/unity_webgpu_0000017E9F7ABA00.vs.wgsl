diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(128) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(192) */
  x_FaceColor : vec4<f32>,
  /* @offset(208) */
  x_FaceDilate : f32,
  /* @offset(224) */
  x_OutlineColor : vec4<f32>,
  /* @offset(240) */
  x_OutlineWidth : f32,
  /* @offset(244) */
  x_WeightNormal : f32,
  /* @offset(248) */
  x_WeightBold : f32,
  /* @offset(252) */
  x_ScaleRatioA : f32,
  /* @offset(256) */
  x_VertexOffsetX : f32,
  /* @offset(260) */
  x_VertexOffsetY : f32,
  /* @offset(264) */
  x_GradientScale : f32,
  /* @offset(268) */
  x_Sharpness : f32,
  /* @offset(272) */
  unity_GUIClipTextureMatrix : mat4x4<f32>,
  /* @offset(336) */
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_COLOR1 : vec4<f32>;

var<private> u_xlat2 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = x_18.x_OutlineColor;
  let x_129 : vec3<f32> = (vec3<f32>(x_124.x, x_124.x, x_124.x) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = vs_COLOR1;
  vs_COLOR1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : f32 = u_xlat0.x;
  vs_COLOR1.w = x_133;
  let x_135 : vec4<f32> = in_POSITION0;
  let x_138 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_135.y, x_135.y, x_135.y, x_135.y) * x_138);
  let x_141 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_142 : vec4<f32> = in_POSITION0;
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_141 * vec4<f32>(x_142.x, x_142.x, x_142.x, x_142.x)) + x_145);
  let x_148 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_149 : vec4<f32> = in_POSITION0;
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_148 * vec4<f32>(x_149.z, x_149.z, x_149.z, x_149.z)) + x_152);
  let x_154 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_154 + x_156);
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = x_18.unity_MatrixV[1i];
  let x_163 : vec2<f32> = (vec2<f32>(x_158.y, x_158.y) * vec2<f32>(x_161.x, x_161.y));
  let x_164 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  let x_167 : vec4<f32> = x_18.unity_MatrixV[0i];
  let x_169 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec2<f32> = ((vec2<f32>(x_167.x, x_167.y) * vec2<f32>(x_169.x, x_169.x)) + vec2<f32>(x_172.x, x_172.y));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_178 : vec4<f32> = x_18.unity_MatrixV[2i];
  let x_180 : vec4<f32> = u_xlat0;
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(x_180.z, x_180.z)) + vec2<f32>(x_183.x, x_183.y));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
  let x_189 : vec4<f32> = x_18.unity_MatrixV[3i];
  let x_191 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = u_xlat0;
  let x_196 : vec2<f32> = ((vec2<f32>(x_189.x, x_189.y) * vec2<f32>(x_191.w, x_191.w)) + vec2<f32>(x_194.x, x_194.y));
  let x_197 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_197.w);
  let x_201 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = x_18.unity_GUIClipTextureMatrix[1i];
  u_xlat2 = (vec2<f32>(x_201.y, x_201.y) * vec2<f32>(x_205.x, x_205.y));
  let x_209 : vec4<f32> = x_18.unity_GUIClipTextureMatrix[0i];
  let x_211 : vec4<f32> = u_xlat0;
  let x_214 : vec2<f32> = u_xlat2;
  let x_215 : vec2<f32> = ((vec2<f32>(x_209.x, x_209.y) * vec2<f32>(x_211.x, x_211.x)) + x_214);
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_220 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = x_18.unity_GUIClipTextureMatrix[3i];
  vs_TEXCOORD2 = (vec2<f32>(x_220.x, x_220.y) + vec2<f32>(x_223.x, x_223.y));
  let x_228 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_228.x, x_228.y);
  let x_237 : f32 = in_TEXCOORD1.y;
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
  u_xlat0.x = (x_287 * 1.33329999446868896484f);
  let x_293 : f32 = x_18.x_Sharpness;
  u_xlat2.x = (x_293 + 1.0f);
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = (x_297 * x_299);
  let x_303 : f32 = u_xlat0.x;
  let x_306 : f32 = x_18.x_MainTex_TexelSize.w;
  vs_TEXCOORD1.y = (x_303 / x_306);
  let x_311 : f32 = x_18.x_OutlineWidth;
  let x_313 : f32 = x_18.x_ScaleRatioA;
  u_xlat0.x = (x_311 * x_313);
  let x_317 : f32 = u_xlat0.x;
  vs_TEXCOORD1.z = (x_317 * 0.5f);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1);
}


