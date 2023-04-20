diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(128) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_69 : VGlobals;

var<private> vs_POSITION_CS_NO_JITTER0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD4 : vec3<f32>;

var<private> vs_PREV_POSITION_CS_NO_JITTER0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_252 : UnityPerMaterial;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec4<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_69.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y) * x_71);
  let x_74 : vec4<f32> = x_69.unity_MatrixVP[0i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_74 * vec4<f32>(x_75.x, x_75.x, x_75.x, x_75.x)) + x_78);
  let x_81 : vec4<f32> = x_69.unity_MatrixVP[2i];
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_81 * vec4<f32>(x_82.z, x_82.z, x_82.z, x_82.z)) + x_85);
  let x_87 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = x_69.unity_MatrixVP[3i];
  u_xlat0 = (x_87 + x_89);
  let x_99 : f32 = x_21.unity_MotionVectorsParams.z;
  let x_104 : f32 = u_xlat0.w;
  let x_107 : f32 = u_xlat0.z;
  gl_Position.z = ((-(x_99) * x_104) + x_107);
  let x_111 : vec4<f32> = u_xlat0;
  let x_112 : vec3<f32> = vec3<f32>(x_111.x, x_111.y, x_111.w);
  let x_115 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_112.x, x_112.y, x_115.z, x_112.z);
  let x_117 : vec4<f32> = in_POSITION0;
  let x_120 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_117.y, x_117.y, x_117.y, x_117.y) * x_120);
  let x_123 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_124 : vec4<f32> = in_POSITION0;
  let x_127 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_123 * vec4<f32>(x_124.x, x_124.x, x_124.x, x_124.x)) + x_127);
  let x_130 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_131 : vec4<f32> = in_POSITION0;
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_130 * vec4<f32>(x_131.z, x_131.z, x_131.z, x_131.z)) + x_134);
  let x_137 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_138 : vec4<f32> = in_POSITION0;
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_137 * vec4<f32>(x_138.w, x_138.w, x_138.w, x_138.w)) + x_141);
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[1i];
  u_xlat1 = (vec4<f32>(x_143.y, x_143.y, x_143.y, x_143.y) * x_146);
  let x_149 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[0i];
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_149 * vec4<f32>(x_150.x, x_150.x, x_150.x, x_150.x)) + x_153);
  let x_156 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[2i];
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_156 * vec4<f32>(x_157.z, x_157.z, x_157.z, x_157.z)) + x_160);
  let x_164 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[3i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  vs_POSITION_CS_NO_JITTER0 = ((x_164 * vec4<f32>(x_165.w, x_165.w, x_165.w, x_165.w)) + x_168);
  let x_175 : f32 = x_21.unity_MotionVectorsParams.x;
  u_xlatb0 = (x_175 == 1.0f);
  let x_180 : vec3<f32> = in_TEXCOORD4;
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  u_xlat1.w = 1.0f;
  let x_184 : bool = u_xlatb0;
  let x_185 : vec4<f32> = u_xlat1;
  let x_186 : vec4<f32> = in_POSITION0;
  u_xlat0 = select(x_186, x_185, vec4<bool>(x_184, x_184, x_184, x_184));
  let x_190 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = x_21.unity_MatrixPreviousM[1i];
  u_xlat1 = (vec4<f32>(x_190.y, x_190.y, x_190.y, x_190.y) * x_194);
  let x_197 : vec4<f32> = x_21.unity_MatrixPreviousM[0i];
  let x_198 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_197 * vec4<f32>(x_198.x, x_198.x, x_198.x, x_198.x)) + x_201);
  let x_204 : vec4<f32> = x_21.unity_MatrixPreviousM[2i];
  let x_205 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_204 * vec4<f32>(x_205.z, x_205.z, x_205.z, x_205.z)) + x_208);
  let x_211 : vec4<f32> = x_21.unity_MatrixPreviousM[3i];
  let x_212 : vec4<f32> = u_xlat0;
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_211 * vec4<f32>(x_212.w, x_212.w, x_212.w, x_212.w)) + x_215);
  let x_217 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = x_69.x_PrevViewProjMatrix[1i];
  u_xlat1 = (vec4<f32>(x_217.y, x_217.y, x_217.y, x_217.y) * x_220);
  let x_223 : vec4<f32> = x_69.x_PrevViewProjMatrix[0i];
  let x_224 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_223 * vec4<f32>(x_224.x, x_224.x, x_224.x, x_224.x)) + x_227);
  let x_230 : vec4<f32> = x_69.x_PrevViewProjMatrix[2i];
  let x_231 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_230 * vec4<f32>(x_231.z, x_231.z, x_231.z, x_231.z)) + x_234);
  let x_238 : vec4<f32> = x_69.x_PrevViewProjMatrix[3i];
  let x_239 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat1;
  vs_PREV_POSITION_CS_NO_JITTER0 = ((x_238 * vec4<f32>(x_239.w, x_239.w, x_239.w, x_239.w)) + x_242);
  let x_249 : vec2<f32> = in_TEXCOORD0;
  let x_254 : vec4<f32> = x_252.x_BaseMap_ST;
  let x_258 : vec4<f32> = x_252.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_249 * vec2<f32>(x_254.x, x_254.y)) + vec2<f32>(x_258.z, x_258.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_POSITION_CS_NO_JITTER0_1 : vec4<f32>,
  @location(1)
  vs_PREV_POSITION_CS_NO_JITTER0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD4_param : vec3<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_POSITION_CS_NO_JITTER0, vs_PREV_POSITION_CS_NO_JITTER0, vs_TEXCOORD0);
}


