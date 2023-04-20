diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
  x_NightFade : f32,
}

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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat53 : f32;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlatb53 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb79 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat80 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb78 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(3) var<uniform> x_464 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb84 : bool;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2044 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

fn main_1() {
  var x_268 : f32;
  var x_280 : f32;
  var x_293 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2182 : f32;
  var x_2192 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat78;
  u_xlat78 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat78;
  u_xlat78 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_84);
  let x_86 : f32 = u_xlat78;
  u_xlat78 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  u_xlat2 = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_101 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_113 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  let x_116 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  u_xlat53 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_119);
  let x_121 : f32 = u_xlat53;
  u_xlat53 = fract(x_121);
  let x_123 : f32 = u_xlat53;
  let x_126 : f32 = x_29.x_NightFade;
  u_xlat53 = (x_123 + x_126);
  let x_131 : f32 = u_xlat53;
  u_xlatb53 = (x_131 >= 1.0f);
  let x_133 : bool = u_xlatb53;
  u_xlat53 = select(0.0f, 1.0f, x_133);
  let x_142 : vec4<f32> = vs_INTERP5;
  let x_145 : f32 = x_29.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_142.x, x_142.y), x_145);
  u_xlat3 = vec3<f32>(x_146.x, x_146.w, x_146.y);
  let x_153 : f32 = vs_INTERP4.w;
  u_xlatb79 = (0.0f < x_153);
  let x_156 : bool = u_xlatb79;
  u_xlat79 = select(-1.0f, 1.0f, x_156);
  let x_160 : f32 = x_109.unity_WorldTransformParams.w;
  u_xlatb80 = (x_160 >= 0.0f);
  let x_163 : bool = u_xlatb80;
  u_xlat80 = select(-1.0f, 1.0f, x_163);
  let x_165 : f32 = u_xlat79;
  let x_166 : f32 = u_xlat80;
  u_xlat79 = (x_165 * x_166);
  let x_169 : vec4<f32> = vs_INTERP4;
  let x_173 : vec3<f32> = vs_INTERP8;
  let x_175 : vec3<f32> = (vec3<f32>(x_169.y, x_169.z, x_169.x) * vec3<f32>(x_173.z, x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec3<f32> = vs_INTERP8;
  let x_180 : vec4<f32> = vs_INTERP4;
  let x_183 : vec4<f32> = u_xlat4;
  let x_186 : vec3<f32> = ((vec3<f32>(x_178.y, x_178.z, x_178.x) * vec3<f32>(x_180.z, x_180.x, x_180.y)) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : f32 = u_xlat79;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = vs_INTERP4;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_210.z);
  let x_213 : f32 = u_xlat78;
  let x_215 : vec3<f32> = vs_INTERP8;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec3<f32>(x_222.x, x_222.y, x_222.w), vec3<f32>(x_224.x, x_224.y, x_224.w));
  let x_227 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat78;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_239 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb78 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP7;
  let x_247 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_242) + x_247);
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_249.z, x_248.z);
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat80 = dot(vec3<f32>(x_251.x, x_251.y, x_251.w), vec3<f32>(x_253.x, x_253.y, x_253.w));
  let x_256 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_256);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : f32 = u_xlat80;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.w) * vec3<f32>(x_260, x_260, x_260));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_262.z);
  let x_266 : bool = u_xlatb78;
  if (x_266) {
    let x_272 : f32 = u_xlat1.x;
    x_268 = x_272;
  } else {
    let x_276 : f32 = x_29.unity_MatrixV[0i].z;
    x_268 = x_276;
  }
  let x_277 : f32 = x_268;
  u_xlat5.x = x_277;
  let x_279 : bool = u_xlatb78;
  if (x_279) {
    let x_285 : f32 = u_xlat1.y;
    x_280 = x_285;
  } else {
    let x_289 : f32 = x_29.unity_MatrixV[1i].z;
    x_280 = x_289;
  }
  let x_290 : f32 = x_280;
  u_xlat5.y = x_290;
  let x_292 : bool = u_xlatb78;
  if (x_292) {
    let x_297 : f32 = u_xlat1.w;
    x_293 = x_297;
  } else {
    let x_301 : f32 = x_29.unity_MatrixV[2i].z;
    x_293 = x_301;
  }
  let x_302 : f32 = x_293;
  u_xlat5.z = x_302;
  u_xlat4.w = 1.0f;
  let x_308 : vec4<f32> = x_109.unity_SHAr;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_308, x_309);
  let x_314 : vec4<f32> = x_109.unity_SHAg;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_314, x_315);
  let x_320 : vec4<f32> = x_109.unity_SHAb;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_320, x_321);
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_325.y, x_325.z, x_325.z, x_325.x) * vec4<f32>(x_327.x, x_327.y, x_327.z, x_327.z));
  let x_333 : vec4<f32> = x_109.unity_SHBr;
  let x_334 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_333, x_334);
  let x_339 : vec4<f32> = x_109.unity_SHBg;
  let x_340 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_109.unity_SHBb;
  let x_346 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_345, x_346);
  let x_350 : f32 = u_xlat4.y;
  let x_352 : f32 = u_xlat4.y;
  u_xlat78 = (x_350 * x_352);
  let x_355 : f32 = u_xlat4.x;
  let x_357 : f32 = u_xlat4.x;
  let x_359 : f32 = u_xlat78;
  u_xlat78 = ((x_355 * x_357) + -(x_359));
  let x_364 : vec4<f32> = x_109.unity_SHC;
  let x_366 : f32 = u_xlat78;
  let x_369 : vec4<f32> = u_xlat8;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366, x_366, x_366)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_371.z);
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec3<f32> = u_xlat6;
  let x_377 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.w) + x_376);
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_377.z);
  let x_380 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = max(vec3<f32>(x_380.x, x_380.y, x_380.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_383.z);
  let x_386 : vec3<f32> = u_xlat3;
  let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
  let x_388 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_387.x, x_387.y, x_388.z);
  let x_390 : vec3<f32> = u_xlat3;
  let x_394 : vec2<f32> = clamp(vec2<f32>(x_390.x, x_390.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_395 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_394.x, x_394.y, x_395.z);
  let x_398 : f32 = u_xlat3.x;
  u_xlat78 = ((-(x_398) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_403 : f32 = u_xlat78;
  let x_406 : f32 = u_xlat3.y;
  u_xlat80 = (-(x_403) + x_406);
  let x_408 : f32 = u_xlat78;
  let x_410 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_408, x_408, x_408) * x_410);
  let x_412 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_412 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_416 : vec3<f32> = u_xlat3;
  let x_418 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_416.x, x_416.x, x_416.x) * x_418) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_424 : f32 = u_xlat3.y;
  u_xlat78 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat78;
  let x_428 : f32 = u_xlat78;
  u_xlat3.x = (x_427 * x_428);
  let x_432 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_432, 0.0078125f);
  let x_438 : f32 = u_xlat3.x;
  let x_440 : f32 = u_xlat3.x;
  u_xlat29 = (x_438 * x_440);
  let x_442 : f32 = u_xlat80;
  u_xlat80 = (x_442 + 1.0f);
  let x_444 : f32 = u_xlat80;
  u_xlat80 = min(x_444, 1.0f);
  let x_448 : f32 = u_xlat3.x;
  u_xlat81 = ((x_448 * 4.0f) + 2.0f);
  let x_454 : f32 = u_xlat3.z;
  u_xlat55 = min(x_454, 1.0f);
  let x_467 : f32 = x_464.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_467);
  let x_469 : bool = u_xlatb82;
  if (x_469) {
    let x_473 : f32 = x_464.x_MainLightShadowParams.y;
    u_xlatb82 = (x_473 == 1.0f);
    let x_475 : bool = u_xlatb82;
    if (x_475) {
      let x_479 : vec4<f32> = vs_INTERP3;
      let x_482 : vec4<f32> = x_464.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_479.x, x_479.y, x_479.x, x_479.y) + x_482);
      let x_486 : vec4<f32> = u_xlat7;
      let x_487 : vec2<f32> = vec2<f32>(x_486.x, x_486.y);
      let x_489 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_487.x, x_487.y, x_489);
      let x_501 : vec3<f32> = txVec0;
      let x_503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_501.xy, x_501.z);
      u_xlat8.x = x_503;
      let x_506 : vec4<f32> = u_xlat7;
      let x_507 : vec2<f32> = vec2<f32>(x_506.z, x_506.w);
      let x_509 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_507.x, x_507.y, x_509);
      let x_516 : vec3<f32> = txVec1;
      let x_518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_516.xy, x_516.z);
      u_xlat8.y = x_518;
      let x_520 : vec4<f32> = vs_INTERP3;
      let x_523 : vec4<f32> = x_464.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y) + x_523);
      let x_526 : vec4<f32> = u_xlat7;
      let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
      let x_529 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec2;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat8.z = x_538;
      let x_541 : vec4<f32> = u_xlat7;
      let x_542 : vec2<f32> = vec2<f32>(x_541.z, x_541.w);
      let x_544 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec3;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
      u_xlat8.w = x_553;
      let x_556 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_556, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_563 : f32 = x_464.x_MainLightShadowParams.y;
      u_xlatb83 = (x_563 == 2.0f);
      let x_565 : bool = u_xlatb83;
      if (x_565) {
        let x_568 : vec4<f32> = vs_INTERP3;
        let x_572 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_577 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_572.z, x_572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat7;
        let x_582 : vec2<f32> = floor(vec2<f32>(x_580.x, x_580.y));
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_587 : vec4<f32> = vs_INTERP3;
        let x_590 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.z, x_590.w)) + -(vec2<f32>(x_593.x, x_593.y)));
        let x_597 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_597.x, x_597.x, x_597.y, x_597.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_602 : vec4<f32> = u_xlat8;
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_602.x, x_602.x, x_602.z, x_602.z) * vec4<f32>(x_604.x, x_604.x, x_604.z, x_604.z));
        let x_607 : vec4<f32> = u_xlat9;
        let x_611 : vec2<f32> = (vec2<f32>(x_607.y, x_607.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_612.y, x_611.y, x_612.w);
        let x_614 : vec4<f32> = u_xlat9;
        let x_617 : vec2<f32> = u_xlat59;
        let x_619 : vec2<f32> = ((vec2<f32>(x_614.x, x_614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_617));
        let x_620 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_623) + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec2<f32> = u_xlat59;
        let x_630 : vec2<f32> = min(x_628, vec2<f32>(0.0f, 0.0f));
        let x_631 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat10;
        let x_636 : vec4<f32> = u_xlat10;
        let x_639 : vec2<f32> = u_xlat61;
        let x_640 : vec2<f32> = ((-(vec2<f32>(x_633.x, x_633.y)) * vec2<f32>(x_636.x, x_636.y)) + x_639);
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_643, vec2<f32>(0.0f, 0.0f));
        let x_645 : vec2<f32> = u_xlat59;
        let x_647 : vec2<f32> = u_xlat59;
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_645) * x_647) + vec2<f32>(x_649.y, x_649.w));
        let x_652 : vec4<f32> = u_xlat10;
        let x_654 : vec2<f32> = (vec2<f32>(x_652.x, x_652.y) + vec2<f32>(1.0f, 1.0f));
        let x_655 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_657 + vec2<f32>(1.0f, 1.0f));
        let x_660 : vec4<f32> = u_xlat9;
        let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_665 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat61;
        let x_668 : vec2<f32> = (x_667 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat10;
        let x_673 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec2<f32> = u_xlat59;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_681.y, x_681.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_685 : f32 = u_xlat10.x;
        u_xlat11.z = x_685;
        let x_688 : f32 = u_xlat59.x;
        u_xlat11.w = x_688;
        let x_691 : f32 = u_xlat12.x;
        u_xlat9.z = x_691;
        let x_694 : f32 = u_xlat8.x;
        u_xlat9.w = x_694;
        let x_697 : vec4<f32> = u_xlat9;
        let x_699 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_697.z, x_697.w, x_697.x, x_697.z) + vec4<f32>(x_699.z, x_699.w, x_699.x, x_699.z));
        let x_703 : f32 = u_xlat11.y;
        u_xlat10.z = x_703;
        let x_706 : f32 = u_xlat59.y;
        u_xlat10.w = x_706;
        let x_709 : f32 = u_xlat9.y;
        u_xlat12.z = x_709;
        let x_712 : f32 = u_xlat8.z;
        u_xlat12.w = x_712;
        let x_714 : vec4<f32> = u_xlat10;
        let x_716 : vec4<f32> = u_xlat12;
        let x_718 : vec3<f32> = (vec3<f32>(x_714.z, x_714.y, x_714.w) + vec3<f32>(x_716.z, x_716.y, x_716.w));
        let x_719 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat9;
        let x_723 : vec4<f32> = u_xlat13;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.z, x_721.w) / vec3<f32>(x_723.z, x_723.w, x_723.y));
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat9;
        let x_734 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_735 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
        let x_737 : vec4<f32> = u_xlat12;
        let x_739 : vec4<f32> = u_xlat8;
        let x_741 : vec3<f32> = (vec3<f32>(x_737.z, x_737.y, x_737.w) / vec3<f32>(x_739.x, x_739.y, x_739.z));
        let x_742 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat10;
        let x_746 : vec3<f32> = (vec3<f32>(x_744.x, x_744.y, x_744.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_747 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat9;
        let x_752 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_754 : vec3<f32> = (vec3<f32>(x_749.y, x_749.x, x_749.z) * vec3<f32>(x_752.x, x_752.x, x_752.x));
        let x_755 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat10;
        let x_760 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_762 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_760.y, x_760.y, x_760.y));
        let x_763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_766 : f32 = u_xlat10.x;
        u_xlat9.w = x_766;
        let x_768 : vec4<f32> = u_xlat7;
        let x_771 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_774 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y) * vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y)) + vec4<f32>(x_774.y, x_774.w, x_774.x, x_774.w));
        let x_777 : vec4<f32> = u_xlat7;
        let x_780 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_780.x, x_780.y)) + vec2<f32>(x_783.z, x_783.w));
        let x_787 : f32 = u_xlat9.y;
        u_xlat10.w = x_787;
        let x_789 : vec4<f32> = u_xlat10;
        let x_790 : vec2<f32> = vec2<f32>(x_789.y, x_789.z);
        let x_791 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_790.x, x_791.z, x_790.y);
        let x_793 : vec4<f32> = u_xlat7;
        let x_796 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_799 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_793.x, x_793.y, x_793.x, x_793.y) * vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y)) + vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.y));
        let x_802 : vec4<f32> = u_xlat7;
        let x_805 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_808 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y) * vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y)) + vec4<f32>(x_808.w, x_808.y, x_808.w, x_808.z));
        let x_811 : vec4<f32> = u_xlat7;
        let x_814 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.x, x_817.w, x_817.z, x_817.w));
        let x_821 : vec4<f32> = u_xlat8;
        let x_823 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_821.x, x_821.x, x_821.x, x_821.y) * vec4<f32>(x_823.z, x_823.w, x_823.y, x_823.z));
        let x_827 : vec4<f32> = u_xlat8;
        let x_829 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_827.y, x_827.y, x_827.z, x_827.z) * x_829);
        let x_833 : f32 = u_xlat8.z;
        let x_835 : f32 = u_xlat13.y;
        u_xlat83 = (x_833 * x_835);
        let x_838 : vec4<f32> = u_xlat11;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_849 : vec3<f32> = txVec4;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat84 = x_851;
        let x_853 : vec4<f32> = u_xlat11;
        let x_854 : vec2<f32> = vec2<f32>(x_853.z, x_853.w);
        let x_856 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_854.x, x_854.y, x_856);
        let x_863 : vec3<f32> = txVec5;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_863.xy, x_863.z);
        u_xlat7.x = x_865;
        let x_868 : f32 = u_xlat7.x;
        let x_870 : f32 = u_xlat14.y;
        u_xlat7.x = (x_868 * x_870);
        let x_874 : f32 = u_xlat14.x;
        let x_875 : f32 = u_xlat84;
        let x_878 : f32 = u_xlat7.x;
        u_xlat84 = ((x_874 * x_875) + x_878);
        let x_881 : vec2<f32> = u_xlat59;
        let x_883 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec6;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat7.x = x_892;
        let x_895 : f32 = u_xlat14.z;
        let x_897 : f32 = u_xlat7.x;
        let x_899 : f32 = u_xlat84;
        u_xlat84 = ((x_895 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat10;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec7;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
        u_xlat7.x = x_914;
        let x_917 : f32 = u_xlat14.w;
        let x_919 : f32 = u_xlat7.x;
        let x_921 : f32 = u_xlat84;
        u_xlat84 = ((x_917 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat12;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec8;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat7.x = x_936;
        let x_939 : f32 = u_xlat15.x;
        let x_941 : f32 = u_xlat7.x;
        let x_943 : f32 = u_xlat84;
        u_xlat84 = ((x_939 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat12;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec9;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat7.x = x_958;
        let x_961 : f32 = u_xlat15.y;
        let x_963 : f32 = u_xlat7.x;
        let x_965 : f32 = u_xlat84;
        u_xlat84 = ((x_961 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat10;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec10;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat7.x = x_980;
        let x_983 : f32 = u_xlat15.z;
        let x_985 : f32 = u_xlat7.x;
        let x_987 : f32 = u_xlat84;
        u_xlat84 = ((x_983 * x_985) + x_987);
        let x_990 : vec4<f32> = u_xlat9;
        let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
        let x_993 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec11;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
        u_xlat7.x = x_1002;
        let x_1005 : f32 = u_xlat15.w;
        let x_1007 : f32 = u_xlat7.x;
        let x_1009 : f32 = u_xlat84;
        u_xlat84 = ((x_1005 * x_1007) + x_1009);
        let x_1012 : vec4<f32> = u_xlat9;
        let x_1013 : vec2<f32> = vec2<f32>(x_1012.z, x_1012.w);
        let x_1015 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec12;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat7.x = x_1024;
        let x_1026 : f32 = u_xlat83;
        let x_1028 : f32 = u_xlat7.x;
        let x_1030 : f32 = u_xlat84;
        u_xlat82 = ((x_1026 * x_1028) + x_1030);
      } else {
        let x_1033 : vec4<f32> = vs_INTERP3;
        let x_1036 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1039 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.z, x_1036.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1040 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = floor(vec2<f32>(x_1042.x, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1047 : vec4<f32> = vs_INTERP3;
        let x_1050 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1050.z, x_1050.w)) + -(vec2<f32>(x_1053.x, x_1053.y)));
        let x_1057 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.y, x_1057.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.z, x_1060.z) * vec4<f32>(x_1062.x, x_1062.x, x_1062.z, x_1062.z));
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1069 : vec2<f32> = (vec2<f32>(x_1065.y, x_1065.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1070 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1070.x, x_1069.x, x_1070.z, x_1069.y);
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1075 : vec2<f32> = u_xlat59;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1075));
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1078.w);
        let x_1080 : vec2<f32> = u_xlat59;
        let x_1082 : vec2<f32> = (-(x_1080) + vec2<f32>(1.0f, 1.0f));
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1087 : vec2<f32> = u_xlat61;
        let x_1089 : vec2<f32> = u_xlat61;
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1093 : vec2<f32> = ((-(x_1087) * x_1089) + vec2<f32>(x_1091.x, x_1091.y));
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
        let x_1096 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1096, vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec2<f32> = u_xlat61;
        let x_1101 : vec2<f32> = u_xlat61;
        let x_1103 : vec4<f32> = u_xlat8;
        let x_1105 : vec2<f32> = ((-(x_1099) * x_1101) + vec2<f32>(x_1103.y, x_1103.w));
        let x_1106 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1105.x, x_1106.y, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1108.x, x_1108.y) + vec2<f32>(2.0f, 2.0f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec3<f32> = u_xlat34;
        let x_1115 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.z) + vec2<f32>(2.0f, 2.0f));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1115.x, x_1116.z, x_1115.y);
        let x_1119 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1119 * 0.08163200318813323975f);
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1126 : vec3<f32> = (vec3<f32>(x_1123.z, x_1123.x, x_1123.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1127 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1136 : f32 = u_xlat12.y;
        u_xlat11.x = x_1136;
        let x_1138 : vec2<f32> = u_xlat59;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1146 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1148 : vec2<f32> = u_xlat59;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1156 : f32 = u_xlat8.x;
        u_xlat9.y = x_1156;
        let x_1159 : f32 = u_xlat10.y;
        u_xlat9.w = x_1159;
        let x_1161 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1161 + x_1162);
        let x_1164 : vec2<f32> = u_xlat59;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1164.y, x_1164.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1168 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec2<f32> = u_xlat59;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1174.w);
        let x_1177 : f32 = u_xlat8.y;
        u_xlat10.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat10;
        let x_1180 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1179 + x_1180);
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1183 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1182 / x_1183);
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1185 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1191 / x_1192);
        let x_1194 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1194 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1199 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1196.w, x_1196.x, x_1196.y, x_1196.z) * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x));
        let x_1202 : vec4<f32> = u_xlat10;
        let x_1205 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1202.x, x_1202.w, x_1202.y, x_1202.z) * vec4<f32>(x_1205.y, x_1205.y, x_1205.y, x_1205.y));
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1209 : vec3<f32> = vec3<f32>(x_1208.y, x_1208.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1209.z);
        let x_1213 : f32 = u_xlat10.x;
        u_xlat12.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1218 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1227 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1234 : f32 = u_xlat12.y;
        u_xlat9.y = x_1234;
        let x_1237 : f32 = u_xlat10.z;
        u_xlat12.y = x_1237;
        let x_1239 : vec4<f32> = u_xlat7;
        let x_1242 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1245.y));
        let x_1248 : vec4<f32> = u_xlat7;
        let x_1251 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.w, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
        let x_1260 : f32 = u_xlat12.y;
        u_xlat9.z = x_1260;
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1266 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.z));
        let x_1273 : f32 = u_xlat10.w;
        u_xlat12.y = x_1273;
        let x_1276 : vec4<f32> = u_xlat7;
        let x_1279 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.y));
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1289 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1296 : f32 = u_xlat12.y;
        u_xlat9.w = x_1296;
        let x_1299 : vec4<f32> = u_xlat7;
        let x_1302 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.x, x_1305.w));
        let x_1308 : vec4<f32> = u_xlat12;
        let x_1309 : vec3<f32> = vec3<f32>(x_1308.x, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1309.z);
        let x_1312 : vec4<f32> = u_xlat7;
        let x_1315 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y) * vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y)) + vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.y));
        let x_1322 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1332 : f32 = u_xlat9.x;
        u_xlat10.x = x_1332;
        let x_1334 : vec4<f32> = u_xlat7;
        let x_1337 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat10;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.x, x_1337.y)) + vec2<f32>(x_1340.x, x_1340.y));
        let x_1343 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1346 : vec4<f32> = u_xlat8;
        let x_1348 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1346.x, x_1346.x, x_1346.x, x_1346.x) * x_1348);
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1353 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1351.y, x_1351.y, x_1351.y, x_1351.y) * x_1353);
        let x_1356 : vec4<f32> = u_xlat8;
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1356.z, x_1356.z, x_1356.z, x_1356.z) * x_1358);
        let x_1360 : vec4<f32> = u_xlat8;
        let x_1362 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1360.w, x_1360.w, x_1360.w, x_1360.w) * x_1362);
        let x_1365 : vec4<f32> = u_xlat13;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
        let x_1368 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec13;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat83 = x_1377;
        let x_1379 : vec4<f32> = u_xlat13;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.z, x_1379.w);
        let x_1382 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec14;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat84 = x_1391;
        let x_1392 : f32 = u_xlat84;
        let x_1394 : f32 = u_xlat18.y;
        u_xlat84 = (x_1392 * x_1394);
        let x_1397 : f32 = u_xlat18.x;
        let x_1398 : f32 = u_xlat83;
        let x_1400 : f32 = u_xlat84;
        u_xlat83 = ((x_1397 * x_1398) + x_1400);
        let x_1403 : vec2<f32> = u_xlat59;
        let x_1405 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec15;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat84 = x_1414;
        let x_1416 : f32 = u_xlat18.z;
        let x_1417 : f32 = u_xlat84;
        let x_1419 : f32 = u_xlat83;
        u_xlat83 = ((x_1416 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat16;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec16;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat84 = x_1434;
        let x_1436 : f32 = u_xlat18.w;
        let x_1437 : f32 = u_xlat84;
        let x_1439 : f32 = u_xlat83;
        u_xlat83 = ((x_1436 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat14;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.x, x_1442.y);
        let x_1445 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec17;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat84 = x_1454;
        let x_1456 : f32 = u_xlat19.x;
        let x_1457 : f32 = u_xlat84;
        let x_1459 : f32 = u_xlat83;
        u_xlat83 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat14;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec18;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat84 = x_1474;
        let x_1476 : f32 = u_xlat19.y;
        let x_1477 : f32 = u_xlat84;
        let x_1479 : f32 = u_xlat83;
        u_xlat83 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat15;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec19;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat84 = x_1494;
        let x_1496 : f32 = u_xlat19.z;
        let x_1497 : f32 = u_xlat84;
        let x_1499 : f32 = u_xlat83;
        u_xlat83 = ((x_1496 * x_1497) + x_1499);
        let x_1502 : vec4<f32> = u_xlat16;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec20;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat84 = x_1514;
        let x_1516 : f32 = u_xlat19.w;
        let x_1517 : f32 = u_xlat84;
        let x_1519 : f32 = u_xlat83;
        u_xlat83 = ((x_1516 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat17;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.x, x_1522.y);
        let x_1525 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec21;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1532.xy, x_1532.z);
        u_xlat84 = x_1534;
        let x_1536 : f32 = u_xlat20.x;
        let x_1537 : f32 = u_xlat84;
        let x_1539 : f32 = u_xlat83;
        u_xlat83 = ((x_1536 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat17;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec22;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat84 = x_1554;
        let x_1556 : f32 = u_xlat20.y;
        let x_1557 : f32 = u_xlat84;
        let x_1559 : f32 = u_xlat83;
        u_xlat83 = ((x_1556 * x_1557) + x_1559);
        let x_1562 : vec2<f32> = u_xlat35;
        let x_1564 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec23;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat84 = x_1573;
        let x_1575 : f32 = u_xlat20.z;
        let x_1576 : f32 = u_xlat84;
        let x_1578 : f32 = u_xlat83;
        u_xlat83 = ((x_1575 * x_1576) + x_1578);
        let x_1581 : vec2<f32> = u_xlat67;
        let x_1583 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec24;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1590.xy, x_1590.z);
        u_xlat84 = x_1592;
        let x_1594 : f32 = u_xlat20.w;
        let x_1595 : f32 = u_xlat84;
        let x_1597 : f32 = u_xlat83;
        u_xlat83 = ((x_1594 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat12;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec25;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat84 = x_1612;
        let x_1614 : f32 = u_xlat8.x;
        let x_1615 : f32 = u_xlat84;
        let x_1617 : f32 = u_xlat83;
        u_xlat83 = ((x_1614 * x_1615) + x_1617);
        let x_1620 : vec4<f32> = u_xlat12;
        let x_1621 : vec2<f32> = vec2<f32>(x_1620.z, x_1620.w);
        let x_1623 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1621.x, x_1621.y, x_1623);
        let x_1630 : vec3<f32> = txVec26;
        let x_1632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1630.xy, x_1630.z);
        u_xlat84 = x_1632;
        let x_1634 : f32 = u_xlat8.y;
        let x_1635 : f32 = u_xlat84;
        let x_1637 : f32 = u_xlat83;
        u_xlat83 = ((x_1634 * x_1635) + x_1637);
        let x_1640 : vec2<f32> = u_xlat62;
        let x_1642 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec27;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1649.xy, x_1649.z);
        u_xlat84 = x_1651;
        let x_1653 : f32 = u_xlat8.z;
        let x_1654 : f32 = u_xlat84;
        let x_1656 : f32 = u_xlat83;
        u_xlat83 = ((x_1653 * x_1654) + x_1656);
        let x_1659 : vec4<f32> = u_xlat7;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec28;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat84 = x_1671;
        let x_1673 : f32 = u_xlat8.w;
        let x_1674 : f32 = u_xlat84;
        let x_1676 : f32 = u_xlat83;
        u_xlat82 = ((x_1673 * x_1674) + x_1676);
      }
    }
  } else {
    let x_1680 : vec4<f32> = vs_INTERP3;
    let x_1681 : vec2<f32> = vec2<f32>(x_1680.x, x_1680.y);
    let x_1683 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
    let x_1690 : vec3<f32> = txVec29;
    let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1690.xy, x_1690.z);
    u_xlat82 = x_1692;
  }
  let x_1694 : f32 = x_464.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1694) + 1.0f);
  let x_1697 : f32 = u_xlat82;
  let x_1699 : f32 = x_464.x_MainLightShadowParams.x;
  let x_1701 : f32 = u_xlat83;
  u_xlat82 = ((x_1697 * x_1699) + x_1701);
  let x_1704 : f32 = vs_INTERP3.z;
  u_xlatb83 = (0.0f >= x_1704);
  let x_1708 : f32 = vs_INTERP3.z;
  u_xlatb84 = (x_1708 >= 1.0f);
  let x_1710 : bool = u_xlatb83;
  let x_1711 : bool = u_xlatb84;
  u_xlatb83 = (x_1710 | x_1711);
  let x_1713 : bool = u_xlatb83;
  let x_1714 : f32 = u_xlat82;
  u_xlat82 = select(x_1714, 1.0f, x_1713);
  let x_1716 : vec3<f32> = vs_INTERP7;
  let x_1718 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1720 : vec3<f32> = (x_1716 + -(x_1718));
  let x_1721 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1723 : vec4<f32> = u_xlat7;
  let x_1725 : vec4<f32> = u_xlat7;
  u_xlat83 = dot(vec3<f32>(x_1723.x, x_1723.y, x_1723.z), vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : f32 = u_xlat83;
  let x_1730 : f32 = x_464.x_MainLightShadowParams.z;
  let x_1733 : f32 = x_464.x_MainLightShadowParams.w;
  u_xlat84 = ((x_1728 * x_1730) + x_1733);
  let x_1735 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1735, 0.0f, 1.0f);
  let x_1737 : f32 = u_xlat82;
  u_xlat7.x = (-(x_1737) + 1.0f);
  let x_1741 : f32 = u_xlat84;
  let x_1743 : f32 = u_xlat7.x;
  let x_1745 : f32 = u_xlat82;
  u_xlat82 = ((x_1741 * x_1743) + x_1745);
  let x_1747 : vec3<f32> = u_xlat5;
  let x_1749 : vec4<f32> = u_xlat4;
  u_xlat84 = dot(-(x_1747), vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1752 : f32 = u_xlat84;
  let x_1753 : f32 = u_xlat84;
  u_xlat84 = (x_1752 + x_1753);
  let x_1755 : vec4<f32> = u_xlat4;
  let x_1757 : f32 = u_xlat84;
  let x_1761 : vec3<f32> = u_xlat5;
  let x_1763 : vec3<f32> = ((vec3<f32>(x_1755.x, x_1755.y, x_1755.z) * -(vec3<f32>(x_1757, x_1757, x_1757))) + -(x_1761));
  let x_1764 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : vec4<f32> = u_xlat4;
  let x_1768 : vec3<f32> = u_xlat5;
  u_xlat84 = dot(vec3<f32>(x_1766.x, x_1766.y, x_1766.z), x_1768);
  let x_1770 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1770, 0.0f, 1.0f);
  let x_1772 : f32 = u_xlat84;
  u_xlat84 = (-(x_1772) + 1.0f);
  let x_1775 : f32 = u_xlat84;
  let x_1776 : f32 = u_xlat84;
  u_xlat84 = (x_1775 * x_1776);
  let x_1778 : f32 = u_xlat84;
  let x_1779 : f32 = u_xlat84;
  u_xlat84 = (x_1778 * x_1779);
  let x_1782 : f32 = u_xlat78;
  u_xlat85 = ((-(x_1782) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1788 : f32 = u_xlat78;
  let x_1789 : f32 = u_xlat85;
  u_xlat78 = (x_1788 * x_1789);
  let x_1791 : f32 = u_xlat78;
  u_xlat78 = (x_1791 * 6.0f);
  let x_1802 : vec4<f32> = u_xlat7;
  let x_1804 : f32 = u_xlat78;
  let x_1805 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1802.x, x_1802.y, x_1802.z), x_1804);
  u_xlat7 = x_1805;
  let x_1807 : f32 = u_xlat7.w;
  u_xlat78 = (x_1807 + -1.0f);
  let x_1810 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_1811 : f32 = u_xlat78;
  u_xlat78 = ((x_1810 * x_1811) + 1.0f);
  let x_1814 : f32 = u_xlat78;
  u_xlat78 = max(x_1814, 0.0f);
  let x_1816 : f32 = u_xlat78;
  u_xlat78 = log2(x_1816);
  let x_1818 : f32 = u_xlat78;
  let x_1820 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_1818 * x_1820);
  let x_1822 : f32 = u_xlat78;
  u_xlat78 = exp2(x_1822);
  let x_1824 : f32 = u_xlat78;
  let x_1826 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_1824 * x_1826);
  let x_1828 : vec4<f32> = u_xlat7;
  let x_1830 : f32 = u_xlat78;
  let x_1832 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.y, x_1828.z) * vec3<f32>(x_1830, x_1830, x_1830));
  let x_1833 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1835 : vec3<f32> = u_xlat3;
  let x_1837 : vec3<f32> = u_xlat3;
  let x_1841 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.x) * vec2<f32>(x_1837.x, x_1837.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1842 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
  let x_1845 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_1845);
  let x_1847 : vec3<f32> = u_xlat0;
  let x_1849 : f32 = u_xlat80;
  u_xlat34 = (-(x_1847) + vec3<f32>(x_1849, x_1849, x_1849));
  let x_1852 : f32 = u_xlat84;
  let x_1854 : vec3<f32> = u_xlat34;
  let x_1856 : vec3<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1852, x_1852, x_1852) * x_1854) + x_1856);
  let x_1858 : f32 = u_xlat78;
  let x_1860 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1858, x_1858, x_1858) * x_1860);
  let x_1862 : vec4<f32> = u_xlat7;
  let x_1864 : vec3<f32> = u_xlat34;
  let x_1865 : vec3<f32> = (vec3<f32>(x_1862.x, x_1862.y, x_1862.z) * x_1864);
  let x_1866 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : vec4<f32> = u_xlat1;
  let x_1870 : vec3<f32> = u_xlat6;
  let x_1872 : vec4<f32> = u_xlat7;
  let x_1874 : vec3<f32> = ((vec3<f32>(x_1868.x, x_1868.y, x_1868.w) * x_1870) + vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1875 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1874.x, x_1874.y, x_1875.z, x_1874.z);
  let x_1877 : f32 = u_xlat82;
  let x_1879 : f32 = x_109.unity_LightData.z;
  u_xlat78 = (x_1877 * x_1879);
  let x_1881 : vec4<f32> = u_xlat4;
  let x_1884 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1887, 0.0f, 1.0f);
  let x_1889 : f32 = u_xlat78;
  let x_1890 : f32 = u_xlat80;
  u_xlat78 = (x_1889 * x_1890);
  let x_1892 : f32 = u_xlat78;
  let x_1895 : vec4<f32> = x_29.x_MainLightColor;
  let x_1897 : vec3<f32> = (vec3<f32>(x_1892, x_1892, x_1892) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
  let x_1900 : vec3<f32> = u_xlat5;
  let x_1902 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = (x_1900 + vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec3<f32> = u_xlat34;
  let x_1906 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_1905, x_1906);
  let x_1908 : f32 = u_xlat78;
  u_xlat78 = max(x_1908, 1.17549435e-38f);
  let x_1911 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1911);
  let x_1913 : f32 = u_xlat78;
  let x_1915 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1913, x_1913, x_1913) * x_1915);
  let x_1917 : vec4<f32> = u_xlat4;
  let x_1919 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(vec3<f32>(x_1917.x, x_1917.y, x_1917.z), x_1919);
  let x_1921 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1921, 0.0f, 1.0f);
  let x_1924 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1926 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(vec3<f32>(x_1924.x, x_1924.y, x_1924.z), x_1926);
  let x_1928 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1928, 0.0f, 1.0f);
  let x_1930 : f32 = u_xlat78;
  let x_1931 : f32 = u_xlat78;
  u_xlat78 = (x_1930 * x_1931);
  let x_1933 : f32 = u_xlat78;
  let x_1935 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1933 * x_1935) + 1.00001001358032226562f);
  let x_1939 : f32 = u_xlat80;
  let x_1940 : f32 = u_xlat80;
  u_xlat80 = (x_1939 * x_1940);
  let x_1942 : f32 = u_xlat78;
  let x_1943 : f32 = u_xlat78;
  u_xlat78 = (x_1942 * x_1943);
  let x_1945 : f32 = u_xlat80;
  u_xlat80 = max(x_1945, 0.10000000149011611938f);
  let x_1948 : f32 = u_xlat78;
  let x_1949 : f32 = u_xlat80;
  u_xlat78 = (x_1948 * x_1949);
  let x_1951 : f32 = u_xlat81;
  let x_1952 : f32 = u_xlat78;
  u_xlat78 = (x_1951 * x_1952);
  let x_1954 : f32 = u_xlat29;
  let x_1955 : f32 = u_xlat78;
  u_xlat78 = (x_1954 / x_1955);
  let x_1957 : vec3<f32> = u_xlat0;
  let x_1958 : f32 = u_xlat78;
  let x_1961 : vec3<f32> = u_xlat6;
  u_xlat34 = ((x_1957 * vec3<f32>(x_1958, x_1958, x_1958)) + x_1961);
  let x_1963 : vec4<f32> = u_xlat7;
  let x_1965 : vec3<f32> = u_xlat34;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) * x_1965);
  let x_1967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1970 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1972 : f32 = x_109.unity_LightData.y;
  u_xlat78 = min(x_1970, x_1972);
  let x_1976 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1976));
  let x_1979 : f32 = u_xlat83;
  let x_1982 : f32 = x_464.x_AdditionalShadowFadeParams.x;
  let x_1985 : f32 = x_464.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_1979 * x_1982) + x_1985);
  let x_1987 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1987, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1999 : u32 = u_xlatu_loop_1;
    let x_2000 : u32 = u_xlatu78;
    if ((x_1999 < x_2000)) {
    } else {
      break;
    }
    let x_2003 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2003 >> 2u);
    let x_2007 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2007 & 3u));
    let x_2010 : u32 = u_xlatu82;
    let x_2013 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_2010)];
    let x_2023 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2028 : vec4<u32> = indexable[x_2023];
    u_xlat82 = dot(x_2013, bitcast<vec4<f32>>(x_2028));
    let x_2032 : f32 = u_xlat82;
    u_xlati82 = i32(x_2032);
    let x_2034 : vec3<f32> = vs_INTERP7;
    let x_2045 : i32 = u_xlati82;
    let x_2047 : vec4<f32> = x_2044.x_AdditionalLightsPosition[x_2045];
    let x_2050 : i32 = u_xlati82;
    let x_2052 : vec4<f32> = x_2044.x_AdditionalLightsPosition[x_2050];
    let x_2054 : vec3<f32> = ((-(x_2034) * vec3<f32>(x_2047.w, x_2047.w, x_2047.w)) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
    let x_2055 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
    let x_2057 : vec4<f32> = u_xlat9;
    let x_2059 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2057.x, x_2057.y, x_2057.z), vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
    let x_2062 : f32 = u_xlat83;
    u_xlat83 = max(x_2062, 0.00006103515625f);
    let x_2065 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2065);
    let x_2067 : f32 = u_xlat84;
    let x_2069 : vec4<f32> = u_xlat9;
    let x_2071 : vec3<f32> = (vec3<f32>(x_2067, x_2067, x_2067) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
    let x_2072 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
    let x_2074 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2074);
    let x_2076 : f32 = u_xlat83;
    let x_2077 : i32 = u_xlati82;
    let x_2079 : f32 = x_2044.x_AdditionalLightsAttenuation[x_2077].x;
    u_xlat83 = (x_2076 * x_2079);
    let x_2081 : f32 = u_xlat83;
    let x_2083 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2081) * x_2083) + 1.0f);
    let x_2086 : f32 = u_xlat83;
    u_xlat83 = max(x_2086, 0.0f);
    let x_2088 : f32 = u_xlat83;
    let x_2089 : f32 = u_xlat83;
    u_xlat83 = (x_2088 * x_2089);
    let x_2091 : f32 = u_xlat83;
    let x_2092 : f32 = u_xlat85;
    u_xlat83 = (x_2091 * x_2092);
    let x_2094 : i32 = u_xlati82;
    let x_2096 : vec4<f32> = x_2044.x_AdditionalLightsSpotDir[x_2094];
    let x_2098 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2096.x, x_2096.y, x_2096.z), vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2101 : f32 = u_xlat85;
    let x_2102 : i32 = u_xlati82;
    let x_2104 : f32 = x_2044.x_AdditionalLightsAttenuation[x_2102].z;
    let x_2106 : i32 = u_xlati82;
    let x_2108 : f32 = x_2044.x_AdditionalLightsAttenuation[x_2106].w;
    u_xlat85 = ((x_2101 * x_2104) + x_2108);
    let x_2110 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2110, 0.0f, 1.0f);
    let x_2112 : f32 = u_xlat85;
    let x_2113 : f32 = u_xlat85;
    u_xlat85 = (x_2112 * x_2113);
    let x_2115 : f32 = u_xlat83;
    let x_2116 : f32 = u_xlat85;
    u_xlat83 = (x_2115 * x_2116);
    let x_2120 : i32 = u_xlati82;
    let x_2122 : f32 = x_464.x_AdditionalShadowParams[x_2120].w;
    u_xlati85 = i32(x_2122);
    let x_2125 : i32 = u_xlati85;
    u_xlatb87 = (x_2125 >= 0i);
    let x_2127 : bool = u_xlatb87;
    if (x_2127) {
      let x_2131 : i32 = u_xlati82;
      let x_2133 : f32 = x_464.x_AdditionalShadowParams[x_2131].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2133, x_2133, x_2133, x_2133))));
      let x_2138 : bool = u_xlatb87;
      if (x_2138) {
        let x_2143 : vec4<f32> = u_xlat10;
        let x_2146 : vec4<f32> = u_xlat10;
        let x_2149 : vec4<bool> = (abs(vec4<f32>(x_2143.z, x_2143.z, x_2143.y, x_2143.z)) >= abs(vec4<f32>(x_2146.x, x_2146.y, x_2146.x, x_2146.x)));
        let x_2151 : vec3<bool> = vec3<bool>(x_2149.x, x_2149.y, x_2149.z);
        let x_2152 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
        let x_2155 : bool = u_xlatb11.y;
        let x_2157 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2155 & x_2157);
        let x_2159 : vec4<f32> = u_xlat10;
        let x_2162 : vec4<bool> = (-(vec4<f32>(x_2159.z, x_2159.y, x_2159.z, x_2159.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2163 : vec3<bool> = vec3<bool>(x_2162.x, x_2162.y, x_2162.w);
        let x_2164 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2163.x, x_2163.y, x_2164.z, x_2163.z);
        let x_2167 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2167);
        let x_2172 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2172);
        let x_2178 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2178);
        let x_2181 : bool = u_xlatb11.z;
        if (x_2181) {
          let x_2186 : f32 = u_xlat11.y;
          x_2182 = x_2186;
        } else {
          let x_2188 : f32 = u_xlat88;
          x_2182 = x_2188;
        }
        let x_2189 : f32 = x_2182;
        u_xlat88 = x_2189;
        let x_2191 : bool = u_xlatb87;
        if (x_2191) {
          let x_2196 : f32 = u_xlat11.x;
          x_2192 = x_2196;
        } else {
          let x_2198 : f32 = u_xlat88;
          x_2192 = x_2198;
        }
        let x_2199 : f32 = x_2192;
        u_xlat87 = x_2199;
        let x_2200 : i32 = u_xlati82;
        let x_2202 : f32 = x_464.x_AdditionalShadowParams[x_2200].w;
        u_xlat88 = trunc(x_2202);
        let x_2204 : f32 = u_xlat87;
        let x_2205 : f32 = u_xlat88;
        u_xlat87 = (x_2204 + x_2205);
        let x_2207 : f32 = u_xlat87;
        u_xlati85 = i32(x_2207);
      }
      let x_2209 : i32 = u_xlati85;
      u_xlati85 = (x_2209 << bitcast<u32>(2i));
      let x_2211 : vec3<f32> = vs_INTERP7;
      let x_2214 : i32 = u_xlati85;
      let x_2217 : i32 = u_xlati85;
      let x_2221 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[((x_2214 + 1i) / 4i)][((x_2217 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2211.y, x_2211.y, x_2211.y, x_2211.y) * x_2221);
      let x_2223 : i32 = u_xlati85;
      let x_2225 : i32 = u_xlati85;
      let x_2228 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[(x_2223 / 4i)][(x_2225 % 4i)];
      let x_2229 : vec3<f32> = vs_INTERP7;
      let x_2232 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2228 * vec4<f32>(x_2229.x, x_2229.x, x_2229.x, x_2229.x)) + x_2232);
      let x_2234 : i32 = u_xlati85;
      let x_2237 : i32 = u_xlati85;
      let x_2241 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[((x_2234 + 2i) / 4i)][((x_2237 + 2i) % 4i)];
      let x_2242 : vec3<f32> = vs_INTERP7;
      let x_2245 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2241 * vec4<f32>(x_2242.z, x_2242.z, x_2242.z, x_2242.z)) + x_2245);
      let x_2247 : vec4<f32> = u_xlat11;
      let x_2248 : i32 = u_xlati85;
      let x_2251 : i32 = u_xlati85;
      let x_2255 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[((x_2248 + 3i) / 4i)][((x_2251 + 3i) % 4i)];
      u_xlat11 = (x_2247 + x_2255);
      let x_2257 : vec4<f32> = u_xlat11;
      let x_2259 : vec4<f32> = u_xlat11;
      let x_2261 : vec3<f32> = (vec3<f32>(x_2257.x, x_2257.y, x_2257.z) / vec3<f32>(x_2259.w, x_2259.w, x_2259.w));
      let x_2262 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
      let x_2265 : i32 = u_xlati82;
      let x_2267 : f32 = x_464.x_AdditionalShadowParams[x_2265].y;
      u_xlatb85 = (0.0f < x_2267);
      let x_2269 : bool = u_xlatb85;
      if (x_2269) {
        let x_2272 : i32 = u_xlati82;
        let x_2274 : f32 = x_464.x_AdditionalShadowParams[x_2272].y;
        u_xlatb85 = (1.0f == x_2274);
        let x_2276 : bool = u_xlatb85;
        if (x_2276) {
          let x_2279 : vec4<f32> = u_xlat11;
          let x_2283 : vec4<f32> = x_464.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2279.x, x_2279.y, x_2279.x, x_2279.y) + x_2283);
          let x_2286 : vec4<f32> = u_xlat12;
          let x_2287 : vec2<f32> = vec2<f32>(x_2286.x, x_2286.y);
          let x_2289 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
          let x_2297 : vec3<f32> = txVec30;
          let x_2299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2297.xy, x_2297.z);
          u_xlat13.x = x_2299;
          let x_2302 : vec4<f32> = u_xlat12;
          let x_2303 : vec2<f32> = vec2<f32>(x_2302.z, x_2302.w);
          let x_2305 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2303.x, x_2303.y, x_2305);
          let x_2312 : vec3<f32> = txVec31;
          let x_2314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2312.xy, x_2312.z);
          u_xlat13.y = x_2314;
          let x_2316 : vec4<f32> = u_xlat11;
          let x_2320 : vec4<f32> = x_464.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.y) + x_2320);
          let x_2323 : vec4<f32> = u_xlat12;
          let x_2324 : vec2<f32> = vec2<f32>(x_2323.x, x_2323.y);
          let x_2326 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2324.x, x_2324.y, x_2326);
          let x_2333 : vec3<f32> = txVec32;
          let x_2335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2333.xy, x_2333.z);
          u_xlat13.z = x_2335;
          let x_2338 : vec4<f32> = u_xlat12;
          let x_2339 : vec2<f32> = vec2<f32>(x_2338.z, x_2338.w);
          let x_2341 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2339.x, x_2339.y, x_2341);
          let x_2348 : vec3<f32> = txVec33;
          let x_2350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
          u_xlat13.w = x_2350;
          let x_2352 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2352, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2355 : i32 = u_xlati82;
          let x_2357 : f32 = x_464.x_AdditionalShadowParams[x_2355].y;
          u_xlatb87 = (2.0f == x_2357);
          let x_2359 : bool = u_xlatb87;
          if (x_2359) {
            let x_2362 : vec4<f32> = u_xlat11;
            let x_2366 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2369 : vec2<f32> = ((vec2<f32>(x_2362.x, x_2362.y) * vec2<f32>(x_2366.z, x_2366.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2370 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2369.x, x_2369.y, x_2370.z, x_2370.w);
            let x_2372 : vec4<f32> = u_xlat12;
            let x_2374 : vec2<f32> = floor(vec2<f32>(x_2372.x, x_2372.y));
            let x_2375 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2374.x, x_2374.y, x_2375.z, x_2375.w);
            let x_2378 : vec4<f32> = u_xlat11;
            let x_2381 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2384 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2378.x, x_2378.y) * vec2<f32>(x_2381.z, x_2381.w)) + -(vec2<f32>(x_2384.x, x_2384.y)));
            let x_2388 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2388.x, x_2388.x, x_2388.y, x_2388.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2391 : vec4<f32> = u_xlat13;
            let x_2393 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2391.x, x_2391.x, x_2391.z, x_2391.z) * vec4<f32>(x_2393.x, x_2393.x, x_2393.z, x_2393.z));
            let x_2396 : vec4<f32> = u_xlat14;
            let x_2398 : vec2<f32> = (vec2<f32>(x_2396.y, x_2396.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2399 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2398.x, x_2399.y, x_2398.y, x_2399.w);
            let x_2401 : vec4<f32> = u_xlat14;
            let x_2404 : vec2<f32> = u_xlat64;
            let x_2406 : vec2<f32> = ((vec2<f32>(x_2401.x, x_2401.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2404));
            let x_2407 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
            let x_2410 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2410) + vec2<f32>(1.0f, 1.0f));
            let x_2413 : vec2<f32> = u_xlat64;
            let x_2414 : vec2<f32> = min(x_2413, vec2<f32>(0.0f, 0.0f));
            let x_2415 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2414.x, x_2414.y, x_2415.z, x_2415.w);
            let x_2417 : vec4<f32> = u_xlat15;
            let x_2420 : vec4<f32> = u_xlat15;
            let x_2423 : vec2<f32> = u_xlat66;
            let x_2424 : vec2<f32> = ((-(vec2<f32>(x_2417.x, x_2417.y)) * vec2<f32>(x_2420.x, x_2420.y)) + x_2423);
            let x_2425 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
            let x_2427 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2427, vec2<f32>(0.0f, 0.0f));
            let x_2429 : vec2<f32> = u_xlat64;
            let x_2431 : vec2<f32> = u_xlat64;
            let x_2433 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2429) * x_2431) + vec2<f32>(x_2433.y, x_2433.w));
            let x_2436 : vec4<f32> = u_xlat15;
            let x_2438 : vec2<f32> = (vec2<f32>(x_2436.x, x_2436.y) + vec2<f32>(1.0f, 1.0f));
            let x_2439 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
            let x_2441 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2441 + vec2<f32>(1.0f, 1.0f));
            let x_2443 : vec4<f32> = u_xlat14;
            let x_2445 : vec2<f32> = (vec2<f32>(x_2443.x, x_2443.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2446 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec2<f32> = u_xlat66;
            let x_2449 : vec2<f32> = (x_2448 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2450 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec4<f32> = u_xlat15;
            let x_2454 : vec2<f32> = (vec2<f32>(x_2452.x, x_2452.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2455 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2454.x, x_2454.y, x_2455.z, x_2455.w);
            let x_2457 : vec2<f32> = u_xlat64;
            let x_2458 : vec2<f32> = (x_2457 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2459 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2461.y, x_2461.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2465 : f32 = u_xlat15.x;
            u_xlat16.z = x_2465;
            let x_2468 : f32 = u_xlat64.x;
            u_xlat16.w = x_2468;
            let x_2471 : f32 = u_xlat17.x;
            u_xlat14.z = x_2471;
            let x_2474 : f32 = u_xlat13.x;
            u_xlat14.w = x_2474;
            let x_2476 : vec4<f32> = u_xlat14;
            let x_2478 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2476.z, x_2476.w, x_2476.x, x_2476.z) + vec4<f32>(x_2478.z, x_2478.w, x_2478.x, x_2478.z));
            let x_2482 : f32 = u_xlat16.y;
            u_xlat15.z = x_2482;
            let x_2485 : f32 = u_xlat64.y;
            u_xlat15.w = x_2485;
            let x_2488 : f32 = u_xlat14.y;
            u_xlat17.z = x_2488;
            let x_2491 : f32 = u_xlat13.z;
            u_xlat17.w = x_2491;
            let x_2493 : vec4<f32> = u_xlat15;
            let x_2495 : vec4<f32> = u_xlat17;
            let x_2497 : vec3<f32> = (vec3<f32>(x_2493.z, x_2493.y, x_2493.w) + vec3<f32>(x_2495.z, x_2495.y, x_2495.w));
            let x_2498 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat14;
            let x_2502 : vec4<f32> = u_xlat18;
            let x_2504 : vec3<f32> = (vec3<f32>(x_2500.x, x_2500.z, x_2500.w) / vec3<f32>(x_2502.z, x_2502.w, x_2502.y));
            let x_2505 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
            let x_2507 : vec4<f32> = u_xlat14;
            let x_2509 : vec3<f32> = (vec3<f32>(x_2507.x, x_2507.y, x_2507.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2510 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
            let x_2512 : vec4<f32> = u_xlat17;
            let x_2514 : vec4<f32> = u_xlat13;
            let x_2516 : vec3<f32> = (vec3<f32>(x_2512.z, x_2512.y, x_2512.w) / vec3<f32>(x_2514.x, x_2514.y, x_2514.z));
            let x_2517 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
            let x_2519 : vec4<f32> = u_xlat15;
            let x_2521 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2522 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
            let x_2524 : vec4<f32> = u_xlat14;
            let x_2527 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2529 : vec3<f32> = (vec3<f32>(x_2524.y, x_2524.x, x_2524.z) * vec3<f32>(x_2527.x, x_2527.x, x_2527.x));
            let x_2530 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
            let x_2532 : vec4<f32> = u_xlat15;
            let x_2535 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2537 : vec3<f32> = (vec3<f32>(x_2532.x, x_2532.y, x_2532.z) * vec3<f32>(x_2535.y, x_2535.y, x_2535.y));
            let x_2538 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
            let x_2541 : f32 = u_xlat15.x;
            u_xlat14.w = x_2541;
            let x_2543 : vec4<f32> = u_xlat12;
            let x_2546 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2549 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2543.x, x_2543.y, x_2543.x, x_2543.y) * vec4<f32>(x_2546.x, x_2546.y, x_2546.x, x_2546.y)) + vec4<f32>(x_2549.y, x_2549.w, x_2549.x, x_2549.w));
            let x_2552 : vec4<f32> = u_xlat12;
            let x_2555 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2558 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2552.x, x_2552.y) * vec2<f32>(x_2555.x, x_2555.y)) + vec2<f32>(x_2558.z, x_2558.w));
            let x_2562 : f32 = u_xlat14.y;
            u_xlat15.w = x_2562;
            let x_2564 : vec4<f32> = u_xlat15;
            let x_2565 : vec2<f32> = vec2<f32>(x_2564.y, x_2564.z);
            let x_2566 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2566.x, x_2565.x, x_2566.z, x_2565.y);
            let x_2568 : vec4<f32> = u_xlat12;
            let x_2571 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2574 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2574.y));
            let x_2577 : vec4<f32> = u_xlat12;
            let x_2580 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2583 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2577.x, x_2577.y, x_2577.x, x_2577.y) * vec4<f32>(x_2580.x, x_2580.y, x_2580.x, x_2580.y)) + vec4<f32>(x_2583.w, x_2583.y, x_2583.w, x_2583.z));
            let x_2586 : vec4<f32> = u_xlat12;
            let x_2589 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2592 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2586.x, x_2586.y, x_2586.x, x_2586.y) * vec4<f32>(x_2589.x, x_2589.y, x_2589.x, x_2589.y)) + vec4<f32>(x_2592.x, x_2592.w, x_2592.z, x_2592.w));
            let x_2595 : vec4<f32> = u_xlat13;
            let x_2597 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2595.x, x_2595.x, x_2595.x, x_2595.y) * vec4<f32>(x_2597.z, x_2597.w, x_2597.y, x_2597.z));
            let x_2600 : vec4<f32> = u_xlat13;
            let x_2602 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2600.y, x_2600.y, x_2600.z, x_2600.z) * x_2602);
            let x_2605 : f32 = u_xlat13.z;
            let x_2607 : f32 = u_xlat18.y;
            u_xlat87 = (x_2605 * x_2607);
            let x_2610 : vec4<f32> = u_xlat16;
            let x_2611 : vec2<f32> = vec2<f32>(x_2610.x, x_2610.y);
            let x_2613 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2611.x, x_2611.y, x_2613);
            let x_2620 : vec3<f32> = txVec34;
            let x_2622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2620.xy, x_2620.z);
            u_xlat88 = x_2622;
            let x_2624 : vec4<f32> = u_xlat16;
            let x_2625 : vec2<f32> = vec2<f32>(x_2624.z, x_2624.w);
            let x_2627 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2625.x, x_2625.y, x_2627);
            let x_2635 : vec3<f32> = txVec35;
            let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
            u_xlat89 = x_2637;
            let x_2638 : f32 = u_xlat89;
            let x_2640 : f32 = u_xlat19.y;
            u_xlat89 = (x_2638 * x_2640);
            let x_2643 : f32 = u_xlat19.x;
            let x_2644 : f32 = u_xlat88;
            let x_2646 : f32 = u_xlat89;
            u_xlat88 = ((x_2643 * x_2644) + x_2646);
            let x_2649 : vec2<f32> = u_xlat64;
            let x_2651 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2649.x, x_2649.y, x_2651);
            let x_2658 : vec3<f32> = txVec36;
            let x_2660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2658.xy, x_2658.z);
            u_xlat89 = x_2660;
            let x_2662 : f32 = u_xlat19.z;
            let x_2663 : f32 = u_xlat89;
            let x_2665 : f32 = u_xlat88;
            u_xlat88 = ((x_2662 * x_2663) + x_2665);
            let x_2668 : vec4<f32> = u_xlat15;
            let x_2669 : vec2<f32> = vec2<f32>(x_2668.x, x_2668.y);
            let x_2671 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2669.x, x_2669.y, x_2671);
            let x_2678 : vec3<f32> = txVec37;
            let x_2680 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2678.xy, x_2678.z);
            u_xlat89 = x_2680;
            let x_2682 : f32 = u_xlat19.w;
            let x_2683 : f32 = u_xlat89;
            let x_2685 : f32 = u_xlat88;
            u_xlat88 = ((x_2682 * x_2683) + x_2685);
            let x_2688 : vec4<f32> = u_xlat17;
            let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
            let x_2691 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
            let x_2698 : vec3<f32> = txVec38;
            let x_2700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2698.xy, x_2698.z);
            u_xlat89 = x_2700;
            let x_2702 : f32 = u_xlat20.x;
            let x_2703 : f32 = u_xlat89;
            let x_2705 : f32 = u_xlat88;
            u_xlat88 = ((x_2702 * x_2703) + x_2705);
            let x_2708 : vec4<f32> = u_xlat17;
            let x_2709 : vec2<f32> = vec2<f32>(x_2708.z, x_2708.w);
            let x_2711 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2709.x, x_2709.y, x_2711);
            let x_2718 : vec3<f32> = txVec39;
            let x_2720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
            u_xlat89 = x_2720;
            let x_2722 : f32 = u_xlat20.y;
            let x_2723 : f32 = u_xlat89;
            let x_2725 : f32 = u_xlat88;
            u_xlat88 = ((x_2722 * x_2723) + x_2725);
            let x_2728 : vec4<f32> = u_xlat15;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.z, x_2728.w);
            let x_2731 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec40;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat89 = x_2740;
            let x_2742 : f32 = u_xlat20.z;
            let x_2743 : f32 = u_xlat89;
            let x_2745 : f32 = u_xlat88;
            u_xlat88 = ((x_2742 * x_2743) + x_2745);
            let x_2748 : vec4<f32> = u_xlat14;
            let x_2749 : vec2<f32> = vec2<f32>(x_2748.x, x_2748.y);
            let x_2751 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2749.x, x_2749.y, x_2751);
            let x_2758 : vec3<f32> = txVec41;
            let x_2760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2758.xy, x_2758.z);
            u_xlat89 = x_2760;
            let x_2762 : f32 = u_xlat20.w;
            let x_2763 : f32 = u_xlat89;
            let x_2765 : f32 = u_xlat88;
            u_xlat88 = ((x_2762 * x_2763) + x_2765);
            let x_2768 : vec4<f32> = u_xlat14;
            let x_2769 : vec2<f32> = vec2<f32>(x_2768.z, x_2768.w);
            let x_2771 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2769.x, x_2769.y, x_2771);
            let x_2778 : vec3<f32> = txVec42;
            let x_2780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2778.xy, x_2778.z);
            u_xlat89 = x_2780;
            let x_2781 : f32 = u_xlat87;
            let x_2782 : f32 = u_xlat89;
            let x_2784 : f32 = u_xlat88;
            u_xlat85 = ((x_2781 * x_2782) + x_2784);
          } else {
            let x_2787 : vec4<f32> = u_xlat11;
            let x_2790 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2793 : vec2<f32> = ((vec2<f32>(x_2787.x, x_2787.y) * vec2<f32>(x_2790.z, x_2790.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2794 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2793.x, x_2793.y, x_2794.z, x_2794.w);
            let x_2796 : vec4<f32> = u_xlat12;
            let x_2798 : vec2<f32> = floor(vec2<f32>(x_2796.x, x_2796.y));
            let x_2799 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2798.x, x_2798.y, x_2799.z, x_2799.w);
            let x_2801 : vec4<f32> = u_xlat11;
            let x_2804 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2807 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2801.x, x_2801.y) * vec2<f32>(x_2804.z, x_2804.w)) + -(vec2<f32>(x_2807.x, x_2807.y)));
            let x_2811 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2811.x, x_2811.x, x_2811.y, x_2811.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2814 : vec4<f32> = u_xlat13;
            let x_2816 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2814.x, x_2814.x, x_2814.z, x_2814.z) * vec4<f32>(x_2816.x, x_2816.x, x_2816.z, x_2816.z));
            let x_2819 : vec4<f32> = u_xlat14;
            let x_2821 : vec2<f32> = (vec2<f32>(x_2819.y, x_2819.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2822 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2822.x, x_2821.x, x_2822.z, x_2821.y);
            let x_2824 : vec4<f32> = u_xlat14;
            let x_2827 : vec2<f32> = u_xlat64;
            let x_2829 : vec2<f32> = ((vec2<f32>(x_2824.x, x_2824.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2827));
            let x_2830 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2829.x, x_2830.y, x_2829.y, x_2830.w);
            let x_2832 : vec2<f32> = u_xlat64;
            let x_2834 : vec2<f32> = (-(x_2832) + vec2<f32>(1.0f, 1.0f));
            let x_2835 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
            let x_2837 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2837, vec2<f32>(0.0f, 0.0f));
            let x_2839 : vec2<f32> = u_xlat66;
            let x_2841 : vec2<f32> = u_xlat66;
            let x_2843 : vec4<f32> = u_xlat14;
            let x_2845 : vec2<f32> = ((-(x_2839) * x_2841) + vec2<f32>(x_2843.x, x_2843.y));
            let x_2846 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2845.x, x_2845.y, x_2846.z, x_2846.w);
            let x_2848 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2848, vec2<f32>(0.0f, 0.0f));
            let x_2851 : vec2<f32> = u_xlat66;
            let x_2853 : vec2<f32> = u_xlat66;
            let x_2855 : vec4<f32> = u_xlat13;
            let x_2857 : vec2<f32> = ((-(x_2851) * x_2853) + vec2<f32>(x_2855.y, x_2855.w));
            let x_2858 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2857.x, x_2858.y, x_2857.y);
            let x_2860 : vec4<f32> = u_xlat14;
            let x_2862 : vec2<f32> = (vec2<f32>(x_2860.x, x_2860.y) + vec2<f32>(2.0f, 2.0f));
            let x_2863 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2865 : vec3<f32> = u_xlat39;
            let x_2867 : vec2<f32> = (vec2<f32>(x_2865.x, x_2865.z) + vec2<f32>(2.0f, 2.0f));
            let x_2868 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2868.x, x_2867.x, x_2868.z, x_2867.y);
            let x_2871 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2871 * 0.08163200318813323975f);
            let x_2874 : vec4<f32> = u_xlat13;
            let x_2876 : vec3<f32> = (vec3<f32>(x_2874.z, x_2874.x, x_2874.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2877 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2876.x, x_2876.y, x_2876.z, x_2877.w);
            let x_2879 : vec4<f32> = u_xlat14;
            let x_2881 : vec2<f32> = (vec2<f32>(x_2879.x, x_2879.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
            let x_2885 : f32 = u_xlat17.y;
            u_xlat16.x = x_2885;
            let x_2887 : vec2<f32> = u_xlat64;
            let x_2890 : vec2<f32> = ((vec2<f32>(x_2887.x, x_2887.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2891 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2891.x, x_2890.x, x_2891.z, x_2890.y);
            let x_2893 : vec2<f32> = u_xlat64;
            let x_2896 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2897 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2896.x, x_2897.y, x_2896.y, x_2897.w);
            let x_2900 : f32 = u_xlat13.x;
            u_xlat14.y = x_2900;
            let x_2903 : f32 = u_xlat15.y;
            u_xlat14.w = x_2903;
            let x_2905 : vec4<f32> = u_xlat14;
            let x_2906 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2905 + x_2906);
            let x_2908 : vec2<f32> = u_xlat64;
            let x_2911 : vec2<f32> = ((vec2<f32>(x_2908.y, x_2908.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2912 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2912.x, x_2911.x, x_2912.z, x_2911.y);
            let x_2914 : vec2<f32> = u_xlat64;
            let x_2917 : vec2<f32> = ((vec2<f32>(x_2914.y, x_2914.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2918 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2917.x, x_2918.y, x_2917.y, x_2918.w);
            let x_2921 : f32 = u_xlat13.y;
            u_xlat15.y = x_2921;
            let x_2923 : vec4<f32> = u_xlat15;
            let x_2924 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2923 + x_2924);
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2927 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2926 / x_2927);
            let x_2929 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2929 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2931 : vec4<f32> = u_xlat15;
            let x_2932 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2931 / x_2932);
            let x_2934 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2934 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2936 : vec4<f32> = u_xlat14;
            let x_2939 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2936.w, x_2936.x, x_2936.y, x_2936.z) * vec4<f32>(x_2939.x, x_2939.x, x_2939.x, x_2939.x));
            let x_2942 : vec4<f32> = u_xlat15;
            let x_2945 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2942.x, x_2942.w, x_2942.y, x_2942.z) * vec4<f32>(x_2945.y, x_2945.y, x_2945.y, x_2945.y));
            let x_2948 : vec4<f32> = u_xlat14;
            let x_2949 : vec3<f32> = vec3<f32>(x_2948.y, x_2948.z, x_2948.w);
            let x_2950 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2949.x, x_2950.y, x_2949.y, x_2949.z);
            let x_2953 : f32 = u_xlat15.x;
            u_xlat17.y = x_2953;
            let x_2955 : vec4<f32> = u_xlat12;
            let x_2958 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2961 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2955.x, x_2955.y, x_2955.x, x_2955.y) * vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y)) + vec4<f32>(x_2961.x, x_2961.y, x_2961.z, x_2961.y));
            let x_2964 : vec4<f32> = u_xlat12;
            let x_2967 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2970 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2964.x, x_2964.y) * vec2<f32>(x_2967.x, x_2967.y)) + vec2<f32>(x_2970.w, x_2970.y));
            let x_2974 : f32 = u_xlat17.y;
            u_xlat14.y = x_2974;
            let x_2977 : f32 = u_xlat15.z;
            u_xlat17.y = x_2977;
            let x_2979 : vec4<f32> = u_xlat12;
            let x_2982 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2985 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y) * vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y)) + vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2985.y));
            let x_2988 : vec4<f32> = u_xlat12;
            let x_2991 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat17;
            let x_2996 : vec2<f32> = ((vec2<f32>(x_2988.x, x_2988.y) * vec2<f32>(x_2991.x, x_2991.y)) + vec2<f32>(x_2994.w, x_2994.y));
            let x_2997 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_2996.x, x_2996.y, x_2997.z, x_2997.w);
            let x_3000 : f32 = u_xlat17.y;
            u_xlat14.z = x_3000;
            let x_3003 : vec4<f32> = u_xlat12;
            let x_3006 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y) * vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y)) + vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.z));
            let x_3013 : f32 = u_xlat15.w;
            u_xlat17.y = x_3013;
            let x_3016 : vec4<f32> = u_xlat12;
            let x_3019 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3022 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y) * vec4<f32>(x_3019.x, x_3019.y, x_3019.x, x_3019.y)) + vec4<f32>(x_3022.x, x_3022.y, x_3022.z, x_3022.y));
            let x_3026 : vec4<f32> = u_xlat12;
            let x_3029 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3026.x, x_3026.y) * vec2<f32>(x_3029.x, x_3029.y)) + vec2<f32>(x_3032.w, x_3032.y));
            let x_3036 : f32 = u_xlat17.y;
            u_xlat14.w = x_3036;
            let x_3039 : vec4<f32> = u_xlat12;
            let x_3042 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3042.x, x_3042.y)) + vec2<f32>(x_3045.x, x_3045.w));
            let x_3048 : vec4<f32> = u_xlat17;
            let x_3049 : vec3<f32> = vec3<f32>(x_3048.x, x_3048.z, x_3048.w);
            let x_3050 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3049.x, x_3050.y, x_3049.y, x_3049.z);
            let x_3052 : vec4<f32> = u_xlat12;
            let x_3055 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3058 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y) * vec4<f32>(x_3055.x, x_3055.y, x_3055.x, x_3055.y)) + vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3058.y));
            let x_3061 : vec4<f32> = u_xlat12;
            let x_3064 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3061.x, x_3061.y) * vec2<f32>(x_3064.x, x_3064.y)) + vec2<f32>(x_3067.w, x_3067.y));
            let x_3071 : f32 = u_xlat14.x;
            u_xlat15.x = x_3071;
            let x_3073 : vec4<f32> = u_xlat12;
            let x_3076 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat15;
            let x_3081 : vec2<f32> = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.x, x_3076.y)) + vec2<f32>(x_3079.x, x_3079.y));
            let x_3082 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3081.x, x_3081.y, x_3082.z, x_3082.w);
            let x_3085 : vec4<f32> = u_xlat13;
            let x_3087 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3085.x, x_3085.x, x_3085.x, x_3085.x) * x_3087);
            let x_3090 : vec4<f32> = u_xlat13;
            let x_3092 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3090.y, x_3090.y, x_3090.y, x_3090.y) * x_3092);
            let x_3095 : vec4<f32> = u_xlat13;
            let x_3097 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3095.z, x_3095.z, x_3095.z, x_3095.z) * x_3097);
            let x_3099 : vec4<f32> = u_xlat13;
            let x_3101 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3099.w, x_3099.w, x_3099.w, x_3099.w) * x_3101);
            let x_3104 : vec4<f32> = u_xlat18;
            let x_3105 : vec2<f32> = vec2<f32>(x_3104.x, x_3104.y);
            let x_3107 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
            let x_3114 : vec3<f32> = txVec43;
            let x_3116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
            u_xlat87 = x_3116;
            let x_3118 : vec4<f32> = u_xlat18;
            let x_3119 : vec2<f32> = vec2<f32>(x_3118.z, x_3118.w);
            let x_3121 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3128 : vec3<f32> = txVec44;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat88 = x_3130;
            let x_3131 : f32 = u_xlat88;
            let x_3133 : f32 = u_xlat23.y;
            u_xlat88 = (x_3131 * x_3133);
            let x_3136 : f32 = u_xlat23.x;
            let x_3137 : f32 = u_xlat87;
            let x_3139 : f32 = u_xlat88;
            u_xlat87 = ((x_3136 * x_3137) + x_3139);
            let x_3142 : vec2<f32> = u_xlat64;
            let x_3144 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec45;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat88 = x_3153;
            let x_3155 : f32 = u_xlat23.z;
            let x_3156 : f32 = u_xlat88;
            let x_3158 : f32 = u_xlat87;
            u_xlat87 = ((x_3155 * x_3156) + x_3158);
            let x_3161 : vec4<f32> = u_xlat21;
            let x_3162 : vec2<f32> = vec2<f32>(x_3161.x, x_3161.y);
            let x_3164 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec46;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat88 = x_3173;
            let x_3175 : f32 = u_xlat23.w;
            let x_3176 : f32 = u_xlat88;
            let x_3178 : f32 = u_xlat87;
            u_xlat87 = ((x_3175 * x_3176) + x_3178);
            let x_3181 : vec4<f32> = u_xlat19;
            let x_3182 : vec2<f32> = vec2<f32>(x_3181.x, x_3181.y);
            let x_3184 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
            let x_3191 : vec3<f32> = txVec47;
            let x_3193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
            u_xlat88 = x_3193;
            let x_3195 : f32 = u_xlat24.x;
            let x_3196 : f32 = u_xlat88;
            let x_3198 : f32 = u_xlat87;
            u_xlat87 = ((x_3195 * x_3196) + x_3198);
            let x_3201 : vec4<f32> = u_xlat19;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.z, x_3201.w);
            let x_3204 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec48;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat88 = x_3213;
            let x_3215 : f32 = u_xlat24.y;
            let x_3216 : f32 = u_xlat88;
            let x_3218 : f32 = u_xlat87;
            u_xlat87 = ((x_3215 * x_3216) + x_3218);
            let x_3221 : vec4<f32> = u_xlat20;
            let x_3222 : vec2<f32> = vec2<f32>(x_3221.x, x_3221.y);
            let x_3224 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
            let x_3231 : vec3<f32> = txVec49;
            let x_3233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
            u_xlat88 = x_3233;
            let x_3235 : f32 = u_xlat24.z;
            let x_3236 : f32 = u_xlat88;
            let x_3238 : f32 = u_xlat87;
            u_xlat87 = ((x_3235 * x_3236) + x_3238);
            let x_3241 : vec4<f32> = u_xlat21;
            let x_3242 : vec2<f32> = vec2<f32>(x_3241.z, x_3241.w);
            let x_3244 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec50;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat88 = x_3253;
            let x_3255 : f32 = u_xlat24.w;
            let x_3256 : f32 = u_xlat88;
            let x_3258 : f32 = u_xlat87;
            u_xlat87 = ((x_3255 * x_3256) + x_3258);
            let x_3261 : vec4<f32> = u_xlat22;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec51;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat88 = x_3273;
            let x_3275 : f32 = u_xlat25.x;
            let x_3276 : f32 = u_xlat88;
            let x_3278 : f32 = u_xlat87;
            u_xlat87 = ((x_3275 * x_3276) + x_3278);
            let x_3281 : vec4<f32> = u_xlat22;
            let x_3282 : vec2<f32> = vec2<f32>(x_3281.z, x_3281.w);
            let x_3284 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec52;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat88 = x_3293;
            let x_3295 : f32 = u_xlat25.y;
            let x_3296 : f32 = u_xlat88;
            let x_3298 : f32 = u_xlat87;
            u_xlat87 = ((x_3295 * x_3296) + x_3298);
            let x_3301 : vec2<f32> = u_xlat40;
            let x_3303 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec53;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat88 = x_3312;
            let x_3314 : f32 = u_xlat25.z;
            let x_3315 : f32 = u_xlat88;
            let x_3317 : f32 = u_xlat87;
            u_xlat87 = ((x_3314 * x_3315) + x_3317);
            let x_3320 : vec2<f32> = u_xlat72;
            let x_3322 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec54;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat88 = x_3331;
            let x_3333 : f32 = u_xlat25.w;
            let x_3334 : f32 = u_xlat88;
            let x_3336 : f32 = u_xlat87;
            u_xlat87 = ((x_3333 * x_3334) + x_3336);
            let x_3339 : vec4<f32> = u_xlat17;
            let x_3340 : vec2<f32> = vec2<f32>(x_3339.x, x_3339.y);
            let x_3342 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3340.x, x_3340.y, x_3342);
            let x_3349 : vec3<f32> = txVec55;
            let x_3351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3349.xy, x_3349.z);
            u_xlat88 = x_3351;
            let x_3353 : f32 = u_xlat13.x;
            let x_3354 : f32 = u_xlat88;
            let x_3356 : f32 = u_xlat87;
            u_xlat87 = ((x_3353 * x_3354) + x_3356);
            let x_3359 : vec4<f32> = u_xlat17;
            let x_3360 : vec2<f32> = vec2<f32>(x_3359.z, x_3359.w);
            let x_3362 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
            let x_3369 : vec3<f32> = txVec56;
            let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
            u_xlat88 = x_3371;
            let x_3373 : f32 = u_xlat13.y;
            let x_3374 : f32 = u_xlat88;
            let x_3376 : f32 = u_xlat87;
            u_xlat87 = ((x_3373 * x_3374) + x_3376);
            let x_3379 : vec2<f32> = u_xlat67;
            let x_3381 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec57;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat88 = x_3390;
            let x_3392 : f32 = u_xlat13.z;
            let x_3393 : f32 = u_xlat88;
            let x_3395 : f32 = u_xlat87;
            u_xlat87 = ((x_3392 * x_3393) + x_3395);
            let x_3398 : vec4<f32> = u_xlat12;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec58;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat88 = x_3410;
            let x_3412 : f32 = u_xlat13.w;
            let x_3413 : f32 = u_xlat88;
            let x_3415 : f32 = u_xlat87;
            u_xlat85 = ((x_3412 * x_3413) + x_3415);
          }
        }
      } else {
        let x_3419 : vec4<f32> = u_xlat11;
        let x_3420 : vec2<f32> = vec2<f32>(x_3419.x, x_3419.y);
        let x_3422 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3420.x, x_3420.y, x_3422);
        let x_3429 : vec3<f32> = txVec59;
        let x_3431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3429.xy, x_3429.z);
        u_xlat85 = x_3431;
      }
      let x_3432 : i32 = u_xlati82;
      let x_3434 : f32 = x_464.x_AdditionalShadowParams[x_3432].x;
      u_xlat87 = (1.0f + -(x_3434));
      let x_3437 : f32 = u_xlat85;
      let x_3438 : i32 = u_xlati82;
      let x_3440 : f32 = x_464.x_AdditionalShadowParams[x_3438].x;
      let x_3442 : f32 = u_xlat87;
      u_xlat85 = ((x_3437 * x_3440) + x_3442);
      let x_3445 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3445);
      let x_3449 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3449 >= 1.0f);
      let x_3451 : bool = u_xlatb87;
      let x_3452 : bool = u_xlatb88;
      u_xlatb87 = (x_3451 | x_3452);
      let x_3454 : bool = u_xlatb87;
      let x_3455 : f32 = u_xlat85;
      u_xlat85 = select(x_3455, 1.0f, x_3454);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3458 : f32 = u_xlat85;
    u_xlat87 = (-(x_3458) + 1.0f);
    let x_3461 : f32 = u_xlat80;
    let x_3462 : f32 = u_xlat87;
    let x_3464 : f32 = u_xlat85;
    u_xlat85 = ((x_3461 * x_3462) + x_3464);
    let x_3466 : f32 = u_xlat83;
    let x_3467 : f32 = u_xlat85;
    u_xlat83 = (x_3466 * x_3467);
    let x_3469 : vec4<f32> = u_xlat4;
    let x_3471 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3469.x, x_3469.y, x_3469.z), vec3<f32>(x_3471.x, x_3471.y, x_3471.z));
    let x_3474 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3474, 0.0f, 1.0f);
    let x_3476 : f32 = u_xlat83;
    let x_3477 : f32 = u_xlat85;
    u_xlat83 = (x_3476 * x_3477);
    let x_3479 : f32 = u_xlat83;
    let x_3481 : i32 = u_xlati82;
    let x_3483 : vec4<f32> = x_2044.x_AdditionalLightsColor[x_3481];
    let x_3485 : vec3<f32> = (vec3<f32>(x_3479, x_3479, x_3479) * vec3<f32>(x_3483.x, x_3483.y, x_3483.z));
    let x_3486 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3486.w);
    let x_3488 : vec4<f32> = u_xlat9;
    let x_3490 : f32 = u_xlat84;
    let x_3493 : vec3<f32> = u_xlat5;
    let x_3494 : vec3<f32> = ((vec3<f32>(x_3488.x, x_3488.y, x_3488.z) * vec3<f32>(x_3490, x_3490, x_3490)) + x_3493);
    let x_3495 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3494.x, x_3494.y, x_3494.z, x_3495.w);
    let x_3497 : vec4<f32> = u_xlat9;
    let x_3499 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3497.x, x_3497.y, x_3497.z), vec3<f32>(x_3499.x, x_3499.y, x_3499.z));
    let x_3502 : f32 = u_xlat82;
    u_xlat82 = max(x_3502, 1.17549435e-38f);
    let x_3504 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3504);
    let x_3506 : f32 = u_xlat82;
    let x_3508 : vec4<f32> = u_xlat9;
    let x_3510 : vec3<f32> = (vec3<f32>(x_3506, x_3506, x_3506) * vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
    let x_3511 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3511.w);
    let x_3513 : vec4<f32> = u_xlat4;
    let x_3515 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3513.x, x_3513.y, x_3513.z), vec3<f32>(x_3515.x, x_3515.y, x_3515.z));
    let x_3518 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3518, 0.0f, 1.0f);
    let x_3520 : vec4<f32> = u_xlat10;
    let x_3522 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3520.x, x_3520.y, x_3520.z), vec3<f32>(x_3522.x, x_3522.y, x_3522.z));
    let x_3525 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3525, 0.0f, 1.0f);
    let x_3527 : f32 = u_xlat82;
    let x_3528 : f32 = u_xlat82;
    u_xlat82 = (x_3527 * x_3528);
    let x_3530 : f32 = u_xlat82;
    let x_3532 : f32 = u_xlat8.x;
    u_xlat82 = ((x_3530 * x_3532) + 1.00001001358032226562f);
    let x_3535 : f32 = u_xlat83;
    let x_3536 : f32 = u_xlat83;
    u_xlat83 = (x_3535 * x_3536);
    let x_3538 : f32 = u_xlat82;
    let x_3539 : f32 = u_xlat82;
    u_xlat82 = (x_3538 * x_3539);
    let x_3541 : f32 = u_xlat83;
    u_xlat83 = max(x_3541, 0.10000000149011611938f);
    let x_3543 : f32 = u_xlat82;
    let x_3544 : f32 = u_xlat83;
    u_xlat82 = (x_3543 * x_3544);
    let x_3546 : f32 = u_xlat81;
    let x_3547 : f32 = u_xlat82;
    u_xlat82 = (x_3546 * x_3547);
    let x_3549 : f32 = u_xlat29;
    let x_3550 : f32 = u_xlat82;
    u_xlat82 = (x_3549 / x_3550);
    let x_3552 : vec3<f32> = u_xlat0;
    let x_3553 : f32 = u_xlat82;
    let x_3556 : vec3<f32> = u_xlat6;
    let x_3557 : vec3<f32> = ((x_3552 * vec3<f32>(x_3553, x_3553, x_3553)) + x_3556);
    let x_3558 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3557.x, x_3557.y, x_3557.z, x_3558.w);
    let x_3560 : vec4<f32> = u_xlat9;
    let x_3562 : vec4<f32> = u_xlat11;
    let x_3565 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3560.x, x_3560.y, x_3560.z) * vec3<f32>(x_3562.x, x_3562.y, x_3562.z)) + x_3565);

    continuing {
      let x_3567 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3567 + bitcast<u32>(1i));
    }
  }
  let x_3569 : vec4<f32> = u_xlat1;
  let x_3571 : f32 = u_xlat55;
  let x_3574 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_3569.x, x_3569.y, x_3569.w) * vec3<f32>(x_3571, x_3571, x_3571)) + vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
  let x_3577 : vec3<f32> = u_xlat34;
  let x_3578 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3577 + x_3578);
  let x_3582 : vec3<f32> = u_xlat2;
  let x_3583 : f32 = u_xlat53;
  let x_3586 : vec3<f32> = u_xlat0;
  let x_3587 : vec3<f32> = ((x_3582 * vec3<f32>(x_3583, x_3583, x_3583)) + x_3586);
  let x_3588 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


