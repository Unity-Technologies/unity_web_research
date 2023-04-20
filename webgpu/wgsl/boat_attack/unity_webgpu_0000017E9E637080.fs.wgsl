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

var<private> u_xlat81 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat55 : f32;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlatb55 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb82 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat83 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb81 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_312 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu81 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlat84 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat57 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat85 : f32;

var<private> u_xlatb86 : bool;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlat36 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlat28 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2223 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb12 : vec4<bool>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat41 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat75 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

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
  var x_1873 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2357 : f32;
  var x_2366 : f32;
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
  u_xlat81 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat81;
  u_xlat81 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat81;
  u_xlat81 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat81;
  u_xlat81 = sqrt(x_84);
  let x_86 : f32 = u_xlat81;
  u_xlat81 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  u_xlat2 = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_101 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_113 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  let x_116 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  u_xlat55 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat55;
  u_xlat55 = sqrt(x_119);
  let x_121 : f32 = u_xlat55;
  u_xlat55 = fract(x_121);
  let x_123 : f32 = u_xlat55;
  let x_126 : f32 = x_29.x_NightFade;
  u_xlat55 = (x_123 + x_126);
  let x_131 : f32 = u_xlat55;
  u_xlatb55 = (x_131 >= 1.0f);
  let x_133 : bool = u_xlatb55;
  u_xlat55 = select(0.0f, 1.0f, x_133);
  let x_142 : vec4<f32> = vs_INTERP5;
  let x_145 : f32 = x_29.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_142.x, x_142.y), x_145);
  u_xlat3 = vec3<f32>(x_146.x, x_146.w, x_146.y);
  let x_153 : f32 = vs_INTERP4.w;
  u_xlatb82 = (0.0f < x_153);
  let x_156 : bool = u_xlatb82;
  u_xlat82 = select(-1.0f, 1.0f, x_156);
  let x_160 : f32 = x_109.unity_WorldTransformParams.w;
  u_xlatb83 = (x_160 >= 0.0f);
  let x_163 : bool = u_xlatb83;
  u_xlat83 = select(-1.0f, 1.0f, x_163);
  let x_165 : f32 = u_xlat82;
  let x_166 : f32 = u_xlat83;
  u_xlat82 = (x_165 * x_166);
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
  let x_189 : f32 = u_xlat82;
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
  let x_213 : f32 = u_xlat81;
  let x_215 : vec3<f32> = vs_INTERP8;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat81 = dot(vec3<f32>(x_222.x, x_222.y, x_222.w), vec3<f32>(x_224.x, x_224.y, x_224.w));
  let x_227 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat81;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_239 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb81 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP7;
  let x_247 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_242) + x_247);
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_249.z, x_248.z);
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat83 = dot(vec3<f32>(x_251.x, x_251.y, x_251.w), vec3<f32>(x_253.x, x_253.y, x_253.w));
  let x_256 : f32 = u_xlat83;
  u_xlat83 = inverseSqrt(x_256);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : f32 = u_xlat83;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.w) * vec3<f32>(x_260, x_260, x_260));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_262.z);
  let x_266 : bool = u_xlatb81;
  if (x_266) {
    let x_272 : f32 = u_xlat1.x;
    x_268 = x_272;
  } else {
    let x_276 : f32 = x_29.unity_MatrixV[0i].z;
    x_268 = x_276;
  }
  let x_277 : f32 = x_268;
  u_xlat5.x = x_277;
  let x_279 : bool = u_xlatb81;
  if (x_279) {
    let x_285 : f32 = u_xlat1.y;
    x_280 = x_285;
  } else {
    let x_289 : f32 = x_29.unity_MatrixV[1i].z;
    x_280 = x_289;
  }
  let x_290 : f32 = x_280;
  u_xlat5.y = x_290;
  let x_292 : bool = u_xlatb81;
  if (x_292) {
    let x_297 : f32 = u_xlat1.w;
    x_293 = x_297;
  } else {
    let x_301 : f32 = x_29.unity_MatrixV[2i].z;
    x_293 = x_301;
  }
  let x_302 : f32 = x_293;
  u_xlat5.z = x_302;
  let x_304 : vec3<f32> = vs_INTERP7;
  let x_314 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres0;
  let x_317 : vec3<f32> = (x_304 + -(vec3<f32>(x_314.x, x_314.y, x_314.z)));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_318.z, x_317.z);
  let x_321 : vec3<f32> = vs_INTERP7;
  let x_323 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_321 + -(vec3<f32>(x_323.x, x_323.y, x_323.z)));
  let x_328 : vec3<f32> = vs_INTERP7;
  let x_330 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres2;
  let x_333 : vec3<f32> = (x_328 + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_334 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec3<f32> = vs_INTERP7;
  let x_339 : vec4<f32> = x_312.x_CascadeShadowSplitSpheres3;
  let x_342 : vec3<f32> = (x_337 + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_343 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec3<f32>(x_346.x, x_346.y, x_346.w), vec3<f32>(x_348.x, x_348.y, x_348.w));
  let x_352 : vec3<f32> = u_xlat6;
  let x_353 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_352, x_353);
  let x_356 : vec4<f32> = u_xlat7;
  let x_358 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_356.x, x_356.y, x_356.z), vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_362 : vec4<f32> = u_xlat8;
  let x_364 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_371 : vec4<f32> = u_xlat9;
  let x_373 : vec4<f32> = x_312.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_371 < x_373);
  let x_376 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_376);
  let x_380 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_380);
  let x_384 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_384);
  let x_388 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_388);
  let x_392 : bool = u_xlatb6.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_392);
  let x_397 : bool = u_xlatb6.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_397);
  let x_401 : bool = u_xlatb6.z;
  u_xlat1.w = select(-0.0f, -1.0f, x_401);
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat7;
  let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.w) + vec3<f32>(x_406.y, x_406.z, x_406.w));
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_408.z);
  let x_411 : vec4<f32> = u_xlat1;
  let x_414 : vec3<f32> = max(vec3<f32>(x_411.x, x_411.y, x_411.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_414.x, x_414.y, x_414.z);
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(x_417, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_422 : f32 = u_xlat81;
  u_xlat81 = (-(x_422) + 4.0f);
  let x_427 : f32 = u_xlat81;
  u_xlatu81 = u32(x_427);
  let x_431 : u32 = u_xlatu81;
  u_xlati81 = (bitcast<i32>(x_431) << bitcast<u32>(2i));
  let x_434 : vec3<f32> = vs_INTERP7;
  let x_436 : i32 = u_xlati81;
  let x_439 : i32 = u_xlati81;
  let x_443 : vec4<f32> = x_312.x_MainLightWorldToShadow[((x_436 + 1i) / 4i)][((x_439 + 1i) % 4i)];
  let x_445 : vec3<f32> = (vec3<f32>(x_434.y, x_434.y, x_434.y) * vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_445.z);
  let x_448 : i32 = u_xlati81;
  let x_450 : i32 = u_xlati81;
  let x_453 : vec4<f32> = x_312.x_MainLightWorldToShadow[(x_448 / 4i)][(x_450 % 4i)];
  let x_455 : vec3<f32> = vs_INTERP7;
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_455.x, x_455.x, x_455.x)) + vec3<f32>(x_458.x, x_458.y, x_458.w));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_460.z);
  let x_463 : i32 = u_xlati81;
  let x_466 : i32 = u_xlati81;
  let x_470 : vec4<f32> = x_312.x_MainLightWorldToShadow[((x_463 + 2i) / 4i)][((x_466 + 2i) % 4i)];
  let x_472 : vec3<f32> = vs_INTERP7;
  let x_475 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472.z, x_472.z, x_472.z)) + vec3<f32>(x_475.x, x_475.y, x_475.w));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_477.z);
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : i32 = u_xlati81;
  let x_485 : i32 = u_xlati81;
  let x_489 : vec4<f32> = x_312.x_MainLightWorldToShadow[((x_482 + 3i) / 4i)][((x_485 + 3i) % 4i)];
  let x_491 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.w) + vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_491.z);
  u_xlat4.w = 1.0f;
  let x_497 : vec4<f32> = x_109.unity_SHAr;
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_497, x_498);
  let x_503 : vec4<f32> = x_109.unity_SHAg;
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_503, x_504);
  let x_509 : vec4<f32> = x_109.unity_SHAb;
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_509, x_510);
  let x_513 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_513.y, x_513.z, x_513.z, x_513.x) * vec4<f32>(x_515.x, x_515.y, x_515.z, x_515.z));
  let x_520 : vec4<f32> = x_109.unity_SHBr;
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_520, x_521);
  let x_526 : vec4<f32> = x_109.unity_SHBg;
  let x_527 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_109.unity_SHBb;
  let x_533 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_532, x_533);
  let x_537 : f32 = u_xlat4.y;
  let x_539 : f32 = u_xlat4.y;
  u_xlat81 = (x_537 * x_539);
  let x_542 : f32 = u_xlat4.x;
  let x_544 : f32 = u_xlat4.x;
  let x_546 : f32 = u_xlat81;
  u_xlat81 = ((x_542 * x_544) + -(x_546));
  let x_551 : vec4<f32> = x_109.unity_SHC;
  let x_553 : f32 = u_xlat81;
  let x_556 : vec4<f32> = u_xlat8;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_553, x_553, x_553)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat6;
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_561 + vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_565, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_567 : vec3<f32> = u_xlat3;
  let x_568 : vec2<f32> = vec2<f32>(x_567.x, x_567.y);
  let x_569 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_568.x, x_568.y, x_569.z);
  let x_571 : vec3<f32> = u_xlat3;
  let x_575 : vec2<f32> = clamp(vec2<f32>(x_571.x, x_571.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_576 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_575.x, x_575.y, x_576.z);
  let x_579 : f32 = u_xlat3.x;
  u_xlat81 = ((-(x_579) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_584 : f32 = u_xlat81;
  u_xlat83 = (-(x_584) + 1.0f);
  let x_587 : f32 = u_xlat81;
  let x_589 : vec3<f32> = u_xlat0;
  let x_590 : vec3<f32> = (vec3<f32>(x_587, x_587, x_587) * x_589);
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_593 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_597 : vec3<f32> = u_xlat3;
  let x_599 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_597.x, x_597.x, x_597.x) * x_599) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_605 : f32 = u_xlat3.y;
  u_xlat81 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat81;
  let x_609 : f32 = u_xlat81;
  u_xlat3.x = (x_608 * x_609);
  let x_613 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_613, 0.0078125f);
  let x_619 : f32 = u_xlat3.x;
  let x_621 : f32 = u_xlat3.x;
  u_xlat84 = (x_619 * x_621);
  let x_623 : f32 = u_xlat83;
  let x_625 : f32 = u_xlat3.y;
  u_xlat83 = (x_623 + x_625);
  let x_627 : f32 = u_xlat83;
  u_xlat83 = min(x_627, 1.0f);
  let x_631 : f32 = u_xlat3.x;
  u_xlat30 = ((x_631 * 4.0f) + 2.0f);
  let x_636 : f32 = u_xlat3.z;
  u_xlat57 = min(x_636, 1.0f);
  let x_641 : f32 = x_312.x_MainLightShadowParams.y;
  u_xlatb85 = (0.0f < x_641);
  let x_643 : bool = u_xlatb85;
  if (x_643) {
    let x_647 : f32 = x_312.x_MainLightShadowParams.y;
    u_xlatb85 = (x_647 == 1.0f);
    let x_649 : bool = u_xlatb85;
    if (x_649) {
      let x_652 : vec4<f32> = u_xlat1;
      let x_655 : vec4<f32> = x_312.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) + x_655);
      let x_659 : vec4<f32> = u_xlat8;
      let x_660 : vec2<f32> = vec2<f32>(x_659.x, x_659.y);
      let x_662 : f32 = u_xlat1.w;
      txVec0 = vec3<f32>(x_660.x, x_660.y, x_662);
      let x_674 : vec3<f32> = txVec0;
      let x_676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_674.xy, x_674.z);
      u_xlat9.x = x_676;
      let x_679 : vec4<f32> = u_xlat8;
      let x_680 : vec2<f32> = vec2<f32>(x_679.z, x_679.w);
      let x_682 : f32 = u_xlat1.w;
      txVec1 = vec3<f32>(x_680.x, x_680.y, x_682);
      let x_689 : vec3<f32> = txVec1;
      let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_689.xy, x_689.z);
      u_xlat9.y = x_691;
      let x_693 : vec4<f32> = u_xlat1;
      let x_696 : vec4<f32> = x_312.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_693.x, x_693.y, x_693.x, x_693.y) + x_696);
      let x_699 : vec4<f32> = u_xlat8;
      let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
      let x_702 : f32 = u_xlat1.w;
      txVec2 = vec3<f32>(x_700.x, x_700.y, x_702);
      let x_709 : vec3<f32> = txVec2;
      let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_709.xy, x_709.z);
      u_xlat9.z = x_711;
      let x_714 : vec4<f32> = u_xlat8;
      let x_715 : vec2<f32> = vec2<f32>(x_714.z, x_714.w);
      let x_717 : f32 = u_xlat1.w;
      txVec3 = vec3<f32>(x_715.x, x_715.y, x_717);
      let x_724 : vec3<f32> = txVec3;
      let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_724.xy, x_724.z);
      u_xlat9.w = x_726;
      let x_729 : vec4<f32> = u_xlat9;
      u_xlat85 = dot(x_729, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_736 : f32 = x_312.x_MainLightShadowParams.y;
      u_xlatb86 = (x_736 == 2.0f);
      let x_738 : bool = u_xlatb86;
      if (x_738) {
        let x_741 : vec4<f32> = u_xlat1;
        let x_745 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_750 : vec2<f32> = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_745.z, x_745.w)) + vec2<f32>(0.5f, 0.5f));
        let x_751 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat8;
        let x_755 : vec2<f32> = floor(vec2<f32>(x_753.x, x_753.y));
        let x_756 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_760 : vec4<f32> = u_xlat1;
        let x_763 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_760.x, x_760.y) * vec2<f32>(x_763.z, x_763.w)) + -(vec2<f32>(x_766.x, x_766.y)));
        let x_770 : vec2<f32> = u_xlat62;
        u_xlat9 = (vec4<f32>(x_770.x, x_770.x, x_770.y, x_770.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_775 : vec4<f32> = u_xlat9;
        let x_777 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_775.x, x_775.x, x_775.z, x_775.z) * vec4<f32>(x_777.x, x_777.x, x_777.z, x_777.z));
        let x_780 : vec4<f32> = u_xlat10;
        let x_784 : vec2<f32> = (vec2<f32>(x_780.y, x_780.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_784.x, x_785.y, x_784.y, x_785.w);
        let x_787 : vec4<f32> = u_xlat10;
        let x_790 : vec2<f32> = u_xlat62;
        let x_792 : vec2<f32> = ((vec2<f32>(x_787.x, x_787.z) * vec2<f32>(0.5f, 0.5f)) + -(x_790));
        let x_793 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
        let x_796 : vec2<f32> = u_xlat62;
        u_xlat64 = (-(x_796) + vec2<f32>(1.0f, 1.0f));
        let x_801 : vec2<f32> = u_xlat62;
        let x_803 : vec2<f32> = min(x_801, vec2<f32>(0.0f, 0.0f));
        let x_804 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat11;
        let x_809 : vec4<f32> = u_xlat11;
        let x_812 : vec2<f32> = u_xlat64;
        let x_813 : vec2<f32> = ((-(vec2<f32>(x_806.x, x_806.y)) * vec2<f32>(x_809.x, x_809.y)) + x_812);
        let x_814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec2<f32> = u_xlat62;
        u_xlat62 = max(x_816, vec2<f32>(0.0f, 0.0f));
        let x_818 : vec2<f32> = u_xlat62;
        let x_820 : vec2<f32> = u_xlat62;
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat62 = ((-(x_818) * x_820) + vec2<f32>(x_822.y, x_822.w));
        let x_825 : vec4<f32> = u_xlat11;
        let x_827 : vec2<f32> = (vec2<f32>(x_825.x, x_825.y) + vec2<f32>(1.0f, 1.0f));
        let x_828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_830 + vec2<f32>(1.0f, 1.0f));
        let x_833 : vec4<f32> = u_xlat10;
        let x_837 : vec2<f32> = (vec2<f32>(x_833.x, x_833.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_838 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec2<f32> = u_xlat64;
        let x_841 : vec2<f32> = (x_840 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat11;
        let x_846 : vec2<f32> = (vec2<f32>(x_844.x, x_844.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_847 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_850 : vec2<f32> = u_xlat62;
        let x_851 : vec2<f32> = (x_850 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_852 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_854 : vec4<f32> = u_xlat9;
        u_xlat62 = (vec2<f32>(x_854.y, x_854.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_858 : f32 = u_xlat11.x;
        u_xlat12.z = x_858;
        let x_861 : f32 = u_xlat62.x;
        u_xlat12.w = x_861;
        let x_864 : f32 = u_xlat13.x;
        u_xlat10.z = x_864;
        let x_867 : f32 = u_xlat9.x;
        u_xlat10.w = x_867;
        let x_870 : vec4<f32> = u_xlat10;
        let x_872 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_870.z, x_870.w, x_870.x, x_870.z) + vec4<f32>(x_872.z, x_872.w, x_872.x, x_872.z));
        let x_876 : f32 = u_xlat12.y;
        u_xlat11.z = x_876;
        let x_879 : f32 = u_xlat62.y;
        u_xlat11.w = x_879;
        let x_882 : f32 = u_xlat10.y;
        u_xlat13.z = x_882;
        let x_885 : f32 = u_xlat9.z;
        u_xlat13.w = x_885;
        let x_887 : vec4<f32> = u_xlat11;
        let x_889 : vec4<f32> = u_xlat13;
        let x_891 : vec3<f32> = (vec3<f32>(x_887.z, x_887.y, x_887.w) + vec3<f32>(x_889.z, x_889.y, x_889.w));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat10;
        let x_896 : vec4<f32> = u_xlat14;
        let x_898 : vec3<f32> = (vec3<f32>(x_894.x, x_894.z, x_894.w) / vec3<f32>(x_896.z, x_896.w, x_896.y));
        let x_899 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
        let x_901 : vec4<f32> = u_xlat10;
        let x_907 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_908 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat13;
        let x_912 : vec4<f32> = u_xlat9;
        let x_914 : vec3<f32> = (vec3<f32>(x_910.z, x_910.y, x_910.w) / vec3<f32>(x_912.x, x_912.y, x_912.z));
        let x_915 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
        let x_917 : vec4<f32> = u_xlat11;
        let x_919 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_920 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
        let x_922 : vec4<f32> = u_xlat10;
        let x_925 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_927 : vec3<f32> = (vec3<f32>(x_922.y, x_922.x, x_922.z) * vec3<f32>(x_925.x, x_925.x, x_925.x));
        let x_928 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
        let x_930 : vec4<f32> = u_xlat11;
        let x_933 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_935 : vec3<f32> = (vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(x_933.y, x_933.y, x_933.y));
        let x_936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_939 : f32 = u_xlat11.x;
        u_xlat10.w = x_939;
        let x_941 : vec4<f32> = u_xlat8;
        let x_944 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_941.x, x_941.y, x_941.x, x_941.y) * vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y)) + vec4<f32>(x_947.y, x_947.w, x_947.x, x_947.w));
        let x_950 : vec4<f32> = u_xlat8;
        let x_953 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_956 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_950.x, x_950.y) * vec2<f32>(x_953.x, x_953.y)) + vec2<f32>(x_956.z, x_956.w));
        let x_960 : f32 = u_xlat10.y;
        u_xlat11.w = x_960;
        let x_962 : vec4<f32> = u_xlat11;
        let x_963 : vec2<f32> = vec2<f32>(x_962.y, x_962.z);
        let x_964 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_964.x, x_963.x, x_964.z, x_963.y);
        let x_966 : vec4<f32> = u_xlat8;
        let x_969 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_966.x, x_966.y, x_966.x, x_966.y) * vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y)) + vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.y));
        let x_975 : vec4<f32> = u_xlat8;
        let x_978 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.w, x_981.y, x_981.w, x_981.z));
        let x_984 : vec4<f32> = u_xlat8;
        let x_987 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y)) + vec4<f32>(x_990.x, x_990.w, x_990.z, x_990.w));
        let x_994 : vec4<f32> = u_xlat9;
        let x_996 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_994.x, x_994.x, x_994.x, x_994.y) * vec4<f32>(x_996.z, x_996.w, x_996.y, x_996.z));
        let x_1000 : vec4<f32> = u_xlat9;
        let x_1002 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1000.y, x_1000.y, x_1000.z, x_1000.z) * x_1002);
        let x_1006 : f32 = u_xlat9.z;
        let x_1008 : f32 = u_xlat14.y;
        u_xlat86 = (x_1006 * x_1008);
        let x_1011 : vec4<f32> = u_xlat12;
        let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
        let x_1014 : f32 = u_xlat1.w;
        txVec4 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
        let x_1022 : vec3<f32> = txVec4;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat87 = x_1024;
        let x_1026 : vec4<f32> = u_xlat12;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.z, x_1026.w);
        let x_1029 : f32 = u_xlat1.w;
        txVec5 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1037 : vec3<f32> = txVec5;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1037.xy, x_1037.z);
        u_xlat88 = x_1039;
        let x_1040 : f32 = u_xlat88;
        let x_1042 : f32 = u_xlat15.y;
        u_xlat88 = (x_1040 * x_1042);
        let x_1045 : f32 = u_xlat15.x;
        let x_1046 : f32 = u_xlat87;
        let x_1048 : f32 = u_xlat88;
        u_xlat87 = ((x_1045 * x_1046) + x_1048);
        let x_1051 : vec2<f32> = u_xlat62;
        let x_1053 : f32 = u_xlat1.w;
        txVec6 = vec3<f32>(x_1051.x, x_1051.y, x_1053);
        let x_1060 : vec3<f32> = txVec6;
        let x_1062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1060.xy, x_1060.z);
        u_xlat88 = x_1062;
        let x_1064 : f32 = u_xlat15.z;
        let x_1065 : f32 = u_xlat88;
        let x_1067 : f32 = u_xlat87;
        u_xlat87 = ((x_1064 * x_1065) + x_1067);
        let x_1070 : vec4<f32> = u_xlat11;
        let x_1071 : vec2<f32> = vec2<f32>(x_1070.x, x_1070.y);
        let x_1073 : f32 = u_xlat1.w;
        txVec7 = vec3<f32>(x_1071.x, x_1071.y, x_1073);
        let x_1080 : vec3<f32> = txVec7;
        let x_1082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1080.xy, x_1080.z);
        u_xlat88 = x_1082;
        let x_1084 : f32 = u_xlat15.w;
        let x_1085 : f32 = u_xlat88;
        let x_1087 : f32 = u_xlat87;
        u_xlat87 = ((x_1084 * x_1085) + x_1087);
        let x_1090 : vec4<f32> = u_xlat13;
        let x_1091 : vec2<f32> = vec2<f32>(x_1090.x, x_1090.y);
        let x_1093 : f32 = u_xlat1.w;
        txVec8 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
        let x_1100 : vec3<f32> = txVec8;
        let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
        u_xlat88 = x_1102;
        let x_1104 : f32 = u_xlat16.x;
        let x_1105 : f32 = u_xlat88;
        let x_1107 : f32 = u_xlat87;
        u_xlat87 = ((x_1104 * x_1105) + x_1107);
        let x_1110 : vec4<f32> = u_xlat13;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.z, x_1110.w);
        let x_1113 : f32 = u_xlat1.w;
        txVec9 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1120 : vec3<f32> = txVec9;
        let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1120.xy, x_1120.z);
        u_xlat88 = x_1122;
        let x_1124 : f32 = u_xlat16.y;
        let x_1125 : f32 = u_xlat88;
        let x_1127 : f32 = u_xlat87;
        u_xlat87 = ((x_1124 * x_1125) + x_1127);
        let x_1130 : vec4<f32> = u_xlat11;
        let x_1131 : vec2<f32> = vec2<f32>(x_1130.z, x_1130.w);
        let x_1133 : f32 = u_xlat1.w;
        txVec10 = vec3<f32>(x_1131.x, x_1131.y, x_1133);
        let x_1140 : vec3<f32> = txVec10;
        let x_1142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1140.xy, x_1140.z);
        u_xlat88 = x_1142;
        let x_1144 : f32 = u_xlat16.z;
        let x_1145 : f32 = u_xlat88;
        let x_1147 : f32 = u_xlat87;
        u_xlat87 = ((x_1144 * x_1145) + x_1147);
        let x_1150 : vec4<f32> = u_xlat10;
        let x_1151 : vec2<f32> = vec2<f32>(x_1150.x, x_1150.y);
        let x_1153 : f32 = u_xlat1.w;
        txVec11 = vec3<f32>(x_1151.x, x_1151.y, x_1153);
        let x_1160 : vec3<f32> = txVec11;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1160.xy, x_1160.z);
        u_xlat88 = x_1162;
        let x_1164 : f32 = u_xlat16.w;
        let x_1165 : f32 = u_xlat88;
        let x_1167 : f32 = u_xlat87;
        u_xlat87 = ((x_1164 * x_1165) + x_1167);
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.z, x_1170.w);
        let x_1173 : f32 = u_xlat1.w;
        txVec12 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec12;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1180.xy, x_1180.z);
        u_xlat88 = x_1182;
        let x_1183 : f32 = u_xlat86;
        let x_1184 : f32 = u_xlat88;
        let x_1186 : f32 = u_xlat87;
        u_xlat85 = ((x_1183 * x_1184) + x_1186);
      } else {
        let x_1189 : vec4<f32> = u_xlat1;
        let x_1192 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1189.x, x_1189.y) * vec2<f32>(x_1192.z, x_1192.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1200 : vec2<f32> = floor(vec2<f32>(x_1198.x, x_1198.y));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat1;
        let x_1206 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.z, x_1206.w)) + -(vec2<f32>(x_1209.x, x_1209.y)));
        let x_1213 : vec2<f32> = u_xlat62;
        u_xlat9 = (vec4<f32>(x_1213.x, x_1213.x, x_1213.y, x_1213.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1216 : vec4<f32> = u_xlat9;
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1216.x, x_1216.x, x_1216.z, x_1216.z) * vec4<f32>(x_1218.x, x_1218.x, x_1218.z, x_1218.z));
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1225 : vec2<f32> = (vec2<f32>(x_1221.y, x_1221.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1226 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1226.x, x_1225.x, x_1226.z, x_1225.y);
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1231 : vec2<f32> = u_xlat62;
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1231));
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1234.w);
        let x_1236 : vec2<f32> = u_xlat62;
        let x_1238 : vec2<f32> = (-(x_1236) + vec2<f32>(1.0f, 1.0f));
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1241 : vec2<f32> = u_xlat62;
        u_xlat64 = min(x_1241, vec2<f32>(0.0f, 0.0f));
        let x_1243 : vec2<f32> = u_xlat64;
        let x_1245 : vec2<f32> = u_xlat64;
        let x_1247 : vec4<f32> = u_xlat10;
        let x_1249 : vec2<f32> = ((-(x_1243) * x_1245) + vec2<f32>(x_1247.x, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1252 : vec2<f32> = u_xlat62;
        u_xlat64 = max(x_1252, vec2<f32>(0.0f, 0.0f));
        let x_1255 : vec2<f32> = u_xlat64;
        let x_1257 : vec2<f32> = u_xlat64;
        let x_1259 : vec4<f32> = u_xlat9;
        let x_1261 : vec2<f32> = ((-(x_1255) * x_1257) + vec2<f32>(x_1259.y, x_1259.w));
        let x_1262 : vec3<f32> = u_xlat36;
        u_xlat36 = vec3<f32>(x_1261.x, x_1262.y, x_1261.y);
        let x_1264 : vec4<f32> = u_xlat10;
        let x_1266 : vec2<f32> = (vec2<f32>(x_1264.x, x_1264.y) + vec2<f32>(2.0f, 2.0f));
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
        let x_1269 : vec3<f32> = u_xlat36;
        let x_1271 : vec2<f32> = (vec2<f32>(x_1269.x, x_1269.z) + vec2<f32>(2.0f, 2.0f));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1272.x, x_1271.x, x_1272.z, x_1271.y);
        let x_1275 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1275 * 0.08163200318813323975f);
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1279.z, x_1279.x, x_1279.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1283 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1288 : vec2<f32> = (vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat13.y;
        u_xlat12.x = x_1292;
        let x_1294 : vec2<f32> = u_xlat62;
        let x_1301 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1302 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1302.x, x_1301.x, x_1302.z, x_1301.y);
        let x_1304 : vec2<f32> = u_xlat62;
        let x_1308 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1309 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1308.x, x_1309.y, x_1308.y, x_1309.w);
        let x_1312 : f32 = u_xlat9.x;
        u_xlat10.y = x_1312;
        let x_1315 : f32 = u_xlat11.y;
        u_xlat10.w = x_1315;
        let x_1317 : vec4<f32> = u_xlat10;
        let x_1318 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1317 + x_1318);
        let x_1320 : vec2<f32> = u_xlat62;
        let x_1323 : vec2<f32> = ((vec2<f32>(x_1320.y, x_1320.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1324 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1324.x, x_1323.x, x_1324.z, x_1323.y);
        let x_1326 : vec2<f32> = u_xlat62;
        let x_1329 : vec2<f32> = ((vec2<f32>(x_1326.y, x_1326.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1329.x, x_1330.y, x_1329.y, x_1330.w);
        let x_1333 : f32 = u_xlat9.y;
        u_xlat11.y = x_1333;
        let x_1335 : vec4<f32> = u_xlat11;
        let x_1336 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1335 + x_1336);
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1338 / x_1339);
        let x_1341 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1341 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1347 : vec4<f32> = u_xlat11;
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1347 / x_1348);
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1350 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1352 : vec4<f32> = u_xlat10;
        let x_1355 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1352.w, x_1352.x, x_1352.y, x_1352.z) * vec4<f32>(x_1355.x, x_1355.x, x_1355.x, x_1355.x));
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1361 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1358.x, x_1358.w, x_1358.y, x_1358.z) * vec4<f32>(x_1361.y, x_1361.y, x_1361.y, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat10;
        let x_1365 : vec3<f32> = vec3<f32>(x_1364.y, x_1364.z, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1365.x, x_1366.y, x_1365.y, x_1365.z);
        let x_1369 : f32 = u_xlat11.x;
        u_xlat13.y = x_1369;
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1374 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y) * vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y)) + vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat8;
        let x_1383 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat13;
        u_xlat62 = ((vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(x_1383.x, x_1383.y)) + vec2<f32>(x_1386.w, x_1386.y));
        let x_1390 : f32 = u_xlat13.y;
        u_xlat10.y = x_1390;
        let x_1393 : f32 = u_xlat11.z;
        u_xlat13.y = x_1393;
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1398 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1404 : vec4<f32> = u_xlat8;
        let x_1407 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1410 : vec4<f32> = u_xlat13;
        let x_1412 : vec2<f32> = ((vec2<f32>(x_1404.x, x_1404.y) * vec2<f32>(x_1407.x, x_1407.y)) + vec2<f32>(x_1410.w, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1416 : f32 = u_xlat13.y;
        u_xlat10.z = x_1416;
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1422 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1419.x, x_1419.y, x_1419.x, x_1419.y) * vec4<f32>(x_1422.x, x_1422.y, x_1422.x, x_1422.y)) + vec4<f32>(x_1425.x, x_1425.y, x_1425.x, x_1425.z));
        let x_1429 : f32 = u_xlat11.w;
        u_xlat13.y = x_1429;
        let x_1432 : vec4<f32> = u_xlat8;
        let x_1435 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y) * vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y)) + vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1438.y));
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1445 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1448 : vec4<f32> = u_xlat13;
        u_xlat37 = ((vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(x_1445.x, x_1445.y)) + vec2<f32>(x_1448.w, x_1448.y));
        let x_1452 : f32 = u_xlat13.y;
        u_xlat10.w = x_1452;
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1458 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat10;
        u_xlat70 = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.x, x_1461.w));
        let x_1464 : vec4<f32> = u_xlat13;
        let x_1465 : vec3<f32> = vec3<f32>(x_1464.x, x_1464.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1465.z);
        let x_1468 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1474.y));
        let x_1478 : vec4<f32> = u_xlat8;
        let x_1481 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1484 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_1478.x, x_1478.y) * vec2<f32>(x_1481.x, x_1481.y)) + vec2<f32>(x_1484.w, x_1484.y));
        let x_1488 : f32 = u_xlat10.x;
        u_xlat11.x = x_1488;
        let x_1490 : vec4<f32> = u_xlat8;
        let x_1493 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1496 : vec4<f32> = u_xlat11;
        let x_1498 : vec2<f32> = ((vec2<f32>(x_1490.x, x_1490.y) * vec2<f32>(x_1493.x, x_1493.y)) + vec2<f32>(x_1496.x, x_1496.y));
        let x_1499 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1504 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1502.x, x_1502.x, x_1502.x, x_1502.x) * x_1504);
        let x_1507 : vec4<f32> = u_xlat9;
        let x_1509 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1507.y, x_1507.y, x_1507.y, x_1507.y) * x_1509);
        let x_1512 : vec4<f32> = u_xlat9;
        let x_1514 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1512.z, x_1512.z, x_1512.z, x_1512.z) * x_1514);
        let x_1516 : vec4<f32> = u_xlat9;
        let x_1518 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1516.w, x_1516.w, x_1516.w, x_1516.w) * x_1518);
        let x_1521 : vec4<f32> = u_xlat14;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat1.w;
        txVec13 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec13;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat86 = x_1533;
        let x_1535 : vec4<f32> = u_xlat14;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.z, x_1535.w);
        let x_1538 : f32 = u_xlat1.w;
        txVec14 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec14;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat87 = x_1547;
        let x_1548 : f32 = u_xlat87;
        let x_1550 : f32 = u_xlat19.y;
        u_xlat87 = (x_1548 * x_1550);
        let x_1553 : f32 = u_xlat19.x;
        let x_1554 : f32 = u_xlat86;
        let x_1556 : f32 = u_xlat87;
        u_xlat86 = ((x_1553 * x_1554) + x_1556);
        let x_1559 : vec2<f32> = u_xlat62;
        let x_1561 : f32 = u_xlat1.w;
        txVec15 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec15;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1568.xy, x_1568.z);
        u_xlat87 = x_1570;
        let x_1572 : f32 = u_xlat19.z;
        let x_1573 : f32 = u_xlat87;
        let x_1575 : f32 = u_xlat86;
        u_xlat86 = ((x_1572 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat17;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.x, x_1578.y);
        let x_1581 : f32 = u_xlat1.w;
        txVec16 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec16;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat87 = x_1590;
        let x_1592 : f32 = u_xlat19.w;
        let x_1593 : f32 = u_xlat87;
        let x_1595 : f32 = u_xlat86;
        u_xlat86 = ((x_1592 * x_1593) + x_1595);
        let x_1598 : vec4<f32> = u_xlat15;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.x, x_1598.y);
        let x_1601 : f32 = u_xlat1.w;
        txVec17 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec17;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
        u_xlat87 = x_1610;
        let x_1612 : f32 = u_xlat20.x;
        let x_1613 : f32 = u_xlat87;
        let x_1615 : f32 = u_xlat86;
        u_xlat86 = ((x_1612 * x_1613) + x_1615);
        let x_1618 : vec4<f32> = u_xlat15;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.z, x_1618.w);
        let x_1621 : f32 = u_xlat1.w;
        txVec18 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec18;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat87 = x_1630;
        let x_1632 : f32 = u_xlat20.y;
        let x_1633 : f32 = u_xlat87;
        let x_1635 : f32 = u_xlat86;
        u_xlat86 = ((x_1632 * x_1633) + x_1635);
        let x_1638 : vec4<f32> = u_xlat16;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.x, x_1638.y);
        let x_1641 : f32 = u_xlat1.w;
        txVec19 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec19;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat87 = x_1650;
        let x_1652 : f32 = u_xlat20.z;
        let x_1653 : f32 = u_xlat87;
        let x_1655 : f32 = u_xlat86;
        u_xlat86 = ((x_1652 * x_1653) + x_1655);
        let x_1658 : vec4<f32> = u_xlat17;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.z, x_1658.w);
        let x_1661 : f32 = u_xlat1.w;
        txVec20 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec20;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1668.xy, x_1668.z);
        u_xlat87 = x_1670;
        let x_1672 : f32 = u_xlat20.w;
        let x_1673 : f32 = u_xlat87;
        let x_1675 : f32 = u_xlat86;
        u_xlat86 = ((x_1672 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat18;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat1.w;
        txVec21 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec21;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat87 = x_1690;
        let x_1692 : f32 = u_xlat21.x;
        let x_1693 : f32 = u_xlat87;
        let x_1695 : f32 = u_xlat86;
        u_xlat86 = ((x_1692 * x_1693) + x_1695);
        let x_1698 : vec4<f32> = u_xlat18;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.z, x_1698.w);
        let x_1701 : f32 = u_xlat1.w;
        txVec22 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec22;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat87 = x_1710;
        let x_1712 : f32 = u_xlat21.y;
        let x_1713 : f32 = u_xlat87;
        let x_1715 : f32 = u_xlat86;
        u_xlat86 = ((x_1712 * x_1713) + x_1715);
        let x_1718 : vec2<f32> = u_xlat37;
        let x_1720 : f32 = u_xlat1.w;
        txVec23 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec23;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1727.xy, x_1727.z);
        u_xlat87 = x_1729;
        let x_1731 : f32 = u_xlat21.z;
        let x_1732 : f32 = u_xlat87;
        let x_1734 : f32 = u_xlat86;
        u_xlat86 = ((x_1731 * x_1732) + x_1734);
        let x_1737 : vec2<f32> = u_xlat70;
        let x_1739 : f32 = u_xlat1.w;
        txVec24 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec24;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1746.xy, x_1746.z);
        u_xlat87 = x_1748;
        let x_1750 : f32 = u_xlat21.w;
        let x_1751 : f32 = u_xlat87;
        let x_1753 : f32 = u_xlat86;
        u_xlat86 = ((x_1750 * x_1751) + x_1753);
        let x_1756 : vec4<f32> = u_xlat13;
        let x_1757 : vec2<f32> = vec2<f32>(x_1756.x, x_1756.y);
        let x_1759 : f32 = u_xlat1.w;
        txVec25 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec25;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1766.xy, x_1766.z);
        u_xlat87 = x_1768;
        let x_1770 : f32 = u_xlat9.x;
        let x_1771 : f32 = u_xlat87;
        let x_1773 : f32 = u_xlat86;
        u_xlat86 = ((x_1770 * x_1771) + x_1773);
        let x_1776 : vec4<f32> = u_xlat13;
        let x_1777 : vec2<f32> = vec2<f32>(x_1776.z, x_1776.w);
        let x_1779 : f32 = u_xlat1.w;
        txVec26 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec26;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1786.xy, x_1786.z);
        u_xlat87 = x_1788;
        let x_1790 : f32 = u_xlat9.y;
        let x_1791 : f32 = u_xlat87;
        let x_1793 : f32 = u_xlat86;
        u_xlat86 = ((x_1790 * x_1791) + x_1793);
        let x_1796 : vec2<f32> = u_xlat65;
        let x_1798 : f32 = u_xlat1.w;
        txVec27 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec27;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1805.xy, x_1805.z);
        u_xlat87 = x_1807;
        let x_1809 : f32 = u_xlat9.z;
        let x_1810 : f32 = u_xlat87;
        let x_1812 : f32 = u_xlat86;
        u_xlat86 = ((x_1809 * x_1810) + x_1812);
        let x_1815 : vec4<f32> = u_xlat8;
        let x_1816 : vec2<f32> = vec2<f32>(x_1815.x, x_1815.y);
        let x_1818 : f32 = u_xlat1.w;
        txVec28 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec28;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
        u_xlat87 = x_1827;
        let x_1829 : f32 = u_xlat9.w;
        let x_1830 : f32 = u_xlat87;
        let x_1832 : f32 = u_xlat86;
        u_xlat85 = ((x_1829 * x_1830) + x_1832);
      }
    }
  } else {
    let x_1836 : vec4<f32> = u_xlat1;
    let x_1837 : vec2<f32> = vec2<f32>(x_1836.x, x_1836.y);
    let x_1839 : f32 = u_xlat1.w;
    txVec29 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
    let x_1846 : vec3<f32> = txVec29;
    let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1846.xy, x_1846.z);
    u_xlat85 = x_1848;
  }
  let x_1850 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1850) + 1.0f);
  let x_1854 : f32 = u_xlat85;
  let x_1856 : f32 = x_312.x_MainLightShadowParams.x;
  let x_1859 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1854 * x_1856) + x_1859);
  let x_1864 : f32 = u_xlat1.w;
  u_xlatb28 = (0.0f >= x_1864);
  let x_1867 : f32 = u_xlat1.w;
  u_xlatb82 = (x_1867 >= 1.0f);
  let x_1869 : bool = u_xlatb82;
  let x_1870 : bool = u_xlatb28;
  u_xlatb28 = (x_1869 | x_1870);
  let x_1872 : bool = u_xlatb28;
  if (x_1872) {
    x_1873 = 1.0f;
  } else {
    let x_1878 : f32 = u_xlat1.x;
    x_1873 = x_1878;
  }
  let x_1879 : f32 = x_1873;
  u_xlat1.x = x_1879;
  let x_1881 : vec3<f32> = vs_INTERP7;
  let x_1883 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1885 : vec3<f32> = (x_1881 + -(x_1883));
  let x_1886 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
  let x_1889 : vec4<f32> = u_xlat8;
  let x_1891 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1889.x, x_1889.y, x_1889.z), vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : f32 = u_xlat28;
  let x_1896 : f32 = x_312.x_MainLightShadowParams.z;
  let x_1899 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat82 = ((x_1894 * x_1896) + x_1899);
  let x_1901 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1901, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat1.x;
  u_xlat85 = (-(x_1904) + 1.0f);
  let x_1907 : f32 = u_xlat82;
  let x_1908 : f32 = u_xlat85;
  let x_1911 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1907 * x_1908) + x_1911);
  let x_1914 : vec3<f32> = u_xlat5;
  let x_1916 : vec4<f32> = u_xlat4;
  u_xlat82 = dot(-(x_1914), vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : f32 = u_xlat82;
  let x_1920 : f32 = u_xlat82;
  u_xlat82 = (x_1919 + x_1920);
  let x_1922 : vec4<f32> = u_xlat4;
  let x_1924 : f32 = u_xlat82;
  let x_1928 : vec3<f32> = u_xlat5;
  let x_1930 : vec3<f32> = ((vec3<f32>(x_1922.x, x_1922.y, x_1922.z) * -(vec3<f32>(x_1924, x_1924, x_1924))) + -(x_1928));
  let x_1931 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  let x_1933 : vec4<f32> = u_xlat4;
  let x_1935 : vec3<f32> = u_xlat5;
  u_xlat82 = dot(vec3<f32>(x_1933.x, x_1933.y, x_1933.z), x_1935);
  let x_1937 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1937, 0.0f, 1.0f);
  let x_1939 : f32 = u_xlat82;
  u_xlat82 = (-(x_1939) + 1.0f);
  let x_1942 : f32 = u_xlat82;
  let x_1943 : f32 = u_xlat82;
  u_xlat82 = (x_1942 * x_1943);
  let x_1945 : f32 = u_xlat82;
  let x_1946 : f32 = u_xlat82;
  u_xlat82 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat81;
  u_xlat85 = ((-(x_1948) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1954 : f32 = u_xlat81;
  let x_1955 : f32 = u_xlat85;
  u_xlat81 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat81;
  u_xlat81 = (x_1957 * 6.0f);
  let x_1968 : vec4<f32> = u_xlat8;
  let x_1970 : f32 = u_xlat81;
  let x_1971 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1968.x, x_1968.y, x_1968.z), x_1970);
  u_xlat8 = x_1971;
  let x_1973 : f32 = u_xlat8.w;
  u_xlat81 = (x_1973 + -1.0f);
  let x_1976 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_1977 : f32 = u_xlat81;
  u_xlat81 = ((x_1976 * x_1977) + 1.0f);
  let x_1980 : f32 = u_xlat81;
  u_xlat81 = max(x_1980, 0.0f);
  let x_1982 : f32 = u_xlat81;
  u_xlat81 = log2(x_1982);
  let x_1984 : f32 = u_xlat81;
  let x_1986 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat81 = (x_1984 * x_1986);
  let x_1988 : f32 = u_xlat81;
  u_xlat81 = exp2(x_1988);
  let x_1990 : f32 = u_xlat81;
  let x_1992 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat81 = (x_1990 * x_1992);
  let x_1994 : vec4<f32> = u_xlat8;
  let x_1996 : f32 = u_xlat81;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1994.x, x_1994.y, x_1994.z) * vec3<f32>(x_1996, x_1996, x_1996));
  let x_1999 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec3<f32> = u_xlat3;
  let x_2003 : vec3<f32> = u_xlat3;
  let x_2007 : vec2<f32> = ((vec2<f32>(x_2001.x, x_2001.x) * vec2<f32>(x_2003.x, x_2003.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2008 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
  let x_2011 : f32 = u_xlat9.y;
  u_xlat81 = (1.0f / x_2011);
  let x_2013 : vec3<f32> = u_xlat0;
  let x_2015 : f32 = u_xlat83;
  u_xlat36 = (-(x_2013) + vec3<f32>(x_2015, x_2015, x_2015));
  let x_2018 : f32 = u_xlat82;
  let x_2020 : vec3<f32> = u_xlat36;
  let x_2022 : vec3<f32> = u_xlat0;
  u_xlat36 = ((vec3<f32>(x_2018, x_2018, x_2018) * x_2020) + x_2022);
  let x_2024 : f32 = u_xlat81;
  let x_2026 : vec3<f32> = u_xlat36;
  u_xlat36 = (vec3<f32>(x_2024, x_2024, x_2024) * x_2026);
  let x_2028 : vec4<f32> = u_xlat8;
  let x_2030 : vec3<f32> = u_xlat36;
  let x_2031 : vec3<f32> = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) * x_2030);
  let x_2032 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
  let x_2034 : vec3<f32> = u_xlat6;
  let x_2035 : vec4<f32> = u_xlat7;
  let x_2038 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_2034 * vec3<f32>(x_2035.x, x_2035.y, x_2035.z)) + vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
  let x_2042 : f32 = u_xlat1.x;
  let x_2044 : f32 = x_109.unity_LightData.z;
  u_xlat81 = (x_2042 * x_2044);
  let x_2046 : vec4<f32> = u_xlat4;
  let x_2049 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2046.x, x_2046.y, x_2046.z), vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2054 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2054, 0.0f, 1.0f);
  let x_2057 : f32 = u_xlat81;
  let x_2059 : f32 = u_xlat1.x;
  u_xlat81 = (x_2057 * x_2059);
  let x_2061 : f32 = u_xlat81;
  let x_2064 : vec4<f32> = x_29.x_MainLightColor;
  let x_2066 : vec3<f32> = (vec3<f32>(x_2061, x_2061, x_2061) * vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : vec3<f32> = u_xlat5;
  let x_2071 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat36 = (x_2069 + vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec3<f32> = u_xlat36;
  let x_2075 : vec3<f32> = u_xlat36;
  u_xlat81 = dot(x_2074, x_2075);
  let x_2077 : f32 = u_xlat81;
  u_xlat81 = max(x_2077, 1.17549435e-38f);
  let x_2080 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_2080);
  let x_2082 : f32 = u_xlat81;
  let x_2084 : vec3<f32> = u_xlat36;
  u_xlat36 = (vec3<f32>(x_2082, x_2082, x_2082) * x_2084);
  let x_2086 : vec4<f32> = u_xlat4;
  let x_2088 : vec3<f32> = u_xlat36;
  u_xlat81 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), x_2088);
  let x_2090 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2090, 0.0f, 1.0f);
  let x_2093 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2095 : vec3<f32> = u_xlat36;
  u_xlat1.x = dot(vec3<f32>(x_2093.x, x_2093.y, x_2093.z), x_2095);
  let x_2099 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2099, 0.0f, 1.0f);
  let x_2102 : f32 = u_xlat81;
  let x_2103 : f32 = u_xlat81;
  u_xlat81 = (x_2102 * x_2103);
  let x_2105 : f32 = u_xlat81;
  let x_2107 : f32 = u_xlat9.x;
  u_xlat81 = ((x_2105 * x_2107) + 1.00001001358032226562f);
  let x_2112 : f32 = u_xlat1.x;
  let x_2114 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2112 * x_2114);
  let x_2117 : f32 = u_xlat81;
  let x_2118 : f32 = u_xlat81;
  u_xlat81 = (x_2117 * x_2118);
  let x_2121 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2121, 0.10000000149011611938f);
  let x_2125 : f32 = u_xlat81;
  let x_2127 : f32 = u_xlat1.x;
  u_xlat81 = (x_2125 * x_2127);
  let x_2129 : f32 = u_xlat30;
  let x_2130 : f32 = u_xlat81;
  u_xlat81 = (x_2129 * x_2130);
  let x_2132 : f32 = u_xlat84;
  let x_2133 : f32 = u_xlat81;
  u_xlat81 = (x_2132 / x_2133);
  let x_2135 : vec3<f32> = u_xlat0;
  let x_2136 : f32 = u_xlat81;
  let x_2139 : vec4<f32> = u_xlat7;
  u_xlat36 = ((x_2135 * vec3<f32>(x_2136, x_2136, x_2136)) + vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : vec4<f32> = u_xlat8;
  let x_2144 : vec3<f32> = u_xlat36;
  let x_2145 : vec3<f32> = (vec3<f32>(x_2142.x, x_2142.y, x_2142.z) * x_2144);
  let x_2146 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
  let x_2149 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2151 : f32 = x_109.unity_LightData.y;
  u_xlat81 = min(x_2149, x_2151);
  let x_2153 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_2153));
  let x_2156 : f32 = u_xlat28;
  let x_2159 : f32 = x_312.x_AdditionalShadowFadeParams.x;
  let x_2162 : f32 = x_312.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2156 * x_2159) + x_2162);
  let x_2166 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2166, 0.0f, 1.0f);
  u_xlat36.x = 0.0f;
  u_xlat36.y = 0.0f;
  u_xlat36.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2179 : u32 = u_xlatu_loop_1;
    let x_2180 : u32 = u_xlatu81;
    if ((x_2179 < x_2180)) {
    } else {
      break;
    }
    let x_2183 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2183 >> 2u);
    let x_2186 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2186 & 3u));
    let x_2189 : u32 = u_xlatu82;
    let x_2192 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_2189)];
    let x_2202 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2207 : vec4<u32> = indexable[x_2202];
    u_xlat82 = dot(x_2192, bitcast<vec4<f32>>(x_2207));
    let x_2211 : f32 = u_xlat82;
    u_xlati82 = i32(x_2211);
    let x_2213 : vec3<f32> = vs_INTERP7;
    let x_2224 : i32 = u_xlati82;
    let x_2226 : vec4<f32> = x_2223.x_AdditionalLightsPosition[x_2224];
    let x_2229 : i32 = u_xlati82;
    let x_2231 : vec4<f32> = x_2223.x_AdditionalLightsPosition[x_2229];
    let x_2233 : vec3<f32> = ((-(x_2213) * vec3<f32>(x_2226.w, x_2226.w, x_2226.w)) + vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
    let x_2234 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
    let x_2236 : vec4<f32> = u_xlat10;
    let x_2238 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_2236.x, x_2236.y, x_2236.z), vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
    let x_2241 : f32 = u_xlat83;
    u_xlat83 = max(x_2241, 0.00006103515625f);
    let x_2244 : f32 = u_xlat83;
    u_xlat3.x = inverseSqrt(x_2244);
    let x_2247 : vec3<f32> = u_xlat3;
    let x_2249 : vec4<f32> = u_xlat10;
    let x_2251 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.x, x_2247.x) * vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
    let x_2252 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
    let x_2254 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2254);
    let x_2256 : f32 = u_xlat83;
    let x_2257 : i32 = u_xlati82;
    let x_2259 : f32 = x_2223.x_AdditionalLightsAttenuation[x_2257].x;
    u_xlat83 = (x_2256 * x_2259);
    let x_2261 : f32 = u_xlat83;
    let x_2263 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2261) * x_2263) + 1.0f);
    let x_2266 : f32 = u_xlat83;
    u_xlat83 = max(x_2266, 0.0f);
    let x_2268 : f32 = u_xlat83;
    let x_2269 : f32 = u_xlat83;
    u_xlat83 = (x_2268 * x_2269);
    let x_2271 : f32 = u_xlat83;
    let x_2272 : f32 = u_xlat85;
    u_xlat83 = (x_2271 * x_2272);
    let x_2274 : i32 = u_xlati82;
    let x_2276 : vec4<f32> = x_2223.x_AdditionalLightsSpotDir[x_2274];
    let x_2278 : vec4<f32> = u_xlat11;
    u_xlat85 = dot(vec3<f32>(x_2276.x, x_2276.y, x_2276.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
    let x_2281 : f32 = u_xlat85;
    let x_2282 : i32 = u_xlati82;
    let x_2284 : f32 = x_2223.x_AdditionalLightsAttenuation[x_2282].z;
    let x_2286 : i32 = u_xlati82;
    let x_2288 : f32 = x_2223.x_AdditionalLightsAttenuation[x_2286].w;
    u_xlat85 = ((x_2281 * x_2284) + x_2288);
    let x_2290 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2290, 0.0f, 1.0f);
    let x_2292 : f32 = u_xlat85;
    let x_2293 : f32 = u_xlat85;
    u_xlat85 = (x_2292 * x_2293);
    let x_2295 : f32 = u_xlat83;
    let x_2296 : f32 = u_xlat85;
    u_xlat83 = (x_2295 * x_2296);
    let x_2300 : i32 = u_xlati82;
    let x_2302 : f32 = x_312.x_AdditionalShadowParams[x_2300].w;
    u_xlati85 = i32(x_2302);
    let x_2304 : i32 = u_xlati85;
    u_xlatb86 = (x_2304 >= 0i);
    let x_2306 : bool = u_xlatb86;
    if (x_2306) {
      let x_2310 : i32 = u_xlati82;
      let x_2312 : f32 = x_312.x_AdditionalShadowParams[x_2310].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2312, x_2312, x_2312, x_2312))));
      let x_2316 : bool = u_xlatb86;
      if (x_2316) {
        let x_2320 : vec4<f32> = u_xlat11;
        let x_2323 : vec4<f32> = u_xlat11;
        let x_2326 : vec4<bool> = (abs(vec4<f32>(x_2320.z, x_2320.z, x_2320.y, x_2320.z)) >= abs(vec4<f32>(x_2323.x, x_2323.y, x_2323.x, x_2323.x)));
        let x_2328 : vec3<bool> = vec3<bool>(x_2326.x, x_2326.y, x_2326.z);
        let x_2329 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
        let x_2332 : bool = u_xlatb12.y;
        let x_2334 : bool = u_xlatb12.x;
        u_xlatb86 = (x_2332 & x_2334);
        let x_2336 : vec4<f32> = u_xlat11;
        let x_2339 : vec4<bool> = (-(vec4<f32>(x_2336.z, x_2336.y, x_2336.z, x_2336.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2340 : vec3<bool> = vec3<bool>(x_2339.x, x_2339.y, x_2339.w);
        let x_2341 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2340.x, x_2340.y, x_2341.z, x_2340.z);
        let x_2344 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_2344);
        let x_2349 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_2349);
        let x_2353 : bool = u_xlatb12.w;
        u_xlat87 = select(0.0f, 1.0f, x_2353);
        let x_2356 : bool = u_xlatb12.z;
        if (x_2356) {
          let x_2361 : f32 = u_xlat12.y;
          x_2357 = x_2361;
        } else {
          let x_2363 : f32 = u_xlat87;
          x_2357 = x_2363;
        }
        let x_2364 : f32 = x_2357;
        u_xlat87 = x_2364;
        let x_2365 : bool = u_xlatb86;
        if (x_2365) {
          let x_2370 : f32 = u_xlat12.x;
          x_2366 = x_2370;
        } else {
          let x_2372 : f32 = u_xlat87;
          x_2366 = x_2372;
        }
        let x_2373 : f32 = x_2366;
        u_xlat86 = x_2373;
        let x_2374 : i32 = u_xlati82;
        let x_2376 : f32 = x_312.x_AdditionalShadowParams[x_2374].w;
        u_xlat87 = trunc(x_2376);
        let x_2378 : f32 = u_xlat86;
        let x_2379 : f32 = u_xlat87;
        u_xlat86 = (x_2378 + x_2379);
        let x_2381 : f32 = u_xlat86;
        u_xlati85 = i32(x_2381);
      }
      let x_2383 : i32 = u_xlati85;
      u_xlati85 = (x_2383 << bitcast<u32>(2i));
      let x_2385 : vec3<f32> = vs_INTERP7;
      let x_2388 : i32 = u_xlati85;
      let x_2391 : i32 = u_xlati85;
      let x_2395 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_2388 + 1i) / 4i)][((x_2391 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_2385.y, x_2385.y, x_2385.y, x_2385.y) * x_2395);
      let x_2397 : i32 = u_xlati85;
      let x_2399 : i32 = u_xlati85;
      let x_2402 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[(x_2397 / 4i)][(x_2399 % 4i)];
      let x_2403 : vec3<f32> = vs_INTERP7;
      let x_2406 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2402 * vec4<f32>(x_2403.x, x_2403.x, x_2403.x, x_2403.x)) + x_2406);
      let x_2408 : i32 = u_xlati85;
      let x_2411 : i32 = u_xlati85;
      let x_2415 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_2408 + 2i) / 4i)][((x_2411 + 2i) % 4i)];
      let x_2416 : vec3<f32> = vs_INTERP7;
      let x_2419 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2415 * vec4<f32>(x_2416.z, x_2416.z, x_2416.z, x_2416.z)) + x_2419);
      let x_2421 : vec4<f32> = u_xlat12;
      let x_2422 : i32 = u_xlati85;
      let x_2425 : i32 = u_xlati85;
      let x_2429 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_2422 + 3i) / 4i)][((x_2425 + 3i) % 4i)];
      u_xlat12 = (x_2421 + x_2429);
      let x_2431 : vec4<f32> = u_xlat12;
      let x_2433 : vec4<f32> = u_xlat12;
      let x_2435 : vec3<f32> = (vec3<f32>(x_2431.x, x_2431.y, x_2431.z) / vec3<f32>(x_2433.w, x_2433.w, x_2433.w));
      let x_2436 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
      let x_2438 : i32 = u_xlati82;
      let x_2440 : f32 = x_312.x_AdditionalShadowParams[x_2438].y;
      u_xlatb85 = (0.0f < x_2440);
      let x_2442 : bool = u_xlatb85;
      if (x_2442) {
        let x_2445 : i32 = u_xlati82;
        let x_2447 : f32 = x_312.x_AdditionalShadowParams[x_2445].y;
        u_xlatb85 = (1.0f == x_2447);
        let x_2449 : bool = u_xlatb85;
        if (x_2449) {
          let x_2452 : vec4<f32> = u_xlat12;
          let x_2456 : vec4<f32> = x_312.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y) + x_2456);
          let x_2459 : vec4<f32> = u_xlat13;
          let x_2460 : vec2<f32> = vec2<f32>(x_2459.x, x_2459.y);
          let x_2462 : f32 = u_xlat12.z;
          txVec30 = vec3<f32>(x_2460.x, x_2460.y, x_2462);
          let x_2470 : vec3<f32> = txVec30;
          let x_2472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2470.xy, x_2470.z);
          u_xlat14.x = x_2472;
          let x_2475 : vec4<f32> = u_xlat13;
          let x_2476 : vec2<f32> = vec2<f32>(x_2475.z, x_2475.w);
          let x_2478 : f32 = u_xlat12.z;
          txVec31 = vec3<f32>(x_2476.x, x_2476.y, x_2478);
          let x_2485 : vec3<f32> = txVec31;
          let x_2487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2485.xy, x_2485.z);
          u_xlat14.y = x_2487;
          let x_2489 : vec4<f32> = u_xlat12;
          let x_2493 : vec4<f32> = x_312.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_2489.x, x_2489.y, x_2489.x, x_2489.y) + x_2493);
          let x_2496 : vec4<f32> = u_xlat13;
          let x_2497 : vec2<f32> = vec2<f32>(x_2496.x, x_2496.y);
          let x_2499 : f32 = u_xlat12.z;
          txVec32 = vec3<f32>(x_2497.x, x_2497.y, x_2499);
          let x_2506 : vec3<f32> = txVec32;
          let x_2508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2506.xy, x_2506.z);
          u_xlat14.z = x_2508;
          let x_2511 : vec4<f32> = u_xlat13;
          let x_2512 : vec2<f32> = vec2<f32>(x_2511.z, x_2511.w);
          let x_2514 : f32 = u_xlat12.z;
          txVec33 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
          let x_2521 : vec3<f32> = txVec33;
          let x_2523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
          u_xlat14.w = x_2523;
          let x_2525 : vec4<f32> = u_xlat14;
          u_xlat85 = dot(x_2525, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2528 : i32 = u_xlati82;
          let x_2530 : f32 = x_312.x_AdditionalShadowParams[x_2528].y;
          u_xlatb86 = (2.0f == x_2530);
          let x_2532 : bool = u_xlatb86;
          if (x_2532) {
            let x_2535 : vec4<f32> = u_xlat12;
            let x_2539 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2542 : vec2<f32> = ((vec2<f32>(x_2535.x, x_2535.y) * vec2<f32>(x_2539.z, x_2539.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2542.x, x_2542.y, x_2543.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat13;
            let x_2547 : vec2<f32> = floor(vec2<f32>(x_2545.x, x_2545.y));
            let x_2548 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2547.x, x_2547.y, x_2548.z, x_2548.w);
            let x_2551 : vec4<f32> = u_xlat12;
            let x_2554 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2557 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2551.x, x_2551.y) * vec2<f32>(x_2554.z, x_2554.w)) + -(vec2<f32>(x_2557.x, x_2557.y)));
            let x_2561 : vec2<f32> = u_xlat67;
            u_xlat14 = (vec4<f32>(x_2561.x, x_2561.x, x_2561.y, x_2561.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2564 : vec4<f32> = u_xlat14;
            let x_2566 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2564.x, x_2564.x, x_2564.z, x_2564.z) * vec4<f32>(x_2566.x, x_2566.x, x_2566.z, x_2566.z));
            let x_2569 : vec4<f32> = u_xlat15;
            let x_2571 : vec2<f32> = (vec2<f32>(x_2569.y, x_2569.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2572 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2571.x, x_2572.y, x_2571.y, x_2572.w);
            let x_2574 : vec4<f32> = u_xlat15;
            let x_2577 : vec2<f32> = u_xlat67;
            let x_2579 : vec2<f32> = ((vec2<f32>(x_2574.x, x_2574.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2577));
            let x_2580 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2579.x, x_2579.y, x_2580.z, x_2580.w);
            let x_2583 : vec2<f32> = u_xlat67;
            u_xlat69 = (-(x_2583) + vec2<f32>(1.0f, 1.0f));
            let x_2586 : vec2<f32> = u_xlat67;
            let x_2587 : vec2<f32> = min(x_2586, vec2<f32>(0.0f, 0.0f));
            let x_2588 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat16;
            let x_2593 : vec4<f32> = u_xlat16;
            let x_2596 : vec2<f32> = u_xlat69;
            let x_2597 : vec2<f32> = ((-(vec2<f32>(x_2590.x, x_2590.y)) * vec2<f32>(x_2593.x, x_2593.y)) + x_2596);
            let x_2598 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
            let x_2600 : vec2<f32> = u_xlat67;
            u_xlat67 = max(x_2600, vec2<f32>(0.0f, 0.0f));
            let x_2602 : vec2<f32> = u_xlat67;
            let x_2604 : vec2<f32> = u_xlat67;
            let x_2606 : vec4<f32> = u_xlat14;
            u_xlat67 = ((-(x_2602) * x_2604) + vec2<f32>(x_2606.y, x_2606.w));
            let x_2609 : vec4<f32> = u_xlat16;
            let x_2611 : vec2<f32> = (vec2<f32>(x_2609.x, x_2609.y) + vec2<f32>(1.0f, 1.0f));
            let x_2612 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2611.x, x_2611.y, x_2612.z, x_2612.w);
            let x_2614 : vec2<f32> = u_xlat67;
            u_xlat67 = (x_2614 + vec2<f32>(1.0f, 1.0f));
            let x_2616 : vec4<f32> = u_xlat15;
            let x_2618 : vec2<f32> = (vec2<f32>(x_2616.x, x_2616.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2619 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2618.x, x_2618.y, x_2619.z, x_2619.w);
            let x_2621 : vec2<f32> = u_xlat69;
            let x_2622 : vec2<f32> = (x_2621 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2623 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2622.x, x_2622.y, x_2623.z, x_2623.w);
            let x_2625 : vec4<f32> = u_xlat16;
            let x_2627 : vec2<f32> = (vec2<f32>(x_2625.x, x_2625.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2628 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2630 : vec2<f32> = u_xlat67;
            let x_2631 : vec2<f32> = (x_2630 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2632 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2634 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_2634.y, x_2634.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2638 : f32 = u_xlat16.x;
            u_xlat17.z = x_2638;
            let x_2641 : f32 = u_xlat67.x;
            u_xlat17.w = x_2641;
            let x_2644 : f32 = u_xlat18.x;
            u_xlat15.z = x_2644;
            let x_2647 : f32 = u_xlat14.x;
            u_xlat15.w = x_2647;
            let x_2649 : vec4<f32> = u_xlat15;
            let x_2651 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2649.z, x_2649.w, x_2649.x, x_2649.z) + vec4<f32>(x_2651.z, x_2651.w, x_2651.x, x_2651.z));
            let x_2655 : f32 = u_xlat17.y;
            u_xlat16.z = x_2655;
            let x_2658 : f32 = u_xlat67.y;
            u_xlat16.w = x_2658;
            let x_2661 : f32 = u_xlat15.y;
            u_xlat18.z = x_2661;
            let x_2664 : f32 = u_xlat14.z;
            u_xlat18.w = x_2664;
            let x_2666 : vec4<f32> = u_xlat16;
            let x_2668 : vec4<f32> = u_xlat18;
            let x_2670 : vec3<f32> = (vec3<f32>(x_2666.z, x_2666.y, x_2666.w) + vec3<f32>(x_2668.z, x_2668.y, x_2668.w));
            let x_2671 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
            let x_2673 : vec4<f32> = u_xlat15;
            let x_2675 : vec4<f32> = u_xlat19;
            let x_2677 : vec3<f32> = (vec3<f32>(x_2673.x, x_2673.z, x_2673.w) / vec3<f32>(x_2675.z, x_2675.w, x_2675.y));
            let x_2678 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
            let x_2680 : vec4<f32> = u_xlat15;
            let x_2682 : vec3<f32> = (vec3<f32>(x_2680.x, x_2680.y, x_2680.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2683 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
            let x_2685 : vec4<f32> = u_xlat18;
            let x_2687 : vec4<f32> = u_xlat14;
            let x_2689 : vec3<f32> = (vec3<f32>(x_2685.z, x_2685.y, x_2685.w) / vec3<f32>(x_2687.x, x_2687.y, x_2687.z));
            let x_2690 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2689.x, x_2689.y, x_2689.z, x_2690.w);
            let x_2692 : vec4<f32> = u_xlat16;
            let x_2694 : vec3<f32> = (vec3<f32>(x_2692.x, x_2692.y, x_2692.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2695 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2694.x, x_2694.y, x_2694.z, x_2695.w);
            let x_2697 : vec4<f32> = u_xlat15;
            let x_2700 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2702 : vec3<f32> = (vec3<f32>(x_2697.y, x_2697.x, x_2697.z) * vec3<f32>(x_2700.x, x_2700.x, x_2700.x));
            let x_2703 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat16;
            let x_2708 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2710 : vec3<f32> = (vec3<f32>(x_2705.x, x_2705.y, x_2705.z) * vec3<f32>(x_2708.y, x_2708.y, x_2708.y));
            let x_2711 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
            let x_2714 : f32 = u_xlat16.x;
            u_xlat15.w = x_2714;
            let x_2716 : vec4<f32> = u_xlat13;
            let x_2719 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2722 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2716.x, x_2716.y, x_2716.x, x_2716.y) * vec4<f32>(x_2719.x, x_2719.y, x_2719.x, x_2719.y)) + vec4<f32>(x_2722.y, x_2722.w, x_2722.x, x_2722.w));
            let x_2725 : vec4<f32> = u_xlat13;
            let x_2728 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2731 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_2725.x, x_2725.y) * vec2<f32>(x_2728.x, x_2728.y)) + vec2<f32>(x_2731.z, x_2731.w));
            let x_2735 : f32 = u_xlat15.y;
            u_xlat16.w = x_2735;
            let x_2737 : vec4<f32> = u_xlat16;
            let x_2738 : vec2<f32> = vec2<f32>(x_2737.y, x_2737.z);
            let x_2739 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2739.x, x_2738.x, x_2739.z, x_2738.y);
            let x_2741 : vec4<f32> = u_xlat13;
            let x_2744 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2747 : vec4<f32> = u_xlat15;
            u_xlat18 = ((vec4<f32>(x_2741.x, x_2741.y, x_2741.x, x_2741.y) * vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y)) + vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2747.y));
            let x_2750 : vec4<f32> = u_xlat13;
            let x_2753 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2756 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y) * vec4<f32>(x_2753.x, x_2753.y, x_2753.x, x_2753.y)) + vec4<f32>(x_2756.w, x_2756.y, x_2756.w, x_2756.z));
            let x_2759 : vec4<f32> = u_xlat13;
            let x_2762 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2765 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y) * vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.y)) + vec4<f32>(x_2765.x, x_2765.w, x_2765.z, x_2765.w));
            let x_2768 : vec4<f32> = u_xlat14;
            let x_2770 : vec4<f32> = u_xlat19;
            u_xlat20 = (vec4<f32>(x_2768.x, x_2768.x, x_2768.x, x_2768.y) * vec4<f32>(x_2770.z, x_2770.w, x_2770.y, x_2770.z));
            let x_2773 : vec4<f32> = u_xlat14;
            let x_2775 : vec4<f32> = u_xlat19;
            u_xlat21 = (vec4<f32>(x_2773.y, x_2773.y, x_2773.z, x_2773.z) * x_2775);
            let x_2778 : f32 = u_xlat14.z;
            let x_2780 : f32 = u_xlat19.y;
            u_xlat86 = (x_2778 * x_2780);
            let x_2783 : vec4<f32> = u_xlat17;
            let x_2784 : vec2<f32> = vec2<f32>(x_2783.x, x_2783.y);
            let x_2786 : f32 = u_xlat12.z;
            txVec34 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
            let x_2793 : vec3<f32> = txVec34;
            let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
            u_xlat87 = x_2795;
            let x_2797 : vec4<f32> = u_xlat17;
            let x_2798 : vec2<f32> = vec2<f32>(x_2797.z, x_2797.w);
            let x_2800 : f32 = u_xlat12.z;
            txVec35 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
            let x_2807 : vec3<f32> = txVec35;
            let x_2809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
            u_xlat88 = x_2809;
            let x_2810 : f32 = u_xlat88;
            let x_2812 : f32 = u_xlat20.y;
            u_xlat88 = (x_2810 * x_2812);
            let x_2815 : f32 = u_xlat20.x;
            let x_2816 : f32 = u_xlat87;
            let x_2818 : f32 = u_xlat88;
            u_xlat87 = ((x_2815 * x_2816) + x_2818);
            let x_2821 : vec2<f32> = u_xlat67;
            let x_2823 : f32 = u_xlat12.z;
            txVec36 = vec3<f32>(x_2821.x, x_2821.y, x_2823);
            let x_2830 : vec3<f32> = txVec36;
            let x_2832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2830.xy, x_2830.z);
            u_xlat88 = x_2832;
            let x_2834 : f32 = u_xlat20.z;
            let x_2835 : f32 = u_xlat88;
            let x_2837 : f32 = u_xlat87;
            u_xlat87 = ((x_2834 * x_2835) + x_2837);
            let x_2840 : vec4<f32> = u_xlat16;
            let x_2841 : vec2<f32> = vec2<f32>(x_2840.x, x_2840.y);
            let x_2843 : f32 = u_xlat12.z;
            txVec37 = vec3<f32>(x_2841.x, x_2841.y, x_2843);
            let x_2850 : vec3<f32> = txVec37;
            let x_2852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2850.xy, x_2850.z);
            u_xlat88 = x_2852;
            let x_2854 : f32 = u_xlat20.w;
            let x_2855 : f32 = u_xlat88;
            let x_2857 : f32 = u_xlat87;
            u_xlat87 = ((x_2854 * x_2855) + x_2857);
            let x_2860 : vec4<f32> = u_xlat18;
            let x_2861 : vec2<f32> = vec2<f32>(x_2860.x, x_2860.y);
            let x_2863 : f32 = u_xlat12.z;
            txVec38 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
            let x_2870 : vec3<f32> = txVec38;
            let x_2872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2870.xy, x_2870.z);
            u_xlat88 = x_2872;
            let x_2874 : f32 = u_xlat21.x;
            let x_2875 : f32 = u_xlat88;
            let x_2877 : f32 = u_xlat87;
            u_xlat87 = ((x_2874 * x_2875) + x_2877);
            let x_2880 : vec4<f32> = u_xlat18;
            let x_2881 : vec2<f32> = vec2<f32>(x_2880.z, x_2880.w);
            let x_2883 : f32 = u_xlat12.z;
            txVec39 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
            let x_2890 : vec3<f32> = txVec39;
            let x_2892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
            u_xlat88 = x_2892;
            let x_2894 : f32 = u_xlat21.y;
            let x_2895 : f32 = u_xlat88;
            let x_2897 : f32 = u_xlat87;
            u_xlat87 = ((x_2894 * x_2895) + x_2897);
            let x_2900 : vec4<f32> = u_xlat16;
            let x_2901 : vec2<f32> = vec2<f32>(x_2900.z, x_2900.w);
            let x_2903 : f32 = u_xlat12.z;
            txVec40 = vec3<f32>(x_2901.x, x_2901.y, x_2903);
            let x_2910 : vec3<f32> = txVec40;
            let x_2912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2910.xy, x_2910.z);
            u_xlat88 = x_2912;
            let x_2914 : f32 = u_xlat21.z;
            let x_2915 : f32 = u_xlat88;
            let x_2917 : f32 = u_xlat87;
            u_xlat87 = ((x_2914 * x_2915) + x_2917);
            let x_2920 : vec4<f32> = u_xlat15;
            let x_2921 : vec2<f32> = vec2<f32>(x_2920.x, x_2920.y);
            let x_2923 : f32 = u_xlat12.z;
            txVec41 = vec3<f32>(x_2921.x, x_2921.y, x_2923);
            let x_2930 : vec3<f32> = txVec41;
            let x_2932 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2930.xy, x_2930.z);
            u_xlat88 = x_2932;
            let x_2934 : f32 = u_xlat21.w;
            let x_2935 : f32 = u_xlat88;
            let x_2937 : f32 = u_xlat87;
            u_xlat87 = ((x_2934 * x_2935) + x_2937);
            let x_2940 : vec4<f32> = u_xlat15;
            let x_2941 : vec2<f32> = vec2<f32>(x_2940.z, x_2940.w);
            let x_2943 : f32 = u_xlat12.z;
            txVec42 = vec3<f32>(x_2941.x, x_2941.y, x_2943);
            let x_2950 : vec3<f32> = txVec42;
            let x_2952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2950.xy, x_2950.z);
            u_xlat88 = x_2952;
            let x_2953 : f32 = u_xlat86;
            let x_2954 : f32 = u_xlat88;
            let x_2956 : f32 = u_xlat87;
            u_xlat85 = ((x_2953 * x_2954) + x_2956);
          } else {
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2962 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.z, x_2962.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2966 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
            let x_2968 : vec4<f32> = u_xlat13;
            let x_2970 : vec2<f32> = floor(vec2<f32>(x_2968.x, x_2968.y));
            let x_2971 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2970.x, x_2970.y, x_2971.z, x_2971.w);
            let x_2973 : vec4<f32> = u_xlat12;
            let x_2976 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2973.x, x_2973.y) * vec2<f32>(x_2976.z, x_2976.w)) + -(vec2<f32>(x_2979.x, x_2979.y)));
            let x_2983 : vec2<f32> = u_xlat67;
            u_xlat14 = (vec4<f32>(x_2983.x, x_2983.x, x_2983.y, x_2983.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2988 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2986.x, x_2986.x, x_2986.z, x_2986.z) * vec4<f32>(x_2988.x, x_2988.x, x_2988.z, x_2988.z));
            let x_2991 : vec4<f32> = u_xlat15;
            let x_2993 : vec2<f32> = (vec2<f32>(x_2991.y, x_2991.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2994 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2994.x, x_2993.x, x_2994.z, x_2993.y);
            let x_2996 : vec4<f32> = u_xlat15;
            let x_2999 : vec2<f32> = u_xlat67;
            let x_3001 : vec2<f32> = ((vec2<f32>(x_2996.x, x_2996.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2999));
            let x_3002 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3001.x, x_3002.y, x_3001.y, x_3002.w);
            let x_3004 : vec2<f32> = u_xlat67;
            let x_3006 : vec2<f32> = (-(x_3004) + vec2<f32>(1.0f, 1.0f));
            let x_3007 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3006.x, x_3006.y, x_3007.z, x_3007.w);
            let x_3009 : vec2<f32> = u_xlat67;
            u_xlat69 = min(x_3009, vec2<f32>(0.0f, 0.0f));
            let x_3011 : vec2<f32> = u_xlat69;
            let x_3013 : vec2<f32> = u_xlat69;
            let x_3015 : vec4<f32> = u_xlat15;
            let x_3017 : vec2<f32> = ((-(x_3011) * x_3013) + vec2<f32>(x_3015.x, x_3015.y));
            let x_3018 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3017.x, x_3017.y, x_3018.z, x_3018.w);
            let x_3020 : vec2<f32> = u_xlat67;
            u_xlat69 = max(x_3020, vec2<f32>(0.0f, 0.0f));
            let x_3023 : vec2<f32> = u_xlat69;
            let x_3025 : vec2<f32> = u_xlat69;
            let x_3027 : vec4<f32> = u_xlat14;
            let x_3029 : vec2<f32> = ((-(x_3023) * x_3025) + vec2<f32>(x_3027.y, x_3027.w));
            let x_3030 : vec3<f32> = u_xlat41;
            u_xlat41 = vec3<f32>(x_3029.x, x_3030.y, x_3029.y);
            let x_3032 : vec4<f32> = u_xlat15;
            let x_3034 : vec2<f32> = (vec2<f32>(x_3032.x, x_3032.y) + vec2<f32>(2.0f, 2.0f));
            let x_3035 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3034.x, x_3034.y, x_3035.z, x_3035.w);
            let x_3037 : vec3<f32> = u_xlat41;
            let x_3039 : vec2<f32> = (vec2<f32>(x_3037.x, x_3037.z) + vec2<f32>(2.0f, 2.0f));
            let x_3040 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3040.x, x_3039.x, x_3040.z, x_3039.y);
            let x_3043 : f32 = u_xlat14.y;
            u_xlat17.z = (x_3043 * 0.08163200318813323975f);
            let x_3046 : vec4<f32> = u_xlat14;
            let x_3048 : vec3<f32> = (vec3<f32>(x_3046.z, x_3046.x, x_3046.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3049 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
            let x_3051 : vec4<f32> = u_xlat15;
            let x_3053 : vec2<f32> = (vec2<f32>(x_3051.x, x_3051.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3054 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3053.x, x_3053.y, x_3054.z, x_3054.w);
            let x_3057 : f32 = u_xlat18.y;
            u_xlat17.x = x_3057;
            let x_3059 : vec2<f32> = u_xlat67;
            let x_3062 : vec2<f32> = ((vec2<f32>(x_3059.x, x_3059.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3063 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3063.x, x_3062.x, x_3063.z, x_3062.y);
            let x_3065 : vec2<f32> = u_xlat67;
            let x_3068 : vec2<f32> = ((vec2<f32>(x_3065.x, x_3065.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3069 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3068.x, x_3069.y, x_3068.y, x_3069.w);
            let x_3072 : f32 = u_xlat14.x;
            u_xlat15.y = x_3072;
            let x_3075 : f32 = u_xlat16.y;
            u_xlat15.w = x_3075;
            let x_3077 : vec4<f32> = u_xlat15;
            let x_3078 : vec4<f32> = u_xlat17;
            u_xlat17 = (x_3077 + x_3078);
            let x_3080 : vec2<f32> = u_xlat67;
            let x_3083 : vec2<f32> = ((vec2<f32>(x_3080.y, x_3080.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3084 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3084.x, x_3083.x, x_3084.z, x_3083.y);
            let x_3086 : vec2<f32> = u_xlat67;
            let x_3089 : vec2<f32> = ((vec2<f32>(x_3086.y, x_3086.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3090 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3089.x, x_3090.y, x_3089.y, x_3090.w);
            let x_3093 : f32 = u_xlat14.y;
            u_xlat16.y = x_3093;
            let x_3095 : vec4<f32> = u_xlat16;
            let x_3096 : vec4<f32> = u_xlat18;
            u_xlat14 = (x_3095 + x_3096);
            let x_3098 : vec4<f32> = u_xlat15;
            let x_3099 : vec4<f32> = u_xlat17;
            u_xlat15 = (x_3098 / x_3099);
            let x_3101 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3101 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3103 : vec4<f32> = u_xlat16;
            let x_3104 : vec4<f32> = u_xlat14;
            u_xlat16 = (x_3103 / x_3104);
            let x_3106 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3106 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3108 : vec4<f32> = u_xlat15;
            let x_3111 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3108.w, x_3108.x, x_3108.y, x_3108.z) * vec4<f32>(x_3111.x, x_3111.x, x_3111.x, x_3111.x));
            let x_3114 : vec4<f32> = u_xlat16;
            let x_3117 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_3114.x, x_3114.w, x_3114.y, x_3114.z) * vec4<f32>(x_3117.y, x_3117.y, x_3117.y, x_3117.y));
            let x_3120 : vec4<f32> = u_xlat15;
            let x_3121 : vec3<f32> = vec3<f32>(x_3120.y, x_3120.z, x_3120.w);
            let x_3122 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3121.x, x_3122.y, x_3121.y, x_3121.z);
            let x_3125 : f32 = u_xlat16.x;
            u_xlat18.y = x_3125;
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3130 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3133 : vec4<f32> = u_xlat18;
            u_xlat19 = ((vec4<f32>(x_3127.x, x_3127.y, x_3127.x, x_3127.y) * vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y)) + vec4<f32>(x_3133.x, x_3133.y, x_3133.z, x_3133.y));
            let x_3136 : vec4<f32> = u_xlat13;
            let x_3139 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3142 : vec4<f32> = u_xlat18;
            u_xlat67 = ((vec2<f32>(x_3136.x, x_3136.y) * vec2<f32>(x_3139.x, x_3139.y)) + vec2<f32>(x_3142.w, x_3142.y));
            let x_3146 : f32 = u_xlat18.y;
            u_xlat15.y = x_3146;
            let x_3149 : f32 = u_xlat16.z;
            u_xlat18.y = x_3149;
            let x_3151 : vec4<f32> = u_xlat13;
            let x_3154 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3157 : vec4<f32> = u_xlat18;
            u_xlat20 = ((vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y) * vec4<f32>(x_3154.x, x_3154.y, x_3154.x, x_3154.y)) + vec4<f32>(x_3157.x, x_3157.y, x_3157.z, x_3157.y));
            let x_3160 : vec4<f32> = u_xlat13;
            let x_3163 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3166 : vec4<f32> = u_xlat18;
            let x_3168 : vec2<f32> = ((vec2<f32>(x_3160.x, x_3160.y) * vec2<f32>(x_3163.x, x_3163.y)) + vec2<f32>(x_3166.w, x_3166.y));
            let x_3169 : vec4<f32> = u_xlat21;
            u_xlat21 = vec4<f32>(x_3168.x, x_3168.y, x_3169.z, x_3169.w);
            let x_3172 : f32 = u_xlat18.y;
            u_xlat15.z = x_3172;
            let x_3175 : vec4<f32> = u_xlat13;
            let x_3178 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3181 : vec4<f32> = u_xlat15;
            u_xlat22 = ((vec4<f32>(x_3175.x, x_3175.y, x_3175.x, x_3175.y) * vec4<f32>(x_3178.x, x_3178.y, x_3178.x, x_3178.y)) + vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.z));
            let x_3185 : f32 = u_xlat16.w;
            u_xlat18.y = x_3185;
            let x_3188 : vec4<f32> = u_xlat13;
            let x_3191 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3194 : vec4<f32> = u_xlat18;
            u_xlat23 = ((vec4<f32>(x_3188.x, x_3188.y, x_3188.x, x_3188.y) * vec4<f32>(x_3191.x, x_3191.y, x_3191.x, x_3191.y)) + vec4<f32>(x_3194.x, x_3194.y, x_3194.z, x_3194.y));
            let x_3198 : vec4<f32> = u_xlat13;
            let x_3201 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3204 : vec4<f32> = u_xlat18;
            u_xlat42 = ((vec2<f32>(x_3198.x, x_3198.y) * vec2<f32>(x_3201.x, x_3201.y)) + vec2<f32>(x_3204.w, x_3204.y));
            let x_3208 : f32 = u_xlat18.y;
            u_xlat15.w = x_3208;
            let x_3211 : vec4<f32> = u_xlat13;
            let x_3214 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3217 : vec4<f32> = u_xlat15;
            u_xlat75 = ((vec2<f32>(x_3211.x, x_3211.y) * vec2<f32>(x_3214.x, x_3214.y)) + vec2<f32>(x_3217.x, x_3217.w));
            let x_3220 : vec4<f32> = u_xlat18;
            let x_3221 : vec3<f32> = vec3<f32>(x_3220.x, x_3220.z, x_3220.w);
            let x_3222 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3221.x, x_3222.y, x_3221.y, x_3221.z);
            let x_3224 : vec4<f32> = u_xlat13;
            let x_3227 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3230 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y) * vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y)) + vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3230.y));
            let x_3233 : vec4<f32> = u_xlat13;
            let x_3236 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat16;
            u_xlat70 = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.x, x_3236.y)) + vec2<f32>(x_3239.w, x_3239.y));
            let x_3243 : f32 = u_xlat15.x;
            u_xlat16.x = x_3243;
            let x_3245 : vec4<f32> = u_xlat13;
            let x_3248 : vec4<f32> = x_312.x_AdditionalShadowmapSize;
            let x_3251 : vec4<f32> = u_xlat16;
            let x_3253 : vec2<f32> = ((vec2<f32>(x_3245.x, x_3245.y) * vec2<f32>(x_3248.x, x_3248.y)) + vec2<f32>(x_3251.x, x_3251.y));
            let x_3254 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3253.x, x_3253.y, x_3254.z, x_3254.w);
            let x_3257 : vec4<f32> = u_xlat14;
            let x_3259 : vec4<f32> = u_xlat17;
            u_xlat24 = (vec4<f32>(x_3257.x, x_3257.x, x_3257.x, x_3257.x) * x_3259);
            let x_3262 : vec4<f32> = u_xlat14;
            let x_3264 : vec4<f32> = u_xlat17;
            u_xlat25 = (vec4<f32>(x_3262.y, x_3262.y, x_3262.y, x_3262.y) * x_3264);
            let x_3267 : vec4<f32> = u_xlat14;
            let x_3269 : vec4<f32> = u_xlat17;
            u_xlat26 = (vec4<f32>(x_3267.z, x_3267.z, x_3267.z, x_3267.z) * x_3269);
            let x_3271 : vec4<f32> = u_xlat14;
            let x_3273 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_3271.w, x_3271.w, x_3271.w, x_3271.w) * x_3273);
            let x_3276 : vec4<f32> = u_xlat19;
            let x_3277 : vec2<f32> = vec2<f32>(x_3276.x, x_3276.y);
            let x_3279 : f32 = u_xlat12.z;
            txVec43 = vec3<f32>(x_3277.x, x_3277.y, x_3279);
            let x_3286 : vec3<f32> = txVec43;
            let x_3288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
            u_xlat86 = x_3288;
            let x_3290 : vec4<f32> = u_xlat19;
            let x_3291 : vec2<f32> = vec2<f32>(x_3290.z, x_3290.w);
            let x_3293 : f32 = u_xlat12.z;
            txVec44 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec44;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat87 = x_3302;
            let x_3303 : f32 = u_xlat87;
            let x_3305 : f32 = u_xlat24.y;
            u_xlat87 = (x_3303 * x_3305);
            let x_3308 : f32 = u_xlat24.x;
            let x_3309 : f32 = u_xlat86;
            let x_3311 : f32 = u_xlat87;
            u_xlat86 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec2<f32> = u_xlat67;
            let x_3316 : f32 = u_xlat12.z;
            txVec45 = vec3<f32>(x_3314.x, x_3314.y, x_3316);
            let x_3323 : vec3<f32> = txVec45;
            let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
            u_xlat87 = x_3325;
            let x_3327 : f32 = u_xlat24.z;
            let x_3328 : f32 = u_xlat87;
            let x_3330 : f32 = u_xlat86;
            u_xlat86 = ((x_3327 * x_3328) + x_3330);
            let x_3333 : vec4<f32> = u_xlat22;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.x, x_3333.y);
            let x_3336 : f32 = u_xlat12.z;
            txVec46 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec46;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat87 = x_3345;
            let x_3347 : f32 = u_xlat24.w;
            let x_3348 : f32 = u_xlat87;
            let x_3350 : f32 = u_xlat86;
            u_xlat86 = ((x_3347 * x_3348) + x_3350);
            let x_3353 : vec4<f32> = u_xlat20;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.x, x_3353.y);
            let x_3356 : f32 = u_xlat12.z;
            txVec47 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec47;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat87 = x_3365;
            let x_3367 : f32 = u_xlat25.x;
            let x_3368 : f32 = u_xlat87;
            let x_3370 : f32 = u_xlat86;
            u_xlat86 = ((x_3367 * x_3368) + x_3370);
            let x_3373 : vec4<f32> = u_xlat20;
            let x_3374 : vec2<f32> = vec2<f32>(x_3373.z, x_3373.w);
            let x_3376 : f32 = u_xlat12.z;
            txVec48 = vec3<f32>(x_3374.x, x_3374.y, x_3376);
            let x_3383 : vec3<f32> = txVec48;
            let x_3385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3383.xy, x_3383.z);
            u_xlat87 = x_3385;
            let x_3387 : f32 = u_xlat25.y;
            let x_3388 : f32 = u_xlat87;
            let x_3390 : f32 = u_xlat86;
            u_xlat86 = ((x_3387 * x_3388) + x_3390);
            let x_3393 : vec4<f32> = u_xlat21;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.x, x_3393.y);
            let x_3396 : f32 = u_xlat12.z;
            txVec49 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec49;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat87 = x_3405;
            let x_3407 : f32 = u_xlat25.z;
            let x_3408 : f32 = u_xlat87;
            let x_3410 : f32 = u_xlat86;
            u_xlat86 = ((x_3407 * x_3408) + x_3410);
            let x_3413 : vec4<f32> = u_xlat22;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.z, x_3413.w);
            let x_3416 : f32 = u_xlat12.z;
            txVec50 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec50;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat87 = x_3425;
            let x_3427 : f32 = u_xlat25.w;
            let x_3428 : f32 = u_xlat87;
            let x_3430 : f32 = u_xlat86;
            u_xlat86 = ((x_3427 * x_3428) + x_3430);
            let x_3433 : vec4<f32> = u_xlat23;
            let x_3434 : vec2<f32> = vec2<f32>(x_3433.x, x_3433.y);
            let x_3436 : f32 = u_xlat12.z;
            txVec51 = vec3<f32>(x_3434.x, x_3434.y, x_3436);
            let x_3443 : vec3<f32> = txVec51;
            let x_3445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3443.xy, x_3443.z);
            u_xlat87 = x_3445;
            let x_3447 : f32 = u_xlat26.x;
            let x_3448 : f32 = u_xlat87;
            let x_3450 : f32 = u_xlat86;
            u_xlat86 = ((x_3447 * x_3448) + x_3450);
            let x_3453 : vec4<f32> = u_xlat23;
            let x_3454 : vec2<f32> = vec2<f32>(x_3453.z, x_3453.w);
            let x_3456 : f32 = u_xlat12.z;
            txVec52 = vec3<f32>(x_3454.x, x_3454.y, x_3456);
            let x_3463 : vec3<f32> = txVec52;
            let x_3465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3463.xy, x_3463.z);
            u_xlat87 = x_3465;
            let x_3467 : f32 = u_xlat26.y;
            let x_3468 : f32 = u_xlat87;
            let x_3470 : f32 = u_xlat86;
            u_xlat86 = ((x_3467 * x_3468) + x_3470);
            let x_3473 : vec2<f32> = u_xlat42;
            let x_3475 : f32 = u_xlat12.z;
            txVec53 = vec3<f32>(x_3473.x, x_3473.y, x_3475);
            let x_3482 : vec3<f32> = txVec53;
            let x_3484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3482.xy, x_3482.z);
            u_xlat87 = x_3484;
            let x_3486 : f32 = u_xlat26.z;
            let x_3487 : f32 = u_xlat87;
            let x_3489 : f32 = u_xlat86;
            u_xlat86 = ((x_3486 * x_3487) + x_3489);
            let x_3492 : vec2<f32> = u_xlat75;
            let x_3494 : f32 = u_xlat12.z;
            txVec54 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec54;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat87 = x_3503;
            let x_3505 : f32 = u_xlat26.w;
            let x_3506 : f32 = u_xlat87;
            let x_3508 : f32 = u_xlat86;
            u_xlat86 = ((x_3505 * x_3506) + x_3508);
            let x_3511 : vec4<f32> = u_xlat18;
            let x_3512 : vec2<f32> = vec2<f32>(x_3511.x, x_3511.y);
            let x_3514 : f32 = u_xlat12.z;
            txVec55 = vec3<f32>(x_3512.x, x_3512.y, x_3514);
            let x_3521 : vec3<f32> = txVec55;
            let x_3523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3521.xy, x_3521.z);
            u_xlat87 = x_3523;
            let x_3525 : f32 = u_xlat14.x;
            let x_3526 : f32 = u_xlat87;
            let x_3528 : f32 = u_xlat86;
            u_xlat86 = ((x_3525 * x_3526) + x_3528);
            let x_3531 : vec4<f32> = u_xlat18;
            let x_3532 : vec2<f32> = vec2<f32>(x_3531.z, x_3531.w);
            let x_3534 : f32 = u_xlat12.z;
            txVec56 = vec3<f32>(x_3532.x, x_3532.y, x_3534);
            let x_3541 : vec3<f32> = txVec56;
            let x_3543 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3541.xy, x_3541.z);
            u_xlat87 = x_3543;
            let x_3545 : f32 = u_xlat14.y;
            let x_3546 : f32 = u_xlat87;
            let x_3548 : f32 = u_xlat86;
            u_xlat86 = ((x_3545 * x_3546) + x_3548);
            let x_3551 : vec2<f32> = u_xlat70;
            let x_3553 : f32 = u_xlat12.z;
            txVec57 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec57;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat87 = x_3562;
            let x_3564 : f32 = u_xlat14.z;
            let x_3565 : f32 = u_xlat87;
            let x_3567 : f32 = u_xlat86;
            u_xlat86 = ((x_3564 * x_3565) + x_3567);
            let x_3570 : vec4<f32> = u_xlat13;
            let x_3571 : vec2<f32> = vec2<f32>(x_3570.x, x_3570.y);
            let x_3573 : f32 = u_xlat12.z;
            txVec58 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec58;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat87 = x_3582;
            let x_3584 : f32 = u_xlat14.w;
            let x_3585 : f32 = u_xlat87;
            let x_3587 : f32 = u_xlat86;
            u_xlat85 = ((x_3584 * x_3585) + x_3587);
          }
        }
      } else {
        let x_3591 : vec4<f32> = u_xlat12;
        let x_3592 : vec2<f32> = vec2<f32>(x_3591.x, x_3591.y);
        let x_3594 : f32 = u_xlat12.z;
        txVec59 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
        let x_3601 : vec3<f32> = txVec59;
        let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
        u_xlat85 = x_3603;
      }
      let x_3604 : i32 = u_xlati82;
      let x_3606 : f32 = x_312.x_AdditionalShadowParams[x_3604].x;
      u_xlat86 = (1.0f + -(x_3606));
      let x_3609 : f32 = u_xlat85;
      let x_3610 : i32 = u_xlati82;
      let x_3612 : f32 = x_312.x_AdditionalShadowParams[x_3610].x;
      let x_3614 : f32 = u_xlat86;
      u_xlat85 = ((x_3609 * x_3612) + x_3614);
      let x_3617 : f32 = u_xlat12.z;
      u_xlatb86 = (0.0f >= x_3617);
      let x_3621 : f32 = u_xlat12.z;
      u_xlatb87 = (x_3621 >= 1.0f);
      let x_3623 : bool = u_xlatb86;
      let x_3624 : bool = u_xlatb87;
      u_xlatb86 = (x_3623 | x_3624);
      let x_3626 : bool = u_xlatb86;
      let x_3627 : f32 = u_xlat85;
      u_xlat85 = select(x_3627, 1.0f, x_3626);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3630 : f32 = u_xlat85;
    u_xlat86 = (-(x_3630) + 1.0f);
    let x_3634 : f32 = u_xlat1.x;
    let x_3635 : f32 = u_xlat86;
    let x_3637 : f32 = u_xlat85;
    u_xlat85 = ((x_3634 * x_3635) + x_3637);
    let x_3639 : f32 = u_xlat83;
    let x_3640 : f32 = u_xlat85;
    u_xlat83 = (x_3639 * x_3640);
    let x_3642 : vec4<f32> = u_xlat4;
    let x_3644 : vec4<f32> = u_xlat11;
    u_xlat85 = dot(vec3<f32>(x_3642.x, x_3642.y, x_3642.z), vec3<f32>(x_3644.x, x_3644.y, x_3644.z));
    let x_3647 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3647, 0.0f, 1.0f);
    let x_3649 : f32 = u_xlat83;
    let x_3650 : f32 = u_xlat85;
    u_xlat83 = (x_3649 * x_3650);
    let x_3652 : f32 = u_xlat83;
    let x_3654 : i32 = u_xlati82;
    let x_3656 : vec4<f32> = x_2223.x_AdditionalLightsColor[x_3654];
    let x_3658 : vec3<f32> = (vec3<f32>(x_3652, x_3652, x_3652) * vec3<f32>(x_3656.x, x_3656.y, x_3656.z));
    let x_3659 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3658.x, x_3658.y, x_3658.z, x_3659.w);
    let x_3661 : vec4<f32> = u_xlat10;
    let x_3663 : vec3<f32> = u_xlat3;
    let x_3666 : vec3<f32> = u_xlat5;
    let x_3667 : vec3<f32> = ((vec3<f32>(x_3661.x, x_3661.y, x_3661.z) * vec3<f32>(x_3663.x, x_3663.x, x_3663.x)) + x_3666);
    let x_3668 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3667.x, x_3667.y, x_3667.z, x_3668.w);
    let x_3670 : vec4<f32> = u_xlat10;
    let x_3672 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_3670.x, x_3670.y, x_3670.z), vec3<f32>(x_3672.x, x_3672.y, x_3672.z));
    let x_3675 : f32 = u_xlat82;
    u_xlat82 = max(x_3675, 1.17549435e-38f);
    let x_3677 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3677);
    let x_3679 : f32 = u_xlat82;
    let x_3681 : vec4<f32> = u_xlat10;
    let x_3683 : vec3<f32> = (vec3<f32>(x_3679, x_3679, x_3679) * vec3<f32>(x_3681.x, x_3681.y, x_3681.z));
    let x_3684 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3684.w);
    let x_3686 : vec4<f32> = u_xlat4;
    let x_3688 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_3686.x, x_3686.y, x_3686.z), vec3<f32>(x_3688.x, x_3688.y, x_3688.z));
    let x_3691 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3691, 0.0f, 1.0f);
    let x_3693 : vec4<f32> = u_xlat11;
    let x_3695 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_3693.x, x_3693.y, x_3693.z), vec3<f32>(x_3695.x, x_3695.y, x_3695.z));
    let x_3698 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3698, 0.0f, 1.0f);
    let x_3700 : f32 = u_xlat82;
    let x_3701 : f32 = u_xlat82;
    u_xlat82 = (x_3700 * x_3701);
    let x_3703 : f32 = u_xlat82;
    let x_3705 : f32 = u_xlat9.x;
    u_xlat82 = ((x_3703 * x_3705) + 1.00001001358032226562f);
    let x_3708 : f32 = u_xlat83;
    let x_3709 : f32 = u_xlat83;
    u_xlat83 = (x_3708 * x_3709);
    let x_3711 : f32 = u_xlat82;
    let x_3712 : f32 = u_xlat82;
    u_xlat82 = (x_3711 * x_3712);
    let x_3714 : f32 = u_xlat83;
    u_xlat83 = max(x_3714, 0.10000000149011611938f);
    let x_3716 : f32 = u_xlat82;
    let x_3717 : f32 = u_xlat83;
    u_xlat82 = (x_3716 * x_3717);
    let x_3719 : f32 = u_xlat30;
    let x_3720 : f32 = u_xlat82;
    u_xlat82 = (x_3719 * x_3720);
    let x_3722 : f32 = u_xlat84;
    let x_3723 : f32 = u_xlat82;
    u_xlat82 = (x_3722 / x_3723);
    let x_3725 : vec3<f32> = u_xlat0;
    let x_3726 : f32 = u_xlat82;
    let x_3729 : vec4<f32> = u_xlat7;
    let x_3731 : vec3<f32> = ((x_3725 * vec3<f32>(x_3726, x_3726, x_3726)) + vec3<f32>(x_3729.x, x_3729.y, x_3729.z));
    let x_3732 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3731.x, x_3731.y, x_3731.z, x_3732.w);
    let x_3734 : vec4<f32> = u_xlat10;
    let x_3736 : vec4<f32> = u_xlat12;
    let x_3739 : vec3<f32> = u_xlat36;
    u_xlat36 = ((vec3<f32>(x_3734.x, x_3734.y, x_3734.z) * vec3<f32>(x_3736.x, x_3736.y, x_3736.z)) + x_3739);

    continuing {
      let x_3741 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3741 + bitcast<u32>(1i));
    }
  }
  let x_3743 : vec3<f32> = u_xlat6;
  let x_3744 : f32 = u_xlat57;
  let x_3747 : vec4<f32> = u_xlat8;
  u_xlat0 = ((x_3743 * vec3<f32>(x_3744, x_3744, x_3744)) + vec3<f32>(x_3747.x, x_3747.y, x_3747.z));
  let x_3750 : vec3<f32> = u_xlat36;
  let x_3751 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3750 + x_3751);
  let x_3755 : vec3<f32> = u_xlat2;
  let x_3756 : f32 = u_xlat55;
  let x_3759 : vec3<f32> = u_xlat0;
  let x_3760 : vec3<f32> = ((x_3755 * vec3<f32>(x_3756, x_3756, x_3756)) + x_3759);
  let x_3761 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


