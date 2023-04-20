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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat81 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat55 : f32;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlatb55 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_F0A81025 : sampler;

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

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat57 : f32;

var<private> u_xlatb85 : bool;

@group(1) @binding(3) var<uniform> x_464 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat85 : f32;

var<private> u_xlatb86 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat36 : vec3<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb87 : bool;

@group(1) @binding(4) var<uniform> x_1755 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat88 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu81 : u32;

var<private> u_xlatu85 : u32;

var<private> u_xlati86 : i32;

var<private> u_xlati85 : i32;

@group(1) @binding(1) var<uniform> x_2197 : AdditionalLights;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlatb88 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat91 : f32;

var<private> u_xlat73 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlat92 : f32;

var<private> u_xlatb89 : bool;

var<private> u_xlati62 : i32;

var<private> u_xlati89 : i32;

var<private> u_xlati91 : i32;

var<private> u_xlatb66 : vec2<bool>;

var<private> u_xlat66 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

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
  var x_1839 : f32;
  var x_1850 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2334 : f32;
  var x_2344 : f32;
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
  var x_3938 : f32;
  var x_3951 : f32;
  var x_3999 : f32;
  var x_4011 : vec3<f32>;
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
  u_xlat81 = (x_350 * x_352);
  let x_355 : f32 = u_xlat4.x;
  let x_357 : f32 = u_xlat4.x;
  let x_359 : f32 = u_xlat81;
  u_xlat81 = ((x_355 * x_357) + -(x_359));
  let x_364 : vec4<f32> = x_109.unity_SHC;
  let x_366 : f32 = u_xlat81;
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
  u_xlat81 = ((-(x_398) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_403 : f32 = u_xlat81;
  let x_406 : f32 = u_xlat3.y;
  u_xlat83 = (-(x_403) + x_406);
  let x_408 : f32 = u_xlat81;
  let x_410 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_408, x_408, x_408) * x_410);
  let x_412 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_412 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_416 : vec3<f32> = u_xlat3;
  let x_418 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_416.x, x_416.x, x_416.x) * x_418) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_424 : f32 = u_xlat3.y;
  u_xlat81 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat81;
  let x_428 : f32 = u_xlat81;
  u_xlat3.x = (x_427 * x_428);
  let x_432 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_432, 0.0078125f);
  let x_438 : f32 = u_xlat3.x;
  let x_440 : f32 = u_xlat3.x;
  u_xlat30 = (x_438 * x_440);
  let x_442 : f32 = u_xlat83;
  u_xlat83 = (x_442 + 1.0f);
  let x_444 : f32 = u_xlat83;
  u_xlat83 = min(x_444, 1.0f);
  let x_448 : f32 = u_xlat3.x;
  u_xlat84 = ((x_448 * 4.0f) + 2.0f);
  let x_454 : f32 = u_xlat3.z;
  u_xlat57 = min(x_454, 1.0f);
  let x_467 : f32 = x_464.x_MainLightShadowParams.y;
  u_xlatb85 = (0.0f < x_467);
  let x_469 : bool = u_xlatb85;
  if (x_469) {
    let x_473 : f32 = x_464.x_MainLightShadowParams.y;
    u_xlatb85 = (x_473 == 1.0f);
    let x_475 : bool = u_xlatb85;
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
      u_xlat85 = dot(x_556, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_563 : f32 = x_464.x_MainLightShadowParams.y;
      u_xlatb86 = (x_563 == 2.0f);
      let x_565 : bool = u_xlatb86;
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
        u_xlat61 = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.z, x_590.w)) + -(vec2<f32>(x_593.x, x_593.y)));
        let x_597 : vec2<f32> = u_xlat61;
        u_xlat8 = (vec4<f32>(x_597.x, x_597.x, x_597.y, x_597.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_602 : vec4<f32> = u_xlat8;
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_602.x, x_602.x, x_602.z, x_602.z) * vec4<f32>(x_604.x, x_604.x, x_604.z, x_604.z));
        let x_607 : vec4<f32> = u_xlat9;
        let x_611 : vec2<f32> = (vec2<f32>(x_607.y, x_607.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_612.y, x_611.y, x_612.w);
        let x_614 : vec4<f32> = u_xlat9;
        let x_617 : vec2<f32> = u_xlat61;
        let x_619 : vec2<f32> = ((vec2<f32>(x_614.x, x_614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_617));
        let x_620 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : vec2<f32> = u_xlat61;
        u_xlat63 = (-(x_623) + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec2<f32> = u_xlat61;
        let x_630 : vec2<f32> = min(x_628, vec2<f32>(0.0f, 0.0f));
        let x_631 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat10;
        let x_636 : vec4<f32> = u_xlat10;
        let x_639 : vec2<f32> = u_xlat63;
        let x_640 : vec2<f32> = ((-(vec2<f32>(x_633.x, x_633.y)) * vec2<f32>(x_636.x, x_636.y)) + x_639);
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec2<f32> = u_xlat61;
        u_xlat61 = max(x_643, vec2<f32>(0.0f, 0.0f));
        let x_645 : vec2<f32> = u_xlat61;
        let x_647 : vec2<f32> = u_xlat61;
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat61 = ((-(x_645) * x_647) + vec2<f32>(x_649.y, x_649.w));
        let x_652 : vec4<f32> = u_xlat10;
        let x_654 : vec2<f32> = (vec2<f32>(x_652.x, x_652.y) + vec2<f32>(1.0f, 1.0f));
        let x_655 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_657 + vec2<f32>(1.0f, 1.0f));
        let x_660 : vec4<f32> = u_xlat9;
        let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_665 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat63;
        let x_668 : vec2<f32> = (x_667 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat10;
        let x_673 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec2<f32> = u_xlat61;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat61 = (vec2<f32>(x_681.y, x_681.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_685 : f32 = u_xlat10.x;
        u_xlat11.z = x_685;
        let x_688 : f32 = u_xlat61.x;
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
        let x_706 : f32 = u_xlat61.y;
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
        u_xlat61 = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_780.x, x_780.y)) + vec2<f32>(x_783.z, x_783.w));
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
        u_xlat86 = (x_833 * x_835);
        let x_838 : vec4<f32> = u_xlat11;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_849 : vec3<f32> = txVec4;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat87 = x_851;
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
        let x_875 : f32 = u_xlat87;
        let x_878 : f32 = u_xlat7.x;
        u_xlat87 = ((x_874 * x_875) + x_878);
        let x_881 : vec2<f32> = u_xlat61;
        let x_883 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec6;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat7.x = x_892;
        let x_895 : f32 = u_xlat14.z;
        let x_897 : f32 = u_xlat7.x;
        let x_899 : f32 = u_xlat87;
        u_xlat87 = ((x_895 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat10;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec7;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
        u_xlat7.x = x_914;
        let x_917 : f32 = u_xlat14.w;
        let x_919 : f32 = u_xlat7.x;
        let x_921 : f32 = u_xlat87;
        u_xlat87 = ((x_917 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat12;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec8;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat7.x = x_936;
        let x_939 : f32 = u_xlat15.x;
        let x_941 : f32 = u_xlat7.x;
        let x_943 : f32 = u_xlat87;
        u_xlat87 = ((x_939 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat12;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec9;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat7.x = x_958;
        let x_961 : f32 = u_xlat15.y;
        let x_963 : f32 = u_xlat7.x;
        let x_965 : f32 = u_xlat87;
        u_xlat87 = ((x_961 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat10;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec10;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat7.x = x_980;
        let x_983 : f32 = u_xlat15.z;
        let x_985 : f32 = u_xlat7.x;
        let x_987 : f32 = u_xlat87;
        u_xlat87 = ((x_983 * x_985) + x_987);
        let x_990 : vec4<f32> = u_xlat9;
        let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
        let x_993 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec11;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
        u_xlat7.x = x_1002;
        let x_1005 : f32 = u_xlat15.w;
        let x_1007 : f32 = u_xlat7.x;
        let x_1009 : f32 = u_xlat87;
        u_xlat87 = ((x_1005 * x_1007) + x_1009);
        let x_1012 : vec4<f32> = u_xlat9;
        let x_1013 : vec2<f32> = vec2<f32>(x_1012.z, x_1012.w);
        let x_1015 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec12;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat7.x = x_1024;
        let x_1026 : f32 = u_xlat86;
        let x_1028 : f32 = u_xlat7.x;
        let x_1030 : f32 = u_xlat87;
        u_xlat85 = ((x_1026 * x_1028) + x_1030);
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
        u_xlat61 = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1050.z, x_1050.w)) + -(vec2<f32>(x_1053.x, x_1053.y)));
        let x_1057 : vec2<f32> = u_xlat61;
        u_xlat8 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.y, x_1057.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.z, x_1060.z) * vec4<f32>(x_1062.x, x_1062.x, x_1062.z, x_1062.z));
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1069 : vec2<f32> = (vec2<f32>(x_1065.y, x_1065.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1070 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1070.x, x_1069.x, x_1070.z, x_1069.y);
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1075 : vec2<f32> = u_xlat61;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1075));
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1078.w);
        let x_1080 : vec2<f32> = u_xlat61;
        let x_1082 : vec2<f32> = (-(x_1080) + vec2<f32>(1.0f, 1.0f));
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat61;
        u_xlat63 = min(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1087 : vec2<f32> = u_xlat63;
        let x_1089 : vec2<f32> = u_xlat63;
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1093 : vec2<f32> = ((-(x_1087) * x_1089) + vec2<f32>(x_1091.x, x_1091.y));
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
        let x_1096 : vec2<f32> = u_xlat61;
        u_xlat63 = max(x_1096, vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec2<f32> = u_xlat63;
        let x_1101 : vec2<f32> = u_xlat63;
        let x_1103 : vec4<f32> = u_xlat8;
        let x_1105 : vec2<f32> = ((-(x_1099) * x_1101) + vec2<f32>(x_1103.y, x_1103.w));
        let x_1106 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1105.x, x_1106.y, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1108.x, x_1108.y) + vec2<f32>(2.0f, 2.0f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec3<f32> = u_xlat35;
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
        let x_1138 : vec2<f32> = u_xlat61;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1146 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1148 : vec2<f32> = u_xlat61;
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
        let x_1164 : vec2<f32> = u_xlat61;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1164.y, x_1164.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1168 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec2<f32> = u_xlat61;
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
        u_xlat61 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
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
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1295 : vec3<f32> = u_xlat36;
        u_xlat36 = vec3<f32>(x_1294.x, x_1294.y, x_1295.z);
        let x_1298 : f32 = u_xlat12.y;
        u_xlat9.w = x_1298;
        let x_1301 : vec4<f32> = u_xlat7;
        let x_1304 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat69 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.w));
        let x_1310 : vec4<f32> = u_xlat12;
        let x_1311 : vec3<f32> = vec3<f32>(x_1310.x, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
        let x_1314 : vec4<f32> = u_xlat7;
        let x_1317 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1320.y));
        let x_1324 : vec4<f32> = u_xlat7;
        let x_1327 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.w, x_1330.y));
        let x_1334 : f32 = u_xlat9.x;
        u_xlat10.x = x_1334;
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1339 : vec4<f32> = x_464.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat10;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.y));
        let x_1345 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1348 : vec4<f32> = u_xlat8;
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x) * x_1350);
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1355 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1353.y, x_1353.y, x_1353.y, x_1353.y) * x_1355);
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1360 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1358.z, x_1358.z, x_1358.z, x_1358.z) * x_1360);
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1362.w, x_1362.w, x_1362.w, x_1362.w) * x_1364);
        let x_1367 : vec4<f32> = u_xlat13;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec13;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat86 = x_1379;
        let x_1381 : vec4<f32> = u_xlat13;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.z, x_1381.w);
        let x_1384 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec14;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat87 = x_1393;
        let x_1394 : f32 = u_xlat87;
        let x_1396 : f32 = u_xlat18.y;
        u_xlat87 = (x_1394 * x_1396);
        let x_1399 : f32 = u_xlat18.x;
        let x_1400 : f32 = u_xlat86;
        let x_1402 : f32 = u_xlat87;
        u_xlat86 = ((x_1399 * x_1400) + x_1402);
        let x_1405 : vec2<f32> = u_xlat61;
        let x_1407 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec15;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat87 = x_1416;
        let x_1418 : f32 = u_xlat18.z;
        let x_1419 : f32 = u_xlat87;
        let x_1421 : f32 = u_xlat86;
        u_xlat86 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec4<f32> = u_xlat16;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
        let x_1427 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec16;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1434.xy, x_1434.z);
        u_xlat87 = x_1436;
        let x_1438 : f32 = u_xlat18.w;
        let x_1439 : f32 = u_xlat87;
        let x_1441 : f32 = u_xlat86;
        u_xlat86 = ((x_1438 * x_1439) + x_1441);
        let x_1444 : vec4<f32> = u_xlat14;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec17;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat87 = x_1456;
        let x_1458 : f32 = u_xlat19.x;
        let x_1459 : f32 = u_xlat87;
        let x_1461 : f32 = u_xlat86;
        u_xlat86 = ((x_1458 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat14;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.z, x_1464.w);
        let x_1467 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec18;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat87 = x_1476;
        let x_1478 : f32 = u_xlat19.y;
        let x_1479 : f32 = u_xlat87;
        let x_1481 : f32 = u_xlat86;
        u_xlat86 = ((x_1478 * x_1479) + x_1481);
        let x_1484 : vec4<f32> = u_xlat15;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec19;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat87 = x_1496;
        let x_1498 : f32 = u_xlat19.z;
        let x_1499 : f32 = u_xlat87;
        let x_1501 : f32 = u_xlat86;
        u_xlat86 = ((x_1498 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat16;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec20;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat87 = x_1516;
        let x_1518 : f32 = u_xlat19.w;
        let x_1519 : f32 = u_xlat87;
        let x_1521 : f32 = u_xlat86;
        u_xlat86 = ((x_1518 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat17;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec21;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat87 = x_1536;
        let x_1538 : f32 = u_xlat20.x;
        let x_1539 : f32 = u_xlat87;
        let x_1541 : f32 = u_xlat86;
        u_xlat86 = ((x_1538 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat17;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.z, x_1544.w);
        let x_1547 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec22;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
        u_xlat87 = x_1556;
        let x_1558 : f32 = u_xlat20.y;
        let x_1559 : f32 = u_xlat87;
        let x_1561 : f32 = u_xlat86;
        u_xlat86 = ((x_1558 * x_1559) + x_1561);
        let x_1564 : vec3<f32> = u_xlat36;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec23;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat87 = x_1576;
        let x_1578 : f32 = u_xlat20.z;
        let x_1579 : f32 = u_xlat87;
        let x_1581 : f32 = u_xlat86;
        u_xlat86 = ((x_1578 * x_1579) + x_1581);
        let x_1584 : vec2<f32> = u_xlat69;
        let x_1586 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec24;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1593.xy, x_1593.z);
        u_xlat87 = x_1595;
        let x_1597 : f32 = u_xlat20.w;
        let x_1598 : f32 = u_xlat87;
        let x_1600 : f32 = u_xlat86;
        u_xlat86 = ((x_1597 * x_1598) + x_1600);
        let x_1603 : vec4<f32> = u_xlat12;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.x, x_1603.y);
        let x_1606 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec25;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat87 = x_1615;
        let x_1617 : f32 = u_xlat8.x;
        let x_1618 : f32 = u_xlat87;
        let x_1620 : f32 = u_xlat86;
        u_xlat86 = ((x_1617 * x_1618) + x_1620);
        let x_1623 : vec4<f32> = u_xlat12;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.z, x_1623.w);
        let x_1626 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec26;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
        u_xlat87 = x_1635;
        let x_1637 : f32 = u_xlat8.y;
        let x_1638 : f32 = u_xlat87;
        let x_1640 : f32 = u_xlat86;
        u_xlat86 = ((x_1637 * x_1638) + x_1640);
        let x_1643 : vec2<f32> = u_xlat64;
        let x_1645 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec27;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1652.xy, x_1652.z);
        u_xlat87 = x_1654;
        let x_1656 : f32 = u_xlat8.z;
        let x_1657 : f32 = u_xlat87;
        let x_1659 : f32 = u_xlat86;
        u_xlat86 = ((x_1656 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat7;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec28;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat87 = x_1674;
        let x_1676 : f32 = u_xlat8.w;
        let x_1677 : f32 = u_xlat87;
        let x_1679 : f32 = u_xlat86;
        u_xlat85 = ((x_1676 * x_1677) + x_1679);
      }
    }
  } else {
    let x_1683 : vec4<f32> = vs_INTERP3;
    let x_1684 : vec2<f32> = vec2<f32>(x_1683.x, x_1683.y);
    let x_1686 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
    let x_1693 : vec3<f32> = txVec29;
    let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1693.xy, x_1693.z);
    u_xlat85 = x_1695;
  }
  let x_1697 : f32 = x_464.x_MainLightShadowParams.x;
  u_xlat86 = (-(x_1697) + 1.0f);
  let x_1700 : f32 = u_xlat85;
  let x_1702 : f32 = x_464.x_MainLightShadowParams.x;
  let x_1704 : f32 = u_xlat86;
  u_xlat85 = ((x_1700 * x_1702) + x_1704);
  let x_1707 : f32 = vs_INTERP3.z;
  u_xlatb86 = (0.0f >= x_1707);
  let x_1711 : f32 = vs_INTERP3.z;
  u_xlatb87 = (x_1711 >= 1.0f);
  let x_1713 : bool = u_xlatb86;
  let x_1714 : bool = u_xlatb87;
  u_xlatb86 = (x_1713 | x_1714);
  let x_1716 : bool = u_xlatb86;
  let x_1717 : f32 = u_xlat85;
  u_xlat85 = select(x_1717, 1.0f, x_1716);
  let x_1719 : vec3<f32> = vs_INTERP7;
  let x_1721 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1723 : vec3<f32> = (x_1719 + -(x_1721));
  let x_1724 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
  let x_1726 : vec4<f32> = u_xlat7;
  let x_1728 : vec4<f32> = u_xlat7;
  u_xlat86 = dot(vec3<f32>(x_1726.x, x_1726.y, x_1726.z), vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1731 : f32 = u_xlat86;
  let x_1733 : f32 = x_464.x_MainLightShadowParams.z;
  let x_1736 : f32 = x_464.x_MainLightShadowParams.w;
  u_xlat87 = ((x_1731 * x_1733) + x_1736);
  let x_1738 : f32 = u_xlat87;
  u_xlat87 = clamp(x_1738, 0.0f, 1.0f);
  let x_1740 : f32 = u_xlat85;
  u_xlat7.x = (-(x_1740) + 1.0f);
  let x_1744 : f32 = u_xlat87;
  let x_1746 : f32 = u_xlat7.x;
  let x_1748 : f32 = u_xlat85;
  u_xlat85 = ((x_1744 * x_1746) + x_1748);
  let x_1757 : f32 = x_1755.x_MainLightCookieTextureFormat;
  u_xlatb87 = !((x_1757 == -1.0f));
  let x_1759 : bool = u_xlatb87;
  if (x_1759) {
    let x_1762 : vec3<f32> = vs_INTERP7;
    let x_1765 : vec4<f32> = x_1755.x_MainLightWorldToLight[1i];
    let x_1767 : vec2<f32> = (vec2<f32>(x_1762.y, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y));
    let x_1768 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
    let x_1771 : vec4<f32> = x_1755.x_MainLightWorldToLight[0i];
    let x_1773 : vec3<f32> = vs_INTERP7;
    let x_1776 : vec4<f32> = u_xlat7;
    let x_1778 : vec2<f32> = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1773.x, x_1773.x)) + vec2<f32>(x_1776.x, x_1776.y));
    let x_1779 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1778.x, x_1778.y, x_1779.z, x_1779.w);
    let x_1782 : vec4<f32> = x_1755.x_MainLightWorldToLight[2i];
    let x_1784 : vec3<f32> = vs_INTERP7;
    let x_1787 : vec4<f32> = u_xlat7;
    let x_1789 : vec2<f32> = ((vec2<f32>(x_1782.x, x_1782.y) * vec2<f32>(x_1784.z, x_1784.z)) + vec2<f32>(x_1787.x, x_1787.y));
    let x_1790 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1789.x, x_1789.y, x_1790.z, x_1790.w);
    let x_1792 : vec4<f32> = u_xlat7;
    let x_1795 : vec4<f32> = x_1755.x_MainLightWorldToLight[3i];
    let x_1797 : vec2<f32> = (vec2<f32>(x_1792.x, x_1792.y) + vec2<f32>(x_1795.x, x_1795.y));
    let x_1798 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
    let x_1800 : vec4<f32> = u_xlat7;
    let x_1803 : vec2<f32> = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1804 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1803.x, x_1803.y, x_1804.z, x_1804.w);
    let x_1811 : vec4<f32> = u_xlat7;
    let x_1814 : f32 = x_29.x_GlobalMipBias.x;
    let x_1815 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1811.x, x_1811.y), x_1814);
    u_xlat7 = x_1815;
    let x_1820 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1822 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1824 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1826 : f32 = x_1755.x_MainLightCookieTextureFormat;
    let x_1827 : vec4<f32> = vec4<f32>(x_1820, x_1822, x_1824, x_1826);
    let x_1835 : vec4<bool> = (vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1827.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1835.x, x_1835.y);
    let x_1838 : bool = u_xlatb8.y;
    if (x_1838) {
      let x_1843 : f32 = u_xlat7.w;
      x_1839 = x_1843;
    } else {
      let x_1846 : f32 = u_xlat7.x;
      x_1839 = x_1846;
    }
    let x_1847 : f32 = x_1839;
    u_xlat87 = x_1847;
    let x_1849 : bool = u_xlatb8.x;
    if (x_1849) {
      let x_1853 : vec4<f32> = u_xlat7;
      x_1850 = vec3<f32>(x_1853.x, x_1853.y, x_1853.z);
    } else {
      let x_1856 : f32 = u_xlat87;
      x_1850 = vec3<f32>(x_1856, x_1856, x_1856);
    }
    let x_1858 : vec3<f32> = x_1850;
    let x_1859 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1865 : vec4<f32> = u_xlat7;
  let x_1868 : vec4<f32> = x_29.x_MainLightColor;
  let x_1870 : vec3<f32> = (vec3<f32>(x_1865.x, x_1865.y, x_1865.z) * vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : vec3<f32> = u_xlat5;
  let x_1875 : vec4<f32> = u_xlat4;
  u_xlat87 = dot(-(x_1873), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : f32 = u_xlat87;
  let x_1879 : f32 = u_xlat87;
  u_xlat87 = (x_1878 + x_1879);
  let x_1881 : vec4<f32> = u_xlat4;
  let x_1883 : f32 = u_xlat87;
  let x_1887 : vec3<f32> = u_xlat5;
  let x_1889 : vec3<f32> = ((vec3<f32>(x_1881.x, x_1881.y, x_1881.z) * -(vec3<f32>(x_1883, x_1883, x_1883))) + -(x_1887));
  let x_1890 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1892 : vec4<f32> = u_xlat4;
  let x_1894 : vec3<f32> = u_xlat5;
  u_xlat87 = dot(vec3<f32>(x_1892.x, x_1892.y, x_1892.z), x_1894);
  let x_1896 : f32 = u_xlat87;
  u_xlat87 = clamp(x_1896, 0.0f, 1.0f);
  let x_1898 : f32 = u_xlat87;
  u_xlat87 = (-(x_1898) + 1.0f);
  let x_1901 : f32 = u_xlat87;
  let x_1902 : f32 = u_xlat87;
  u_xlat87 = (x_1901 * x_1902);
  let x_1904 : f32 = u_xlat87;
  let x_1905 : f32 = u_xlat87;
  u_xlat87 = (x_1904 * x_1905);
  let x_1908 : f32 = u_xlat81;
  u_xlat88 = ((-(x_1908) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1914 : f32 = u_xlat81;
  let x_1915 : f32 = u_xlat88;
  u_xlat81 = (x_1914 * x_1915);
  let x_1917 : f32 = u_xlat81;
  u_xlat81 = (x_1917 * 6.0f);
  let x_1928 : vec4<f32> = u_xlat8;
  let x_1930 : f32 = u_xlat81;
  let x_1931 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1928.x, x_1928.y, x_1928.z), x_1930);
  u_xlat8 = x_1931;
  let x_1933 : f32 = u_xlat8.w;
  u_xlat81 = (x_1933 + -1.0f);
  let x_1936 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_1937 : f32 = u_xlat81;
  u_xlat81 = ((x_1936 * x_1937) + 1.0f);
  let x_1940 : f32 = u_xlat81;
  u_xlat81 = max(x_1940, 0.0f);
  let x_1942 : f32 = u_xlat81;
  u_xlat81 = log2(x_1942);
  let x_1944 : f32 = u_xlat81;
  let x_1946 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat81 = (x_1944 * x_1946);
  let x_1948 : f32 = u_xlat81;
  u_xlat81 = exp2(x_1948);
  let x_1950 : f32 = u_xlat81;
  let x_1952 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat81 = (x_1950 * x_1952);
  let x_1954 : vec4<f32> = u_xlat8;
  let x_1956 : f32 = u_xlat81;
  let x_1958 : vec3<f32> = (vec3<f32>(x_1954.x, x_1954.y, x_1954.z) * vec3<f32>(x_1956, x_1956, x_1956));
  let x_1959 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1958.x, x_1958.y, x_1958.z, x_1959.w);
  let x_1961 : vec3<f32> = u_xlat3;
  let x_1963 : vec3<f32> = u_xlat3;
  let x_1967 : vec2<f32> = ((vec2<f32>(x_1961.x, x_1961.x) * vec2<f32>(x_1963.x, x_1963.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1968 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1967.x, x_1967.y, x_1968.z, x_1968.w);
  let x_1971 : f32 = u_xlat9.y;
  u_xlat81 = (1.0f / x_1971);
  let x_1973 : vec3<f32> = u_xlat0;
  let x_1975 : f32 = u_xlat83;
  u_xlat36 = (-(x_1973) + vec3<f32>(x_1975, x_1975, x_1975));
  let x_1978 : f32 = u_xlat87;
  let x_1980 : vec3<f32> = u_xlat36;
  let x_1982 : vec3<f32> = u_xlat0;
  u_xlat36 = ((vec3<f32>(x_1978, x_1978, x_1978) * x_1980) + x_1982);
  let x_1984 : f32 = u_xlat81;
  let x_1986 : vec3<f32> = u_xlat36;
  u_xlat36 = (vec3<f32>(x_1984, x_1984, x_1984) * x_1986);
  let x_1988 : vec4<f32> = u_xlat8;
  let x_1990 : vec3<f32> = u_xlat36;
  let x_1991 : vec3<f32> = (vec3<f32>(x_1988.x, x_1988.y, x_1988.z) * x_1990);
  let x_1992 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
  let x_1994 : vec4<f32> = u_xlat1;
  let x_1996 : vec3<f32> = u_xlat6;
  let x_1998 : vec4<f32> = u_xlat8;
  let x_2000 : vec3<f32> = ((vec3<f32>(x_1994.x, x_1994.y, x_1994.w) * x_1996) + vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2000.x, x_2000.y, x_2001.z, x_2000.z);
  let x_2003 : f32 = u_xlat85;
  let x_2005 : f32 = x_109.unity_LightData.z;
  u_xlat81 = (x_2003 * x_2005);
  let x_2007 : vec4<f32> = u_xlat4;
  let x_2010 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat83 = dot(vec3<f32>(x_2007.x, x_2007.y, x_2007.z), vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2013, 0.0f, 1.0f);
  let x_2015 : f32 = u_xlat81;
  let x_2016 : f32 = u_xlat83;
  u_xlat81 = (x_2015 * x_2016);
  let x_2018 : f32 = u_xlat81;
  let x_2020 : vec4<f32> = u_xlat7;
  let x_2022 : vec3<f32> = (vec3<f32>(x_2018, x_2018, x_2018) * vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : vec3<f32> = u_xlat5;
  let x_2027 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2029 : vec3<f32> = (x_2025 + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec4<f32> = u_xlat8;
  let x_2034 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_2032.x, x_2032.y, x_2032.z), vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2037 : f32 = u_xlat81;
  u_xlat81 = max(x_2037, 1.17549435e-38f);
  let x_2040 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_2040);
  let x_2042 : f32 = u_xlat81;
  let x_2044 : vec4<f32> = u_xlat8;
  let x_2046 : vec3<f32> = (vec3<f32>(x_2042, x_2042, x_2042) * vec3<f32>(x_2044.x, x_2044.y, x_2044.z));
  let x_2047 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec4<f32> = u_xlat4;
  let x_2051 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2054, 0.0f, 1.0f);
  let x_2057 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2059 : vec4<f32> = u_xlat8;
  u_xlat83 = dot(vec3<f32>(x_2057.x, x_2057.y, x_2057.z), vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
  let x_2062 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2062, 0.0f, 1.0f);
  let x_2064 : f32 = u_xlat81;
  let x_2065 : f32 = u_xlat81;
  u_xlat81 = (x_2064 * x_2065);
  let x_2067 : f32 = u_xlat81;
  let x_2069 : f32 = u_xlat9.x;
  u_xlat81 = ((x_2067 * x_2069) + 1.00001001358032226562f);
  let x_2073 : f32 = u_xlat83;
  let x_2074 : f32 = u_xlat83;
  u_xlat83 = (x_2073 * x_2074);
  let x_2076 : f32 = u_xlat81;
  let x_2077 : f32 = u_xlat81;
  u_xlat81 = (x_2076 * x_2077);
  let x_2079 : f32 = u_xlat83;
  u_xlat83 = max(x_2079, 0.10000000149011611938f);
  let x_2082 : f32 = u_xlat81;
  let x_2083 : f32 = u_xlat83;
  u_xlat81 = (x_2082 * x_2083);
  let x_2085 : f32 = u_xlat84;
  let x_2086 : f32 = u_xlat81;
  u_xlat81 = (x_2085 * x_2086);
  let x_2088 : f32 = u_xlat30;
  let x_2089 : f32 = u_xlat81;
  u_xlat81 = (x_2088 / x_2089);
  let x_2091 : vec3<f32> = u_xlat0;
  let x_2092 : f32 = u_xlat81;
  let x_2095 : vec3<f32> = u_xlat6;
  let x_2096 : vec3<f32> = ((x_2091 * vec3<f32>(x_2092, x_2092, x_2092)) + x_2095);
  let x_2097 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
  let x_2099 : vec4<f32> = u_xlat7;
  let x_2101 : vec4<f32> = u_xlat8;
  let x_2103 : vec3<f32> = (vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2107 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2109 : f32 = x_109.unity_LightData.y;
  u_xlat81 = min(x_2107, x_2109);
  let x_2113 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_2113));
  let x_2116 : f32 = u_xlat86;
  let x_2119 : f32 = x_464.x_AdditionalShadowFadeParams.x;
  let x_2122 : f32 = x_464.x_AdditionalShadowFadeParams.y;
  u_xlat83 = ((x_2116 * x_2119) + x_2122);
  let x_2124 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2124, 0.0f, 1.0f);
  let x_2127 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2129 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2131 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2133 : f32 = x_1755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2134 : vec4<f32> = vec4<f32>(x_2127, x_2129, x_2131, x_2133);
  let x_2140 : vec4<bool> = (vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2134.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2140.x, x_2140.y);
  u_xlat36.x = 0.0f;
  u_xlat36.y = 0.0f;
  u_xlat36.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2152 : u32 = u_xlatu_loop_1;
    let x_2153 : u32 = u_xlatu81;
    if ((x_2152 < x_2153)) {
    } else {
      break;
    }
    let x_2156 : u32 = u_xlatu_loop_1;
    u_xlatu85 = (x_2156 >> 2u);
    let x_2160 : u32 = u_xlatu_loop_1;
    u_xlati86 = bitcast<i32>((x_2160 & 3u));
    let x_2163 : u32 = u_xlatu85;
    let x_2166 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_2163)];
    let x_2176 : i32 = u_xlati86;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2181 : vec4<u32> = indexable[x_2176];
    u_xlat85 = dot(x_2166, bitcast<vec4<f32>>(x_2181));
    let x_2185 : f32 = u_xlat85;
    u_xlati85 = i32(x_2185);
    let x_2187 : vec3<f32> = vs_INTERP7;
    let x_2198 : i32 = u_xlati85;
    let x_2200 : vec4<f32> = x_2197.x_AdditionalLightsPosition[x_2198];
    let x_2203 : i32 = u_xlati85;
    let x_2205 : vec4<f32> = x_2197.x_AdditionalLightsPosition[x_2203];
    let x_2207 : vec3<f32> = ((-(x_2187) * vec3<f32>(x_2200.w, x_2200.w, x_2200.w)) + vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
    let x_2210 : vec4<f32> = u_xlat10;
    let x_2212 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : f32 = u_xlat86;
    u_xlat86 = max(x_2215, 0.00006103515625f);
    let x_2218 : f32 = u_xlat86;
    u_xlat87 = inverseSqrt(x_2218);
    let x_2220 : f32 = u_xlat87;
    let x_2222 : vec4<f32> = u_xlat10;
    let x_2224 : vec3<f32> = (vec3<f32>(x_2220, x_2220, x_2220) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
    let x_2225 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
    let x_2227 : f32 = u_xlat86;
    u_xlat88 = (1.0f / x_2227);
    let x_2229 : f32 = u_xlat86;
    let x_2230 : i32 = u_xlati85;
    let x_2232 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2230].x;
    u_xlat86 = (x_2229 * x_2232);
    let x_2234 : f32 = u_xlat86;
    let x_2236 : f32 = u_xlat86;
    u_xlat86 = ((-(x_2234) * x_2236) + 1.0f);
    let x_2239 : f32 = u_xlat86;
    u_xlat86 = max(x_2239, 0.0f);
    let x_2241 : f32 = u_xlat86;
    let x_2242 : f32 = u_xlat86;
    u_xlat86 = (x_2241 * x_2242);
    let x_2244 : f32 = u_xlat86;
    let x_2245 : f32 = u_xlat88;
    u_xlat86 = (x_2244 * x_2245);
    let x_2247 : i32 = u_xlati85;
    let x_2249 : vec4<f32> = x_2197.x_AdditionalLightsSpotDir[x_2247];
    let x_2251 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_2249.x, x_2249.y, x_2249.z), vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
    let x_2254 : f32 = u_xlat88;
    let x_2255 : i32 = u_xlati85;
    let x_2257 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2255].z;
    let x_2259 : i32 = u_xlati85;
    let x_2261 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2259].w;
    u_xlat88 = ((x_2254 * x_2257) + x_2261);
    let x_2263 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2263, 0.0f, 1.0f);
    let x_2265 : f32 = u_xlat88;
    let x_2266 : f32 = u_xlat88;
    u_xlat88 = (x_2265 * x_2266);
    let x_2268 : f32 = u_xlat86;
    let x_2269 : f32 = u_xlat88;
    u_xlat86 = (x_2268 * x_2269);
    let x_2273 : i32 = u_xlati85;
    let x_2275 : f32 = x_464.x_AdditionalShadowParams[x_2273].w;
    u_xlati88 = i32(x_2275);
    let x_2278 : i32 = u_xlati88;
    u_xlatb62 = (x_2278 >= 0i);
    let x_2280 : bool = u_xlatb62;
    if (x_2280) {
      let x_2284 : i32 = u_xlati85;
      let x_2286 : f32 = x_464.x_AdditionalShadowParams[x_2284].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2286, x_2286, x_2286, x_2286))));
      let x_2290 : bool = u_xlatb62;
      if (x_2290) {
        let x_2295 : vec4<f32> = u_xlat11;
        let x_2298 : vec4<f32> = u_xlat11;
        let x_2301 : vec4<bool> = (abs(vec4<f32>(x_2295.z, x_2295.z, x_2295.y, x_2295.z)) >= abs(vec4<f32>(x_2298.x, x_2298.y, x_2298.x, x_2298.x)));
        let x_2303 : vec3<bool> = vec3<bool>(x_2301.x, x_2301.y, x_2301.z);
        let x_2304 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
        let x_2307 : bool = u_xlatb12.y;
        let x_2309 : bool = u_xlatb12.x;
        u_xlatb62 = (x_2307 & x_2309);
        let x_2311 : vec4<f32> = u_xlat11;
        let x_2314 : vec4<bool> = (-(vec4<f32>(x_2311.z, x_2311.y, x_2311.z, x_2311.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2315 : vec3<bool> = vec3<bool>(x_2314.x, x_2314.y, x_2314.w);
        let x_2316 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2315.x, x_2315.y, x_2316.z, x_2315.z);
        let x_2319 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_2319);
        let x_2324 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_2324);
        let x_2330 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_2330);
        let x_2333 : bool = u_xlatb12.z;
        if (x_2333) {
          let x_2338 : f32 = u_xlat12.y;
          x_2334 = x_2338;
        } else {
          let x_2340 : f32 = u_xlat89;
          x_2334 = x_2340;
        }
        let x_2341 : f32 = x_2334;
        u_xlat89 = x_2341;
        let x_2343 : bool = u_xlatb62;
        if (x_2343) {
          let x_2348 : f32 = u_xlat12.x;
          x_2344 = x_2348;
        } else {
          let x_2350 : f32 = u_xlat89;
          x_2344 = x_2350;
        }
        let x_2351 : f32 = x_2344;
        u_xlat62.x = x_2351;
        let x_2353 : i32 = u_xlati85;
        let x_2355 : f32 = x_464.x_AdditionalShadowParams[x_2353].w;
        u_xlat89 = trunc(x_2355);
        let x_2358 : f32 = u_xlat62.x;
        let x_2359 : f32 = u_xlat89;
        u_xlat62.x = (x_2358 + x_2359);
        let x_2363 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_2363);
      }
      let x_2365 : i32 = u_xlati88;
      u_xlati88 = (x_2365 << bitcast<u32>(2i));
      let x_2367 : vec3<f32> = vs_INTERP7;
      let x_2370 : i32 = u_xlati88;
      let x_2373 : i32 = u_xlati88;
      let x_2377 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[((x_2370 + 1i) / 4i)][((x_2373 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_2367.y, x_2367.y, x_2367.y, x_2367.y) * x_2377);
      let x_2379 : i32 = u_xlati88;
      let x_2381 : i32 = u_xlati88;
      let x_2384 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[(x_2379 / 4i)][(x_2381 % 4i)];
      let x_2385 : vec3<f32> = vs_INTERP7;
      let x_2388 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2384 * vec4<f32>(x_2385.x, x_2385.x, x_2385.x, x_2385.x)) + x_2388);
      let x_2390 : i32 = u_xlati88;
      let x_2393 : i32 = u_xlati88;
      let x_2397 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[((x_2390 + 2i) / 4i)][((x_2393 + 2i) % 4i)];
      let x_2398 : vec3<f32> = vs_INTERP7;
      let x_2401 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2397 * vec4<f32>(x_2398.z, x_2398.z, x_2398.z, x_2398.z)) + x_2401);
      let x_2403 : vec4<f32> = u_xlat12;
      let x_2404 : i32 = u_xlati88;
      let x_2407 : i32 = u_xlati88;
      let x_2411 : vec4<f32> = x_464.x_AdditionalLightsWorldToShadow[((x_2404 + 3i) / 4i)][((x_2407 + 3i) % 4i)];
      u_xlat12 = (x_2403 + x_2411);
      let x_2413 : vec4<f32> = u_xlat12;
      let x_2415 : vec4<f32> = u_xlat12;
      let x_2417 : vec3<f32> = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) / vec3<f32>(x_2415.w, x_2415.w, x_2415.w));
      let x_2418 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
      let x_2421 : i32 = u_xlati85;
      let x_2423 : f32 = x_464.x_AdditionalShadowParams[x_2421].y;
      u_xlatb88 = (0.0f < x_2423);
      let x_2425 : bool = u_xlatb88;
      if (x_2425) {
        let x_2428 : i32 = u_xlati85;
        let x_2430 : f32 = x_464.x_AdditionalShadowParams[x_2428].y;
        u_xlatb88 = (1.0f == x_2430);
        let x_2432 : bool = u_xlatb88;
        if (x_2432) {
          let x_2435 : vec4<f32> = u_xlat12;
          let x_2439 : vec4<f32> = x_464.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_2435.x, x_2435.y, x_2435.x, x_2435.y) + x_2439);
          let x_2442 : vec4<f32> = u_xlat13;
          let x_2443 : vec2<f32> = vec2<f32>(x_2442.x, x_2442.y);
          let x_2445 : f32 = u_xlat12.z;
          txVec30 = vec3<f32>(x_2443.x, x_2443.y, x_2445);
          let x_2453 : vec3<f32> = txVec30;
          let x_2455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2453.xy, x_2453.z);
          u_xlat14.x = x_2455;
          let x_2458 : vec4<f32> = u_xlat13;
          let x_2459 : vec2<f32> = vec2<f32>(x_2458.z, x_2458.w);
          let x_2461 : f32 = u_xlat12.z;
          txVec31 = vec3<f32>(x_2459.x, x_2459.y, x_2461);
          let x_2468 : vec3<f32> = txVec31;
          let x_2470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2468.xy, x_2468.z);
          u_xlat14.y = x_2470;
          let x_2472 : vec4<f32> = u_xlat12;
          let x_2476 : vec4<f32> = x_464.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y) + x_2476);
          let x_2479 : vec4<f32> = u_xlat13;
          let x_2480 : vec2<f32> = vec2<f32>(x_2479.x, x_2479.y);
          let x_2482 : f32 = u_xlat12.z;
          txVec32 = vec3<f32>(x_2480.x, x_2480.y, x_2482);
          let x_2489 : vec3<f32> = txVec32;
          let x_2491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2489.xy, x_2489.z);
          u_xlat14.z = x_2491;
          let x_2494 : vec4<f32> = u_xlat13;
          let x_2495 : vec2<f32> = vec2<f32>(x_2494.z, x_2494.w);
          let x_2497 : f32 = u_xlat12.z;
          txVec33 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
          let x_2504 : vec3<f32> = txVec33;
          let x_2506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
          u_xlat14.w = x_2506;
          let x_2508 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_2508, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2511 : i32 = u_xlati85;
          let x_2513 : f32 = x_464.x_AdditionalShadowParams[x_2511].y;
          u_xlatb62 = (2.0f == x_2513);
          let x_2515 : bool = u_xlatb62;
          if (x_2515) {
            let x_2518 : vec4<f32> = u_xlat12;
            let x_2522 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(x_2522.z, x_2522.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2526 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_2526);
            let x_2528 : vec4<f32> = u_xlat12;
            let x_2531 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2534 : vec2<f32> = u_xlat62;
            let x_2536 : vec2<f32> = ((vec2<f32>(x_2528.x, x_2528.y) * vec2<f32>(x_2531.z, x_2531.w)) + -(x_2534));
            let x_2537 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2536.x, x_2536.y, x_2537.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2539.x, x_2539.x, x_2539.y, x_2539.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2542 : vec4<f32> = u_xlat14;
            let x_2544 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2542.x, x_2542.x, x_2542.z, x_2542.z) * vec4<f32>(x_2544.x, x_2544.x, x_2544.z, x_2544.z));
            let x_2548 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_2548.y, x_2548.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2551 : vec4<f32> = u_xlat15;
            let x_2554 : vec4<f32> = u_xlat13;
            let x_2557 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2554.x, x_2554.y)));
            let x_2558 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2557.x, x_2558.y, x_2557.y, x_2558.w);
            let x_2560 : vec4<f32> = u_xlat13;
            let x_2563 : vec2<f32> = (-(vec2<f32>(x_2560.x, x_2560.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2564 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2563.x, x_2563.y, x_2564.z, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_2566.x, x_2566.y), vec2<f32>(0.0f, 0.0f));
            let x_2569 : vec2<f32> = u_xlat69;
            let x_2571 : vec2<f32> = u_xlat69;
            let x_2573 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_2569) * x_2571) + vec2<f32>(x_2573.x, x_2573.y));
            let x_2576 : vec4<f32> = u_xlat13;
            let x_2578 : vec2<f32> = max(vec2<f32>(x_2576.x, x_2576.y), vec2<f32>(0.0f, 0.0f));
            let x_2579 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2578.x, x_2578.y, x_2579.z, x_2579.w);
            let x_2581 : vec4<f32> = u_xlat13;
            let x_2584 : vec4<f32> = u_xlat13;
            let x_2587 : vec4<f32> = u_xlat14;
            let x_2589 : vec2<f32> = ((-(vec2<f32>(x_2581.x, x_2581.y)) * vec2<f32>(x_2584.x, x_2584.y)) + vec2<f32>(x_2587.y, x_2587.w));
            let x_2590 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
            let x_2592 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_2592 + vec2<f32>(1.0f, 1.0f));
            let x_2594 : vec4<f32> = u_xlat13;
            let x_2596 : vec2<f32> = (vec2<f32>(x_2594.x, x_2594.y) + vec2<f32>(1.0f, 1.0f));
            let x_2597 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2596.x, x_2596.y, x_2597.z, x_2597.w);
            let x_2599 : vec4<f32> = u_xlat14;
            let x_2601 : vec2<f32> = (vec2<f32>(x_2599.x, x_2599.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2602 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
            let x_2604 : vec4<f32> = u_xlat15;
            let x_2606 : vec2<f32> = (vec2<f32>(x_2604.x, x_2604.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2607 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2606.x, x_2606.y, x_2607.z, x_2607.w);
            let x_2609 : vec2<f32> = u_xlat69;
            let x_2610 : vec2<f32> = (x_2609 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2611 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
            let x_2613 : vec4<f32> = u_xlat13;
            let x_2615 : vec2<f32> = (vec2<f32>(x_2613.x, x_2613.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2616 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2615.x, x_2615.y, x_2616.z, x_2616.w);
            let x_2618 : vec4<f32> = u_xlat14;
            let x_2620 : vec2<f32> = (vec2<f32>(x_2618.y, x_2618.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2621 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2620.x, x_2620.y, x_2621.z, x_2621.w);
            let x_2624 : f32 = u_xlat15.x;
            u_xlat16.z = x_2624;
            let x_2627 : f32 = u_xlat13.x;
            u_xlat16.w = x_2627;
            let x_2630 : f32 = u_xlat18.x;
            u_xlat17.z = x_2630;
            let x_2633 : f32 = u_xlat67.x;
            u_xlat17.w = x_2633;
            let x_2635 : vec4<f32> = u_xlat16;
            let x_2637 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_2635.z, x_2635.w, x_2635.x, x_2635.z) + vec4<f32>(x_2637.z, x_2637.w, x_2637.x, x_2637.z));
            let x_2641 : f32 = u_xlat16.y;
            u_xlat15.z = x_2641;
            let x_2644 : f32 = u_xlat13.y;
            u_xlat15.w = x_2644;
            let x_2647 : f32 = u_xlat17.y;
            u_xlat18.z = x_2647;
            let x_2650 : f32 = u_xlat67.y;
            u_xlat18.w = x_2650;
            let x_2652 : vec4<f32> = u_xlat15;
            let x_2654 : vec4<f32> = u_xlat18;
            let x_2656 : vec3<f32> = (vec3<f32>(x_2652.z, x_2652.y, x_2652.w) + vec3<f32>(x_2654.z, x_2654.y, x_2654.w));
            let x_2657 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat17;
            let x_2661 : vec4<f32> = u_xlat14;
            let x_2663 : vec3<f32> = (vec3<f32>(x_2659.x, x_2659.z, x_2659.w) / vec3<f32>(x_2661.z, x_2661.w, x_2661.y));
            let x_2664 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2664.w);
            let x_2666 : vec4<f32> = u_xlat15;
            let x_2668 : vec3<f32> = (vec3<f32>(x_2666.x, x_2666.y, x_2666.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2669 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
            let x_2671 : vec4<f32> = u_xlat18;
            let x_2673 : vec4<f32> = u_xlat13;
            let x_2675 : vec3<f32> = (vec3<f32>(x_2671.z, x_2671.y, x_2671.w) / vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
            let x_2676 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
            let x_2678 : vec4<f32> = u_xlat16;
            let x_2680 : vec3<f32> = (vec3<f32>(x_2678.x, x_2678.y, x_2678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2681 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat15;
            let x_2686 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2688 : vec3<f32> = (vec3<f32>(x_2683.y, x_2683.x, x_2683.z) * vec3<f32>(x_2686.x, x_2686.x, x_2686.x));
            let x_2689 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
            let x_2691 : vec4<f32> = u_xlat16;
            let x_2694 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2696 : vec3<f32> = (vec3<f32>(x_2691.x, x_2691.y, x_2691.z) * vec3<f32>(x_2694.y, x_2694.y, x_2694.y));
            let x_2697 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
            let x_2700 : f32 = u_xlat16.x;
            u_xlat15.w = x_2700;
            let x_2702 : vec2<f32> = u_xlat62;
            let x_2705 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2708 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2702.x, x_2702.y, x_2702.x, x_2702.y) * vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.y)) + vec4<f32>(x_2708.y, x_2708.w, x_2708.x, x_2708.w));
            let x_2711 : vec2<f32> = u_xlat62;
            let x_2713 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2716 : vec4<f32> = u_xlat15;
            let x_2718 : vec2<f32> = ((x_2711 * vec2<f32>(x_2713.x, x_2713.y)) + vec2<f32>(x_2716.z, x_2716.w));
            let x_2719 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2718.x, x_2718.y, x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat15.y;
            u_xlat16.w = x_2722;
            let x_2724 : vec4<f32> = u_xlat16;
            let x_2725 : vec2<f32> = vec2<f32>(x_2724.y, x_2724.z);
            let x_2726 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2726.x, x_2725.x, x_2726.z, x_2725.y);
            let x_2728 : vec2<f32> = u_xlat62;
            let x_2731 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2734 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_2728.x, x_2728.y, x_2728.x, x_2728.y) * vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y)) + vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2734.y));
            let x_2737 : vec2<f32> = u_xlat62;
            let x_2740 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2743 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y) * vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y)) + vec4<f32>(x_2743.w, x_2743.y, x_2743.w, x_2743.z));
            let x_2746 : vec2<f32> = u_xlat62;
            let x_2749 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2752 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y) * vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y)) + vec4<f32>(x_2752.x, x_2752.w, x_2752.z, x_2752.w));
            let x_2755 : vec4<f32> = u_xlat13;
            let x_2757 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_2755.x, x_2755.x, x_2755.x, x_2755.y) * vec4<f32>(x_2757.z, x_2757.w, x_2757.y, x_2757.z));
            let x_2761 : vec4<f32> = u_xlat13;
            let x_2763 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_2761.y, x_2761.y, x_2761.z, x_2761.z) * x_2763);
            let x_2766 : f32 = u_xlat13.z;
            let x_2768 : f32 = u_xlat14.y;
            u_xlat62.x = (x_2766 * x_2768);
            let x_2772 : vec4<f32> = u_xlat17;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
            let x_2775 : f32 = u_xlat12.z;
            txVec34 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec34;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat89 = x_2784;
            let x_2786 : vec4<f32> = u_xlat17;
            let x_2787 : vec2<f32> = vec2<f32>(x_2786.z, x_2786.w);
            let x_2789 : f32 = u_xlat12.z;
            txVec35 = vec3<f32>(x_2787.x, x_2787.y, x_2789);
            let x_2797 : vec3<f32> = txVec35;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat91 = x_2799;
            let x_2800 : f32 = u_xlat91;
            let x_2802 : f32 = u_xlat20.y;
            u_xlat91 = (x_2800 * x_2802);
            let x_2805 : f32 = u_xlat20.x;
            let x_2806 : f32 = u_xlat89;
            let x_2808 : f32 = u_xlat91;
            u_xlat89 = ((x_2805 * x_2806) + x_2808);
            let x_2811 : vec4<f32> = u_xlat18;
            let x_2812 : vec2<f32> = vec2<f32>(x_2811.x, x_2811.y);
            let x_2814 : f32 = u_xlat12.z;
            txVec36 = vec3<f32>(x_2812.x, x_2812.y, x_2814);
            let x_2821 : vec3<f32> = txVec36;
            let x_2823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2821.xy, x_2821.z);
            u_xlat91 = x_2823;
            let x_2825 : f32 = u_xlat20.z;
            let x_2826 : f32 = u_xlat91;
            let x_2828 : f32 = u_xlat89;
            u_xlat89 = ((x_2825 * x_2826) + x_2828);
            let x_2831 : vec4<f32> = u_xlat16;
            let x_2832 : vec2<f32> = vec2<f32>(x_2831.x, x_2831.y);
            let x_2834 : f32 = u_xlat12.z;
            txVec37 = vec3<f32>(x_2832.x, x_2832.y, x_2834);
            let x_2841 : vec3<f32> = txVec37;
            let x_2843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2841.xy, x_2841.z);
            u_xlat91 = x_2843;
            let x_2845 : f32 = u_xlat20.w;
            let x_2846 : f32 = u_xlat91;
            let x_2848 : f32 = u_xlat89;
            u_xlat89 = ((x_2845 * x_2846) + x_2848);
            let x_2851 : vec4<f32> = u_xlat19;
            let x_2852 : vec2<f32> = vec2<f32>(x_2851.x, x_2851.y);
            let x_2854 : f32 = u_xlat12.z;
            txVec38 = vec3<f32>(x_2852.x, x_2852.y, x_2854);
            let x_2861 : vec3<f32> = txVec38;
            let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
            u_xlat91 = x_2863;
            let x_2865 : f32 = u_xlat21.x;
            let x_2866 : f32 = u_xlat91;
            let x_2868 : f32 = u_xlat89;
            u_xlat89 = ((x_2865 * x_2866) + x_2868);
            let x_2871 : vec4<f32> = u_xlat19;
            let x_2872 : vec2<f32> = vec2<f32>(x_2871.z, x_2871.w);
            let x_2874 : f32 = u_xlat12.z;
            txVec39 = vec3<f32>(x_2872.x, x_2872.y, x_2874);
            let x_2881 : vec3<f32> = txVec39;
            let x_2883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2881.xy, x_2881.z);
            u_xlat91 = x_2883;
            let x_2885 : f32 = u_xlat21.y;
            let x_2886 : f32 = u_xlat91;
            let x_2888 : f32 = u_xlat89;
            u_xlat89 = ((x_2885 * x_2886) + x_2888);
            let x_2891 : vec4<f32> = u_xlat16;
            let x_2892 : vec2<f32> = vec2<f32>(x_2891.z, x_2891.w);
            let x_2894 : f32 = u_xlat12.z;
            txVec40 = vec3<f32>(x_2892.x, x_2892.y, x_2894);
            let x_2901 : vec3<f32> = txVec40;
            let x_2903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2901.xy, x_2901.z);
            u_xlat91 = x_2903;
            let x_2905 : f32 = u_xlat21.z;
            let x_2906 : f32 = u_xlat91;
            let x_2908 : f32 = u_xlat89;
            u_xlat89 = ((x_2905 * x_2906) + x_2908);
            let x_2911 : vec4<f32> = u_xlat15;
            let x_2912 : vec2<f32> = vec2<f32>(x_2911.x, x_2911.y);
            let x_2914 : f32 = u_xlat12.z;
            txVec41 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
            let x_2921 : vec3<f32> = txVec41;
            let x_2923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
            u_xlat91 = x_2923;
            let x_2925 : f32 = u_xlat21.w;
            let x_2926 : f32 = u_xlat91;
            let x_2928 : f32 = u_xlat89;
            u_xlat89 = ((x_2925 * x_2926) + x_2928);
            let x_2931 : vec4<f32> = u_xlat15;
            let x_2932 : vec2<f32> = vec2<f32>(x_2931.z, x_2931.w);
            let x_2934 : f32 = u_xlat12.z;
            txVec42 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
            let x_2941 : vec3<f32> = txVec42;
            let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
            u_xlat91 = x_2943;
            let x_2945 : f32 = u_xlat62.x;
            let x_2946 : f32 = u_xlat91;
            let x_2948 : f32 = u_xlat89;
            u_xlat88 = ((x_2945 * x_2946) + x_2948);
          } else {
            let x_2951 : vec4<f32> = u_xlat12;
            let x_2954 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2954.z, x_2954.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2958 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_2958);
            let x_2960 : vec4<f32> = u_xlat12;
            let x_2963 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_2966 : vec2<f32> = u_xlat62;
            let x_2968 : vec2<f32> = ((vec2<f32>(x_2960.x, x_2960.y) * vec2<f32>(x_2963.z, x_2963.w)) + -(x_2966));
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2968.x, x_2968.y, x_2969.z, x_2969.w);
            let x_2971 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2971.x, x_2971.x, x_2971.y, x_2971.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2974 : vec4<f32> = u_xlat14;
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2974.x, x_2974.x, x_2974.z, x_2974.z) * vec4<f32>(x_2976.x, x_2976.x, x_2976.z, x_2976.z));
            let x_2979 : vec4<f32> = u_xlat15;
            let x_2981 : vec2<f32> = (vec2<f32>(x_2979.y, x_2979.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2982 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2982.x, x_2981.x, x_2982.z, x_2981.y);
            let x_2984 : vec4<f32> = u_xlat15;
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2984.x, x_2984.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2987.x, x_2987.y)));
            let x_2991 : vec4<f32> = u_xlat13;
            let x_2994 : vec2<f32> = (-(vec2<f32>(x_2991.x, x_2991.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2995 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2994.x, x_2995.y, x_2994.y, x_2995.w);
            let x_2997 : vec4<f32> = u_xlat13;
            let x_2999 : vec2<f32> = min(vec2<f32>(x_2997.x, x_2997.y), vec2<f32>(0.0f, 0.0f));
            let x_3000 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2999.x, x_2999.y, x_3000.z, x_3000.w);
            let x_3002 : vec4<f32> = u_xlat15;
            let x_3005 : vec4<f32> = u_xlat15;
            let x_3008 : vec4<f32> = u_xlat14;
            let x_3010 : vec2<f32> = ((-(vec2<f32>(x_3002.x, x_3002.y)) * vec2<f32>(x_3005.x, x_3005.y)) + vec2<f32>(x_3008.x, x_3008.z));
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3010.x, x_3011.y, x_3010.y, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat13;
            let x_3015 : vec2<f32> = max(vec2<f32>(x_3013.x, x_3013.y), vec2<f32>(0.0f, 0.0f));
            let x_3016 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3015.x, x_3015.y, x_3016.z, x_3016.w);
            let x_3018 : vec4<f32> = u_xlat15;
            let x_3021 : vec4<f32> = u_xlat15;
            let x_3024 : vec4<f32> = u_xlat14;
            let x_3026 : vec2<f32> = ((-(vec2<f32>(x_3018.x, x_3018.y)) * vec2<f32>(x_3021.x, x_3021.y)) + vec2<f32>(x_3024.y, x_3024.w));
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3027.x, x_3026.x, x_3027.z, x_3026.y);
            let x_3029 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3029 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_3033 : f32 = u_xlat14.y;
            u_xlat15.z = (x_3033 * 0.08163200318813323975f);
            let x_3036 : vec2<f32> = u_xlat67;
            let x_3038 : vec2<f32> = (vec2<f32>(x_3036.y, x_3036.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3039 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3038.x, x_3038.y, x_3039.z, x_3039.w);
            let x_3041 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_3041.x, x_3041.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3045 : f32 = u_xlat14.w;
            u_xlat17.z = (x_3045 * 0.08163200318813323975f);
            let x_3049 : f32 = u_xlat17.y;
            u_xlat15.x = x_3049;
            let x_3051 : vec4<f32> = u_xlat13;
            let x_3054 : vec2<f32> = ((vec2<f32>(x_3051.x, x_3051.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3055 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3055.x, x_3054.x, x_3055.z, x_3054.y);
            let x_3057 : vec4<f32> = u_xlat13;
            let x_3060 : vec2<f32> = ((vec2<f32>(x_3057.x, x_3057.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3061 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3060.x, x_3061.y, x_3060.y, x_3061.w);
            let x_3064 : f32 = u_xlat67.x;
            u_xlat14.y = x_3064;
            let x_3067 : f32 = u_xlat16.y;
            u_xlat14.w = x_3067;
            let x_3069 : vec4<f32> = u_xlat14;
            let x_3070 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3069 + x_3070);
            let x_3072 : vec4<f32> = u_xlat13;
            let x_3075 : vec2<f32> = ((vec2<f32>(x_3072.y, x_3072.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3076 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3076.x, x_3075.x, x_3076.z, x_3075.y);
            let x_3078 : vec4<f32> = u_xlat13;
            let x_3081 : vec2<f32> = ((vec2<f32>(x_3078.y, x_3078.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3082 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3081.x, x_3082.y, x_3081.y, x_3082.w);
            let x_3085 : f32 = u_xlat67.y;
            u_xlat16.y = x_3085;
            let x_3087 : vec4<f32> = u_xlat16;
            let x_3088 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3087 + x_3088);
            let x_3090 : vec4<f32> = u_xlat14;
            let x_3091 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_3090 / x_3091);
            let x_3093 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3093 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3095 : vec4<f32> = u_xlat16;
            let x_3096 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_3095 / x_3096);
            let x_3098 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3098 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3100 : vec4<f32> = u_xlat14;
            let x_3103 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3100.w, x_3100.x, x_3100.y, x_3100.z) * vec4<f32>(x_3103.x, x_3103.x, x_3103.x, x_3103.x));
            let x_3106 : vec4<f32> = u_xlat16;
            let x_3109 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_3106.x, x_3106.w, x_3106.y, x_3106.z) * vec4<f32>(x_3109.y, x_3109.y, x_3109.y, x_3109.y));
            let x_3112 : vec4<f32> = u_xlat14;
            let x_3113 : vec3<f32> = vec3<f32>(x_3112.y, x_3112.z, x_3112.w);
            let x_3114 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3113.x, x_3114.y, x_3113.y, x_3113.z);
            let x_3117 : f32 = u_xlat16.x;
            u_xlat17.y = x_3117;
            let x_3119 : vec2<f32> = u_xlat62;
            let x_3122 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3125 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y) * vec4<f32>(x_3122.x, x_3122.y, x_3122.x, x_3122.y)) + vec4<f32>(x_3125.x, x_3125.y, x_3125.z, x_3125.y));
            let x_3128 : vec2<f32> = u_xlat62;
            let x_3130 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3133 : vec4<f32> = u_xlat17;
            let x_3135 : vec2<f32> = ((x_3128 * vec2<f32>(x_3130.x, x_3130.y)) + vec2<f32>(x_3133.w, x_3133.y));
            let x_3136 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
            let x_3139 : f32 = u_xlat17.y;
            u_xlat14.y = x_3139;
            let x_3142 : f32 = u_xlat16.z;
            u_xlat17.y = x_3142;
            let x_3144 : vec2<f32> = u_xlat62;
            let x_3147 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y) * vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.y)) + vec4<f32>(x_3150.x, x_3150.y, x_3150.z, x_3150.y));
            let x_3154 : vec2<f32> = u_xlat62;
            let x_3156 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_3154 * vec2<f32>(x_3156.x, x_3156.y)) + vec2<f32>(x_3159.w, x_3159.y));
            let x_3163 : f32 = u_xlat17.y;
            u_xlat14.z = x_3163;
            let x_3165 : vec2<f32> = u_xlat62;
            let x_3168 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3171 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3165.x, x_3165.y, x_3165.x, x_3165.y) * vec4<f32>(x_3168.x, x_3168.y, x_3168.x, x_3168.y)) + vec4<f32>(x_3171.x, x_3171.y, x_3171.x, x_3171.z));
            let x_3175 : f32 = u_xlat16.w;
            u_xlat17.y = x_3175;
            let x_3178 : vec2<f32> = u_xlat62;
            let x_3181 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3184 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3178.x, x_3178.y, x_3178.x, x_3178.y) * vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.y)) + vec4<f32>(x_3184.x, x_3184.y, x_3184.z, x_3184.y));
            let x_3188 : vec2<f32> = u_xlat62;
            let x_3190 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_3188 * vec2<f32>(x_3190.x, x_3190.y)) + vec2<f32>(x_3193.w, x_3193.y));
            let x_3197 : f32 = u_xlat17.y;
            u_xlat14.w = x_3197;
            let x_3200 : vec2<f32> = u_xlat62;
            let x_3202 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3205 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_3200 * vec2<f32>(x_3202.x, x_3202.y)) + vec2<f32>(x_3205.x, x_3205.w));
            let x_3208 : vec4<f32> = u_xlat17;
            let x_3209 : vec3<f32> = vec3<f32>(x_3208.x, x_3208.z, x_3208.w);
            let x_3210 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3209.x, x_3210.y, x_3209.y, x_3209.z);
            let x_3212 : vec2<f32> = u_xlat62;
            let x_3215 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3218 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3212.x, x_3212.y, x_3212.x, x_3212.y) * vec4<f32>(x_3215.x, x_3215.y, x_3215.x, x_3215.y)) + vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3218.y));
            let x_3222 : vec2<f32> = u_xlat62;
            let x_3224 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3222 * vec2<f32>(x_3224.x, x_3224.y)) + vec2<f32>(x_3227.w, x_3227.y));
            let x_3231 : f32 = u_xlat14.x;
            u_xlat16.x = x_3231;
            let x_3233 : vec2<f32> = u_xlat62;
            let x_3235 : vec4<f32> = x_464.x_AdditionalShadowmapSize;
            let x_3238 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_3233 * vec2<f32>(x_3235.x, x_3235.y)) + vec2<f32>(x_3238.x, x_3238.y));
            let x_3242 : vec4<f32> = u_xlat13;
            let x_3244 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3242.x, x_3242.x, x_3242.x, x_3242.x) * x_3244);
            let x_3247 : vec4<f32> = u_xlat13;
            let x_3249 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_3247.y, x_3247.y, x_3247.y, x_3247.y) * x_3249);
            let x_3252 : vec4<f32> = u_xlat13;
            let x_3254 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_3252.z, x_3252.z, x_3252.z, x_3252.z) * x_3254);
            let x_3256 : vec4<f32> = u_xlat13;
            let x_3258 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_3256.w, x_3256.w, x_3256.w, x_3256.w) * x_3258);
            let x_3261 : vec4<f32> = u_xlat18;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat12.z;
            txVec43 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec43;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat91 = x_3273;
            let x_3275 : vec4<f32> = u_xlat18;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.z, x_3275.w);
            let x_3278 : f32 = u_xlat12.z;
            txVec44 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3286 : vec3<f32> = txVec44;
            let x_3288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
            u_xlat92 = x_3288;
            let x_3289 : f32 = u_xlat92;
            let x_3291 : f32 = u_xlat24.y;
            u_xlat92 = (x_3289 * x_3291);
            let x_3294 : f32 = u_xlat24.x;
            let x_3295 : f32 = u_xlat91;
            let x_3297 : f32 = u_xlat92;
            u_xlat91 = ((x_3294 * x_3295) + x_3297);
            let x_3300 : vec4<f32> = u_xlat19;
            let x_3301 : vec2<f32> = vec2<f32>(x_3300.x, x_3300.y);
            let x_3303 : f32 = u_xlat12.z;
            txVec45 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec45;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat92 = x_3312;
            let x_3314 : f32 = u_xlat24.z;
            let x_3315 : f32 = u_xlat92;
            let x_3317 : f32 = u_xlat91;
            u_xlat91 = ((x_3314 * x_3315) + x_3317);
            let x_3320 : vec4<f32> = u_xlat21;
            let x_3321 : vec2<f32> = vec2<f32>(x_3320.x, x_3320.y);
            let x_3323 : f32 = u_xlat12.z;
            txVec46 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
            let x_3330 : vec3<f32> = txVec46;
            let x_3332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
            u_xlat92 = x_3332;
            let x_3334 : f32 = u_xlat24.w;
            let x_3335 : f32 = u_xlat92;
            let x_3337 : f32 = u_xlat91;
            u_xlat91 = ((x_3334 * x_3335) + x_3337);
            let x_3340 : vec4<f32> = u_xlat20;
            let x_3341 : vec2<f32> = vec2<f32>(x_3340.x, x_3340.y);
            let x_3343 : f32 = u_xlat12.z;
            txVec47 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec47;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat92 = x_3352;
            let x_3354 : f32 = u_xlat25.x;
            let x_3355 : f32 = u_xlat92;
            let x_3357 : f32 = u_xlat91;
            u_xlat91 = ((x_3354 * x_3355) + x_3357);
            let x_3360 : vec4<f32> = u_xlat20;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.z, x_3360.w);
            let x_3363 : f32 = u_xlat12.z;
            txVec48 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec48;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat92 = x_3372;
            let x_3374 : f32 = u_xlat25.y;
            let x_3375 : f32 = u_xlat92;
            let x_3377 : f32 = u_xlat91;
            u_xlat91 = ((x_3374 * x_3375) + x_3377);
            let x_3380 : vec2<f32> = u_xlat73;
            let x_3382 : f32 = u_xlat12.z;
            txVec49 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec49;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat92 = x_3391;
            let x_3393 : f32 = u_xlat25.z;
            let x_3394 : f32 = u_xlat92;
            let x_3396 : f32 = u_xlat91;
            u_xlat91 = ((x_3393 * x_3394) + x_3396);
            let x_3399 : vec4<f32> = u_xlat21;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.z, x_3399.w);
            let x_3402 : f32 = u_xlat12.z;
            txVec50 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec50;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat92 = x_3411;
            let x_3413 : f32 = u_xlat25.w;
            let x_3414 : f32 = u_xlat92;
            let x_3416 : f32 = u_xlat91;
            u_xlat91 = ((x_3413 * x_3414) + x_3416);
            let x_3419 : vec4<f32> = u_xlat22;
            let x_3420 : vec2<f32> = vec2<f32>(x_3419.x, x_3419.y);
            let x_3422 : f32 = u_xlat12.z;
            txVec51 = vec3<f32>(x_3420.x, x_3420.y, x_3422);
            let x_3429 : vec3<f32> = txVec51;
            let x_3431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3429.xy, x_3429.z);
            u_xlat92 = x_3431;
            let x_3433 : f32 = u_xlat26.x;
            let x_3434 : f32 = u_xlat92;
            let x_3436 : f32 = u_xlat91;
            u_xlat91 = ((x_3433 * x_3434) + x_3436);
            let x_3439 : vec4<f32> = u_xlat22;
            let x_3440 : vec2<f32> = vec2<f32>(x_3439.z, x_3439.w);
            let x_3442 : f32 = u_xlat12.z;
            txVec52 = vec3<f32>(x_3440.x, x_3440.y, x_3442);
            let x_3449 : vec3<f32> = txVec52;
            let x_3451 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3449.xy, x_3449.z);
            u_xlat92 = x_3451;
            let x_3453 : f32 = u_xlat26.y;
            let x_3454 : f32 = u_xlat92;
            let x_3456 : f32 = u_xlat91;
            u_xlat91 = ((x_3453 * x_3454) + x_3456);
            let x_3459 : vec2<f32> = u_xlat41;
            let x_3461 : f32 = u_xlat12.z;
            txVec53 = vec3<f32>(x_3459.x, x_3459.y, x_3461);
            let x_3468 : vec3<f32> = txVec53;
            let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
            u_xlat92 = x_3470;
            let x_3472 : f32 = u_xlat26.z;
            let x_3473 : f32 = u_xlat92;
            let x_3475 : f32 = u_xlat91;
            u_xlat91 = ((x_3472 * x_3473) + x_3475);
            let x_3478 : vec2<f32> = u_xlat23;
            let x_3480 : f32 = u_xlat12.z;
            txVec54 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec54;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat92 = x_3489;
            let x_3491 : f32 = u_xlat26.w;
            let x_3492 : f32 = u_xlat92;
            let x_3494 : f32 = u_xlat91;
            u_xlat91 = ((x_3491 * x_3492) + x_3494);
            let x_3497 : vec4<f32> = u_xlat17;
            let x_3498 : vec2<f32> = vec2<f32>(x_3497.x, x_3497.y);
            let x_3500 : f32 = u_xlat12.z;
            txVec55 = vec3<f32>(x_3498.x, x_3498.y, x_3500);
            let x_3507 : vec3<f32> = txVec55;
            let x_3509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3507.xy, x_3507.z);
            u_xlat92 = x_3509;
            let x_3511 : f32 = u_xlat13.x;
            let x_3512 : f32 = u_xlat92;
            let x_3514 : f32 = u_xlat91;
            u_xlat91 = ((x_3511 * x_3512) + x_3514);
            let x_3517 : vec4<f32> = u_xlat17;
            let x_3518 : vec2<f32> = vec2<f32>(x_3517.z, x_3517.w);
            let x_3520 : f32 = u_xlat12.z;
            txVec56 = vec3<f32>(x_3518.x, x_3518.y, x_3520);
            let x_3527 : vec3<f32> = txVec56;
            let x_3529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3527.xy, x_3527.z);
            u_xlat92 = x_3529;
            let x_3531 : f32 = u_xlat13.y;
            let x_3532 : f32 = u_xlat92;
            let x_3534 : f32 = u_xlat91;
            u_xlat91 = ((x_3531 * x_3532) + x_3534);
            let x_3537 : vec2<f32> = u_xlat70;
            let x_3539 : f32 = u_xlat12.z;
            txVec57 = vec3<f32>(x_3537.x, x_3537.y, x_3539);
            let x_3546 : vec3<f32> = txVec57;
            let x_3548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3546.xy, x_3546.z);
            u_xlat92 = x_3548;
            let x_3550 : f32 = u_xlat13.z;
            let x_3551 : f32 = u_xlat92;
            let x_3553 : f32 = u_xlat91;
            u_xlat91 = ((x_3550 * x_3551) + x_3553);
            let x_3556 : vec2<f32> = u_xlat62;
            let x_3558 : f32 = u_xlat12.z;
            txVec58 = vec3<f32>(x_3556.x, x_3556.y, x_3558);
            let x_3565 : vec3<f32> = txVec58;
            let x_3567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3565.xy, x_3565.z);
            u_xlat62.x = x_3567;
            let x_3570 : f32 = u_xlat13.w;
            let x_3572 : f32 = u_xlat62.x;
            let x_3574 : f32 = u_xlat91;
            u_xlat88 = ((x_3570 * x_3572) + x_3574);
          }
        }
      } else {
        let x_3578 : vec4<f32> = u_xlat12;
        let x_3579 : vec2<f32> = vec2<f32>(x_3578.x, x_3578.y);
        let x_3581 : f32 = u_xlat12.z;
        txVec59 = vec3<f32>(x_3579.x, x_3579.y, x_3581);
        let x_3588 : vec3<f32> = txVec59;
        let x_3590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3588.xy, x_3588.z);
        u_xlat88 = x_3590;
      }
      let x_3591 : i32 = u_xlati85;
      let x_3593 : f32 = x_464.x_AdditionalShadowParams[x_3591].x;
      u_xlat62.x = (1.0f + -(x_3593));
      let x_3597 : f32 = u_xlat88;
      let x_3598 : i32 = u_xlati85;
      let x_3600 : f32 = x_464.x_AdditionalShadowParams[x_3598].x;
      let x_3603 : f32 = u_xlat62.x;
      u_xlat88 = ((x_3597 * x_3600) + x_3603);
      let x_3606 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_3606);
      let x_3610 : f32 = u_xlat12.z;
      u_xlatb89 = (x_3610 >= 1.0f);
      let x_3612 : bool = u_xlatb89;
      let x_3613 : bool = u_xlatb62;
      u_xlatb62 = (x_3612 | x_3613);
      let x_3615 : bool = u_xlatb62;
      let x_3616 : f32 = u_xlat88;
      u_xlat88 = select(x_3616, 1.0f, x_3615);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3619 : f32 = u_xlat88;
    u_xlat62.x = (-(x_3619) + 1.0f);
    let x_3623 : f32 = u_xlat83;
    let x_3625 : f32 = u_xlat62.x;
    let x_3627 : f32 = u_xlat88;
    u_xlat88 = ((x_3623 * x_3625) + x_3627);
    let x_3630 : i32 = u_xlati85;
    u_xlati62 = (1i << bitcast<u32>((x_3630 & 31i)));
    let x_3634 : i32 = u_xlati62;
    let x_3637 : f32 = x_1755.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_3634) & bitcast<u32>(x_3637)));
    let x_3641 : i32 = u_xlati62;
    if ((x_3641 != 0i)) {
      let x_3645 : i32 = u_xlati85;
      let x_3647 : f32 = x_1755.x_AdditionalLightsLightTypes[x_3645].el;
      u_xlati62 = i32(x_3647);
      let x_3650 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_3650 != 0i));
      let x_3654 : i32 = u_xlati85;
      u_xlati91 = (x_3654 << bitcast<u32>(2i));
      let x_3656 : i32 = u_xlati89;
      if ((x_3656 != 0i)) {
        let x_3660 : vec3<f32> = vs_INTERP7;
        let x_3662 : i32 = u_xlati91;
        let x_3665 : i32 = u_xlati91;
        let x_3669 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3662 + 1i) / 4i)][((x_3665 + 1i) % 4i)];
        let x_3671 : vec3<f32> = (vec3<f32>(x_3660.y, x_3660.y, x_3660.y) * vec3<f32>(x_3669.x, x_3669.y, x_3669.w));
        let x_3672 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3671.x, x_3671.y, x_3671.z, x_3672.w);
        let x_3674 : i32 = u_xlati91;
        let x_3676 : i32 = u_xlati91;
        let x_3679 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[(x_3674 / 4i)][(x_3676 % 4i)];
        let x_3681 : vec3<f32> = vs_INTERP7;
        let x_3684 : vec4<f32> = u_xlat12;
        let x_3686 : vec3<f32> = ((vec3<f32>(x_3679.x, x_3679.y, x_3679.w) * vec3<f32>(x_3681.x, x_3681.x, x_3681.x)) + vec3<f32>(x_3684.x, x_3684.y, x_3684.z));
        let x_3687 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3686.x, x_3686.y, x_3686.z, x_3687.w);
        let x_3689 : i32 = u_xlati91;
        let x_3692 : i32 = u_xlati91;
        let x_3696 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3689 + 2i) / 4i)][((x_3692 + 2i) % 4i)];
        let x_3698 : vec3<f32> = vs_INTERP7;
        let x_3701 : vec4<f32> = u_xlat12;
        let x_3703 : vec3<f32> = ((vec3<f32>(x_3696.x, x_3696.y, x_3696.w) * vec3<f32>(x_3698.z, x_3698.z, x_3698.z)) + vec3<f32>(x_3701.x, x_3701.y, x_3701.z));
        let x_3704 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3703.x, x_3703.y, x_3703.z, x_3704.w);
        let x_3706 : vec4<f32> = u_xlat12;
        let x_3708 : i32 = u_xlati91;
        let x_3711 : i32 = u_xlati91;
        let x_3715 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3708 + 3i) / 4i)][((x_3711 + 3i) % 4i)];
        let x_3717 : vec3<f32> = (vec3<f32>(x_3706.x, x_3706.y, x_3706.z) + vec3<f32>(x_3715.x, x_3715.y, x_3715.w));
        let x_3718 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3717.x, x_3717.y, x_3717.z, x_3718.w);
        let x_3720 : vec4<f32> = u_xlat12;
        let x_3722 : vec4<f32> = u_xlat12;
        let x_3724 : vec2<f32> = (vec2<f32>(x_3720.x, x_3720.y) / vec2<f32>(x_3722.z, x_3722.z));
        let x_3725 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3724.x, x_3724.y, x_3725.z, x_3725.w);
        let x_3727 : vec4<f32> = u_xlat12;
        let x_3730 : vec2<f32> = ((vec2<f32>(x_3727.x, x_3727.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3731 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3730.x, x_3730.y, x_3731.z, x_3731.w);
        let x_3733 : vec4<f32> = u_xlat12;
        let x_3737 : vec2<f32> = clamp(vec2<f32>(x_3733.x, x_3733.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3738 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3737.x, x_3737.y, x_3738.z, x_3738.w);
        let x_3740 : i32 = u_xlati85;
        let x_3742 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3740];
        let x_3744 : vec4<f32> = u_xlat12;
        let x_3747 : i32 = u_xlati85;
        let x_3749 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3747];
        let x_3751 : vec2<f32> = ((vec2<f32>(x_3742.x, x_3742.y) * vec2<f32>(x_3744.x, x_3744.y)) + vec2<f32>(x_3749.z, x_3749.w));
        let x_3752 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3751.x, x_3751.y, x_3752.z, x_3752.w);
      } else {
        let x_3755 : i32 = u_xlati62;
        u_xlatb62 = (x_3755 == 1i);
        let x_3757 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_3757);
        let x_3759 : i32 = u_xlati62;
        if ((x_3759 != 0i)) {
          let x_3763 : vec3<f32> = vs_INTERP7;
          let x_3765 : i32 = u_xlati91;
          let x_3768 : i32 = u_xlati91;
          let x_3772 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3765 + 1i) / 4i)][((x_3768 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_3763.y, x_3763.y) * vec2<f32>(x_3772.x, x_3772.y));
          let x_3775 : i32 = u_xlati91;
          let x_3777 : i32 = u_xlati91;
          let x_3780 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[(x_3775 / 4i)][(x_3777 % 4i)];
          let x_3782 : vec3<f32> = vs_INTERP7;
          let x_3785 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_3780.x, x_3780.y) * vec2<f32>(x_3782.x, x_3782.x)) + x_3785);
          let x_3787 : i32 = u_xlati91;
          let x_3790 : i32 = u_xlati91;
          let x_3794 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3787 + 2i) / 4i)][((x_3790 + 2i) % 4i)];
          let x_3796 : vec3<f32> = vs_INTERP7;
          let x_3799 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_3794.x, x_3794.y) * vec2<f32>(x_3796.z, x_3796.z)) + x_3799);
          let x_3801 : vec2<f32> = u_xlat62;
          let x_3802 : i32 = u_xlati91;
          let x_3805 : i32 = u_xlati91;
          let x_3809 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3802 + 3i) / 4i)][((x_3805 + 3i) % 4i)];
          u_xlat62 = (x_3801 + vec2<f32>(x_3809.x, x_3809.y));
          let x_3812 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_3812 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3815 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_3815);
          let x_3817 : i32 = u_xlati85;
          let x_3819 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3817];
          let x_3821 : vec2<f32> = u_xlat62;
          let x_3823 : i32 = u_xlati85;
          let x_3825 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3823];
          let x_3827 : vec2<f32> = ((vec2<f32>(x_3819.x, x_3819.y) * x_3821) + vec2<f32>(x_3825.z, x_3825.w));
          let x_3828 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3827.x, x_3827.y, x_3828.z, x_3828.w);
        } else {
          let x_3831 : vec3<f32> = vs_INTERP7;
          let x_3833 : i32 = u_xlati91;
          let x_3836 : i32 = u_xlati91;
          let x_3840 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3833 + 1i) / 4i)][((x_3836 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_3831.y, x_3831.y, x_3831.y, x_3831.y) * x_3840);
          let x_3842 : i32 = u_xlati91;
          let x_3844 : i32 = u_xlati91;
          let x_3847 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[(x_3842 / 4i)][(x_3844 % 4i)];
          let x_3848 : vec3<f32> = vs_INTERP7;
          let x_3851 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3847 * vec4<f32>(x_3848.x, x_3848.x, x_3848.x, x_3848.x)) + x_3851);
          let x_3853 : i32 = u_xlati91;
          let x_3856 : i32 = u_xlati91;
          let x_3860 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3853 + 2i) / 4i)][((x_3856 + 2i) % 4i)];
          let x_3861 : vec3<f32> = vs_INTERP7;
          let x_3864 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3860 * vec4<f32>(x_3861.z, x_3861.z, x_3861.z, x_3861.z)) + x_3864);
          let x_3866 : vec4<f32> = u_xlat13;
          let x_3867 : i32 = u_xlati91;
          let x_3870 : i32 = u_xlati91;
          let x_3874 : vec4<f32> = x_1755.x_AdditionalLightsWorldToLights[((x_3867 + 3i) / 4i)][((x_3870 + 3i) % 4i)];
          u_xlat13 = (x_3866 + x_3874);
          let x_3876 : vec4<f32> = u_xlat13;
          let x_3878 : vec4<f32> = u_xlat13;
          let x_3880 : vec3<f32> = (vec3<f32>(x_3876.x, x_3876.y, x_3876.z) / vec3<f32>(x_3878.w, x_3878.w, x_3878.w));
          let x_3881 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3880.x, x_3880.y, x_3880.z, x_3881.w);
          let x_3883 : vec4<f32> = u_xlat13;
          let x_3885 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_3883.x, x_3883.y, x_3883.z), vec3<f32>(x_3885.x, x_3885.y, x_3885.z));
          let x_3890 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_3890);
          let x_3893 : vec2<f32> = u_xlat62;
          let x_3895 : vec4<f32> = u_xlat13;
          let x_3897 : vec3<f32> = (vec3<f32>(x_3893.x, x_3893.x, x_3893.x) * vec3<f32>(x_3895.x, x_3895.y, x_3895.z));
          let x_3898 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3897.x, x_3897.y, x_3897.z, x_3898.w);
          let x_3900 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_3900.x, x_3900.y, x_3900.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3907 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_3907, 0.00000099999999747524f);
          let x_3912 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_3912);
          let x_3915 : vec2<f32> = u_xlat62;
          let x_3917 : vec4<f32> = u_xlat13;
          let x_3919 : vec3<f32> = (vec3<f32>(x_3915.x, x_3915.x, x_3915.x) * vec3<f32>(x_3917.z, x_3917.x, x_3917.y));
          let x_3920 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_3919.x, x_3919.y, x_3919.z, x_3920.w);
          let x_3923 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_3923);
          let x_3927 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_3927, 0.0f, 1.0f);
          let x_3931 : vec4<f32> = u_xlat14;
          let x_3933 : vec4<bool> = (vec4<f32>(x_3931.y, x_3931.z, x_3931.y, x_3931.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_3933.x, x_3933.y);
          let x_3937 : bool = u_xlatb66.x;
          if (x_3937) {
            let x_3942 : f32 = u_xlat14.x;
            x_3938 = x_3942;
          } else {
            let x_3945 : f32 = u_xlat14.x;
            x_3938 = -(x_3945);
          }
          let x_3947 : f32 = x_3938;
          u_xlat66.x = x_3947;
          let x_3950 : bool = u_xlatb66.y;
          if (x_3950) {
            let x_3955 : f32 = u_xlat14.x;
            x_3951 = x_3955;
          } else {
            let x_3958 : f32 = u_xlat14.x;
            x_3951 = -(x_3958);
          }
          let x_3960 : f32 = x_3951;
          u_xlat66.y = x_3960;
          let x_3962 : vec4<f32> = u_xlat13;
          let x_3964 : vec2<f32> = u_xlat62;
          let x_3967 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_3962.x, x_3962.y) * vec2<f32>(x_3964.x, x_3964.x)) + x_3967);
          let x_3969 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_3969 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3972 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_3972, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3976 : i32 = u_xlati85;
          let x_3978 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3976];
          let x_3980 : vec2<f32> = u_xlat62;
          let x_3982 : i32 = u_xlati85;
          let x_3984 : vec4<f32> = x_1755.x_AdditionalLightsCookieAtlasUVRects[x_3982];
          let x_3986 : vec2<f32> = ((vec2<f32>(x_3978.x, x_3978.y) * x_3980) + vec2<f32>(x_3984.z, x_3984.w));
          let x_3987 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3986.x, x_3986.y, x_3987.z, x_3987.w);
        }
      }
      let x_3994 : vec4<f32> = u_xlat12;
      let x_3996 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3994.x, x_3994.y), 0.0f);
      u_xlat12 = x_3996;
      let x_3998 : bool = u_xlatb8.y;
      if (x_3998) {
        let x_4003 : f32 = u_xlat12.w;
        x_3999 = x_4003;
      } else {
        let x_4006 : f32 = u_xlat12.x;
        x_3999 = x_4006;
      }
      let x_4007 : f32 = x_3999;
      u_xlat62.x = x_4007;
      let x_4010 : bool = u_xlatb8.x;
      if (x_4010) {
        let x_4014 : vec4<f32> = u_xlat12;
        x_4011 = vec3<f32>(x_4014.x, x_4014.y, x_4014.z);
      } else {
        let x_4017 : vec2<f32> = u_xlat62;
        x_4011 = vec3<f32>(x_4017.x, x_4017.x, x_4017.x);
      }
      let x_4019 : vec3<f32> = x_4011;
      let x_4020 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_4019.x, x_4019.y, x_4019.z, x_4020.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_4026 : vec4<f32> = u_xlat12;
    let x_4028 : i32 = u_xlati85;
    let x_4030 : vec4<f32> = x_2197.x_AdditionalLightsColor[x_4028];
    let x_4032 : vec3<f32> = (vec3<f32>(x_4026.x, x_4026.y, x_4026.z) * vec3<f32>(x_4030.x, x_4030.y, x_4030.z));
    let x_4033 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_4032.x, x_4032.y, x_4032.z, x_4033.w);
    let x_4035 : f32 = u_xlat86;
    let x_4036 : f32 = u_xlat88;
    u_xlat85 = (x_4035 * x_4036);
    let x_4038 : vec4<f32> = u_xlat4;
    let x_4040 : vec4<f32> = u_xlat11;
    u_xlat86 = dot(vec3<f32>(x_4038.x, x_4038.y, x_4038.z), vec3<f32>(x_4040.x, x_4040.y, x_4040.z));
    let x_4043 : f32 = u_xlat86;
    u_xlat86 = clamp(x_4043, 0.0f, 1.0f);
    let x_4045 : f32 = u_xlat85;
    let x_4046 : f32 = u_xlat86;
    u_xlat85 = (x_4045 * x_4046);
    let x_4048 : f32 = u_xlat85;
    let x_4050 : vec4<f32> = u_xlat12;
    let x_4052 : vec3<f32> = (vec3<f32>(x_4048, x_4048, x_4048) * vec3<f32>(x_4050.x, x_4050.y, x_4050.z));
    let x_4053 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_4052.x, x_4052.y, x_4052.z, x_4053.w);
    let x_4055 : vec4<f32> = u_xlat10;
    let x_4057 : f32 = u_xlat87;
    let x_4060 : vec3<f32> = u_xlat5;
    let x_4061 : vec3<f32> = ((vec3<f32>(x_4055.x, x_4055.y, x_4055.z) * vec3<f32>(x_4057, x_4057, x_4057)) + x_4060);
    let x_4062 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4061.x, x_4061.y, x_4061.z, x_4062.w);
    let x_4064 : vec4<f32> = u_xlat10;
    let x_4066 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_4064.x, x_4064.y, x_4064.z), vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
    let x_4069 : f32 = u_xlat85;
    u_xlat85 = max(x_4069, 1.17549435e-38f);
    let x_4071 : f32 = u_xlat85;
    u_xlat85 = inverseSqrt(x_4071);
    let x_4073 : f32 = u_xlat85;
    let x_4075 : vec4<f32> = u_xlat10;
    let x_4077 : vec3<f32> = (vec3<f32>(x_4073, x_4073, x_4073) * vec3<f32>(x_4075.x, x_4075.y, x_4075.z));
    let x_4078 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4077.x, x_4077.y, x_4077.z, x_4078.w);
    let x_4080 : vec4<f32> = u_xlat4;
    let x_4082 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_4080.x, x_4080.y, x_4080.z), vec3<f32>(x_4082.x, x_4082.y, x_4082.z));
    let x_4085 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4085, 0.0f, 1.0f);
    let x_4087 : vec4<f32> = u_xlat11;
    let x_4089 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_4087.x, x_4087.y, x_4087.z), vec3<f32>(x_4089.x, x_4089.y, x_4089.z));
    let x_4092 : f32 = u_xlat86;
    u_xlat86 = clamp(x_4092, 0.0f, 1.0f);
    let x_4094 : f32 = u_xlat85;
    let x_4095 : f32 = u_xlat85;
    u_xlat85 = (x_4094 * x_4095);
    let x_4097 : f32 = u_xlat85;
    let x_4099 : f32 = u_xlat9.x;
    u_xlat85 = ((x_4097 * x_4099) + 1.00001001358032226562f);
    let x_4102 : f32 = u_xlat86;
    let x_4103 : f32 = u_xlat86;
    u_xlat86 = (x_4102 * x_4103);
    let x_4105 : f32 = u_xlat85;
    let x_4106 : f32 = u_xlat85;
    u_xlat85 = (x_4105 * x_4106);
    let x_4108 : f32 = u_xlat86;
    u_xlat86 = max(x_4108, 0.10000000149011611938f);
    let x_4110 : f32 = u_xlat85;
    let x_4111 : f32 = u_xlat86;
    u_xlat85 = (x_4110 * x_4111);
    let x_4113 : f32 = u_xlat84;
    let x_4114 : f32 = u_xlat85;
    u_xlat85 = (x_4113 * x_4114);
    let x_4116 : f32 = u_xlat30;
    let x_4117 : f32 = u_xlat85;
    u_xlat85 = (x_4116 / x_4117);
    let x_4119 : vec3<f32> = u_xlat0;
    let x_4120 : f32 = u_xlat85;
    let x_4123 : vec3<f32> = u_xlat6;
    let x_4124 : vec3<f32> = ((x_4119 * vec3<f32>(x_4120, x_4120, x_4120)) + x_4123);
    let x_4125 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4124.x, x_4124.y, x_4124.z, x_4125.w);
    let x_4127 : vec4<f32> = u_xlat10;
    let x_4129 : vec4<f32> = u_xlat12;
    let x_4132 : vec3<f32> = u_xlat36;
    u_xlat36 = ((vec3<f32>(x_4127.x, x_4127.y, x_4127.z) * vec3<f32>(x_4129.x, x_4129.y, x_4129.z)) + x_4132);

    continuing {
      let x_4134 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4134 + bitcast<u32>(1i));
    }
  }
  let x_4136 : vec4<f32> = u_xlat1;
  let x_4138 : f32 = u_xlat57;
  let x_4141 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4136.x, x_4136.y, x_4136.w) * vec3<f32>(x_4138, x_4138, x_4138)) + vec3<f32>(x_4141.x, x_4141.y, x_4141.z));
  let x_4144 : vec3<f32> = u_xlat36;
  let x_4145 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_4144 + x_4145);
  let x_4149 : vec3<f32> = u_xlat2;
  let x_4150 : f32 = u_xlat55;
  let x_4153 : vec3<f32> = u_xlat0;
  let x_4154 : vec3<f32> = ((x_4149 * vec3<f32>(x_4150, x_4150, x_4150)) + x_4153);
  let x_4155 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4154.x, x_4154.y, x_4154.z, x_4155.w);
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


