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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat53 : f32;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlatb53 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_F0A81025 : sampler;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(3) var<uniform> x_435 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2015 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2153 : f32;
  var x_2163 : f32;
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
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_233.z);
  let x_239 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb78 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP7;
  let x_247 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_242) + x_247);
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_256);
  let x_258 : f32 = u_xlat80;
  let x_260 : vec4<f32> = u_xlat4;
  let x_262 : vec3<f32> = (vec3<f32>(x_258, x_258, x_258) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : bool = u_xlatb78;
  if (x_266) {
    let x_272 : f32 = u_xlat4.x;
    x_268 = x_272;
  } else {
    let x_276 : f32 = x_29.unity_MatrixV[0i].z;
    x_268 = x_276;
  }
  let x_277 : f32 = x_268;
  u_xlat5.x = x_277;
  let x_279 : bool = u_xlatb78;
  if (x_279) {
    let x_285 : f32 = u_xlat4.y;
    x_280 = x_285;
  } else {
    let x_289 : f32 = x_29.unity_MatrixV[1i].z;
    x_280 = x_289;
  }
  let x_290 : f32 = x_280;
  u_xlat5.y = x_290;
  let x_292 : bool = u_xlatb78;
  if (x_292) {
    let x_297 : f32 = u_xlat4.z;
    x_293 = x_297;
  } else {
    let x_301 : f32 = x_29.unity_MatrixV[2i].z;
    x_293 = x_301;
  }
  let x_302 : f32 = x_293;
  u_xlat5.z = x_302;
  let x_311 : vec2<f32> = vs_INTERP0;
  let x_313 : f32 = x_29.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_311, x_313);
  u_xlat4 = x_314;
  let x_320 : vec2<f32> = vs_INTERP0;
  let x_322 : f32 = x_29.x_GlobalMipBias.x;
  let x_323 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_320, x_322);
  u_xlat6 = vec3<f32>(x_323.x, x_323.y, x_323.z);
  let x_325 : vec4<f32> = u_xlat4;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(vec3<f32>(x_332.x, x_332.y, x_332.w), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat78;
  u_xlat78 = (x_337 + 0.5f);
  let x_340 : f32 = u_xlat78;
  let x_342 : vec3<f32> = u_xlat6;
  let x_343 : vec3<f32> = (vec3<f32>(x_340, x_340, x_340) * x_342);
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : f32 = u_xlat4.w;
  u_xlat78 = max(x_347, 0.00009999999747378752f);
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : f32 = u_xlat78;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) / vec3<f32>(x_352, x_352, x_352));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec3<f32> = u_xlat3;
  let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.y);
  let x_359 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat3;
  let x_365 : vec2<f32> = clamp(vec2<f32>(x_361.x, x_361.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_369 : f32 = u_xlat3.x;
  u_xlat78 = ((-(x_369) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_374 : f32 = u_xlat78;
  let x_377 : f32 = u_xlat3.y;
  u_xlat80 = (-(x_374) + x_377);
  let x_379 : f32 = u_xlat78;
  let x_381 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_383 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_387 : vec3<f32> = u_xlat3;
  let x_389 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_387.x, x_387.x, x_387.x) * x_389) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_395 : f32 = u_xlat3.y;
  u_xlat78 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat78;
  let x_399 : f32 = u_xlat78;
  u_xlat3.x = (x_398 * x_399);
  let x_403 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_403, 0.0078125f);
  let x_409 : f32 = u_xlat3.x;
  let x_411 : f32 = u_xlat3.x;
  u_xlat29 = (x_409 * x_411);
  let x_413 : f32 = u_xlat80;
  u_xlat80 = (x_413 + 1.0f);
  let x_415 : f32 = u_xlat80;
  u_xlat80 = min(x_415, 1.0f);
  let x_419 : f32 = u_xlat3.x;
  u_xlat81 = ((x_419 * 4.0f) + 2.0f);
  let x_425 : f32 = u_xlat3.z;
  u_xlat55 = min(x_425, 1.0f);
  let x_438 : f32 = x_435.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_438);
  let x_440 : bool = u_xlatb82;
  if (x_440) {
    let x_444 : f32 = x_435.x_MainLightShadowParams.y;
    u_xlatb82 = (x_444 == 1.0f);
    let x_446 : bool = u_xlatb82;
    if (x_446) {
      let x_451 : vec4<f32> = vs_INTERP3;
      let x_454 : vec4<f32> = x_435.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_451.x, x_451.y, x_451.x, x_451.y) + x_454);
      let x_458 : vec4<f32> = u_xlat7;
      let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
      let x_461 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_474 : vec3<f32> = txVec0;
      let x_476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_474.xy, x_474.z);
      u_xlat8.x = x_476;
      let x_479 : vec4<f32> = u_xlat7;
      let x_480 : vec2<f32> = vec2<f32>(x_479.z, x_479.w);
      let x_482 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_489 : vec3<f32> = txVec1;
      let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
      u_xlat8.y = x_491;
      let x_493 : vec4<f32> = vs_INTERP3;
      let x_496 : vec4<f32> = x_435.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_493.x, x_493.y, x_493.x, x_493.y) + x_496);
      let x_499 : vec4<f32> = u_xlat7;
      let x_500 : vec2<f32> = vec2<f32>(x_499.x, x_499.y);
      let x_502 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_500.x, x_500.y, x_502);
      let x_509 : vec3<f32> = txVec2;
      let x_511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_509.xy, x_509.z);
      u_xlat8.z = x_511;
      let x_514 : vec4<f32> = u_xlat7;
      let x_515 : vec2<f32> = vec2<f32>(x_514.z, x_514.w);
      let x_517 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_524 : vec3<f32> = txVec3;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_524.xy, x_524.z);
      u_xlat8.w = x_526;
      let x_529 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_529, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_536 : f32 = x_435.x_MainLightShadowParams.y;
      u_xlatb83 = (x_536 == 2.0f);
      let x_538 : bool = u_xlatb83;
      if (x_538) {
        let x_541 : vec4<f32> = vs_INTERP3;
        let x_545 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_549 : vec2<f32> = ((vec2<f32>(x_541.x, x_541.y) * vec2<f32>(x_545.z, x_545.w)) + vec2<f32>(0.5f, 0.5f));
        let x_550 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat7;
        let x_554 : vec2<f32> = floor(vec2<f32>(x_552.x, x_552.y));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_559 : vec4<f32> = vs_INTERP3;
        let x_562 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(x_562.z, x_562.w)) + -(vec2<f32>(x_565.x, x_565.y)));
        let x_569 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_569.x, x_569.x, x_569.y, x_569.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_574 : vec4<f32> = u_xlat8;
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_574.x, x_574.x, x_574.z, x_574.z) * vec4<f32>(x_576.x, x_576.x, x_576.z, x_576.z));
        let x_579 : vec4<f32> = u_xlat9;
        let x_583 : vec2<f32> = (vec2<f32>(x_579.y, x_579.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_584.y, x_583.y, x_584.w);
        let x_586 : vec4<f32> = u_xlat9;
        let x_589 : vec2<f32> = u_xlat59;
        let x_591 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.z) * vec2<f32>(0.5f, 0.5f)) + -(x_589));
        let x_592 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_595 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_595) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec2<f32> = u_xlat59;
        let x_602 : vec2<f32> = min(x_600, vec2<f32>(0.0f, 0.0f));
        let x_603 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat10;
        let x_608 : vec4<f32> = u_xlat10;
        let x_611 : vec2<f32> = u_xlat61;
        let x_612 : vec2<f32> = ((-(vec2<f32>(x_605.x, x_605.y)) * vec2<f32>(x_608.x, x_608.y)) + x_611);
        let x_613 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_615 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_615, vec2<f32>(0.0f, 0.0f));
        let x_617 : vec2<f32> = u_xlat59;
        let x_619 : vec2<f32> = u_xlat59;
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_617) * x_619) + vec2<f32>(x_621.y, x_621.w));
        let x_624 : vec4<f32> = u_xlat10;
        let x_626 : vec2<f32> = (vec2<f32>(x_624.x, x_624.y) + vec2<f32>(1.0f, 1.0f));
        let x_627 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_629 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_629 + vec2<f32>(1.0f, 1.0f));
        let x_632 : vec4<f32> = u_xlat9;
        let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec2<f32> = u_xlat61;
        let x_640 : vec2<f32> = (x_639 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat10;
        let x_645 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_649 : vec2<f32> = u_xlat59;
        let x_650 : vec2<f32> = (x_649 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_651 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_653.y, x_653.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_657 : f32 = u_xlat10.x;
        u_xlat11.z = x_657;
        let x_660 : f32 = u_xlat59.x;
        u_xlat11.w = x_660;
        let x_663 : f32 = u_xlat12.x;
        u_xlat9.z = x_663;
        let x_666 : f32 = u_xlat8.x;
        u_xlat9.w = x_666;
        let x_669 : vec4<f32> = u_xlat9;
        let x_671 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_669.z, x_669.w, x_669.x, x_669.z) + vec4<f32>(x_671.z, x_671.w, x_671.x, x_671.z));
        let x_675 : f32 = u_xlat11.y;
        u_xlat10.z = x_675;
        let x_678 : f32 = u_xlat59.y;
        u_xlat10.w = x_678;
        let x_681 : f32 = u_xlat9.y;
        u_xlat12.z = x_681;
        let x_684 : f32 = u_xlat8.z;
        u_xlat12.w = x_684;
        let x_686 : vec4<f32> = u_xlat10;
        let x_688 : vec4<f32> = u_xlat12;
        let x_690 : vec3<f32> = (vec3<f32>(x_686.z, x_686.y, x_686.w) + vec3<f32>(x_688.z, x_688.y, x_688.w));
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat9;
        let x_695 : vec4<f32> = u_xlat13;
        let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.z, x_693.w) / vec3<f32>(x_695.z, x_695.w, x_695.y));
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat9;
        let x_705 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_706 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat12;
        let x_710 : vec4<f32> = u_xlat8;
        let x_712 : vec3<f32> = (vec3<f32>(x_708.z, x_708.y, x_708.w) / vec3<f32>(x_710.x, x_710.y, x_710.z));
        let x_713 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat10;
        let x_717 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_718 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat9;
        let x_723 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_725 : vec3<f32> = (vec3<f32>(x_720.y, x_720.x, x_720.z) * vec3<f32>(x_723.x, x_723.x, x_723.x));
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat10;
        let x_731 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_733 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_731.y, x_731.y, x_731.y));
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_737 : f32 = u_xlat10.x;
        u_xlat9.w = x_737;
        let x_739 : vec4<f32> = u_xlat7;
        let x_742 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.y, x_745.w, x_745.x, x_745.w));
        let x_748 : vec4<f32> = u_xlat7;
        let x_751 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_751.x, x_751.y)) + vec2<f32>(x_754.z, x_754.w));
        let x_758 : f32 = u_xlat9.y;
        u_xlat10.w = x_758;
        let x_760 : vec4<f32> = u_xlat10;
        let x_761 : vec2<f32> = vec2<f32>(x_760.y, x_760.z);
        let x_762 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_761.x, x_762.z, x_761.y);
        let x_764 : vec4<f32> = u_xlat7;
        let x_767 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y) * vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y)) + vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.y));
        let x_773 : vec4<f32> = u_xlat7;
        let x_776 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y) * vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y)) + vec4<f32>(x_779.w, x_779.y, x_779.w, x_779.z));
        let x_782 : vec4<f32> = u_xlat7;
        let x_785 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) * vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y)) + vec4<f32>(x_788.x, x_788.w, x_788.z, x_788.w));
        let x_792 : vec4<f32> = u_xlat8;
        let x_794 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_792.x, x_792.x, x_792.x, x_792.y) * vec4<f32>(x_794.z, x_794.w, x_794.y, x_794.z));
        let x_798 : vec4<f32> = u_xlat8;
        let x_800 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_798.y, x_798.y, x_798.z, x_798.z) * x_800);
        let x_804 : f32 = u_xlat8.z;
        let x_806 : f32 = u_xlat13.y;
        u_xlat83 = (x_804 * x_806);
        let x_809 : vec4<f32> = u_xlat11;
        let x_810 : vec2<f32> = vec2<f32>(x_809.x, x_809.y);
        let x_812 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_810.x, x_810.y, x_812);
        let x_820 : vec3<f32> = txVec4;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat84 = x_822;
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec5;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
        u_xlat7.x = x_836;
        let x_839 : f32 = u_xlat7.x;
        let x_841 : f32 = u_xlat14.y;
        u_xlat7.x = (x_839 * x_841);
        let x_845 : f32 = u_xlat14.x;
        let x_846 : f32 = u_xlat84;
        let x_849 : f32 = u_xlat7.x;
        u_xlat84 = ((x_845 * x_846) + x_849);
        let x_852 : vec2<f32> = u_xlat59;
        let x_854 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec6;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat7.x = x_863;
        let x_866 : f32 = u_xlat14.z;
        let x_868 : f32 = u_xlat7.x;
        let x_870 : f32 = u_xlat84;
        u_xlat84 = ((x_866 * x_868) + x_870);
        let x_873 : vec4<f32> = u_xlat10;
        let x_874 : vec2<f32> = vec2<f32>(x_873.x, x_873.y);
        let x_876 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec7;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat7.x = x_885;
        let x_888 : f32 = u_xlat14.w;
        let x_890 : f32 = u_xlat7.x;
        let x_892 : f32 = u_xlat84;
        u_xlat84 = ((x_888 * x_890) + x_892);
        let x_895 : vec4<f32> = u_xlat12;
        let x_896 : vec2<f32> = vec2<f32>(x_895.x, x_895.y);
        let x_898 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_905 : vec3<f32> = txVec8;
        let x_907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_905.xy, x_905.z);
        u_xlat7.x = x_907;
        let x_910 : f32 = u_xlat15.x;
        let x_912 : f32 = u_xlat7.x;
        let x_914 : f32 = u_xlat84;
        u_xlat84 = ((x_910 * x_912) + x_914);
        let x_917 : vec4<f32> = u_xlat12;
        let x_918 : vec2<f32> = vec2<f32>(x_917.z, x_917.w);
        let x_920 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec9;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_927.xy, x_927.z);
        u_xlat7.x = x_929;
        let x_932 : f32 = u_xlat15.y;
        let x_934 : f32 = u_xlat7.x;
        let x_936 : f32 = u_xlat84;
        u_xlat84 = ((x_932 * x_934) + x_936);
        let x_939 : vec4<f32> = u_xlat10;
        let x_940 : vec2<f32> = vec2<f32>(x_939.z, x_939.w);
        let x_942 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec10;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
        u_xlat7.x = x_951;
        let x_954 : f32 = u_xlat15.z;
        let x_956 : f32 = u_xlat7.x;
        let x_958 : f32 = u_xlat84;
        u_xlat84 = ((x_954 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat9;
        let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
        let x_964 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec11;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_971.xy, x_971.z);
        u_xlat7.x = x_973;
        let x_976 : f32 = u_xlat15.w;
        let x_978 : f32 = u_xlat7.x;
        let x_980 : f32 = u_xlat84;
        u_xlat84 = ((x_976 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat9;
        let x_984 : vec2<f32> = vec2<f32>(x_983.z, x_983.w);
        let x_986 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec12;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_993.xy, x_993.z);
        u_xlat7.x = x_995;
        let x_997 : f32 = u_xlat83;
        let x_999 : f32 = u_xlat7.x;
        let x_1001 : f32 = u_xlat84;
        u_xlat82 = ((x_997 * x_999) + x_1001);
      } else {
        let x_1004 : vec4<f32> = vs_INTERP3;
        let x_1007 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1015 : vec2<f32> = floor(vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = vs_INTERP3;
        let x_1021 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(x_1021.z, x_1021.w)) + -(vec2<f32>(x_1024.x, x_1024.y)));
        let x_1028 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1028.x, x_1028.x, x_1028.y, x_1028.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1031 : vec4<f32> = u_xlat8;
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1031.x, x_1031.x, x_1031.z, x_1031.z) * vec4<f32>(x_1033.x, x_1033.x, x_1033.z, x_1033.z));
        let x_1036 : vec4<f32> = u_xlat9;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1036.y, x_1036.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1041 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1041.x, x_1040.x, x_1041.z, x_1040.y);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1046 : vec2<f32> = u_xlat59;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1046));
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1051 : vec2<f32> = u_xlat59;
        let x_1053 : vec2<f32> = (-(x_1051) + vec2<f32>(1.0f, 1.0f));
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1056, vec2<f32>(0.0f, 0.0f));
        let x_1058 : vec2<f32> = u_xlat61;
        let x_1060 : vec2<f32> = u_xlat61;
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1064 : vec2<f32> = ((-(x_1058) * x_1060) + vec2<f32>(x_1062.x, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1067, vec2<f32>(0.0f, 0.0f));
        let x_1070 : vec2<f32> = u_xlat61;
        let x_1072 : vec2<f32> = u_xlat61;
        let x_1074 : vec4<f32> = u_xlat8;
        let x_1076 : vec2<f32> = ((-(x_1070) * x_1072) + vec2<f32>(x_1074.y, x_1074.w));
        let x_1077 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1076.x, x_1077.y, x_1076.y);
        let x_1079 : vec4<f32> = u_xlat9;
        let x_1081 : vec2<f32> = (vec2<f32>(x_1079.x, x_1079.y) + vec2<f32>(2.0f, 2.0f));
        let x_1082 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec3<f32> = u_xlat34;
        let x_1086 : vec2<f32> = (vec2<f32>(x_1084.x, x_1084.z) + vec2<f32>(2.0f, 2.0f));
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1086.x, x_1087.z, x_1086.y);
        let x_1090 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1090 * 0.08163200318813323975f);
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1097 : vec3<f32> = (vec3<f32>(x_1094.z, x_1094.x, x_1094.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1098 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1103 : vec2<f32> = (vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1103.y, x_1104.z, x_1104.w);
        let x_1107 : f32 = u_xlat12.y;
        u_xlat11.x = x_1107;
        let x_1109 : vec2<f32> = u_xlat59;
        let x_1116 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1117 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1117.x, x_1116.x, x_1117.z, x_1116.y);
        let x_1119 : vec2<f32> = u_xlat59;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1124.w);
        let x_1127 : f32 = u_xlat8.x;
        u_xlat9.y = x_1127;
        let x_1130 : f32 = u_xlat10.y;
        u_xlat9.w = x_1130;
        let x_1132 : vec4<f32> = u_xlat9;
        let x_1133 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1132 + x_1133);
        let x_1135 : vec2<f32> = u_xlat59;
        let x_1138 : vec2<f32> = ((vec2<f32>(x_1135.y, x_1135.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1139 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1139.x, x_1138.x, x_1139.z, x_1138.y);
        let x_1141 : vec2<f32> = u_xlat59;
        let x_1144 : vec2<f32> = ((vec2<f32>(x_1141.y, x_1141.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1145.w);
        let x_1148 : f32 = u_xlat8.y;
        u_xlat10.y = x_1148;
        let x_1150 : vec4<f32> = u_xlat10;
        let x_1151 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1150 + x_1151);
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1154 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1153 / x_1154);
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1156 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1162 : vec4<f32> = u_xlat10;
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1162 / x_1163);
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1165 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1170 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1167.w, x_1167.x, x_1167.y, x_1167.z) * vec4<f32>(x_1170.x, x_1170.x, x_1170.x, x_1170.x));
        let x_1173 : vec4<f32> = u_xlat10;
        let x_1176 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1173.x, x_1173.w, x_1173.y, x_1173.z) * vec4<f32>(x_1176.y, x_1176.y, x_1176.y, x_1176.y));
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1180 : vec3<f32> = vec3<f32>(x_1179.y, x_1179.z, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1180.x, x_1181.y, x_1180.y, x_1180.z);
        let x_1184 : f32 = u_xlat10.x;
        u_xlat12.y = x_1184;
        let x_1186 : vec4<f32> = u_xlat7;
        let x_1189 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y) * vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y)) + vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1192.y));
        let x_1195 : vec4<f32> = u_xlat7;
        let x_1198 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.x, x_1198.y)) + vec2<f32>(x_1201.w, x_1201.y));
        let x_1205 : f32 = u_xlat12.y;
        u_xlat9.y = x_1205;
        let x_1208 : f32 = u_xlat10.z;
        u_xlat12.y = x_1208;
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1213 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y) * vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y)) + vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1216.y));
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1222 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat12;
        let x_1227 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.y) * vec2<f32>(x_1222.x, x_1222.y)) + vec2<f32>(x_1225.w, x_1225.y));
        let x_1228 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1231 : f32 = u_xlat12.y;
        u_xlat9.z = x_1231;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1237 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y) * vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y)) + vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.z));
        let x_1244 : f32 = u_xlat10.w;
        u_xlat12.y = x_1244;
        let x_1247 : vec4<f32> = u_xlat7;
        let x_1250 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y) * vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y)) + vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1253.y));
        let x_1257 : vec4<f32> = u_xlat7;
        let x_1260 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat12.y;
        u_xlat9.w = x_1267;
        let x_1270 : vec4<f32> = u_xlat7;
        let x_1273 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.x, x_1276.w));
        let x_1279 : vec4<f32> = u_xlat12;
        let x_1280 : vec3<f32> = vec3<f32>(x_1279.x, x_1279.z, x_1279.w);
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1280.x, x_1281.y, x_1280.y, x_1280.z);
        let x_1283 : vec4<f32> = u_xlat7;
        let x_1286 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y) * vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y)) + vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1289.y));
        let x_1293 : vec4<f32> = u_xlat7;
        let x_1296 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1299.w, x_1299.y));
        let x_1303 : f32 = u_xlat9.x;
        u_xlat10.x = x_1303;
        let x_1305 : vec4<f32> = u_xlat7;
        let x_1308 : vec4<f32> = x_435.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat10;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.x, x_1311.y));
        let x_1314 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1317.x, x_1317.x, x_1317.x, x_1317.x) * x_1319);
        let x_1322 : vec4<f32> = u_xlat8;
        let x_1324 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1322.y, x_1322.y, x_1322.y, x_1322.y) * x_1324);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1329 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1327.z, x_1327.z, x_1327.z, x_1327.z) * x_1329);
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1333 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1331.w, x_1331.w, x_1331.w, x_1331.w) * x_1333);
        let x_1336 : vec4<f32> = u_xlat13;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec13;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat83 = x_1348;
        let x_1350 : vec4<f32> = u_xlat13;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec14;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat84 = x_1362;
        let x_1363 : f32 = u_xlat84;
        let x_1365 : f32 = u_xlat18.y;
        u_xlat84 = (x_1363 * x_1365);
        let x_1368 : f32 = u_xlat18.x;
        let x_1369 : f32 = u_xlat83;
        let x_1371 : f32 = u_xlat84;
        u_xlat83 = ((x_1368 * x_1369) + x_1371);
        let x_1374 : vec2<f32> = u_xlat59;
        let x_1376 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec15;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat84 = x_1385;
        let x_1387 : f32 = u_xlat18.z;
        let x_1388 : f32 = u_xlat84;
        let x_1390 : f32 = u_xlat83;
        u_xlat83 = ((x_1387 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat16;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec16;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat84 = x_1405;
        let x_1407 : f32 = u_xlat18.w;
        let x_1408 : f32 = u_xlat84;
        let x_1410 : f32 = u_xlat83;
        u_xlat83 = ((x_1407 * x_1408) + x_1410);
        let x_1413 : vec4<f32> = u_xlat14;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec17;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat84 = x_1425;
        let x_1427 : f32 = u_xlat19.x;
        let x_1428 : f32 = u_xlat84;
        let x_1430 : f32 = u_xlat83;
        u_xlat83 = ((x_1427 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat14;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec18;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat84 = x_1445;
        let x_1447 : f32 = u_xlat19.y;
        let x_1448 : f32 = u_xlat84;
        let x_1450 : f32 = u_xlat83;
        u_xlat83 = ((x_1447 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat15;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec19;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat84 = x_1465;
        let x_1467 : f32 = u_xlat19.z;
        let x_1468 : f32 = u_xlat84;
        let x_1470 : f32 = u_xlat83;
        u_xlat83 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat16;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.z, x_1473.w);
        let x_1476 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec20;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat84 = x_1485;
        let x_1487 : f32 = u_xlat19.w;
        let x_1488 : f32 = u_xlat84;
        let x_1490 : f32 = u_xlat83;
        u_xlat83 = ((x_1487 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat17;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec21;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat84 = x_1505;
        let x_1507 : f32 = u_xlat20.x;
        let x_1508 : f32 = u_xlat84;
        let x_1510 : f32 = u_xlat83;
        u_xlat83 = ((x_1507 * x_1508) + x_1510);
        let x_1513 : vec4<f32> = u_xlat17;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.z, x_1513.w);
        let x_1516 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec22;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat84 = x_1525;
        let x_1527 : f32 = u_xlat20.y;
        let x_1528 : f32 = u_xlat84;
        let x_1530 : f32 = u_xlat83;
        u_xlat83 = ((x_1527 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat35;
        let x_1535 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec23;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat84 = x_1544;
        let x_1546 : f32 = u_xlat20.z;
        let x_1547 : f32 = u_xlat84;
        let x_1549 : f32 = u_xlat83;
        u_xlat83 = ((x_1546 * x_1547) + x_1549);
        let x_1552 : vec2<f32> = u_xlat67;
        let x_1554 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec24;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat84 = x_1563;
        let x_1565 : f32 = u_xlat20.w;
        let x_1566 : f32 = u_xlat84;
        let x_1568 : f32 = u_xlat83;
        u_xlat83 = ((x_1565 * x_1566) + x_1568);
        let x_1571 : vec4<f32> = u_xlat12;
        let x_1572 : vec2<f32> = vec2<f32>(x_1571.x, x_1571.y);
        let x_1574 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec25;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat84 = x_1583;
        let x_1585 : f32 = u_xlat8.x;
        let x_1586 : f32 = u_xlat84;
        let x_1588 : f32 = u_xlat83;
        u_xlat83 = ((x_1585 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat12;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.z, x_1591.w);
        let x_1594 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec26;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat84 = x_1603;
        let x_1605 : f32 = u_xlat8.y;
        let x_1606 : f32 = u_xlat84;
        let x_1608 : f32 = u_xlat83;
        u_xlat83 = ((x_1605 * x_1606) + x_1608);
        let x_1611 : vec2<f32> = u_xlat62;
        let x_1613 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec27;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat84 = x_1622;
        let x_1624 : f32 = u_xlat8.z;
        let x_1625 : f32 = u_xlat84;
        let x_1627 : f32 = u_xlat83;
        u_xlat83 = ((x_1624 * x_1625) + x_1627);
        let x_1630 : vec4<f32> = u_xlat7;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec28;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat84 = x_1642;
        let x_1644 : f32 = u_xlat8.w;
        let x_1645 : f32 = u_xlat84;
        let x_1647 : f32 = u_xlat83;
        u_xlat82 = ((x_1644 * x_1645) + x_1647);
      }
    }
  } else {
    let x_1651 : vec4<f32> = vs_INTERP3;
    let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
    let x_1654 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
    let x_1661 : vec3<f32> = txVec29;
    let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
    u_xlat82 = x_1663;
  }
  let x_1665 : f32 = x_435.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1665) + 1.0f);
  let x_1668 : f32 = u_xlat82;
  let x_1670 : f32 = x_435.x_MainLightShadowParams.x;
  let x_1672 : f32 = u_xlat83;
  u_xlat82 = ((x_1668 * x_1670) + x_1672);
  let x_1675 : f32 = vs_INTERP3.z;
  u_xlatb83 = (0.0f >= x_1675);
  let x_1679 : f32 = vs_INTERP3.z;
  u_xlatb84 = (x_1679 >= 1.0f);
  let x_1681 : bool = u_xlatb83;
  let x_1682 : bool = u_xlatb84;
  u_xlatb83 = (x_1681 | x_1682);
  let x_1684 : bool = u_xlatb83;
  let x_1685 : f32 = u_xlat82;
  u_xlat82 = select(x_1685, 1.0f, x_1684);
  let x_1687 : vec3<f32> = vs_INTERP7;
  let x_1689 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1691 : vec3<f32> = (x_1687 + -(x_1689));
  let x_1692 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : vec4<f32> = u_xlat7;
  let x_1696 : vec4<f32> = u_xlat7;
  u_xlat83 = dot(vec3<f32>(x_1694.x, x_1694.y, x_1694.z), vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : f32 = u_xlat83;
  let x_1701 : f32 = x_435.x_MainLightShadowParams.z;
  let x_1704 : f32 = x_435.x_MainLightShadowParams.w;
  u_xlat84 = ((x_1699 * x_1701) + x_1704);
  let x_1706 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1706, 0.0f, 1.0f);
  let x_1708 : f32 = u_xlat82;
  u_xlat7.x = (-(x_1708) + 1.0f);
  let x_1712 : f32 = u_xlat84;
  let x_1714 : f32 = u_xlat7.x;
  let x_1716 : f32 = u_xlat82;
  u_xlat82 = ((x_1712 * x_1714) + x_1716);
  let x_1718 : vec3<f32> = u_xlat5;
  let x_1720 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_1718), vec3<f32>(x_1720.x, x_1720.y, x_1720.w));
  let x_1723 : f32 = u_xlat84;
  let x_1724 : f32 = u_xlat84;
  u_xlat84 = (x_1723 + x_1724);
  let x_1726 : vec4<f32> = u_xlat1;
  let x_1728 : f32 = u_xlat84;
  let x_1732 : vec3<f32> = u_xlat5;
  let x_1734 : vec3<f32> = ((vec3<f32>(x_1726.x, x_1726.y, x_1726.w) * -(vec3<f32>(x_1728, x_1728, x_1728))) + -(x_1732));
  let x_1735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1737 : vec4<f32> = u_xlat1;
  let x_1739 : vec3<f32> = u_xlat5;
  u_xlat84 = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.w), x_1739);
  let x_1741 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1741, 0.0f, 1.0f);
  let x_1743 : f32 = u_xlat84;
  u_xlat84 = (-(x_1743) + 1.0f);
  let x_1746 : f32 = u_xlat84;
  let x_1747 : f32 = u_xlat84;
  u_xlat84 = (x_1746 * x_1747);
  let x_1749 : f32 = u_xlat84;
  let x_1750 : f32 = u_xlat84;
  u_xlat84 = (x_1749 * x_1750);
  let x_1753 : f32 = u_xlat78;
  u_xlat85 = ((-(x_1753) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1759 : f32 = u_xlat78;
  let x_1760 : f32 = u_xlat85;
  u_xlat78 = (x_1759 * x_1760);
  let x_1762 : f32 = u_xlat78;
  u_xlat78 = (x_1762 * 6.0f);
  let x_1773 : vec4<f32> = u_xlat7;
  let x_1775 : f32 = u_xlat78;
  let x_1776 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1773.x, x_1773.y, x_1773.z), x_1775);
  u_xlat7 = x_1776;
  let x_1778 : f32 = u_xlat7.w;
  u_xlat78 = (x_1778 + -1.0f);
  let x_1781 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_1782 : f32 = u_xlat78;
  u_xlat78 = ((x_1781 * x_1782) + 1.0f);
  let x_1785 : f32 = u_xlat78;
  u_xlat78 = max(x_1785, 0.0f);
  let x_1787 : f32 = u_xlat78;
  u_xlat78 = log2(x_1787);
  let x_1789 : f32 = u_xlat78;
  let x_1791 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_1789 * x_1791);
  let x_1793 : f32 = u_xlat78;
  u_xlat78 = exp2(x_1793);
  let x_1795 : f32 = u_xlat78;
  let x_1797 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_1795 * x_1797);
  let x_1799 : vec4<f32> = u_xlat7;
  let x_1801 : f32 = u_xlat78;
  let x_1803 : vec3<f32> = (vec3<f32>(x_1799.x, x_1799.y, x_1799.z) * vec3<f32>(x_1801, x_1801, x_1801));
  let x_1804 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
  let x_1806 : vec3<f32> = u_xlat3;
  let x_1808 : vec3<f32> = u_xlat3;
  let x_1812 : vec2<f32> = ((vec2<f32>(x_1806.x, x_1806.x) * vec2<f32>(x_1808.x, x_1808.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1813 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1812.x, x_1812.y, x_1813.z, x_1813.w);
  let x_1816 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_1816);
  let x_1818 : vec3<f32> = u_xlat0;
  let x_1820 : f32 = u_xlat80;
  u_xlat34 = (-(x_1818) + vec3<f32>(x_1820, x_1820, x_1820));
  let x_1823 : f32 = u_xlat84;
  let x_1825 : vec3<f32> = u_xlat34;
  let x_1827 : vec3<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1823, x_1823, x_1823) * x_1825) + x_1827);
  let x_1829 : f32 = u_xlat78;
  let x_1831 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1829, x_1829, x_1829) * x_1831);
  let x_1833 : vec4<f32> = u_xlat7;
  let x_1835 : vec3<f32> = u_xlat34;
  let x_1836 : vec3<f32> = (vec3<f32>(x_1833.x, x_1833.y, x_1833.z) * x_1835);
  let x_1837 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
  let x_1839 : vec4<f32> = u_xlat4;
  let x_1841 : vec3<f32> = u_xlat6;
  let x_1843 : vec4<f32> = u_xlat7;
  let x_1845 : vec3<f32> = ((vec3<f32>(x_1839.x, x_1839.y, x_1839.z) * x_1841) + vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1848 : f32 = u_xlat82;
  let x_1850 : f32 = x_109.unity_LightData.z;
  u_xlat78 = (x_1848 * x_1850);
  let x_1852 : vec4<f32> = u_xlat1;
  let x_1855 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_1852.x, x_1852.y, x_1852.w), vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1858, 0.0f, 1.0f);
  let x_1860 : f32 = u_xlat78;
  let x_1861 : f32 = u_xlat80;
  u_xlat78 = (x_1860 * x_1861);
  let x_1863 : f32 = u_xlat78;
  let x_1866 : vec4<f32> = x_29.x_MainLightColor;
  let x_1868 : vec3<f32> = (vec3<f32>(x_1863, x_1863, x_1863) * vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1869 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : vec3<f32> = u_xlat5;
  let x_1873 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = (x_1871 + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec3<f32> = u_xlat34;
  let x_1877 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_1876, x_1877);
  let x_1879 : f32 = u_xlat78;
  u_xlat78 = max(x_1879, 1.17549435e-38f);
  let x_1882 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1882);
  let x_1884 : f32 = u_xlat78;
  let x_1886 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1884, x_1884, x_1884) * x_1886);
  let x_1888 : vec4<f32> = u_xlat1;
  let x_1890 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(vec3<f32>(x_1888.x, x_1888.y, x_1888.w), x_1890);
  let x_1892 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1892, 0.0f, 1.0f);
  let x_1895 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1897 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(vec3<f32>(x_1895.x, x_1895.y, x_1895.z), x_1897);
  let x_1899 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1899, 0.0f, 1.0f);
  let x_1901 : f32 = u_xlat78;
  let x_1902 : f32 = u_xlat78;
  u_xlat78 = (x_1901 * x_1902);
  let x_1904 : f32 = u_xlat78;
  let x_1906 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1904 * x_1906) + 1.00001001358032226562f);
  let x_1910 : f32 = u_xlat80;
  let x_1911 : f32 = u_xlat80;
  u_xlat80 = (x_1910 * x_1911);
  let x_1913 : f32 = u_xlat78;
  let x_1914 : f32 = u_xlat78;
  u_xlat78 = (x_1913 * x_1914);
  let x_1916 : f32 = u_xlat80;
  u_xlat80 = max(x_1916, 0.10000000149011611938f);
  let x_1919 : f32 = u_xlat78;
  let x_1920 : f32 = u_xlat80;
  u_xlat78 = (x_1919 * x_1920);
  let x_1922 : f32 = u_xlat81;
  let x_1923 : f32 = u_xlat78;
  u_xlat78 = (x_1922 * x_1923);
  let x_1925 : f32 = u_xlat29;
  let x_1926 : f32 = u_xlat78;
  u_xlat78 = (x_1925 / x_1926);
  let x_1928 : vec3<f32> = u_xlat0;
  let x_1929 : f32 = u_xlat78;
  let x_1932 : vec3<f32> = u_xlat6;
  u_xlat34 = ((x_1928 * vec3<f32>(x_1929, x_1929, x_1929)) + x_1932);
  let x_1934 : vec4<f32> = u_xlat7;
  let x_1936 : vec3<f32> = u_xlat34;
  let x_1937 : vec3<f32> = (vec3<f32>(x_1934.x, x_1934.y, x_1934.z) * x_1936);
  let x_1938 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
  let x_1941 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1943 : f32 = x_109.unity_LightData.y;
  u_xlat78 = min(x_1941, x_1943);
  let x_1947 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1947));
  let x_1950 : f32 = u_xlat83;
  let x_1953 : f32 = x_435.x_AdditionalShadowFadeParams.x;
  let x_1956 : f32 = x_435.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_1950 * x_1953) + x_1956);
  let x_1958 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1958, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1970 : u32 = u_xlatu_loop_1;
    let x_1971 : u32 = u_xlatu78;
    if ((x_1970 < x_1971)) {
    } else {
      break;
    }
    let x_1974 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_1974 >> 2u);
    let x_1978 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_1978 & 3u));
    let x_1981 : u32 = u_xlatu82;
    let x_1984 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_1981)];
    let x_1994 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1999 : vec4<u32> = indexable[x_1994];
    u_xlat82 = dot(x_1984, bitcast<vec4<f32>>(x_1999));
    let x_2003 : f32 = u_xlat82;
    u_xlati82 = i32(x_2003);
    let x_2005 : vec3<f32> = vs_INTERP7;
    let x_2016 : i32 = u_xlati82;
    let x_2018 : vec4<f32> = x_2015.x_AdditionalLightsPosition[x_2016];
    let x_2021 : i32 = u_xlati82;
    let x_2023 : vec4<f32> = x_2015.x_AdditionalLightsPosition[x_2021];
    let x_2025 : vec3<f32> = ((-(x_2005) * vec3<f32>(x_2018.w, x_2018.w, x_2018.w)) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
    let x_2026 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
    let x_2028 : vec4<f32> = u_xlat9;
    let x_2030 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2028.x, x_2028.y, x_2028.z), vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
    let x_2033 : f32 = u_xlat83;
    u_xlat83 = max(x_2033, 0.00006103515625f);
    let x_2036 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2036);
    let x_2038 : f32 = u_xlat84;
    let x_2040 : vec4<f32> = u_xlat9;
    let x_2042 : vec3<f32> = (vec3<f32>(x_2038, x_2038, x_2038) * vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
    let x_2045 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2045);
    let x_2047 : f32 = u_xlat83;
    let x_2048 : i32 = u_xlati82;
    let x_2050 : f32 = x_2015.x_AdditionalLightsAttenuation[x_2048].x;
    u_xlat83 = (x_2047 * x_2050);
    let x_2052 : f32 = u_xlat83;
    let x_2054 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2052) * x_2054) + 1.0f);
    let x_2057 : f32 = u_xlat83;
    u_xlat83 = max(x_2057, 0.0f);
    let x_2059 : f32 = u_xlat83;
    let x_2060 : f32 = u_xlat83;
    u_xlat83 = (x_2059 * x_2060);
    let x_2062 : f32 = u_xlat83;
    let x_2063 : f32 = u_xlat85;
    u_xlat83 = (x_2062 * x_2063);
    let x_2065 : i32 = u_xlati82;
    let x_2067 : vec4<f32> = x_2015.x_AdditionalLightsSpotDir[x_2065];
    let x_2069 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2067.x, x_2067.y, x_2067.z), vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
    let x_2072 : f32 = u_xlat85;
    let x_2073 : i32 = u_xlati82;
    let x_2075 : f32 = x_2015.x_AdditionalLightsAttenuation[x_2073].z;
    let x_2077 : i32 = u_xlati82;
    let x_2079 : f32 = x_2015.x_AdditionalLightsAttenuation[x_2077].w;
    u_xlat85 = ((x_2072 * x_2075) + x_2079);
    let x_2081 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2081, 0.0f, 1.0f);
    let x_2083 : f32 = u_xlat85;
    let x_2084 : f32 = u_xlat85;
    u_xlat85 = (x_2083 * x_2084);
    let x_2086 : f32 = u_xlat83;
    let x_2087 : f32 = u_xlat85;
    u_xlat83 = (x_2086 * x_2087);
    let x_2091 : i32 = u_xlati82;
    let x_2093 : f32 = x_435.x_AdditionalShadowParams[x_2091].w;
    u_xlati85 = i32(x_2093);
    let x_2096 : i32 = u_xlati85;
    u_xlatb87 = (x_2096 >= 0i);
    let x_2098 : bool = u_xlatb87;
    if (x_2098) {
      let x_2102 : i32 = u_xlati82;
      let x_2104 : f32 = x_435.x_AdditionalShadowParams[x_2102].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2104, x_2104, x_2104, x_2104))));
      let x_2109 : bool = u_xlatb87;
      if (x_2109) {
        let x_2114 : vec4<f32> = u_xlat10;
        let x_2117 : vec4<f32> = u_xlat10;
        let x_2120 : vec4<bool> = (abs(vec4<f32>(x_2114.z, x_2114.z, x_2114.y, x_2114.z)) >= abs(vec4<f32>(x_2117.x, x_2117.y, x_2117.x, x_2117.x)));
        let x_2122 : vec3<bool> = vec3<bool>(x_2120.x, x_2120.y, x_2120.z);
        let x_2123 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
        let x_2126 : bool = u_xlatb11.y;
        let x_2128 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2126 & x_2128);
        let x_2130 : vec4<f32> = u_xlat10;
        let x_2133 : vec4<bool> = (-(vec4<f32>(x_2130.z, x_2130.y, x_2130.z, x_2130.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2134 : vec3<bool> = vec3<bool>(x_2133.x, x_2133.y, x_2133.w);
        let x_2135 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2134.x, x_2134.y, x_2135.z, x_2134.z);
        let x_2138 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2138);
        let x_2143 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2143);
        let x_2149 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2149);
        let x_2152 : bool = u_xlatb11.z;
        if (x_2152) {
          let x_2157 : f32 = u_xlat11.y;
          x_2153 = x_2157;
        } else {
          let x_2159 : f32 = u_xlat88;
          x_2153 = x_2159;
        }
        let x_2160 : f32 = x_2153;
        u_xlat88 = x_2160;
        let x_2162 : bool = u_xlatb87;
        if (x_2162) {
          let x_2167 : f32 = u_xlat11.x;
          x_2163 = x_2167;
        } else {
          let x_2169 : f32 = u_xlat88;
          x_2163 = x_2169;
        }
        let x_2170 : f32 = x_2163;
        u_xlat87 = x_2170;
        let x_2171 : i32 = u_xlati82;
        let x_2173 : f32 = x_435.x_AdditionalShadowParams[x_2171].w;
        u_xlat88 = trunc(x_2173);
        let x_2175 : f32 = u_xlat87;
        let x_2176 : f32 = u_xlat88;
        u_xlat87 = (x_2175 + x_2176);
        let x_2178 : f32 = u_xlat87;
        u_xlati85 = i32(x_2178);
      }
      let x_2180 : i32 = u_xlati85;
      u_xlati85 = (x_2180 << bitcast<u32>(2i));
      let x_2182 : vec3<f32> = vs_INTERP7;
      let x_2185 : i32 = u_xlati85;
      let x_2188 : i32 = u_xlati85;
      let x_2192 : vec4<f32> = x_435.x_AdditionalLightsWorldToShadow[((x_2185 + 1i) / 4i)][((x_2188 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2182.y, x_2182.y, x_2182.y, x_2182.y) * x_2192);
      let x_2194 : i32 = u_xlati85;
      let x_2196 : i32 = u_xlati85;
      let x_2199 : vec4<f32> = x_435.x_AdditionalLightsWorldToShadow[(x_2194 / 4i)][(x_2196 % 4i)];
      let x_2200 : vec3<f32> = vs_INTERP7;
      let x_2203 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2199 * vec4<f32>(x_2200.x, x_2200.x, x_2200.x, x_2200.x)) + x_2203);
      let x_2205 : i32 = u_xlati85;
      let x_2208 : i32 = u_xlati85;
      let x_2212 : vec4<f32> = x_435.x_AdditionalLightsWorldToShadow[((x_2205 + 2i) / 4i)][((x_2208 + 2i) % 4i)];
      let x_2213 : vec3<f32> = vs_INTERP7;
      let x_2216 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2212 * vec4<f32>(x_2213.z, x_2213.z, x_2213.z, x_2213.z)) + x_2216);
      let x_2218 : vec4<f32> = u_xlat11;
      let x_2219 : i32 = u_xlati85;
      let x_2222 : i32 = u_xlati85;
      let x_2226 : vec4<f32> = x_435.x_AdditionalLightsWorldToShadow[((x_2219 + 3i) / 4i)][((x_2222 + 3i) % 4i)];
      u_xlat11 = (x_2218 + x_2226);
      let x_2228 : vec4<f32> = u_xlat11;
      let x_2230 : vec4<f32> = u_xlat11;
      let x_2232 : vec3<f32> = (vec3<f32>(x_2228.x, x_2228.y, x_2228.z) / vec3<f32>(x_2230.w, x_2230.w, x_2230.w));
      let x_2233 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
      let x_2236 : i32 = u_xlati82;
      let x_2238 : f32 = x_435.x_AdditionalShadowParams[x_2236].y;
      u_xlatb85 = (0.0f < x_2238);
      let x_2240 : bool = u_xlatb85;
      if (x_2240) {
        let x_2243 : i32 = u_xlati82;
        let x_2245 : f32 = x_435.x_AdditionalShadowParams[x_2243].y;
        u_xlatb85 = (1.0f == x_2245);
        let x_2247 : bool = u_xlatb85;
        if (x_2247) {
          let x_2250 : vec4<f32> = u_xlat11;
          let x_2254 : vec4<f32> = x_435.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2250.x, x_2250.y, x_2250.x, x_2250.y) + x_2254);
          let x_2257 : vec4<f32> = u_xlat12;
          let x_2258 : vec2<f32> = vec2<f32>(x_2257.x, x_2257.y);
          let x_2260 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
          let x_2268 : vec3<f32> = txVec30;
          let x_2270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2268.xy, x_2268.z);
          u_xlat13.x = x_2270;
          let x_2273 : vec4<f32> = u_xlat12;
          let x_2274 : vec2<f32> = vec2<f32>(x_2273.z, x_2273.w);
          let x_2276 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
          let x_2283 : vec3<f32> = txVec31;
          let x_2285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
          u_xlat13.y = x_2285;
          let x_2287 : vec4<f32> = u_xlat11;
          let x_2291 : vec4<f32> = x_435.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.y) + x_2291);
          let x_2294 : vec4<f32> = u_xlat12;
          let x_2295 : vec2<f32> = vec2<f32>(x_2294.x, x_2294.y);
          let x_2297 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
          let x_2304 : vec3<f32> = txVec32;
          let x_2306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2304.xy, x_2304.z);
          u_xlat13.z = x_2306;
          let x_2309 : vec4<f32> = u_xlat12;
          let x_2310 : vec2<f32> = vec2<f32>(x_2309.z, x_2309.w);
          let x_2312 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2310.x, x_2310.y, x_2312);
          let x_2319 : vec3<f32> = txVec33;
          let x_2321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2319.xy, x_2319.z);
          u_xlat13.w = x_2321;
          let x_2323 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2323, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2326 : i32 = u_xlati82;
          let x_2328 : f32 = x_435.x_AdditionalShadowParams[x_2326].y;
          u_xlatb87 = (2.0f == x_2328);
          let x_2330 : bool = u_xlatb87;
          if (x_2330) {
            let x_2333 : vec4<f32> = u_xlat11;
            let x_2337 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2340 : vec2<f32> = ((vec2<f32>(x_2333.x, x_2333.y) * vec2<f32>(x_2337.z, x_2337.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2341 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2343 : vec4<f32> = u_xlat12;
            let x_2345 : vec2<f32> = floor(vec2<f32>(x_2343.x, x_2343.y));
            let x_2346 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2345.x, x_2345.y, x_2346.z, x_2346.w);
            let x_2349 : vec4<f32> = u_xlat11;
            let x_2352 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2355 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2349.x, x_2349.y) * vec2<f32>(x_2352.z, x_2352.w)) + -(vec2<f32>(x_2355.x, x_2355.y)));
            let x_2359 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2359.x, x_2359.x, x_2359.y, x_2359.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2362 : vec4<f32> = u_xlat13;
            let x_2364 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2362.x, x_2362.x, x_2362.z, x_2362.z) * vec4<f32>(x_2364.x, x_2364.x, x_2364.z, x_2364.z));
            let x_2367 : vec4<f32> = u_xlat14;
            let x_2369 : vec2<f32> = (vec2<f32>(x_2367.y, x_2367.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2370 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2369.x, x_2370.y, x_2369.y, x_2370.w);
            let x_2372 : vec4<f32> = u_xlat14;
            let x_2375 : vec2<f32> = u_xlat64;
            let x_2377 : vec2<f32> = ((vec2<f32>(x_2372.x, x_2372.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2375));
            let x_2378 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2377.x, x_2377.y, x_2378.z, x_2378.w);
            let x_2381 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2381) + vec2<f32>(1.0f, 1.0f));
            let x_2384 : vec2<f32> = u_xlat64;
            let x_2385 : vec2<f32> = min(x_2384, vec2<f32>(0.0f, 0.0f));
            let x_2386 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
            let x_2388 : vec4<f32> = u_xlat15;
            let x_2391 : vec4<f32> = u_xlat15;
            let x_2394 : vec2<f32> = u_xlat66;
            let x_2395 : vec2<f32> = ((-(vec2<f32>(x_2388.x, x_2388.y)) * vec2<f32>(x_2391.x, x_2391.y)) + x_2394);
            let x_2396 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2398 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2398, vec2<f32>(0.0f, 0.0f));
            let x_2400 : vec2<f32> = u_xlat64;
            let x_2402 : vec2<f32> = u_xlat64;
            let x_2404 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2400) * x_2402) + vec2<f32>(x_2404.y, x_2404.w));
            let x_2407 : vec4<f32> = u_xlat15;
            let x_2409 : vec2<f32> = (vec2<f32>(x_2407.x, x_2407.y) + vec2<f32>(1.0f, 1.0f));
            let x_2410 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2409.x, x_2409.y, x_2410.z, x_2410.w);
            let x_2412 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2412 + vec2<f32>(1.0f, 1.0f));
            let x_2414 : vec4<f32> = u_xlat14;
            let x_2416 : vec2<f32> = (vec2<f32>(x_2414.x, x_2414.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2417 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
            let x_2419 : vec2<f32> = u_xlat66;
            let x_2420 : vec2<f32> = (x_2419 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2420.x, x_2420.y, x_2421.z, x_2421.w);
            let x_2423 : vec4<f32> = u_xlat15;
            let x_2425 : vec2<f32> = (vec2<f32>(x_2423.x, x_2423.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2426 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2425.x, x_2425.y, x_2426.z, x_2426.w);
            let x_2428 : vec2<f32> = u_xlat64;
            let x_2429 : vec2<f32> = (x_2428 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2430 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2432.y, x_2432.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2436 : f32 = u_xlat15.x;
            u_xlat16.z = x_2436;
            let x_2439 : f32 = u_xlat64.x;
            u_xlat16.w = x_2439;
            let x_2442 : f32 = u_xlat17.x;
            u_xlat14.z = x_2442;
            let x_2445 : f32 = u_xlat13.x;
            u_xlat14.w = x_2445;
            let x_2447 : vec4<f32> = u_xlat14;
            let x_2449 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2447.z, x_2447.w, x_2447.x, x_2447.z) + vec4<f32>(x_2449.z, x_2449.w, x_2449.x, x_2449.z));
            let x_2453 : f32 = u_xlat16.y;
            u_xlat15.z = x_2453;
            let x_2456 : f32 = u_xlat64.y;
            u_xlat15.w = x_2456;
            let x_2459 : f32 = u_xlat14.y;
            u_xlat17.z = x_2459;
            let x_2462 : f32 = u_xlat13.z;
            u_xlat17.w = x_2462;
            let x_2464 : vec4<f32> = u_xlat15;
            let x_2466 : vec4<f32> = u_xlat17;
            let x_2468 : vec3<f32> = (vec3<f32>(x_2464.z, x_2464.y, x_2464.w) + vec3<f32>(x_2466.z, x_2466.y, x_2466.w));
            let x_2469 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
            let x_2471 : vec4<f32> = u_xlat14;
            let x_2473 : vec4<f32> = u_xlat18;
            let x_2475 : vec3<f32> = (vec3<f32>(x_2471.x, x_2471.z, x_2471.w) / vec3<f32>(x_2473.z, x_2473.w, x_2473.y));
            let x_2476 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
            let x_2478 : vec4<f32> = u_xlat14;
            let x_2480 : vec3<f32> = (vec3<f32>(x_2478.x, x_2478.y, x_2478.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2481 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat17;
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2487 : vec3<f32> = (vec3<f32>(x_2483.z, x_2483.y, x_2483.w) / vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
            let x_2488 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat15;
            let x_2492 : vec3<f32> = (vec3<f32>(x_2490.x, x_2490.y, x_2490.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2493 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat14;
            let x_2498 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2500 : vec3<f32> = (vec3<f32>(x_2495.y, x_2495.x, x_2495.z) * vec3<f32>(x_2498.x, x_2498.x, x_2498.x));
            let x_2501 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
            let x_2503 : vec4<f32> = u_xlat15;
            let x_2506 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2508 : vec3<f32> = (vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * vec3<f32>(x_2506.y, x_2506.y, x_2506.y));
            let x_2509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
            let x_2512 : f32 = u_xlat15.x;
            u_xlat14.w = x_2512;
            let x_2514 : vec4<f32> = u_xlat12;
            let x_2517 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2520 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2514.x, x_2514.y, x_2514.x, x_2514.y) * vec4<f32>(x_2517.x, x_2517.y, x_2517.x, x_2517.y)) + vec4<f32>(x_2520.y, x_2520.w, x_2520.x, x_2520.w));
            let x_2523 : vec4<f32> = u_xlat12;
            let x_2526 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2529 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2523.x, x_2523.y) * vec2<f32>(x_2526.x, x_2526.y)) + vec2<f32>(x_2529.z, x_2529.w));
            let x_2533 : f32 = u_xlat14.y;
            u_xlat15.w = x_2533;
            let x_2535 : vec4<f32> = u_xlat15;
            let x_2536 : vec2<f32> = vec2<f32>(x_2535.y, x_2535.z);
            let x_2537 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2537.x, x_2536.x, x_2537.z, x_2536.y);
            let x_2539 : vec4<f32> = u_xlat12;
            let x_2542 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2545 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2539.x, x_2539.y, x_2539.x, x_2539.y) * vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y)) + vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2545.y));
            let x_2548 : vec4<f32> = u_xlat12;
            let x_2551 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2554 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2548.x, x_2548.y, x_2548.x, x_2548.y) * vec4<f32>(x_2551.x, x_2551.y, x_2551.x, x_2551.y)) + vec4<f32>(x_2554.w, x_2554.y, x_2554.w, x_2554.z));
            let x_2557 : vec4<f32> = u_xlat12;
            let x_2560 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2563 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y) * vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y)) + vec4<f32>(x_2563.x, x_2563.w, x_2563.z, x_2563.w));
            let x_2566 : vec4<f32> = u_xlat13;
            let x_2568 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2566.x, x_2566.x, x_2566.x, x_2566.y) * vec4<f32>(x_2568.z, x_2568.w, x_2568.y, x_2568.z));
            let x_2571 : vec4<f32> = u_xlat13;
            let x_2573 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2571.y, x_2571.y, x_2571.z, x_2571.z) * x_2573);
            let x_2576 : f32 = u_xlat13.z;
            let x_2578 : f32 = u_xlat18.y;
            u_xlat87 = (x_2576 * x_2578);
            let x_2581 : vec4<f32> = u_xlat16;
            let x_2582 : vec2<f32> = vec2<f32>(x_2581.x, x_2581.y);
            let x_2584 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2582.x, x_2582.y, x_2584);
            let x_2591 : vec3<f32> = txVec34;
            let x_2593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2591.xy, x_2591.z);
            u_xlat88 = x_2593;
            let x_2595 : vec4<f32> = u_xlat16;
            let x_2596 : vec2<f32> = vec2<f32>(x_2595.z, x_2595.w);
            let x_2598 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2596.x, x_2596.y, x_2598);
            let x_2606 : vec3<f32> = txVec35;
            let x_2608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2606.xy, x_2606.z);
            u_xlat89 = x_2608;
            let x_2609 : f32 = u_xlat89;
            let x_2611 : f32 = u_xlat19.y;
            u_xlat89 = (x_2609 * x_2611);
            let x_2614 : f32 = u_xlat19.x;
            let x_2615 : f32 = u_xlat88;
            let x_2617 : f32 = u_xlat89;
            u_xlat88 = ((x_2614 * x_2615) + x_2617);
            let x_2620 : vec2<f32> = u_xlat64;
            let x_2622 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2620.x, x_2620.y, x_2622);
            let x_2629 : vec3<f32> = txVec36;
            let x_2631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2629.xy, x_2629.z);
            u_xlat89 = x_2631;
            let x_2633 : f32 = u_xlat19.z;
            let x_2634 : f32 = u_xlat89;
            let x_2636 : f32 = u_xlat88;
            u_xlat88 = ((x_2633 * x_2634) + x_2636);
            let x_2639 : vec4<f32> = u_xlat15;
            let x_2640 : vec2<f32> = vec2<f32>(x_2639.x, x_2639.y);
            let x_2642 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2640.x, x_2640.y, x_2642);
            let x_2649 : vec3<f32> = txVec37;
            let x_2651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2649.xy, x_2649.z);
            u_xlat89 = x_2651;
            let x_2653 : f32 = u_xlat19.w;
            let x_2654 : f32 = u_xlat89;
            let x_2656 : f32 = u_xlat88;
            u_xlat88 = ((x_2653 * x_2654) + x_2656);
            let x_2659 : vec4<f32> = u_xlat17;
            let x_2660 : vec2<f32> = vec2<f32>(x_2659.x, x_2659.y);
            let x_2662 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2660.x, x_2660.y, x_2662);
            let x_2669 : vec3<f32> = txVec38;
            let x_2671 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2669.xy, x_2669.z);
            u_xlat89 = x_2671;
            let x_2673 : f32 = u_xlat20.x;
            let x_2674 : f32 = u_xlat89;
            let x_2676 : f32 = u_xlat88;
            u_xlat88 = ((x_2673 * x_2674) + x_2676);
            let x_2679 : vec4<f32> = u_xlat17;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec39;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat89 = x_2691;
            let x_2693 : f32 = u_xlat20.y;
            let x_2694 : f32 = u_xlat89;
            let x_2696 : f32 = u_xlat88;
            u_xlat88 = ((x_2693 * x_2694) + x_2696);
            let x_2699 : vec4<f32> = u_xlat15;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.z, x_2699.w);
            let x_2702 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec40;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat89 = x_2711;
            let x_2713 : f32 = u_xlat20.z;
            let x_2714 : f32 = u_xlat89;
            let x_2716 : f32 = u_xlat88;
            u_xlat88 = ((x_2713 * x_2714) + x_2716);
            let x_2719 : vec4<f32> = u_xlat14;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.x, x_2719.y);
            let x_2722 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec41;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat89 = x_2731;
            let x_2733 : f32 = u_xlat20.w;
            let x_2734 : f32 = u_xlat89;
            let x_2736 : f32 = u_xlat88;
            u_xlat88 = ((x_2733 * x_2734) + x_2736);
            let x_2739 : vec4<f32> = u_xlat14;
            let x_2740 : vec2<f32> = vec2<f32>(x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
            let x_2749 : vec3<f32> = txVec42;
            let x_2751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2749.xy, x_2749.z);
            u_xlat89 = x_2751;
            let x_2752 : f32 = u_xlat87;
            let x_2753 : f32 = u_xlat89;
            let x_2755 : f32 = u_xlat88;
            u_xlat85 = ((x_2752 * x_2753) + x_2755);
          } else {
            let x_2758 : vec4<f32> = u_xlat11;
            let x_2761 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2764 : vec2<f32> = ((vec2<f32>(x_2758.x, x_2758.y) * vec2<f32>(x_2761.z, x_2761.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2765 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2764.x, x_2764.y, x_2765.z, x_2765.w);
            let x_2767 : vec4<f32> = u_xlat12;
            let x_2769 : vec2<f32> = floor(vec2<f32>(x_2767.x, x_2767.y));
            let x_2770 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2769.x, x_2769.y, x_2770.z, x_2770.w);
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2775 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2778 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2772.x, x_2772.y) * vec2<f32>(x_2775.z, x_2775.w)) + -(vec2<f32>(x_2778.x, x_2778.y)));
            let x_2782 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2782.x, x_2782.x, x_2782.y, x_2782.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2785 : vec4<f32> = u_xlat13;
            let x_2787 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2785.x, x_2785.x, x_2785.z, x_2785.z) * vec4<f32>(x_2787.x, x_2787.x, x_2787.z, x_2787.z));
            let x_2790 : vec4<f32> = u_xlat14;
            let x_2792 : vec2<f32> = (vec2<f32>(x_2790.y, x_2790.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2793.x, x_2792.x, x_2793.z, x_2792.y);
            let x_2795 : vec4<f32> = u_xlat14;
            let x_2798 : vec2<f32> = u_xlat64;
            let x_2800 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2798));
            let x_2801 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2800.x, x_2801.y, x_2800.y, x_2801.w);
            let x_2803 : vec2<f32> = u_xlat64;
            let x_2805 : vec2<f32> = (-(x_2803) + vec2<f32>(1.0f, 1.0f));
            let x_2806 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2808 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2808, vec2<f32>(0.0f, 0.0f));
            let x_2810 : vec2<f32> = u_xlat66;
            let x_2812 : vec2<f32> = u_xlat66;
            let x_2814 : vec4<f32> = u_xlat14;
            let x_2816 : vec2<f32> = ((-(x_2810) * x_2812) + vec2<f32>(x_2814.x, x_2814.y));
            let x_2817 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2816.x, x_2816.y, x_2817.z, x_2817.w);
            let x_2819 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2819, vec2<f32>(0.0f, 0.0f));
            let x_2822 : vec2<f32> = u_xlat66;
            let x_2824 : vec2<f32> = u_xlat66;
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2828 : vec2<f32> = ((-(x_2822) * x_2824) + vec2<f32>(x_2826.y, x_2826.w));
            let x_2829 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2828.x, x_2829.y, x_2828.y);
            let x_2831 : vec4<f32> = u_xlat14;
            let x_2833 : vec2<f32> = (vec2<f32>(x_2831.x, x_2831.y) + vec2<f32>(2.0f, 2.0f));
            let x_2834 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2833.x, x_2833.y, x_2834.z, x_2834.w);
            let x_2836 : vec3<f32> = u_xlat39;
            let x_2838 : vec2<f32> = (vec2<f32>(x_2836.x, x_2836.z) + vec2<f32>(2.0f, 2.0f));
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2839.x, x_2838.x, x_2839.z, x_2838.y);
            let x_2842 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2842 * 0.08163200318813323975f);
            let x_2845 : vec4<f32> = u_xlat13;
            let x_2847 : vec3<f32> = (vec3<f32>(x_2845.z, x_2845.x, x_2845.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2848 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2848.w);
            let x_2850 : vec4<f32> = u_xlat14;
            let x_2852 : vec2<f32> = (vec2<f32>(x_2850.x, x_2850.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2853 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
            let x_2856 : f32 = u_xlat17.y;
            u_xlat16.x = x_2856;
            let x_2858 : vec2<f32> = u_xlat64;
            let x_2861 : vec2<f32> = ((vec2<f32>(x_2858.x, x_2858.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2862 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2862.x, x_2861.x, x_2862.z, x_2861.y);
            let x_2864 : vec2<f32> = u_xlat64;
            let x_2867 : vec2<f32> = ((vec2<f32>(x_2864.x, x_2864.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2868 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2867.x, x_2868.y, x_2867.y, x_2868.w);
            let x_2871 : f32 = u_xlat13.x;
            u_xlat14.y = x_2871;
            let x_2874 : f32 = u_xlat15.y;
            u_xlat14.w = x_2874;
            let x_2876 : vec4<f32> = u_xlat14;
            let x_2877 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2876 + x_2877);
            let x_2879 : vec2<f32> = u_xlat64;
            let x_2882 : vec2<f32> = ((vec2<f32>(x_2879.y, x_2879.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2883 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2883.x, x_2882.x, x_2883.z, x_2882.y);
            let x_2885 : vec2<f32> = u_xlat64;
            let x_2888 : vec2<f32> = ((vec2<f32>(x_2885.y, x_2885.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2889 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2888.x, x_2889.y, x_2888.y, x_2889.w);
            let x_2892 : f32 = u_xlat13.y;
            u_xlat15.y = x_2892;
            let x_2894 : vec4<f32> = u_xlat15;
            let x_2895 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2894 + x_2895);
            let x_2897 : vec4<f32> = u_xlat14;
            let x_2898 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2897 / x_2898);
            let x_2900 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2900 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2902 : vec4<f32> = u_xlat15;
            let x_2903 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2902 / x_2903);
            let x_2905 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2905 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2907 : vec4<f32> = u_xlat14;
            let x_2910 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2907.w, x_2907.x, x_2907.y, x_2907.z) * vec4<f32>(x_2910.x, x_2910.x, x_2910.x, x_2910.x));
            let x_2913 : vec4<f32> = u_xlat15;
            let x_2916 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2913.x, x_2913.w, x_2913.y, x_2913.z) * vec4<f32>(x_2916.y, x_2916.y, x_2916.y, x_2916.y));
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2920 : vec3<f32> = vec3<f32>(x_2919.y, x_2919.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2920.x, x_2921.y, x_2920.y, x_2920.z);
            let x_2924 : f32 = u_xlat15.x;
            u_xlat17.y = x_2924;
            let x_2926 : vec4<f32> = u_xlat12;
            let x_2929 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2932 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2926.x, x_2926.y, x_2926.x, x_2926.y) * vec4<f32>(x_2929.x, x_2929.y, x_2929.x, x_2929.y)) + vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2932.y));
            let x_2935 : vec4<f32> = u_xlat12;
            let x_2938 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2941 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2938.x, x_2938.y)) + vec2<f32>(x_2941.w, x_2941.y));
            let x_2945 : f32 = u_xlat17.y;
            u_xlat14.y = x_2945;
            let x_2948 : f32 = u_xlat15.z;
            u_xlat17.y = x_2948;
            let x_2950 : vec4<f32> = u_xlat12;
            let x_2953 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2956 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y) * vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.y)) + vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2956.y));
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2962 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat17;
            let x_2967 : vec2<f32> = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.x, x_2962.y)) + vec2<f32>(x_2965.w, x_2965.y));
            let x_2968 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat17.y;
            u_xlat14.z = x_2971;
            let x_2974 : vec4<f32> = u_xlat12;
            let x_2977 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y) * vec4<f32>(x_2977.x, x_2977.y, x_2977.x, x_2977.y)) + vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.z));
            let x_2984 : f32 = u_xlat15.w;
            u_xlat17.y = x_2984;
            let x_2987 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.y) * vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y)) + vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2993.y));
            let x_2997 : vec4<f32> = u_xlat12;
            let x_3000 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_3003 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(x_3000.x, x_3000.y)) + vec2<f32>(x_3003.w, x_3003.y));
            let x_3007 : f32 = u_xlat17.y;
            u_xlat14.w = x_3007;
            let x_3010 : vec4<f32> = u_xlat12;
            let x_3013 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3010.x, x_3010.y) * vec2<f32>(x_3013.x, x_3013.y)) + vec2<f32>(x_3016.x, x_3016.w));
            let x_3019 : vec4<f32> = u_xlat17;
            let x_3020 : vec3<f32> = vec3<f32>(x_3019.x, x_3019.z, x_3019.w);
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3020.x, x_3021.y, x_3020.y, x_3020.z);
            let x_3023 : vec4<f32> = u_xlat12;
            let x_3026 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_3029 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y) * vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y)) + vec4<f32>(x_3029.x, x_3029.y, x_3029.z, x_3029.y));
            let x_3032 : vec4<f32> = u_xlat12;
            let x_3035 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(x_3035.x, x_3035.y)) + vec2<f32>(x_3038.w, x_3038.y));
            let x_3042 : f32 = u_xlat14.x;
            u_xlat15.x = x_3042;
            let x_3044 : vec4<f32> = u_xlat12;
            let x_3047 : vec4<f32> = x_435.x_AdditionalShadowmapSize;
            let x_3050 : vec4<f32> = u_xlat15;
            let x_3052 : vec2<f32> = ((vec2<f32>(x_3044.x, x_3044.y) * vec2<f32>(x_3047.x, x_3047.y)) + vec2<f32>(x_3050.x, x_3050.y));
            let x_3053 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3052.x, x_3052.y, x_3053.z, x_3053.w);
            let x_3056 : vec4<f32> = u_xlat13;
            let x_3058 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3056.x, x_3056.x, x_3056.x, x_3056.x) * x_3058);
            let x_3061 : vec4<f32> = u_xlat13;
            let x_3063 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3061.y, x_3061.y, x_3061.y, x_3061.y) * x_3063);
            let x_3066 : vec4<f32> = u_xlat13;
            let x_3068 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3066.z, x_3066.z, x_3066.z, x_3066.z) * x_3068);
            let x_3070 : vec4<f32> = u_xlat13;
            let x_3072 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3070.w, x_3070.w, x_3070.w, x_3070.w) * x_3072);
            let x_3075 : vec4<f32> = u_xlat18;
            let x_3076 : vec2<f32> = vec2<f32>(x_3075.x, x_3075.y);
            let x_3078 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3076.x, x_3076.y, x_3078);
            let x_3085 : vec3<f32> = txVec43;
            let x_3087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
            u_xlat87 = x_3087;
            let x_3089 : vec4<f32> = u_xlat18;
            let x_3090 : vec2<f32> = vec2<f32>(x_3089.z, x_3089.w);
            let x_3092 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
            let x_3099 : vec3<f32> = txVec44;
            let x_3101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3099.xy, x_3099.z);
            u_xlat88 = x_3101;
            let x_3102 : f32 = u_xlat88;
            let x_3104 : f32 = u_xlat23.y;
            u_xlat88 = (x_3102 * x_3104);
            let x_3107 : f32 = u_xlat23.x;
            let x_3108 : f32 = u_xlat87;
            let x_3110 : f32 = u_xlat88;
            u_xlat87 = ((x_3107 * x_3108) + x_3110);
            let x_3113 : vec2<f32> = u_xlat64;
            let x_3115 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
            let x_3122 : vec3<f32> = txVec45;
            let x_3124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
            u_xlat88 = x_3124;
            let x_3126 : f32 = u_xlat23.z;
            let x_3127 : f32 = u_xlat88;
            let x_3129 : f32 = u_xlat87;
            u_xlat87 = ((x_3126 * x_3127) + x_3129);
            let x_3132 : vec4<f32> = u_xlat21;
            let x_3133 : vec2<f32> = vec2<f32>(x_3132.x, x_3132.y);
            let x_3135 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec46;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat88 = x_3144;
            let x_3146 : f32 = u_xlat23.w;
            let x_3147 : f32 = u_xlat88;
            let x_3149 : f32 = u_xlat87;
            u_xlat87 = ((x_3146 * x_3147) + x_3149);
            let x_3152 : vec4<f32> = u_xlat19;
            let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
            let x_3155 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec47;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat88 = x_3164;
            let x_3166 : f32 = u_xlat24.x;
            let x_3167 : f32 = u_xlat88;
            let x_3169 : f32 = u_xlat87;
            u_xlat87 = ((x_3166 * x_3167) + x_3169);
            let x_3172 : vec4<f32> = u_xlat19;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.z, x_3172.w);
            let x_3175 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec48;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat88 = x_3184;
            let x_3186 : f32 = u_xlat24.y;
            let x_3187 : f32 = u_xlat88;
            let x_3189 : f32 = u_xlat87;
            u_xlat87 = ((x_3186 * x_3187) + x_3189);
            let x_3192 : vec4<f32> = u_xlat20;
            let x_3193 : vec2<f32> = vec2<f32>(x_3192.x, x_3192.y);
            let x_3195 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3193.x, x_3193.y, x_3195);
            let x_3202 : vec3<f32> = txVec49;
            let x_3204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3202.xy, x_3202.z);
            u_xlat88 = x_3204;
            let x_3206 : f32 = u_xlat24.z;
            let x_3207 : f32 = u_xlat88;
            let x_3209 : f32 = u_xlat87;
            u_xlat87 = ((x_3206 * x_3207) + x_3209);
            let x_3212 : vec4<f32> = u_xlat21;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.z, x_3212.w);
            let x_3215 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec50;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat88 = x_3224;
            let x_3226 : f32 = u_xlat24.w;
            let x_3227 : f32 = u_xlat88;
            let x_3229 : f32 = u_xlat87;
            u_xlat87 = ((x_3226 * x_3227) + x_3229);
            let x_3232 : vec4<f32> = u_xlat22;
            let x_3233 : vec2<f32> = vec2<f32>(x_3232.x, x_3232.y);
            let x_3235 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec51;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat88 = x_3244;
            let x_3246 : f32 = u_xlat25.x;
            let x_3247 : f32 = u_xlat88;
            let x_3249 : f32 = u_xlat87;
            u_xlat87 = ((x_3246 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat22;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
            let x_3255 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec52;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat88 = x_3264;
            let x_3266 : f32 = u_xlat25.y;
            let x_3267 : f32 = u_xlat88;
            let x_3269 : f32 = u_xlat87;
            u_xlat87 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec2<f32> = u_xlat40;
            let x_3274 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec53;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat88 = x_3283;
            let x_3285 : f32 = u_xlat25.z;
            let x_3286 : f32 = u_xlat88;
            let x_3288 : f32 = u_xlat87;
            u_xlat87 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec2<f32> = u_xlat72;
            let x_3293 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec54;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat88 = x_3302;
            let x_3304 : f32 = u_xlat25.w;
            let x_3305 : f32 = u_xlat88;
            let x_3307 : f32 = u_xlat87;
            u_xlat87 = ((x_3304 * x_3305) + x_3307);
            let x_3310 : vec4<f32> = u_xlat17;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.x, x_3310.y);
            let x_3313 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec55;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat88 = x_3322;
            let x_3324 : f32 = u_xlat13.x;
            let x_3325 : f32 = u_xlat88;
            let x_3327 : f32 = u_xlat87;
            u_xlat87 = ((x_3324 * x_3325) + x_3327);
            let x_3330 : vec4<f32> = u_xlat17;
            let x_3331 : vec2<f32> = vec2<f32>(x_3330.z, x_3330.w);
            let x_3333 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3331.x, x_3331.y, x_3333);
            let x_3340 : vec3<f32> = txVec56;
            let x_3342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3340.xy, x_3340.z);
            u_xlat88 = x_3342;
            let x_3344 : f32 = u_xlat13.y;
            let x_3345 : f32 = u_xlat88;
            let x_3347 : f32 = u_xlat87;
            u_xlat87 = ((x_3344 * x_3345) + x_3347);
            let x_3350 : vec2<f32> = u_xlat67;
            let x_3352 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
            let x_3359 : vec3<f32> = txVec57;
            let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
            u_xlat88 = x_3361;
            let x_3363 : f32 = u_xlat13.z;
            let x_3364 : f32 = u_xlat88;
            let x_3366 : f32 = u_xlat87;
            u_xlat87 = ((x_3363 * x_3364) + x_3366);
            let x_3369 : vec4<f32> = u_xlat12;
            let x_3370 : vec2<f32> = vec2<f32>(x_3369.x, x_3369.y);
            let x_3372 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3370.x, x_3370.y, x_3372);
            let x_3379 : vec3<f32> = txVec58;
            let x_3381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3379.xy, x_3379.z);
            u_xlat88 = x_3381;
            let x_3383 : f32 = u_xlat13.w;
            let x_3384 : f32 = u_xlat88;
            let x_3386 : f32 = u_xlat87;
            u_xlat85 = ((x_3383 * x_3384) + x_3386);
          }
        }
      } else {
        let x_3390 : vec4<f32> = u_xlat11;
        let x_3391 : vec2<f32> = vec2<f32>(x_3390.x, x_3390.y);
        let x_3393 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3391.x, x_3391.y, x_3393);
        let x_3400 : vec3<f32> = txVec59;
        let x_3402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3400.xy, x_3400.z);
        u_xlat85 = x_3402;
      }
      let x_3403 : i32 = u_xlati82;
      let x_3405 : f32 = x_435.x_AdditionalShadowParams[x_3403].x;
      u_xlat87 = (1.0f + -(x_3405));
      let x_3408 : f32 = u_xlat85;
      let x_3409 : i32 = u_xlati82;
      let x_3411 : f32 = x_435.x_AdditionalShadowParams[x_3409].x;
      let x_3413 : f32 = u_xlat87;
      u_xlat85 = ((x_3408 * x_3411) + x_3413);
      let x_3416 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3416);
      let x_3420 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3420 >= 1.0f);
      let x_3422 : bool = u_xlatb87;
      let x_3423 : bool = u_xlatb88;
      u_xlatb87 = (x_3422 | x_3423);
      let x_3425 : bool = u_xlatb87;
      let x_3426 : f32 = u_xlat85;
      u_xlat85 = select(x_3426, 1.0f, x_3425);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3429 : f32 = u_xlat85;
    u_xlat87 = (-(x_3429) + 1.0f);
    let x_3432 : f32 = u_xlat80;
    let x_3433 : f32 = u_xlat87;
    let x_3435 : f32 = u_xlat85;
    u_xlat85 = ((x_3432 * x_3433) + x_3435);
    let x_3437 : f32 = u_xlat83;
    let x_3438 : f32 = u_xlat85;
    u_xlat83 = (x_3437 * x_3438);
    let x_3440 : vec4<f32> = u_xlat1;
    let x_3442 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3440.x, x_3440.y, x_3440.w), vec3<f32>(x_3442.x, x_3442.y, x_3442.z));
    let x_3445 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3445, 0.0f, 1.0f);
    let x_3447 : f32 = u_xlat83;
    let x_3448 : f32 = u_xlat85;
    u_xlat83 = (x_3447 * x_3448);
    let x_3450 : f32 = u_xlat83;
    let x_3452 : i32 = u_xlati82;
    let x_3454 : vec4<f32> = x_2015.x_AdditionalLightsColor[x_3452];
    let x_3456 : vec3<f32> = (vec3<f32>(x_3450, x_3450, x_3450) * vec3<f32>(x_3454.x, x_3454.y, x_3454.z));
    let x_3457 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3457.w);
    let x_3459 : vec4<f32> = u_xlat9;
    let x_3461 : f32 = u_xlat84;
    let x_3464 : vec3<f32> = u_xlat5;
    let x_3465 : vec3<f32> = ((vec3<f32>(x_3459.x, x_3459.y, x_3459.z) * vec3<f32>(x_3461, x_3461, x_3461)) + x_3464);
    let x_3466 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
    let x_3468 : vec4<f32> = u_xlat9;
    let x_3470 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3468.x, x_3468.y, x_3468.z), vec3<f32>(x_3470.x, x_3470.y, x_3470.z));
    let x_3473 : f32 = u_xlat82;
    u_xlat82 = max(x_3473, 1.17549435e-38f);
    let x_3475 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3475);
    let x_3477 : f32 = u_xlat82;
    let x_3479 : vec4<f32> = u_xlat9;
    let x_3481 : vec3<f32> = (vec3<f32>(x_3477, x_3477, x_3477) * vec3<f32>(x_3479.x, x_3479.y, x_3479.z));
    let x_3482 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3481.x, x_3481.y, x_3481.z, x_3482.w);
    let x_3484 : vec4<f32> = u_xlat1;
    let x_3486 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3484.x, x_3484.y, x_3484.w), vec3<f32>(x_3486.x, x_3486.y, x_3486.z));
    let x_3489 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3489, 0.0f, 1.0f);
    let x_3491 : vec4<f32> = u_xlat10;
    let x_3493 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3491.x, x_3491.y, x_3491.z), vec3<f32>(x_3493.x, x_3493.y, x_3493.z));
    let x_3496 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3496, 0.0f, 1.0f);
    let x_3498 : f32 = u_xlat82;
    let x_3499 : f32 = u_xlat82;
    u_xlat82 = (x_3498 * x_3499);
    let x_3501 : f32 = u_xlat82;
    let x_3503 : f32 = u_xlat8.x;
    u_xlat82 = ((x_3501 * x_3503) + 1.00001001358032226562f);
    let x_3506 : f32 = u_xlat83;
    let x_3507 : f32 = u_xlat83;
    u_xlat83 = (x_3506 * x_3507);
    let x_3509 : f32 = u_xlat82;
    let x_3510 : f32 = u_xlat82;
    u_xlat82 = (x_3509 * x_3510);
    let x_3512 : f32 = u_xlat83;
    u_xlat83 = max(x_3512, 0.10000000149011611938f);
    let x_3514 : f32 = u_xlat82;
    let x_3515 : f32 = u_xlat83;
    u_xlat82 = (x_3514 * x_3515);
    let x_3517 : f32 = u_xlat81;
    let x_3518 : f32 = u_xlat82;
    u_xlat82 = (x_3517 * x_3518);
    let x_3520 : f32 = u_xlat29;
    let x_3521 : f32 = u_xlat82;
    u_xlat82 = (x_3520 / x_3521);
    let x_3523 : vec3<f32> = u_xlat0;
    let x_3524 : f32 = u_xlat82;
    let x_3527 : vec3<f32> = u_xlat6;
    let x_3528 : vec3<f32> = ((x_3523 * vec3<f32>(x_3524, x_3524, x_3524)) + x_3527);
    let x_3529 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3528.x, x_3528.y, x_3528.z, x_3529.w);
    let x_3531 : vec4<f32> = u_xlat9;
    let x_3533 : vec4<f32> = u_xlat11;
    let x_3536 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3531.x, x_3531.y, x_3531.z) * vec3<f32>(x_3533.x, x_3533.y, x_3533.z)) + x_3536);

    continuing {
      let x_3538 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3538 + bitcast<u32>(1i));
    }
  }
  let x_3540 : vec4<f32> = u_xlat4;
  let x_3542 : f32 = u_xlat55;
  let x_3545 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_3540.x, x_3540.y, x_3540.z) * vec3<f32>(x_3542, x_3542, x_3542)) + vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
  let x_3548 : vec3<f32> = u_xlat34;
  let x_3549 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3548 + x_3549);
  let x_3553 : vec3<f32> = u_xlat2;
  let x_3554 : f32 = u_xlat53;
  let x_3557 : vec3<f32> = u_xlat0;
  let x_3558 : vec3<f32> = ((x_3553 * vec3<f32>(x_3554, x_3554, x_3554)) + x_3557);
  let x_3559 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3558.x, x_3558.y, x_3558.z, x_3559.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


