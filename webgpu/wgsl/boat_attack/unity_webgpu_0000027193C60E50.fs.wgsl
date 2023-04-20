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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
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

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat55 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

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

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat57 : f32;

var<private> u_xlatb86 : bool;

@group(1) @binding(3) var<uniform> x_483 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat86 : f32;

var<private> u_xlatb87 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat36 : vec3<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb7 : bool;

@group(1) @binding(4) var<uniform> x_1805 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat89 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu83 : u32;

var<private> u_xlatu86 : u32;

var<private> u_xlati87 : i32;

var<private> u_xlati86 : i32;

@group(1) @binding(1) var<uniform> x_2272 : AdditionalLights;

var<private> u_xlat62 : f32;

var<private> u_xlati62 : i32;

var<private> u_xlatb89 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat91 : f32;

var<private> u_xlatb62 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat92 : f32;

var<private> u_xlat41 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat75 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlatb91 : bool;

var<private> u_xlati89 : i32;

var<private> u_xlati91 : i32;

var<private> u_xlati92 : i32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlatb66 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu84 : u32;

fn main_1() {
  var x_279 : vec3<f32>;
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
  var x_1891 : f32;
  var x_1902 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2410 : f32;
  var x_2419 : f32;
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
  var x_3995 : f32;
  var x_4008 : f32;
  var x_4056 : f32;
  var x_4067 : vec3<f32>;
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
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat55 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat55;
  u_xlat55 = sqrt(x_117);
  let x_119 : f32 = u_xlat55;
  u_xlat55 = fract(x_119);
  let x_121 : f32 = u_xlat55;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat55 = (x_121 + x_124);
  let x_129 : f32 = u_xlat55;
  u_xlatb55 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb55;
  u_xlat55 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb82 = (0.0f < x_151);
  let x_154 : bool = u_xlatb82;
  u_xlat82 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb83 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb83;
  u_xlat83 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat82;
  let x_164 : f32 = u_xlat83;
  u_xlat82 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  let x_173 : vec3<f32> = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec3<f32> = vs_INTERP8;
  let x_178 : vec4<f32> = vs_INTERP4;
  let x_181 : vec4<f32> = u_xlat4;
  let x_184 : vec3<f32> = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.z, x_178.x, x_178.y)) + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : f32 = u_xlat82;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = vs_INTERP4;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat81;
  let x_213 : vec3<f32> = vs_INTERP8;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat81 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat81;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_237 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb81 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP7;
  let x_245 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_246 : vec3<f32> = (-(x_240) + x_245);
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_246.z);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat83 = dot(vec3<f32>(x_249.x, x_249.y, x_249.w), vec3<f32>(x_251.x, x_251.y, x_251.w));
  let x_254 : f32 = u_xlat83;
  u_xlat83 = inverseSqrt(x_254);
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : f32 = u_xlat83;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.w) * vec3<f32>(x_258, x_258, x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_266 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_266;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_270;
  let x_275 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_275;
  let x_277 : bool = u_xlatb81;
  if (x_277) {
    let x_282 : vec4<f32> = u_xlat1;
    x_279 = vec3<f32>(x_282.x, x_282.y, x_282.w);
  } else {
    let x_285 : vec3<f32> = u_xlat5;
    x_279 = x_285;
  }
  let x_286 : vec3<f32> = x_279;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_286.z);
  let x_290 : f32 = vs_INTERP7.y;
  let x_292 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat81 = (x_290 * x_292);
  let x_295 : f32 = x_29.unity_MatrixV[0i].z;
  let x_297 : f32 = vs_INTERP7.x;
  let x_299 : f32 = u_xlat81;
  u_xlat81 = ((x_295 * x_297) + x_299);
  let x_302 : f32 = x_29.unity_MatrixV[2i].z;
  let x_304 : f32 = vs_INTERP7.z;
  let x_306 : f32 = u_xlat81;
  u_xlat81 = ((x_302 * x_304) + x_306);
  let x_308 : f32 = u_xlat81;
  let x_310 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat81 = (x_308 + x_310);
  let x_312 : f32 = u_xlat81;
  let x_316 : f32 = x_29.x_ProjectionParams.y;
  u_xlat81 = (-(x_312) + -(x_316));
  let x_319 : f32 = u_xlat81;
  u_xlat81 = max(x_319, 0.0f);
  let x_321 : f32 = u_xlat81;
  let x_324 : f32 = x_29.unity_FogParams.x;
  u_xlat81 = (x_321 * x_324);
  u_xlat4.w = 1.0f;
  let x_329 : vec4<f32> = x_107.unity_SHAr;
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_107.unity_SHAg;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_335, x_336);
  let x_341 : vec4<f32> = x_107.unity_SHAb;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_341, x_342);
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_346.y, x_346.z, x_346.z, x_346.x) * vec4<f32>(x_348.x, x_348.y, x_348.z, x_348.z));
  let x_354 : vec4<f32> = x_107.unity_SHBr;
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_107.unity_SHBg;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_360, x_361);
  let x_366 : vec4<f32> = x_107.unity_SHBb;
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_366, x_367);
  let x_371 : f32 = u_xlat4.y;
  let x_373 : f32 = u_xlat4.y;
  u_xlat83 = (x_371 * x_373);
  let x_376 : f32 = u_xlat4.x;
  let x_378 : f32 = u_xlat4.x;
  let x_380 : f32 = u_xlat83;
  u_xlat83 = ((x_376 * x_378) + -(x_380));
  let x_385 : vec4<f32> = x_107.unity_SHC;
  let x_387 : f32 = u_xlat83;
  let x_390 : vec4<f32> = u_xlat7;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387, x_387, x_387)) + vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_395 + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_399, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_402 : vec3<f32> = u_xlat3;
  let x_403 : vec2<f32> = vec2<f32>(x_402.x, x_402.y);
  let x_404 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_406 : vec3<f32> = u_xlat3;
  let x_410 : vec2<f32> = clamp(vec2<f32>(x_406.x, x_406.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_411 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_410.x, x_410.y, x_411.z);
  let x_414 : f32 = u_xlat3.x;
  u_xlat83 = ((-(x_414) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_420 : f32 = u_xlat83;
  let x_423 : f32 = u_xlat3.y;
  u_xlat84 = (-(x_420) + x_423);
  let x_425 : vec3<f32> = u_xlat0;
  let x_426 : f32 = u_xlat83;
  let x_428 : vec3<f32> = (x_425 * vec3<f32>(x_426, x_426, x_426));
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_431 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_435 : vec3<f32> = u_xlat3;
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_435.x, x_435.x, x_435.x) * x_437) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_443 : f32 = u_xlat3.y;
  u_xlat83 = (-(x_443) + 1.0f);
  let x_446 : f32 = u_xlat83;
  let x_447 : f32 = u_xlat83;
  u_xlat3.x = (x_446 * x_447);
  let x_451 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_451, 0.0078125f);
  let x_457 : f32 = u_xlat3.x;
  let x_459 : f32 = u_xlat3.x;
  u_xlat30 = (x_457 * x_459);
  let x_461 : f32 = u_xlat84;
  u_xlat84 = (x_461 + 1.0f);
  let x_463 : f32 = u_xlat84;
  u_xlat84 = min(x_463, 1.0f);
  let x_467 : f32 = u_xlat3.x;
  u_xlat85 = ((x_467 * 4.0f) + 2.0f);
  let x_473 : f32 = u_xlat3.z;
  u_xlat57 = min(x_473, 1.0f);
  let x_486 : f32 = x_483.x_MainLightShadowParams.y;
  u_xlatb86 = (0.0f < x_486);
  let x_488 : bool = u_xlatb86;
  if (x_488) {
    let x_492 : f32 = x_483.x_MainLightShadowParams.y;
    u_xlatb86 = (x_492 == 1.0f);
    let x_494 : bool = u_xlatb86;
    if (x_494) {
      let x_498 : vec4<f32> = vs_INTERP3;
      let x_501 : vec4<f32> = x_483.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) + x_501);
      let x_504 : vec4<f32> = u_xlat7;
      let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
      let x_507 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_520 : vec3<f32> = txVec0;
      let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_520.xy, x_520.z);
      u_xlat8.x = x_522;
      let x_525 : vec4<f32> = u_xlat7;
      let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
      let x_528 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_535 : vec3<f32> = txVec1;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_535.xy, x_535.z);
      u_xlat8.y = x_537;
      let x_539 : vec4<f32> = vs_INTERP3;
      let x_542 : vec4<f32> = x_483.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) + x_542);
      let x_545 : vec4<f32> = u_xlat7;
      let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
      let x_548 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec2;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat8.z = x_557;
      let x_560 : vec4<f32> = u_xlat7;
      let x_561 : vec2<f32> = vec2<f32>(x_560.z, x_560.w);
      let x_563 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_570 : vec3<f32> = txVec3;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat8.w = x_572;
      let x_575 : vec4<f32> = u_xlat8;
      u_xlat86 = dot(x_575, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_582 : f32 = x_483.x_MainLightShadowParams.y;
      u_xlatb87 = (x_582 == 2.0f);
      let x_584 : bool = u_xlatb87;
      if (x_584) {
        let x_587 : vec4<f32> = vs_INTERP3;
        let x_590 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_595 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.z, x_590.w)) + vec2<f32>(0.5f, 0.5f));
        let x_596 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat7;
        let x_600 : vec2<f32> = floor(vec2<f32>(x_598.x, x_598.y));
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
        let x_605 : vec4<f32> = vs_INTERP3;
        let x_608 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_608.z, x_608.w)) + -(vec2<f32>(x_611.x, x_611.y)));
        let x_615 : vec2<f32> = u_xlat61;
        u_xlat8 = (vec4<f32>(x_615.x, x_615.x, x_615.y, x_615.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_620 : vec4<f32> = u_xlat8;
        let x_622 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_620.x, x_620.x, x_620.z, x_620.z) * vec4<f32>(x_622.x, x_622.x, x_622.z, x_622.z));
        let x_625 : vec4<f32> = u_xlat9;
        let x_629 : vec2<f32> = (vec2<f32>(x_625.y, x_625.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_630 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_629.x, x_630.y, x_629.y, x_630.w);
        let x_632 : vec4<f32> = u_xlat9;
        let x_635 : vec2<f32> = u_xlat61;
        let x_637 : vec2<f32> = ((vec2<f32>(x_632.x, x_632.z) * vec2<f32>(0.5f, 0.5f)) + -(x_635));
        let x_638 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_641 : vec2<f32> = u_xlat61;
        u_xlat63 = (-(x_641) + vec2<f32>(1.0f, 1.0f));
        let x_646 : vec2<f32> = u_xlat61;
        let x_648 : vec2<f32> = min(x_646, vec2<f32>(0.0f, 0.0f));
        let x_649 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec4<f32> = u_xlat10;
        let x_654 : vec4<f32> = u_xlat10;
        let x_657 : vec2<f32> = u_xlat63;
        let x_658 : vec2<f32> = ((-(vec2<f32>(x_651.x, x_651.y)) * vec2<f32>(x_654.x, x_654.y)) + x_657);
        let x_659 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_661 : vec2<f32> = u_xlat61;
        u_xlat61 = max(x_661, vec2<f32>(0.0f, 0.0f));
        let x_663 : vec2<f32> = u_xlat61;
        let x_665 : vec2<f32> = u_xlat61;
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat61 = ((-(x_663) * x_665) + vec2<f32>(x_667.y, x_667.w));
        let x_670 : vec4<f32> = u_xlat10;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) + vec2<f32>(1.0f, 1.0f));
        let x_673 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_675 + vec2<f32>(1.0f, 1.0f));
        let x_678 : vec4<f32> = u_xlat9;
        let x_682 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_683 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec2<f32> = u_xlat63;
        let x_686 : vec2<f32> = (x_685 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_686.x, x_686.y, x_687.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat10;
        let x_691 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_695 : vec2<f32> = u_xlat61;
        let x_696 : vec2<f32> = (x_695 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_697 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat61 = (vec2<f32>(x_699.y, x_699.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : f32 = u_xlat10.x;
        u_xlat11.z = x_703;
        let x_706 : f32 = u_xlat61.x;
        u_xlat11.w = x_706;
        let x_709 : f32 = u_xlat12.x;
        u_xlat9.z = x_709;
        let x_712 : f32 = u_xlat8.x;
        u_xlat9.w = x_712;
        let x_715 : vec4<f32> = u_xlat9;
        let x_717 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_715.z, x_715.w, x_715.x, x_715.z) + vec4<f32>(x_717.z, x_717.w, x_717.x, x_717.z));
        let x_721 : f32 = u_xlat11.y;
        u_xlat10.z = x_721;
        let x_724 : f32 = u_xlat61.y;
        u_xlat10.w = x_724;
        let x_727 : f32 = u_xlat9.y;
        u_xlat12.z = x_727;
        let x_730 : f32 = u_xlat8.z;
        u_xlat12.w = x_730;
        let x_732 : vec4<f32> = u_xlat10;
        let x_734 : vec4<f32> = u_xlat12;
        let x_736 : vec3<f32> = (vec3<f32>(x_732.z, x_732.y, x_732.w) + vec3<f32>(x_734.z, x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat9;
        let x_741 : vec4<f32> = u_xlat13;
        let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.z, x_739.w) / vec3<f32>(x_741.z, x_741.w, x_741.y));
        let x_744 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_752 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat12;
        let x_757 : vec4<f32> = u_xlat8;
        let x_759 : vec3<f32> = (vec3<f32>(x_755.z, x_755.y, x_755.w) / vec3<f32>(x_757.x, x_757.y, x_757.z));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat10;
        let x_764 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_765 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat9;
        let x_770 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_772 : vec3<f32> = (vec3<f32>(x_767.y, x_767.x, x_767.z) * vec3<f32>(x_770.x, x_770.x, x_770.x));
        let x_773 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat10;
        let x_778 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_780 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_778.y, x_778.y, x_778.y));
        let x_781 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_784 : f32 = u_xlat10.x;
        u_xlat9.w = x_784;
        let x_786 : vec4<f32> = u_xlat7;
        let x_789 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.y, x_792.w, x_792.x, x_792.w));
        let x_795 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_795.x, x_795.y) * vec2<f32>(x_798.x, x_798.y)) + vec2<f32>(x_801.z, x_801.w));
        let x_805 : f32 = u_xlat9.y;
        u_xlat10.w = x_805;
        let x_807 : vec4<f32> = u_xlat10;
        let x_808 : vec2<f32> = vec2<f32>(x_807.y, x_807.z);
        let x_809 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_809.x, x_808.x, x_809.z, x_808.y);
        let x_811 : vec4<f32> = u_xlat7;
        let x_814 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.x, x_817.y, x_817.z, x_817.y));
        let x_820 : vec4<f32> = u_xlat7;
        let x_823 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) * vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y)) + vec4<f32>(x_826.w, x_826.y, x_826.w, x_826.z));
        let x_829 : vec4<f32> = u_xlat7;
        let x_832 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y) * vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y)) + vec4<f32>(x_835.x, x_835.w, x_835.z, x_835.w));
        let x_839 : vec4<f32> = u_xlat8;
        let x_841 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_839.x, x_839.x, x_839.x, x_839.y) * vec4<f32>(x_841.z, x_841.w, x_841.y, x_841.z));
        let x_845 : vec4<f32> = u_xlat8;
        let x_847 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_845.y, x_845.y, x_845.z, x_845.z) * x_847);
        let x_851 : f32 = u_xlat8.z;
        let x_853 : f32 = u_xlat13.y;
        u_xlat87 = (x_851 * x_853);
        let x_856 : vec4<f32> = u_xlat11;
        let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
        let x_859 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec4;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat7.x = x_868;
        let x_871 : vec4<f32> = u_xlat11;
        let x_872 : vec2<f32> = vec2<f32>(x_871.z, x_871.w);
        let x_874 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_882 : vec3<f32> = txVec5;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat34 = x_884;
        let x_885 : f32 = u_xlat34;
        let x_887 : f32 = u_xlat14.y;
        u_xlat34 = (x_885 * x_887);
        let x_890 : f32 = u_xlat14.x;
        let x_892 : f32 = u_xlat7.x;
        let x_894 : f32 = u_xlat34;
        u_xlat7.x = ((x_890 * x_892) + x_894);
        let x_898 : vec2<f32> = u_xlat61;
        let x_900 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec6;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
        u_xlat34 = x_909;
        let x_911 : f32 = u_xlat14.z;
        let x_912 : f32 = u_xlat34;
        let x_915 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_911 * x_912) + x_915);
        let x_919 : vec4<f32> = u_xlat10;
        let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
        let x_922 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_929 : vec3<f32> = txVec7;
        let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_929.xy, x_929.z);
        u_xlat34 = x_931;
        let x_933 : f32 = u_xlat14.w;
        let x_934 : f32 = u_xlat34;
        let x_937 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_933 * x_934) + x_937);
        let x_941 : vec4<f32> = u_xlat12;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec8;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat34 = x_953;
        let x_955 : f32 = u_xlat15.x;
        let x_956 : f32 = u_xlat34;
        let x_959 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_955 * x_956) + x_959);
        let x_963 : vec4<f32> = u_xlat12;
        let x_964 : vec2<f32> = vec2<f32>(x_963.z, x_963.w);
        let x_966 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec9;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
        u_xlat34 = x_975;
        let x_977 : f32 = u_xlat15.y;
        let x_978 : f32 = u_xlat34;
        let x_981 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_977 * x_978) + x_981);
        let x_985 : vec4<f32> = u_xlat10;
        let x_986 : vec2<f32> = vec2<f32>(x_985.z, x_985.w);
        let x_988 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec10;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
        u_xlat34 = x_997;
        let x_999 : f32 = u_xlat15.z;
        let x_1000 : f32 = u_xlat34;
        let x_1003 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_999 * x_1000) + x_1003);
        let x_1007 : vec4<f32> = u_xlat9;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec11;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat34 = x_1019;
        let x_1021 : f32 = u_xlat15.w;
        let x_1022 : f32 = u_xlat34;
        let x_1025 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1021 * x_1022) + x_1025);
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1030 : vec2<f32> = vec2<f32>(x_1029.z, x_1029.w);
        let x_1032 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1030.x, x_1030.y, x_1032);
        let x_1039 : vec3<f32> = txVec12;
        let x_1041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1039.xy, x_1039.z);
        u_xlat34 = x_1041;
        let x_1042 : f32 = u_xlat87;
        let x_1043 : f32 = u_xlat34;
        let x_1046 : f32 = u_xlat7.x;
        u_xlat86 = ((x_1042 * x_1043) + x_1046);
      } else {
        let x_1049 : vec4<f32> = vs_INTERP3;
        let x_1052 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = floor(vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = vs_INTERP3;
        let x_1066 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.z, x_1066.w)) + -(vec2<f32>(x_1069.x, x_1069.y)));
        let x_1073 : vec2<f32> = u_xlat61;
        u_xlat8 = (vec4<f32>(x_1073.x, x_1073.x, x_1073.y, x_1073.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1076.x, x_1076.x, x_1076.z, x_1076.z) * vec4<f32>(x_1078.x, x_1078.x, x_1078.z, x_1078.z));
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1081.y, x_1081.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1088 : vec4<f32> = u_xlat9;
        let x_1091 : vec2<f32> = u_xlat61;
        let x_1093 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1091));
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1093.x, x_1094.y, x_1093.y, x_1094.w);
        let x_1096 : vec2<f32> = u_xlat61;
        let x_1098 : vec2<f32> = (-(x_1096) + vec2<f32>(1.0f, 1.0f));
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat61;
        u_xlat63 = min(x_1101, vec2<f32>(0.0f, 0.0f));
        let x_1103 : vec2<f32> = u_xlat63;
        let x_1105 : vec2<f32> = u_xlat63;
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1109 : vec2<f32> = ((-(x_1103) * x_1105) + vec2<f32>(x_1107.x, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec2<f32> = u_xlat61;
        u_xlat63 = max(x_1112, vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec2<f32> = u_xlat63;
        let x_1117 : vec2<f32> = u_xlat63;
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1121 : vec2<f32> = ((-(x_1115) * x_1117) + vec2<f32>(x_1119.y, x_1119.w));
        let x_1122 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1121.x, x_1122.y, x_1121.y);
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) + vec2<f32>(2.0f, 2.0f));
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec3<f32> = u_xlat35;
        let x_1131 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.z) + vec2<f32>(2.0f, 2.0f));
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1131.x, x_1132.z, x_1131.y);
        let x_1135 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1135 * 0.08163200318813323975f);
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1142 : vec3<f32> = (vec3<f32>(x_1139.z, x_1139.x, x_1139.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1143 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat12.y;
        u_xlat11.x = x_1152;
        let x_1154 : vec2<f32> = u_xlat61;
        let x_1161 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1164 : vec2<f32> = u_xlat61;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1172 : f32 = u_xlat8.x;
        u_xlat9.y = x_1172;
        let x_1175 : f32 = u_xlat10.y;
        u_xlat9.w = x_1175;
        let x_1177 : vec4<f32> = u_xlat9;
        let x_1178 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1177 + x_1178);
        let x_1180 : vec2<f32> = u_xlat61;
        let x_1183 : vec2<f32> = ((vec2<f32>(x_1180.y, x_1180.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1184 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1184.x, x_1183.x, x_1184.z, x_1183.y);
        let x_1186 : vec2<f32> = u_xlat61;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1186.y, x_1186.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1190.w);
        let x_1193 : f32 = u_xlat8.y;
        u_xlat10.y = x_1193;
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1196 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1195 + x_1196);
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1199 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1198 / x_1199);
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1201 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1207 / x_1208);
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1210 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1215 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1212.w, x_1212.x, x_1212.y, x_1212.z) * vec4<f32>(x_1215.x, x_1215.x, x_1215.x, x_1215.x));
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1221 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1218.x, x_1218.w, x_1218.y, x_1218.z) * vec4<f32>(x_1221.y, x_1221.y, x_1221.y, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1225 : vec3<f32> = vec3<f32>(x_1224.y, x_1224.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1225.x, x_1226.y, x_1225.y, x_1225.z);
        let x_1229 : f32 = u_xlat10.x;
        u_xlat12.y = x_1229;
        let x_1231 : vec4<f32> = u_xlat7;
        let x_1234 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.y));
        let x_1240 : vec4<f32> = u_xlat7;
        let x_1243 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat12;
        u_xlat61 = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1250 : f32 = u_xlat12.y;
        u_xlat9.y = x_1250;
        let x_1253 : f32 = u_xlat10.z;
        u_xlat12.y = x_1253;
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1258 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y) * vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y)) + vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1261.y));
        let x_1264 : vec4<f32> = u_xlat7;
        let x_1267 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1270.w, x_1270.y));
        let x_1273 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1276 : f32 = u_xlat12.y;
        u_xlat9.z = x_1276;
        let x_1279 : vec4<f32> = u_xlat7;
        let x_1282 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.z));
        let x_1289 : f32 = u_xlat10.w;
        u_xlat12.y = x_1289;
        let x_1292 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1302 : vec4<f32> = u_xlat7;
        let x_1305 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat12;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.w, x_1308.y));
        let x_1311 : vec3<f32> = u_xlat36;
        u_xlat36 = vec3<f32>(x_1310.x, x_1310.y, x_1311.z);
        let x_1314 : f32 = u_xlat12.y;
        u_xlat9.w = x_1314;
        let x_1317 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat69 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.x, x_1323.w));
        let x_1326 : vec4<f32> = u_xlat12;
        let x_1327 : vec3<f32> = vec3<f32>(x_1326.x, x_1326.z, x_1326.w);
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1327.z);
        let x_1330 : vec4<f32> = u_xlat7;
        let x_1333 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1336.y));
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1343 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.w, x_1346.y));
        let x_1350 : f32 = u_xlat9.x;
        u_xlat10.x = x_1350;
        let x_1352 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat10;
        let x_1360 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1355.x, x_1355.y)) + vec2<f32>(x_1358.x, x_1358.y));
        let x_1361 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
        let x_1364 : vec4<f32> = u_xlat8;
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1364.x, x_1364.x, x_1364.x, x_1364.x) * x_1366);
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1371 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1369.y, x_1369.y, x_1369.y, x_1369.y) * x_1371);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1376 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1374.z, x_1374.z, x_1374.z, x_1374.z) * x_1376);
        let x_1378 : vec4<f32> = u_xlat8;
        let x_1380 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1378.w, x_1378.w, x_1378.w, x_1378.w) * x_1380);
        let x_1383 : vec4<f32> = u_xlat13;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec13;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat87 = x_1395;
        let x_1397 : vec4<f32> = u_xlat13;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec14;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat9.x = x_1409;
        let x_1412 : f32 = u_xlat9.x;
        let x_1414 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1412 * x_1414);
        let x_1418 : f32 = u_xlat18.x;
        let x_1419 : f32 = u_xlat87;
        let x_1422 : f32 = u_xlat9.x;
        u_xlat87 = ((x_1418 * x_1419) + x_1422);
        let x_1425 : vec2<f32> = u_xlat61;
        let x_1427 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec15;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1434.xy, x_1434.z);
        u_xlat61.x = x_1436;
        let x_1439 : f32 = u_xlat18.z;
        let x_1441 : f32 = u_xlat61.x;
        let x_1443 : f32 = u_xlat87;
        u_xlat87 = ((x_1439 * x_1441) + x_1443);
        let x_1446 : vec4<f32> = u_xlat16;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec16;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat61.x = x_1458;
        let x_1461 : f32 = u_xlat18.w;
        let x_1463 : f32 = u_xlat61.x;
        let x_1465 : f32 = u_xlat87;
        u_xlat87 = ((x_1461 * x_1463) + x_1465);
        let x_1468 : vec4<f32> = u_xlat14;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.x, x_1468.y);
        let x_1471 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec17;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1478.xy, x_1478.z);
        u_xlat61.x = x_1480;
        let x_1483 : f32 = u_xlat19.x;
        let x_1485 : f32 = u_xlat61.x;
        let x_1487 : f32 = u_xlat87;
        u_xlat87 = ((x_1483 * x_1485) + x_1487);
        let x_1490 : vec4<f32> = u_xlat14;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.z, x_1490.w);
        let x_1493 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec18;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat61.x = x_1502;
        let x_1505 : f32 = u_xlat19.y;
        let x_1507 : f32 = u_xlat61.x;
        let x_1509 : f32 = u_xlat87;
        u_xlat87 = ((x_1505 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat15;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
        let x_1515 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec19;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1522.xy, x_1522.z);
        u_xlat61.x = x_1524;
        let x_1527 : f32 = u_xlat19.z;
        let x_1529 : f32 = u_xlat61.x;
        let x_1531 : f32 = u_xlat87;
        u_xlat87 = ((x_1527 * x_1529) + x_1531);
        let x_1534 : vec4<f32> = u_xlat16;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.z, x_1534.w);
        let x_1537 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec20;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat61.x = x_1546;
        let x_1549 : f32 = u_xlat19.w;
        let x_1551 : f32 = u_xlat61.x;
        let x_1553 : f32 = u_xlat87;
        u_xlat87 = ((x_1549 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat17;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
        let x_1559 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec21;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat61.x = x_1568;
        let x_1571 : f32 = u_xlat20.x;
        let x_1573 : f32 = u_xlat61.x;
        let x_1575 : f32 = u_xlat87;
        u_xlat87 = ((x_1571 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat17;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.z, x_1578.w);
        let x_1581 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec22;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat61.x = x_1590;
        let x_1593 : f32 = u_xlat20.y;
        let x_1595 : f32 = u_xlat61.x;
        let x_1597 : f32 = u_xlat87;
        u_xlat87 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec3<f32> = u_xlat36;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec23;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat61.x = x_1612;
        let x_1615 : f32 = u_xlat20.z;
        let x_1617 : f32 = u_xlat61.x;
        let x_1619 : f32 = u_xlat87;
        u_xlat87 = ((x_1615 * x_1617) + x_1619);
        let x_1622 : vec2<f32> = u_xlat69;
        let x_1624 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec24;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1631.xy, x_1631.z);
        u_xlat61.x = x_1633;
        let x_1636 : f32 = u_xlat20.w;
        let x_1638 : f32 = u_xlat61.x;
        let x_1640 : f32 = u_xlat87;
        u_xlat87 = ((x_1636 * x_1638) + x_1640);
        let x_1643 : vec4<f32> = u_xlat12;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
        let x_1646 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec25;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1653.xy, x_1653.z);
        u_xlat61.x = x_1655;
        let x_1658 : f32 = u_xlat8.x;
        let x_1660 : f32 = u_xlat61.x;
        let x_1662 : f32 = u_xlat87;
        u_xlat87 = ((x_1658 * x_1660) + x_1662);
        let x_1665 : vec4<f32> = u_xlat12;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.z, x_1665.w);
        let x_1668 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec26;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat61.x = x_1677;
        let x_1680 : f32 = u_xlat8.y;
        let x_1682 : f32 = u_xlat61.x;
        let x_1684 : f32 = u_xlat87;
        u_xlat87 = ((x_1680 * x_1682) + x_1684);
        let x_1687 : vec2<f32> = u_xlat64;
        let x_1689 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec27;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1696.xy, x_1696.z);
        u_xlat61.x = x_1698;
        let x_1701 : f32 = u_xlat8.z;
        let x_1703 : f32 = u_xlat61.x;
        let x_1705 : f32 = u_xlat87;
        u_xlat87 = ((x_1701 * x_1703) + x_1705);
        let x_1708 : vec4<f32> = u_xlat7;
        let x_1709 : vec2<f32> = vec2<f32>(x_1708.x, x_1708.y);
        let x_1711 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1709.x, x_1709.y, x_1711);
        let x_1718 : vec3<f32> = txVec28;
        let x_1720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1718.xy, x_1718.z);
        u_xlat7.x = x_1720;
        let x_1723 : f32 = u_xlat8.w;
        let x_1725 : f32 = u_xlat7.x;
        let x_1727 : f32 = u_xlat87;
        u_xlat86 = ((x_1723 * x_1725) + x_1727);
      }
    }
  } else {
    let x_1731 : vec4<f32> = vs_INTERP3;
    let x_1732 : vec2<f32> = vec2<f32>(x_1731.x, x_1731.y);
    let x_1734 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
    let x_1741 : vec3<f32> = txVec29;
    let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1741.xy, x_1741.z);
    u_xlat86 = x_1743;
  }
  let x_1745 : f32 = x_483.x_MainLightShadowParams.x;
  u_xlat87 = (-(x_1745) + 1.0f);
  let x_1748 : f32 = u_xlat86;
  let x_1750 : f32 = x_483.x_MainLightShadowParams.x;
  let x_1752 : f32 = u_xlat87;
  u_xlat86 = ((x_1748 * x_1750) + x_1752);
  let x_1755 : f32 = vs_INTERP3.z;
  u_xlatb87 = (0.0f >= x_1755);
  let x_1759 : f32 = vs_INTERP3.z;
  u_xlatb7 = (x_1759 >= 1.0f);
  let x_1761 : bool = u_xlatb87;
  let x_1762 : bool = u_xlatb7;
  u_xlatb87 = (x_1761 | x_1762);
  let x_1764 : bool = u_xlatb87;
  let x_1765 : f32 = u_xlat86;
  u_xlat86 = select(x_1765, 1.0f, x_1764);
  let x_1767 : vec3<f32> = vs_INTERP7;
  let x_1769 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1771 : vec3<f32> = (x_1767 + -(x_1769));
  let x_1772 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : vec4<f32> = u_xlat7;
  let x_1776 : vec4<f32> = u_xlat7;
  u_xlat87 = dot(vec3<f32>(x_1774.x, x_1774.y, x_1774.z), vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : f32 = u_xlat87;
  let x_1781 : f32 = x_483.x_MainLightShadowParams.z;
  let x_1784 : f32 = x_483.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_1779 * x_1781) + x_1784);
  let x_1788 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1788, 0.0f, 1.0f);
  let x_1791 : f32 = u_xlat86;
  u_xlat34 = (-(x_1791) + 1.0f);
  let x_1795 : f32 = u_xlat7.x;
  let x_1796 : f32 = u_xlat34;
  let x_1798 : f32 = u_xlat86;
  u_xlat86 = ((x_1795 * x_1796) + x_1798);
  let x_1807 : f32 = x_1805.x_MainLightCookieTextureFormat;
  u_xlatb7 = !((x_1807 == -1.0f));
  let x_1809 : bool = u_xlatb7;
  if (x_1809) {
    let x_1812 : vec3<f32> = vs_INTERP7;
    let x_1815 : vec4<f32> = x_1805.x_MainLightWorldToLight[1i];
    let x_1817 : vec2<f32> = (vec2<f32>(x_1812.y, x_1812.y) * vec2<f32>(x_1815.x, x_1815.y));
    let x_1818 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
    let x_1821 : vec4<f32> = x_1805.x_MainLightWorldToLight[0i];
    let x_1823 : vec3<f32> = vs_INTERP7;
    let x_1826 : vec4<f32> = u_xlat7;
    let x_1828 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1823.x, x_1823.x)) + vec2<f32>(x_1826.x, x_1826.y));
    let x_1829 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1828.x, x_1828.y, x_1829.z, x_1829.w);
    let x_1832 : vec4<f32> = x_1805.x_MainLightWorldToLight[2i];
    let x_1834 : vec3<f32> = vs_INTERP7;
    let x_1837 : vec4<f32> = u_xlat7;
    let x_1839 : vec2<f32> = ((vec2<f32>(x_1832.x, x_1832.y) * vec2<f32>(x_1834.z, x_1834.z)) + vec2<f32>(x_1837.x, x_1837.y));
    let x_1840 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
    let x_1842 : vec4<f32> = u_xlat7;
    let x_1845 : vec4<f32> = x_1805.x_MainLightWorldToLight[3i];
    let x_1847 : vec2<f32> = (vec2<f32>(x_1842.x, x_1842.y) + vec2<f32>(x_1845.x, x_1845.y));
    let x_1848 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat7;
    let x_1853 : vec2<f32> = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1854 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
    let x_1861 : vec4<f32> = u_xlat7;
    let x_1864 : f32 = x_29.x_GlobalMipBias.x;
    let x_1865 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1861.x, x_1861.y), x_1864);
    u_xlat7 = x_1865;
    let x_1870 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1872 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1874 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1876 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1877 : vec4<f32> = vec4<f32>(x_1870, x_1872, x_1874, x_1876);
    let x_1885 : vec4<bool> = (vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1877.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1885.x, x_1885.y);
    let x_1889 : bool = u_xlatb8.y;
    if (x_1889) {
      let x_1895 : f32 = u_xlat7.w;
      x_1891 = x_1895;
    } else {
      let x_1898 : f32 = u_xlat7.x;
      x_1891 = x_1898;
    }
    let x_1899 : f32 = x_1891;
    u_xlat88 = x_1899;
    let x_1901 : bool = u_xlatb8.x;
    if (x_1901) {
      let x_1905 : vec4<f32> = u_xlat7;
      x_1902 = vec3<f32>(x_1905.x, x_1905.y, x_1905.z);
    } else {
      let x_1908 : f32 = u_xlat88;
      x_1902 = vec3<f32>(x_1908, x_1908, x_1908);
    }
    let x_1910 : vec3<f32> = x_1902;
    let x_1911 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1917 : vec4<f32> = u_xlat7;
  let x_1920 : vec4<f32> = x_29.x_MainLightColor;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1917.x, x_1917.y, x_1917.z) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec4<f32> = u_xlat1;
  let x_1928 : vec4<f32> = u_xlat4;
  u_xlat88 = dot(-(vec3<f32>(x_1925.x, x_1925.y, x_1925.w)), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : f32 = u_xlat88;
  let x_1932 : f32 = u_xlat88;
  u_xlat88 = (x_1931 + x_1932);
  let x_1934 : vec4<f32> = u_xlat4;
  let x_1936 : f32 = u_xlat88;
  let x_1940 : vec4<f32> = u_xlat1;
  let x_1943 : vec3<f32> = ((vec3<f32>(x_1934.x, x_1934.y, x_1934.z) * -(vec3<f32>(x_1936, x_1936, x_1936))) + -(vec3<f32>(x_1940.x, x_1940.y, x_1940.w)));
  let x_1944 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec4<f32> = u_xlat4;
  let x_1948 : vec4<f32> = u_xlat1;
  u_xlat88 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.w));
  let x_1951 : f32 = u_xlat88;
  u_xlat88 = clamp(x_1951, 0.0f, 1.0f);
  let x_1953 : f32 = u_xlat88;
  u_xlat88 = (-(x_1953) + 1.0f);
  let x_1956 : f32 = u_xlat88;
  let x_1957 : f32 = u_xlat88;
  u_xlat88 = (x_1956 * x_1957);
  let x_1959 : f32 = u_xlat88;
  let x_1960 : f32 = u_xlat88;
  u_xlat88 = (x_1959 * x_1960);
  let x_1963 : f32 = u_xlat83;
  u_xlat89 = ((-(x_1963) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1969 : f32 = u_xlat83;
  let x_1970 : f32 = u_xlat89;
  u_xlat2.w = (x_1969 * x_1970);
  let x_1973 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1973 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1986 : vec4<f32> = u_xlat8;
  let x_1989 : f32 = u_xlat2.w;
  let x_1990 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1986.x, x_1986.y, x_1986.z), x_1989);
  u_xlat8 = x_1990;
  let x_1992 : f32 = u_xlat8.w;
  u_xlat83 = (x_1992 + -1.0f);
  let x_1995 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_1996 : f32 = u_xlat83;
  u_xlat83 = ((x_1995 * x_1996) + 1.0f);
  let x_1999 : f32 = u_xlat83;
  u_xlat83 = max(x_1999, 0.0f);
  let x_2001 : f32 = u_xlat83;
  u_xlat83 = log2(x_2001);
  let x_2003 : f32 = u_xlat83;
  let x_2005 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat83 = (x_2003 * x_2005);
  let x_2007 : f32 = u_xlat83;
  u_xlat83 = exp2(x_2007);
  let x_2009 : f32 = u_xlat83;
  let x_2011 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat83 = (x_2009 * x_2011);
  let x_2013 : vec4<f32> = u_xlat8;
  let x_2015 : f32 = u_xlat83;
  let x_2017 : vec3<f32> = (vec3<f32>(x_2013.x, x_2013.y, x_2013.z) * vec3<f32>(x_2015, x_2015, x_2015));
  let x_2018 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2018.w);
  let x_2020 : vec3<f32> = u_xlat3;
  let x_2022 : vec3<f32> = u_xlat3;
  let x_2026 : vec2<f32> = ((vec2<f32>(x_2020.x, x_2020.x) * vec2<f32>(x_2022.x, x_2022.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2027 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
  let x_2030 : f32 = u_xlat9.y;
  u_xlat83 = (1.0f / x_2030);
  let x_2032 : vec3<f32> = u_xlat0;
  let x_2034 : f32 = u_xlat84;
  u_xlat36 = (-(x_2032) + vec3<f32>(x_2034, x_2034, x_2034));
  let x_2037 : f32 = u_xlat88;
  let x_2039 : vec3<f32> = u_xlat36;
  let x_2041 : vec3<f32> = u_xlat0;
  u_xlat36 = ((vec3<f32>(x_2037, x_2037, x_2037) * x_2039) + x_2041);
  let x_2043 : f32 = u_xlat83;
  let x_2045 : vec3<f32> = u_xlat36;
  u_xlat36 = (vec3<f32>(x_2043, x_2043, x_2043) * x_2045);
  let x_2047 : vec4<f32> = u_xlat8;
  let x_2049 : vec3<f32> = u_xlat36;
  let x_2050 : vec3<f32> = (vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * x_2049);
  let x_2051 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec3<f32> = u_xlat5;
  let x_2054 : vec4<f32> = u_xlat6;
  let x_2057 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2053 * vec3<f32>(x_2054.x, x_2054.y, x_2054.z)) + vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2060 : f32 = u_xlat86;
  let x_2062 : f32 = x_107.unity_LightData.z;
  u_xlat83 = (x_2060 * x_2062);
  let x_2064 : vec4<f32> = u_xlat4;
  let x_2067 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2064.x, x_2064.y, x_2064.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2072 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2072, 0.0f, 1.0f);
  let x_2075 : f32 = u_xlat83;
  let x_2077 : f32 = u_xlat3.x;
  u_xlat83 = (x_2075 * x_2077);
  let x_2079 : f32 = u_xlat83;
  let x_2081 : vec4<f32> = u_xlat7;
  let x_2083 : vec3<f32> = (vec3<f32>(x_2079, x_2079, x_2079) * vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2086 : vec4<f32> = u_xlat1;
  let x_2089 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2091 : vec3<f32> = (vec3<f32>(x_2086.x, x_2086.y, x_2086.w) + vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
  let x_2092 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
  let x_2094 : vec4<f32> = u_xlat8;
  let x_2096 : vec4<f32> = u_xlat8;
  u_xlat83 = dot(vec3<f32>(x_2094.x, x_2094.y, x_2094.z), vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : f32 = u_xlat83;
  u_xlat83 = max(x_2099, 1.17549435e-38f);
  let x_2102 : f32 = u_xlat83;
  u_xlat83 = inverseSqrt(x_2102);
  let x_2104 : f32 = u_xlat83;
  let x_2106 : vec4<f32> = u_xlat8;
  let x_2108 : vec3<f32> = (vec3<f32>(x_2104, x_2104, x_2104) * vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2109 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2108.x, x_2108.y, x_2108.z, x_2109.w);
  let x_2111 : vec4<f32> = u_xlat4;
  let x_2113 : vec4<f32> = u_xlat8;
  u_xlat83 = dot(vec3<f32>(x_2111.x, x_2111.y, x_2111.z), vec3<f32>(x_2113.x, x_2113.y, x_2113.z));
  let x_2116 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2116, 0.0f, 1.0f);
  let x_2119 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2121 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2119.x, x_2119.y, x_2119.z), vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2126 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2126, 0.0f, 1.0f);
  let x_2129 : f32 = u_xlat83;
  let x_2130 : f32 = u_xlat83;
  u_xlat83 = (x_2129 * x_2130);
  let x_2132 : f32 = u_xlat83;
  let x_2134 : f32 = u_xlat9.x;
  u_xlat83 = ((x_2132 * x_2134) + 1.00001001358032226562f);
  let x_2139 : f32 = u_xlat3.x;
  let x_2141 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2139 * x_2141);
  let x_2144 : f32 = u_xlat83;
  let x_2145 : f32 = u_xlat83;
  u_xlat83 = (x_2144 * x_2145);
  let x_2148 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2148, 0.10000000149011611938f);
  let x_2152 : f32 = u_xlat83;
  let x_2154 : f32 = u_xlat3.x;
  u_xlat83 = (x_2152 * x_2154);
  let x_2156 : f32 = u_xlat85;
  let x_2157 : f32 = u_xlat83;
  u_xlat83 = (x_2156 * x_2157);
  let x_2159 : f32 = u_xlat30;
  let x_2160 : f32 = u_xlat83;
  u_xlat83 = (x_2159 / x_2160);
  let x_2162 : vec3<f32> = u_xlat0;
  let x_2163 : f32 = u_xlat83;
  let x_2166 : vec4<f32> = u_xlat6;
  let x_2168 : vec3<f32> = ((x_2162 * vec3<f32>(x_2163, x_2163, x_2163)) + vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
  let x_2169 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
  let x_2171 : vec4<f32> = u_xlat7;
  let x_2173 : vec4<f32> = u_xlat8;
  let x_2175 : vec3<f32> = (vec3<f32>(x_2171.x, x_2171.y, x_2171.z) * vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
  let x_2176 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
  let x_2179 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2181 : f32 = x_107.unity_LightData.y;
  u_xlat83 = min(x_2179, x_2181);
  let x_2185 : f32 = u_xlat83;
  u_xlatu83 = bitcast<u32>(i32(x_2185));
  let x_2188 : f32 = u_xlat87;
  let x_2191 : f32 = x_483.x_AdditionalShadowFadeParams.x;
  let x_2194 : f32 = x_483.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2188 * x_2191) + x_2194);
  let x_2198 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2198, 0.0f, 1.0f);
  let x_2202 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2204 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2206 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2208 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2209 : vec4<f32> = vec4<f32>(x_2202, x_2204, x_2206, x_2208);
  let x_2215 : vec4<bool> = (vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2209.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2215.x, x_2215.y);
  u_xlat36.x = 0.0f;
  u_xlat36.y = 0.0f;
  u_xlat36.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2227 : u32 = u_xlatu_loop_1;
    let x_2228 : u32 = u_xlatu83;
    if ((x_2227 < x_2228)) {
    } else {
      break;
    }
    let x_2231 : u32 = u_xlatu_loop_1;
    u_xlatu86 = (x_2231 >> 2u);
    let x_2235 : u32 = u_xlatu_loop_1;
    u_xlati87 = bitcast<i32>((x_2235 & 3u));
    let x_2238 : u32 = u_xlatu86;
    let x_2241 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_2238)];
    let x_2251 : i32 = u_xlati87;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2256 : vec4<u32> = indexable[x_2251];
    u_xlat86 = dot(x_2241, bitcast<vec4<f32>>(x_2256));
    let x_2260 : f32 = u_xlat86;
    u_xlati86 = i32(x_2260);
    let x_2262 : vec3<f32> = vs_INTERP7;
    let x_2273 : i32 = u_xlati86;
    let x_2275 : vec4<f32> = x_2272.x_AdditionalLightsPosition[x_2273];
    let x_2278 : i32 = u_xlati86;
    let x_2280 : vec4<f32> = x_2272.x_AdditionalLightsPosition[x_2278];
    let x_2282 : vec3<f32> = ((-(x_2262) * vec3<f32>(x_2275.w, x_2275.w, x_2275.w)) + vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
    let x_2283 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
    let x_2285 : vec4<f32> = u_xlat10;
    let x_2287 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2285.x, x_2285.y, x_2285.z), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
    let x_2290 : f32 = u_xlat87;
    u_xlat87 = max(x_2290, 0.00006103515625f);
    let x_2293 : f32 = u_xlat87;
    u_xlat88 = inverseSqrt(x_2293);
    let x_2295 : f32 = u_xlat88;
    let x_2297 : vec4<f32> = u_xlat10;
    let x_2299 : vec3<f32> = (vec3<f32>(x_2295, x_2295, x_2295) * vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
    let x_2300 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
    let x_2303 : f32 = u_xlat87;
    u_xlat62 = (1.0f / x_2303);
    let x_2305 : f32 = u_xlat87;
    let x_2306 : i32 = u_xlati86;
    let x_2308 : f32 = x_2272.x_AdditionalLightsAttenuation[x_2306].x;
    u_xlat87 = (x_2305 * x_2308);
    let x_2310 : f32 = u_xlat87;
    let x_2312 : f32 = u_xlat87;
    u_xlat87 = ((-(x_2310) * x_2312) + 1.0f);
    let x_2315 : f32 = u_xlat87;
    u_xlat87 = max(x_2315, 0.0f);
    let x_2317 : f32 = u_xlat87;
    let x_2318 : f32 = u_xlat87;
    u_xlat87 = (x_2317 * x_2318);
    let x_2320 : f32 = u_xlat87;
    let x_2321 : f32 = u_xlat62;
    u_xlat87 = (x_2320 * x_2321);
    let x_2323 : i32 = u_xlati86;
    let x_2325 : vec4<f32> = x_2272.x_AdditionalLightsSpotDir[x_2323];
    let x_2327 : vec4<f32> = u_xlat11;
    u_xlat62 = dot(vec3<f32>(x_2325.x, x_2325.y, x_2325.z), vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : f32 = u_xlat62;
    let x_2331 : i32 = u_xlati86;
    let x_2333 : f32 = x_2272.x_AdditionalLightsAttenuation[x_2331].z;
    let x_2335 : i32 = u_xlati86;
    let x_2337 : f32 = x_2272.x_AdditionalLightsAttenuation[x_2335].w;
    u_xlat62 = ((x_2330 * x_2333) + x_2337);
    let x_2339 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2339, 0.0f, 1.0f);
    let x_2341 : f32 = u_xlat62;
    let x_2342 : f32 = u_xlat62;
    u_xlat62 = (x_2341 * x_2342);
    let x_2344 : f32 = u_xlat87;
    let x_2345 : f32 = u_xlat62;
    u_xlat87 = (x_2344 * x_2345);
    let x_2349 : i32 = u_xlati86;
    let x_2351 : f32 = x_483.x_AdditionalShadowParams[x_2349].w;
    u_xlati62 = i32(x_2351);
    let x_2354 : i32 = u_xlati62;
    u_xlatb89 = (x_2354 >= 0i);
    let x_2356 : bool = u_xlatb89;
    if (x_2356) {
      let x_2360 : i32 = u_xlati86;
      let x_2362 : f32 = x_483.x_AdditionalShadowParams[x_2360].z;
      u_xlatb89 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2362, x_2362, x_2362, x_2362))));
      let x_2366 : bool = u_xlatb89;
      if (x_2366) {
        let x_2371 : vec4<f32> = u_xlat11;
        let x_2374 : vec4<f32> = u_xlat11;
        let x_2377 : vec4<bool> = (abs(vec4<f32>(x_2371.z, x_2371.z, x_2371.y, x_2371.z)) >= abs(vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.x)));
        let x_2379 : vec3<bool> = vec3<bool>(x_2377.x, x_2377.y, x_2377.z);
        let x_2380 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2379.x, x_2379.y, x_2379.z, x_2380.w);
        let x_2383 : bool = u_xlatb12.y;
        let x_2385 : bool = u_xlatb12.x;
        u_xlatb89 = (x_2383 & x_2385);
        let x_2387 : vec4<f32> = u_xlat11;
        let x_2390 : vec4<bool> = (-(vec4<f32>(x_2387.z, x_2387.y, x_2387.z, x_2387.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2391 : vec3<bool> = vec3<bool>(x_2390.x, x_2390.y, x_2390.w);
        let x_2392 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2391.x, x_2391.y, x_2392.z, x_2391.z);
        let x_2395 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_2395);
        let x_2400 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_2400);
        let x_2406 : bool = u_xlatb12.w;
        u_xlat91 = select(0.0f, 1.0f, x_2406);
        let x_2409 : bool = u_xlatb12.z;
        if (x_2409) {
          let x_2414 : f32 = u_xlat12.y;
          x_2410 = x_2414;
        } else {
          let x_2416 : f32 = u_xlat91;
          x_2410 = x_2416;
        }
        let x_2417 : f32 = x_2410;
        u_xlat91 = x_2417;
        let x_2418 : bool = u_xlatb89;
        if (x_2418) {
          let x_2423 : f32 = u_xlat12.x;
          x_2419 = x_2423;
        } else {
          let x_2425 : f32 = u_xlat91;
          x_2419 = x_2425;
        }
        let x_2426 : f32 = x_2419;
        u_xlat89 = x_2426;
        let x_2427 : i32 = u_xlati86;
        let x_2429 : f32 = x_483.x_AdditionalShadowParams[x_2427].w;
        u_xlat91 = trunc(x_2429);
        let x_2431 : f32 = u_xlat89;
        let x_2432 : f32 = u_xlat91;
        u_xlat89 = (x_2431 + x_2432);
        let x_2434 : f32 = u_xlat89;
        u_xlati62 = i32(x_2434);
      }
      let x_2436 : i32 = u_xlati62;
      u_xlati62 = (x_2436 << bitcast<u32>(2i));
      let x_2438 : vec3<f32> = vs_INTERP7;
      let x_2441 : i32 = u_xlati62;
      let x_2444 : i32 = u_xlati62;
      let x_2448 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[((x_2441 + 1i) / 4i)][((x_2444 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_2438.y, x_2438.y, x_2438.y, x_2438.y) * x_2448);
      let x_2450 : i32 = u_xlati62;
      let x_2452 : i32 = u_xlati62;
      let x_2455 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[(x_2450 / 4i)][(x_2452 % 4i)];
      let x_2456 : vec3<f32> = vs_INTERP7;
      let x_2459 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2455 * vec4<f32>(x_2456.x, x_2456.x, x_2456.x, x_2456.x)) + x_2459);
      let x_2461 : i32 = u_xlati62;
      let x_2464 : i32 = u_xlati62;
      let x_2468 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[((x_2461 + 2i) / 4i)][((x_2464 + 2i) % 4i)];
      let x_2469 : vec3<f32> = vs_INTERP7;
      let x_2472 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2468 * vec4<f32>(x_2469.z, x_2469.z, x_2469.z, x_2469.z)) + x_2472);
      let x_2474 : vec4<f32> = u_xlat12;
      let x_2475 : i32 = u_xlati62;
      let x_2478 : i32 = u_xlati62;
      let x_2482 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[((x_2475 + 3i) / 4i)][((x_2478 + 3i) % 4i)];
      u_xlat12 = (x_2474 + x_2482);
      let x_2484 : vec4<f32> = u_xlat12;
      let x_2486 : vec4<f32> = u_xlat12;
      let x_2488 : vec3<f32> = (vec3<f32>(x_2484.x, x_2484.y, x_2484.z) / vec3<f32>(x_2486.w, x_2486.w, x_2486.w));
      let x_2489 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
      let x_2492 : i32 = u_xlati86;
      let x_2494 : f32 = x_483.x_AdditionalShadowParams[x_2492].y;
      u_xlatb62 = (0.0f < x_2494);
      let x_2496 : bool = u_xlatb62;
      if (x_2496) {
        let x_2499 : i32 = u_xlati86;
        let x_2501 : f32 = x_483.x_AdditionalShadowParams[x_2499].y;
        u_xlatb62 = (1.0f == x_2501);
        let x_2503 : bool = u_xlatb62;
        if (x_2503) {
          let x_2506 : vec4<f32> = u_xlat12;
          let x_2509 : vec4<f32> = x_483.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_2506.x, x_2506.y, x_2506.x, x_2506.y) + x_2509);
          let x_2512 : vec4<f32> = u_xlat13;
          let x_2513 : vec2<f32> = vec2<f32>(x_2512.x, x_2512.y);
          let x_2515 : f32 = u_xlat12.z;
          txVec30 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
          let x_2523 : vec3<f32> = txVec30;
          let x_2525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2523.xy, x_2523.z);
          u_xlat14.x = x_2525;
          let x_2528 : vec4<f32> = u_xlat13;
          let x_2529 : vec2<f32> = vec2<f32>(x_2528.z, x_2528.w);
          let x_2531 : f32 = u_xlat12.z;
          txVec31 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
          let x_2538 : vec3<f32> = txVec31;
          let x_2540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
          u_xlat14.y = x_2540;
          let x_2542 : vec4<f32> = u_xlat12;
          let x_2546 : vec4<f32> = x_483.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) + x_2546);
          let x_2549 : vec4<f32> = u_xlat13;
          let x_2550 : vec2<f32> = vec2<f32>(x_2549.x, x_2549.y);
          let x_2552 : f32 = u_xlat12.z;
          txVec32 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
          let x_2559 : vec3<f32> = txVec32;
          let x_2561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
          u_xlat14.z = x_2561;
          let x_2564 : vec4<f32> = u_xlat13;
          let x_2565 : vec2<f32> = vec2<f32>(x_2564.z, x_2564.w);
          let x_2567 : f32 = u_xlat12.z;
          txVec33 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
          let x_2574 : vec3<f32> = txVec33;
          let x_2576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2574.xy, x_2574.z);
          u_xlat14.w = x_2576;
          let x_2578 : vec4<f32> = u_xlat14;
          u_xlat62 = dot(x_2578, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2581 : i32 = u_xlati86;
          let x_2583 : f32 = x_483.x_AdditionalShadowParams[x_2581].y;
          u_xlatb89 = (2.0f == x_2583);
          let x_2585 : bool = u_xlatb89;
          if (x_2585) {
            let x_2588 : vec4<f32> = u_xlat12;
            let x_2592 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2595 : vec2<f32> = ((vec2<f32>(x_2588.x, x_2588.y) * vec2<f32>(x_2592.z, x_2592.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2596 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
            let x_2598 : vec4<f32> = u_xlat13;
            let x_2600 : vec2<f32> = floor(vec2<f32>(x_2598.x, x_2598.y));
            let x_2601 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2604 : vec4<f32> = u_xlat12;
            let x_2607 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2610 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2604.x, x_2604.y) * vec2<f32>(x_2607.z, x_2607.w)) + -(vec2<f32>(x_2610.x, x_2610.y)));
            let x_2614 : vec2<f32> = u_xlat67;
            u_xlat14 = (vec4<f32>(x_2614.x, x_2614.x, x_2614.y, x_2614.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2617 : vec4<f32> = u_xlat14;
            let x_2619 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2617.x, x_2617.x, x_2617.z, x_2617.z) * vec4<f32>(x_2619.x, x_2619.x, x_2619.z, x_2619.z));
            let x_2622 : vec4<f32> = u_xlat15;
            let x_2624 : vec2<f32> = (vec2<f32>(x_2622.y, x_2622.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2625 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2624.x, x_2625.y, x_2624.y, x_2625.w);
            let x_2627 : vec4<f32> = u_xlat15;
            let x_2630 : vec2<f32> = u_xlat67;
            let x_2632 : vec2<f32> = ((vec2<f32>(x_2627.x, x_2627.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2630));
            let x_2633 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
            let x_2635 : vec2<f32> = u_xlat67;
            u_xlat69 = (-(x_2635) + vec2<f32>(1.0f, 1.0f));
            let x_2638 : vec2<f32> = u_xlat67;
            let x_2639 : vec2<f32> = min(x_2638, vec2<f32>(0.0f, 0.0f));
            let x_2640 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
            let x_2642 : vec4<f32> = u_xlat16;
            let x_2645 : vec4<f32> = u_xlat16;
            let x_2648 : vec2<f32> = u_xlat69;
            let x_2649 : vec2<f32> = ((-(vec2<f32>(x_2642.x, x_2642.y)) * vec2<f32>(x_2645.x, x_2645.y)) + x_2648);
            let x_2650 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2649.x, x_2649.y, x_2650.z, x_2650.w);
            let x_2652 : vec2<f32> = u_xlat67;
            u_xlat67 = max(x_2652, vec2<f32>(0.0f, 0.0f));
            let x_2654 : vec2<f32> = u_xlat67;
            let x_2656 : vec2<f32> = u_xlat67;
            let x_2658 : vec4<f32> = u_xlat14;
            u_xlat67 = ((-(x_2654) * x_2656) + vec2<f32>(x_2658.y, x_2658.w));
            let x_2661 : vec4<f32> = u_xlat16;
            let x_2663 : vec2<f32> = (vec2<f32>(x_2661.x, x_2661.y) + vec2<f32>(1.0f, 1.0f));
            let x_2664 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2663.x, x_2663.y, x_2664.z, x_2664.w);
            let x_2666 : vec2<f32> = u_xlat67;
            u_xlat67 = (x_2666 + vec2<f32>(1.0f, 1.0f));
            let x_2668 : vec4<f32> = u_xlat15;
            let x_2670 : vec2<f32> = (vec2<f32>(x_2668.x, x_2668.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2671 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
            let x_2673 : vec2<f32> = u_xlat69;
            let x_2674 : vec2<f32> = (x_2673 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2675 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2674.x, x_2674.y, x_2675.z, x_2675.w);
            let x_2677 : vec4<f32> = u_xlat16;
            let x_2679 : vec2<f32> = (vec2<f32>(x_2677.x, x_2677.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2680 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec2<f32> = u_xlat67;
            let x_2683 : vec2<f32> = (x_2682 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2684 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2683.x, x_2683.y, x_2684.z, x_2684.w);
            let x_2686 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_2686.y, x_2686.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2690 : f32 = u_xlat16.x;
            u_xlat17.z = x_2690;
            let x_2693 : f32 = u_xlat67.x;
            u_xlat17.w = x_2693;
            let x_2696 : f32 = u_xlat18.x;
            u_xlat15.z = x_2696;
            let x_2699 : f32 = u_xlat14.x;
            u_xlat15.w = x_2699;
            let x_2701 : vec4<f32> = u_xlat15;
            let x_2703 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2701.z, x_2701.w, x_2701.x, x_2701.z) + vec4<f32>(x_2703.z, x_2703.w, x_2703.x, x_2703.z));
            let x_2707 : f32 = u_xlat17.y;
            u_xlat16.z = x_2707;
            let x_2710 : f32 = u_xlat67.y;
            u_xlat16.w = x_2710;
            let x_2713 : f32 = u_xlat15.y;
            u_xlat18.z = x_2713;
            let x_2716 : f32 = u_xlat14.z;
            u_xlat18.w = x_2716;
            let x_2718 : vec4<f32> = u_xlat16;
            let x_2720 : vec4<f32> = u_xlat18;
            let x_2722 : vec3<f32> = (vec3<f32>(x_2718.z, x_2718.y, x_2718.w) + vec3<f32>(x_2720.z, x_2720.y, x_2720.w));
            let x_2723 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
            let x_2725 : vec4<f32> = u_xlat15;
            let x_2727 : vec4<f32> = u_xlat19;
            let x_2729 : vec3<f32> = (vec3<f32>(x_2725.x, x_2725.z, x_2725.w) / vec3<f32>(x_2727.z, x_2727.w, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
            let x_2732 : vec4<f32> = u_xlat15;
            let x_2734 : vec3<f32> = (vec3<f32>(x_2732.x, x_2732.y, x_2732.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2735 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat18;
            let x_2739 : vec4<f32> = u_xlat14;
            let x_2741 : vec3<f32> = (vec3<f32>(x_2737.z, x_2737.y, x_2737.w) / vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
            let x_2742 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
            let x_2744 : vec4<f32> = u_xlat16;
            let x_2746 : vec3<f32> = (vec3<f32>(x_2744.x, x_2744.y, x_2744.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2747 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
            let x_2749 : vec4<f32> = u_xlat15;
            let x_2752 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2754 : vec3<f32> = (vec3<f32>(x_2749.y, x_2749.x, x_2749.z) * vec3<f32>(x_2752.x, x_2752.x, x_2752.x));
            let x_2755 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2755.w);
            let x_2757 : vec4<f32> = u_xlat16;
            let x_2760 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2762 : vec3<f32> = (vec3<f32>(x_2757.x, x_2757.y, x_2757.z) * vec3<f32>(x_2760.y, x_2760.y, x_2760.y));
            let x_2763 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
            let x_2766 : f32 = u_xlat16.x;
            u_xlat15.w = x_2766;
            let x_2768 : vec4<f32> = u_xlat13;
            let x_2771 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y) * vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y)) + vec4<f32>(x_2774.y, x_2774.w, x_2774.x, x_2774.w));
            let x_2777 : vec4<f32> = u_xlat13;
            let x_2780 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2783 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_2777.x, x_2777.y) * vec2<f32>(x_2780.x, x_2780.y)) + vec2<f32>(x_2783.z, x_2783.w));
            let x_2787 : f32 = u_xlat15.y;
            u_xlat16.w = x_2787;
            let x_2789 : vec4<f32> = u_xlat16;
            let x_2790 : vec2<f32> = vec2<f32>(x_2789.y, x_2789.z);
            let x_2791 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2791.x, x_2790.x, x_2791.z, x_2790.y);
            let x_2793 : vec4<f32> = u_xlat13;
            let x_2796 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2799 : vec4<f32> = u_xlat15;
            u_xlat18 = ((vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y) * vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y)) + vec4<f32>(x_2799.x, x_2799.y, x_2799.z, x_2799.y));
            let x_2802 : vec4<f32> = u_xlat13;
            let x_2805 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2808 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y) * vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y)) + vec4<f32>(x_2808.w, x_2808.y, x_2808.w, x_2808.z));
            let x_2811 : vec4<f32> = u_xlat13;
            let x_2814 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2817 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.x, x_2817.w, x_2817.z, x_2817.w));
            let x_2820 : vec4<f32> = u_xlat14;
            let x_2822 : vec4<f32> = u_xlat19;
            u_xlat20 = (vec4<f32>(x_2820.x, x_2820.x, x_2820.x, x_2820.y) * vec4<f32>(x_2822.z, x_2822.w, x_2822.y, x_2822.z));
            let x_2826 : vec4<f32> = u_xlat14;
            let x_2828 : vec4<f32> = u_xlat19;
            u_xlat21 = (vec4<f32>(x_2826.y, x_2826.y, x_2826.z, x_2826.z) * x_2828);
            let x_2831 : f32 = u_xlat14.z;
            let x_2833 : f32 = u_xlat19.y;
            u_xlat89 = (x_2831 * x_2833);
            let x_2836 : vec4<f32> = u_xlat17;
            let x_2837 : vec2<f32> = vec2<f32>(x_2836.x, x_2836.y);
            let x_2839 : f32 = u_xlat12.z;
            txVec34 = vec3<f32>(x_2837.x, x_2837.y, x_2839);
            let x_2846 : vec3<f32> = txVec34;
            let x_2848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
            u_xlat91 = x_2848;
            let x_2850 : vec4<f32> = u_xlat17;
            let x_2851 : vec2<f32> = vec2<f32>(x_2850.z, x_2850.w);
            let x_2853 : f32 = u_xlat12.z;
            txVec35 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
            let x_2861 : vec3<f32> = txVec35;
            let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
            u_xlat92 = x_2863;
            let x_2864 : f32 = u_xlat92;
            let x_2866 : f32 = u_xlat20.y;
            u_xlat92 = (x_2864 * x_2866);
            let x_2869 : f32 = u_xlat20.x;
            let x_2870 : f32 = u_xlat91;
            let x_2872 : f32 = u_xlat92;
            u_xlat91 = ((x_2869 * x_2870) + x_2872);
            let x_2875 : vec2<f32> = u_xlat67;
            let x_2877 : f32 = u_xlat12.z;
            txVec36 = vec3<f32>(x_2875.x, x_2875.y, x_2877);
            let x_2884 : vec3<f32> = txVec36;
            let x_2886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2884.xy, x_2884.z);
            u_xlat92 = x_2886;
            let x_2888 : f32 = u_xlat20.z;
            let x_2889 : f32 = u_xlat92;
            let x_2891 : f32 = u_xlat91;
            u_xlat91 = ((x_2888 * x_2889) + x_2891);
            let x_2894 : vec4<f32> = u_xlat16;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
            let x_2897 : f32 = u_xlat12.z;
            txVec37 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec37;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat92 = x_2906;
            let x_2908 : f32 = u_xlat20.w;
            let x_2909 : f32 = u_xlat92;
            let x_2911 : f32 = u_xlat91;
            u_xlat91 = ((x_2908 * x_2909) + x_2911);
            let x_2914 : vec4<f32> = u_xlat18;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.x, x_2914.y);
            let x_2917 : f32 = u_xlat12.z;
            txVec38 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec38;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat92 = x_2926;
            let x_2928 : f32 = u_xlat21.x;
            let x_2929 : f32 = u_xlat92;
            let x_2931 : f32 = u_xlat91;
            u_xlat91 = ((x_2928 * x_2929) + x_2931);
            let x_2934 : vec4<f32> = u_xlat18;
            let x_2935 : vec2<f32> = vec2<f32>(x_2934.z, x_2934.w);
            let x_2937 : f32 = u_xlat12.z;
            txVec39 = vec3<f32>(x_2935.x, x_2935.y, x_2937);
            let x_2944 : vec3<f32> = txVec39;
            let x_2946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2944.xy, x_2944.z);
            u_xlat92 = x_2946;
            let x_2948 : f32 = u_xlat21.y;
            let x_2949 : f32 = u_xlat92;
            let x_2951 : f32 = u_xlat91;
            u_xlat91 = ((x_2948 * x_2949) + x_2951);
            let x_2954 : vec4<f32> = u_xlat16;
            let x_2955 : vec2<f32> = vec2<f32>(x_2954.z, x_2954.w);
            let x_2957 : f32 = u_xlat12.z;
            txVec40 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
            let x_2964 : vec3<f32> = txVec40;
            let x_2966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
            u_xlat92 = x_2966;
            let x_2968 : f32 = u_xlat21.z;
            let x_2969 : f32 = u_xlat92;
            let x_2971 : f32 = u_xlat91;
            u_xlat91 = ((x_2968 * x_2969) + x_2971);
            let x_2974 : vec4<f32> = u_xlat15;
            let x_2975 : vec2<f32> = vec2<f32>(x_2974.x, x_2974.y);
            let x_2977 : f32 = u_xlat12.z;
            txVec41 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
            let x_2984 : vec3<f32> = txVec41;
            let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
            u_xlat92 = x_2986;
            let x_2988 : f32 = u_xlat21.w;
            let x_2989 : f32 = u_xlat92;
            let x_2991 : f32 = u_xlat91;
            u_xlat91 = ((x_2988 * x_2989) + x_2991);
            let x_2994 : vec4<f32> = u_xlat15;
            let x_2995 : vec2<f32> = vec2<f32>(x_2994.z, x_2994.w);
            let x_2997 : f32 = u_xlat12.z;
            txVec42 = vec3<f32>(x_2995.x, x_2995.y, x_2997);
            let x_3004 : vec3<f32> = txVec42;
            let x_3006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3004.xy, x_3004.z);
            u_xlat92 = x_3006;
            let x_3007 : f32 = u_xlat89;
            let x_3008 : f32 = u_xlat92;
            let x_3010 : f32 = u_xlat91;
            u_xlat62 = ((x_3007 * x_3008) + x_3010);
          } else {
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3016 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3019 : vec2<f32> = ((vec2<f32>(x_3013.x, x_3013.y) * vec2<f32>(x_3016.z, x_3016.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3020 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3019.x, x_3019.y, x_3020.z, x_3020.w);
            let x_3022 : vec4<f32> = u_xlat13;
            let x_3024 : vec2<f32> = floor(vec2<f32>(x_3022.x, x_3022.y));
            let x_3025 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3024.x, x_3024.y, x_3025.z, x_3025.w);
            let x_3027 : vec4<f32> = u_xlat12;
            let x_3030 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3033 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_3027.x, x_3027.y) * vec2<f32>(x_3030.z, x_3030.w)) + -(vec2<f32>(x_3033.x, x_3033.y)));
            let x_3037 : vec2<f32> = u_xlat67;
            u_xlat14 = (vec4<f32>(x_3037.x, x_3037.x, x_3037.y, x_3037.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3040 : vec4<f32> = u_xlat14;
            let x_3042 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_3040.x, x_3040.x, x_3040.z, x_3040.z) * vec4<f32>(x_3042.x, x_3042.x, x_3042.z, x_3042.z));
            let x_3045 : vec4<f32> = u_xlat15;
            let x_3047 : vec2<f32> = (vec2<f32>(x_3045.y, x_3045.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3048 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3048.x, x_3047.x, x_3048.z, x_3047.y);
            let x_3050 : vec4<f32> = u_xlat15;
            let x_3053 : vec2<f32> = u_xlat67;
            let x_3055 : vec2<f32> = ((vec2<f32>(x_3050.x, x_3050.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3053));
            let x_3056 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3055.x, x_3056.y, x_3055.y, x_3056.w);
            let x_3058 : vec2<f32> = u_xlat67;
            let x_3060 : vec2<f32> = (-(x_3058) + vec2<f32>(1.0f, 1.0f));
            let x_3061 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
            let x_3063 : vec2<f32> = u_xlat67;
            u_xlat69 = min(x_3063, vec2<f32>(0.0f, 0.0f));
            let x_3065 : vec2<f32> = u_xlat69;
            let x_3067 : vec2<f32> = u_xlat69;
            let x_3069 : vec4<f32> = u_xlat15;
            let x_3071 : vec2<f32> = ((-(x_3065) * x_3067) + vec2<f32>(x_3069.x, x_3069.y));
            let x_3072 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3071.x, x_3071.y, x_3072.z, x_3072.w);
            let x_3074 : vec2<f32> = u_xlat67;
            u_xlat69 = max(x_3074, vec2<f32>(0.0f, 0.0f));
            let x_3077 : vec2<f32> = u_xlat69;
            let x_3079 : vec2<f32> = u_xlat69;
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3083 : vec2<f32> = ((-(x_3077) * x_3079) + vec2<f32>(x_3081.y, x_3081.w));
            let x_3084 : vec3<f32> = u_xlat41;
            u_xlat41 = vec3<f32>(x_3083.x, x_3084.y, x_3083.y);
            let x_3086 : vec4<f32> = u_xlat15;
            let x_3088 : vec2<f32> = (vec2<f32>(x_3086.x, x_3086.y) + vec2<f32>(2.0f, 2.0f));
            let x_3089 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3088.x, x_3088.y, x_3089.z, x_3089.w);
            let x_3091 : vec3<f32> = u_xlat41;
            let x_3093 : vec2<f32> = (vec2<f32>(x_3091.x, x_3091.z) + vec2<f32>(2.0f, 2.0f));
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3094.x, x_3093.x, x_3094.z, x_3093.y);
            let x_3097 : f32 = u_xlat14.y;
            u_xlat17.z = (x_3097 * 0.08163200318813323975f);
            let x_3100 : vec4<f32> = u_xlat14;
            let x_3102 : vec3<f32> = (vec3<f32>(x_3100.z, x_3100.x, x_3100.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3103 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
            let x_3105 : vec4<f32> = u_xlat15;
            let x_3107 : vec2<f32> = (vec2<f32>(x_3105.x, x_3105.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3108 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3107.x, x_3107.y, x_3108.z, x_3108.w);
            let x_3111 : f32 = u_xlat18.y;
            u_xlat17.x = x_3111;
            let x_3113 : vec2<f32> = u_xlat67;
            let x_3116 : vec2<f32> = ((vec2<f32>(x_3113.x, x_3113.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3117 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3117.x, x_3116.x, x_3117.z, x_3116.y);
            let x_3119 : vec2<f32> = u_xlat67;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3119.x, x_3119.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3123 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3122.x, x_3123.y, x_3122.y, x_3123.w);
            let x_3126 : f32 = u_xlat14.x;
            u_xlat15.y = x_3126;
            let x_3129 : f32 = u_xlat16.y;
            u_xlat15.w = x_3129;
            let x_3131 : vec4<f32> = u_xlat15;
            let x_3132 : vec4<f32> = u_xlat17;
            u_xlat17 = (x_3131 + x_3132);
            let x_3134 : vec2<f32> = u_xlat67;
            let x_3137 : vec2<f32> = ((vec2<f32>(x_3134.y, x_3134.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3138 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3138.x, x_3137.x, x_3138.z, x_3137.y);
            let x_3140 : vec2<f32> = u_xlat67;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3140.y, x_3140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3144 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3143.x, x_3144.y, x_3143.y, x_3144.w);
            let x_3147 : f32 = u_xlat14.y;
            u_xlat16.y = x_3147;
            let x_3149 : vec4<f32> = u_xlat16;
            let x_3150 : vec4<f32> = u_xlat18;
            u_xlat14 = (x_3149 + x_3150);
            let x_3152 : vec4<f32> = u_xlat15;
            let x_3153 : vec4<f32> = u_xlat17;
            u_xlat15 = (x_3152 / x_3153);
            let x_3155 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3155 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3157 : vec4<f32> = u_xlat16;
            let x_3158 : vec4<f32> = u_xlat14;
            u_xlat16 = (x_3157 / x_3158);
            let x_3160 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3160 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3162 : vec4<f32> = u_xlat15;
            let x_3165 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3162.w, x_3162.x, x_3162.y, x_3162.z) * vec4<f32>(x_3165.x, x_3165.x, x_3165.x, x_3165.x));
            let x_3168 : vec4<f32> = u_xlat16;
            let x_3171 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_3168.x, x_3168.w, x_3168.y, x_3168.z) * vec4<f32>(x_3171.y, x_3171.y, x_3171.y, x_3171.y));
            let x_3174 : vec4<f32> = u_xlat15;
            let x_3175 : vec3<f32> = vec3<f32>(x_3174.y, x_3174.z, x_3174.w);
            let x_3176 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3175.x, x_3176.y, x_3175.y, x_3175.z);
            let x_3179 : f32 = u_xlat16.x;
            u_xlat18.y = x_3179;
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3184 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3187 : vec4<f32> = u_xlat18;
            u_xlat19 = ((vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.y) * vec4<f32>(x_3184.x, x_3184.y, x_3184.x, x_3184.y)) + vec4<f32>(x_3187.x, x_3187.y, x_3187.z, x_3187.y));
            let x_3190 : vec4<f32> = u_xlat13;
            let x_3193 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3196 : vec4<f32> = u_xlat18;
            u_xlat67 = ((vec2<f32>(x_3190.x, x_3190.y) * vec2<f32>(x_3193.x, x_3193.y)) + vec2<f32>(x_3196.w, x_3196.y));
            let x_3200 : f32 = u_xlat18.y;
            u_xlat15.y = x_3200;
            let x_3203 : f32 = u_xlat16.z;
            u_xlat18.y = x_3203;
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3208 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3211 : vec4<f32> = u_xlat18;
            u_xlat20 = ((vec4<f32>(x_3205.x, x_3205.y, x_3205.x, x_3205.y) * vec4<f32>(x_3208.x, x_3208.y, x_3208.x, x_3208.y)) + vec4<f32>(x_3211.x, x_3211.y, x_3211.z, x_3211.y));
            let x_3214 : vec4<f32> = u_xlat13;
            let x_3217 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3220 : vec4<f32> = u_xlat18;
            let x_3222 : vec2<f32> = ((vec2<f32>(x_3214.x, x_3214.y) * vec2<f32>(x_3217.x, x_3217.y)) + vec2<f32>(x_3220.w, x_3220.y));
            let x_3223 : vec4<f32> = u_xlat21;
            u_xlat21 = vec4<f32>(x_3222.x, x_3222.y, x_3223.z, x_3223.w);
            let x_3226 : f32 = u_xlat18.y;
            u_xlat15.z = x_3226;
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3232 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat15;
            u_xlat22 = ((vec4<f32>(x_3229.x, x_3229.y, x_3229.x, x_3229.y) * vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y)) + vec4<f32>(x_3235.x, x_3235.y, x_3235.x, x_3235.z));
            let x_3239 : f32 = u_xlat16.w;
            u_xlat18.y = x_3239;
            let x_3242 : vec4<f32> = u_xlat13;
            let x_3245 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3248 : vec4<f32> = u_xlat18;
            u_xlat23 = ((vec4<f32>(x_3242.x, x_3242.y, x_3242.x, x_3242.y) * vec4<f32>(x_3245.x, x_3245.y, x_3245.x, x_3245.y)) + vec4<f32>(x_3248.x, x_3248.y, x_3248.z, x_3248.y));
            let x_3252 : vec4<f32> = u_xlat13;
            let x_3255 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3258 : vec4<f32> = u_xlat18;
            u_xlat42 = ((vec2<f32>(x_3252.x, x_3252.y) * vec2<f32>(x_3255.x, x_3255.y)) + vec2<f32>(x_3258.w, x_3258.y));
            let x_3262 : f32 = u_xlat18.y;
            u_xlat15.w = x_3262;
            let x_3265 : vec4<f32> = u_xlat13;
            let x_3268 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3271 : vec4<f32> = u_xlat15;
            u_xlat75 = ((vec2<f32>(x_3265.x, x_3265.y) * vec2<f32>(x_3268.x, x_3268.y)) + vec2<f32>(x_3271.x, x_3271.w));
            let x_3274 : vec4<f32> = u_xlat18;
            let x_3275 : vec3<f32> = vec3<f32>(x_3274.x, x_3274.z, x_3274.w);
            let x_3276 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3275.x, x_3276.y, x_3275.y, x_3275.z);
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3281 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3284 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3278.x, x_3278.y, x_3278.x, x_3278.y) * vec4<f32>(x_3281.x, x_3281.y, x_3281.x, x_3281.y)) + vec4<f32>(x_3284.x, x_3284.y, x_3284.z, x_3284.y));
            let x_3288 : vec4<f32> = u_xlat13;
            let x_3291 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3294 : vec4<f32> = u_xlat16;
            u_xlat70 = ((vec2<f32>(x_3288.x, x_3288.y) * vec2<f32>(x_3291.x, x_3291.y)) + vec2<f32>(x_3294.w, x_3294.y));
            let x_3298 : f32 = u_xlat15.x;
            u_xlat16.x = x_3298;
            let x_3300 : vec4<f32> = u_xlat13;
            let x_3303 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3306 : vec4<f32> = u_xlat16;
            let x_3308 : vec2<f32> = ((vec2<f32>(x_3300.x, x_3300.y) * vec2<f32>(x_3303.x, x_3303.y)) + vec2<f32>(x_3306.x, x_3306.y));
            let x_3309 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3308.x, x_3308.y, x_3309.z, x_3309.w);
            let x_3312 : vec4<f32> = u_xlat14;
            let x_3314 : vec4<f32> = u_xlat17;
            u_xlat24 = (vec4<f32>(x_3312.x, x_3312.x, x_3312.x, x_3312.x) * x_3314);
            let x_3317 : vec4<f32> = u_xlat14;
            let x_3319 : vec4<f32> = u_xlat17;
            u_xlat25 = (vec4<f32>(x_3317.y, x_3317.y, x_3317.y, x_3317.y) * x_3319);
            let x_3322 : vec4<f32> = u_xlat14;
            let x_3324 : vec4<f32> = u_xlat17;
            u_xlat26 = (vec4<f32>(x_3322.z, x_3322.z, x_3322.z, x_3322.z) * x_3324);
            let x_3326 : vec4<f32> = u_xlat14;
            let x_3328 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_3326.w, x_3326.w, x_3326.w, x_3326.w) * x_3328);
            let x_3331 : vec4<f32> = u_xlat19;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.x, x_3331.y);
            let x_3334 : f32 = u_xlat12.z;
            txVec43 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec43;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat89 = x_3343;
            let x_3345 : vec4<f32> = u_xlat19;
            let x_3346 : vec2<f32> = vec2<f32>(x_3345.z, x_3345.w);
            let x_3348 : f32 = u_xlat12.z;
            txVec44 = vec3<f32>(x_3346.x, x_3346.y, x_3348);
            let x_3355 : vec3<f32> = txVec44;
            let x_3357 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3355.xy, x_3355.z);
            u_xlat91 = x_3357;
            let x_3358 : f32 = u_xlat91;
            let x_3360 : f32 = u_xlat24.y;
            u_xlat91 = (x_3358 * x_3360);
            let x_3363 : f32 = u_xlat24.x;
            let x_3364 : f32 = u_xlat89;
            let x_3366 : f32 = u_xlat91;
            u_xlat89 = ((x_3363 * x_3364) + x_3366);
            let x_3369 : vec2<f32> = u_xlat67;
            let x_3371 : f32 = u_xlat12.z;
            txVec45 = vec3<f32>(x_3369.x, x_3369.y, x_3371);
            let x_3378 : vec3<f32> = txVec45;
            let x_3380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3378.xy, x_3378.z);
            u_xlat91 = x_3380;
            let x_3382 : f32 = u_xlat24.z;
            let x_3383 : f32 = u_xlat91;
            let x_3385 : f32 = u_xlat89;
            u_xlat89 = ((x_3382 * x_3383) + x_3385);
            let x_3388 : vec4<f32> = u_xlat22;
            let x_3389 : vec2<f32> = vec2<f32>(x_3388.x, x_3388.y);
            let x_3391 : f32 = u_xlat12.z;
            txVec46 = vec3<f32>(x_3389.x, x_3389.y, x_3391);
            let x_3398 : vec3<f32> = txVec46;
            let x_3400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3398.xy, x_3398.z);
            u_xlat91 = x_3400;
            let x_3402 : f32 = u_xlat24.w;
            let x_3403 : f32 = u_xlat91;
            let x_3405 : f32 = u_xlat89;
            u_xlat89 = ((x_3402 * x_3403) + x_3405);
            let x_3408 : vec4<f32> = u_xlat20;
            let x_3409 : vec2<f32> = vec2<f32>(x_3408.x, x_3408.y);
            let x_3411 : f32 = u_xlat12.z;
            txVec47 = vec3<f32>(x_3409.x, x_3409.y, x_3411);
            let x_3418 : vec3<f32> = txVec47;
            let x_3420 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3418.xy, x_3418.z);
            u_xlat91 = x_3420;
            let x_3422 : f32 = u_xlat25.x;
            let x_3423 : f32 = u_xlat91;
            let x_3425 : f32 = u_xlat89;
            u_xlat89 = ((x_3422 * x_3423) + x_3425);
            let x_3428 : vec4<f32> = u_xlat20;
            let x_3429 : vec2<f32> = vec2<f32>(x_3428.z, x_3428.w);
            let x_3431 : f32 = u_xlat12.z;
            txVec48 = vec3<f32>(x_3429.x, x_3429.y, x_3431);
            let x_3438 : vec3<f32> = txVec48;
            let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
            u_xlat91 = x_3440;
            let x_3442 : f32 = u_xlat25.y;
            let x_3443 : f32 = u_xlat91;
            let x_3445 : f32 = u_xlat89;
            u_xlat89 = ((x_3442 * x_3443) + x_3445);
            let x_3448 : vec4<f32> = u_xlat21;
            let x_3449 : vec2<f32> = vec2<f32>(x_3448.x, x_3448.y);
            let x_3451 : f32 = u_xlat12.z;
            txVec49 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec49;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat91 = x_3460;
            let x_3462 : f32 = u_xlat25.z;
            let x_3463 : f32 = u_xlat91;
            let x_3465 : f32 = u_xlat89;
            u_xlat89 = ((x_3462 * x_3463) + x_3465);
            let x_3468 : vec4<f32> = u_xlat22;
            let x_3469 : vec2<f32> = vec2<f32>(x_3468.z, x_3468.w);
            let x_3471 : f32 = u_xlat12.z;
            txVec50 = vec3<f32>(x_3469.x, x_3469.y, x_3471);
            let x_3478 : vec3<f32> = txVec50;
            let x_3480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3478.xy, x_3478.z);
            u_xlat91 = x_3480;
            let x_3482 : f32 = u_xlat25.w;
            let x_3483 : f32 = u_xlat91;
            let x_3485 : f32 = u_xlat89;
            u_xlat89 = ((x_3482 * x_3483) + x_3485);
            let x_3488 : vec4<f32> = u_xlat23;
            let x_3489 : vec2<f32> = vec2<f32>(x_3488.x, x_3488.y);
            let x_3491 : f32 = u_xlat12.z;
            txVec51 = vec3<f32>(x_3489.x, x_3489.y, x_3491);
            let x_3498 : vec3<f32> = txVec51;
            let x_3500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3498.xy, x_3498.z);
            u_xlat91 = x_3500;
            let x_3502 : f32 = u_xlat26.x;
            let x_3503 : f32 = u_xlat91;
            let x_3505 : f32 = u_xlat89;
            u_xlat89 = ((x_3502 * x_3503) + x_3505);
            let x_3508 : vec4<f32> = u_xlat23;
            let x_3509 : vec2<f32> = vec2<f32>(x_3508.z, x_3508.w);
            let x_3511 : f32 = u_xlat12.z;
            txVec52 = vec3<f32>(x_3509.x, x_3509.y, x_3511);
            let x_3518 : vec3<f32> = txVec52;
            let x_3520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3518.xy, x_3518.z);
            u_xlat91 = x_3520;
            let x_3522 : f32 = u_xlat26.y;
            let x_3523 : f32 = u_xlat91;
            let x_3525 : f32 = u_xlat89;
            u_xlat89 = ((x_3522 * x_3523) + x_3525);
            let x_3528 : vec2<f32> = u_xlat42;
            let x_3530 : f32 = u_xlat12.z;
            txVec53 = vec3<f32>(x_3528.x, x_3528.y, x_3530);
            let x_3537 : vec3<f32> = txVec53;
            let x_3539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3537.xy, x_3537.z);
            u_xlat91 = x_3539;
            let x_3541 : f32 = u_xlat26.z;
            let x_3542 : f32 = u_xlat91;
            let x_3544 : f32 = u_xlat89;
            u_xlat89 = ((x_3541 * x_3542) + x_3544);
            let x_3547 : vec2<f32> = u_xlat75;
            let x_3549 : f32 = u_xlat12.z;
            txVec54 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3556 : vec3<f32> = txVec54;
            let x_3558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3556.xy, x_3556.z);
            u_xlat91 = x_3558;
            let x_3560 : f32 = u_xlat26.w;
            let x_3561 : f32 = u_xlat91;
            let x_3563 : f32 = u_xlat89;
            u_xlat89 = ((x_3560 * x_3561) + x_3563);
            let x_3566 : vec4<f32> = u_xlat18;
            let x_3567 : vec2<f32> = vec2<f32>(x_3566.x, x_3566.y);
            let x_3569 : f32 = u_xlat12.z;
            txVec55 = vec3<f32>(x_3567.x, x_3567.y, x_3569);
            let x_3576 : vec3<f32> = txVec55;
            let x_3578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3576.xy, x_3576.z);
            u_xlat91 = x_3578;
            let x_3580 : f32 = u_xlat14.x;
            let x_3581 : f32 = u_xlat91;
            let x_3583 : f32 = u_xlat89;
            u_xlat89 = ((x_3580 * x_3581) + x_3583);
            let x_3586 : vec4<f32> = u_xlat18;
            let x_3587 : vec2<f32> = vec2<f32>(x_3586.z, x_3586.w);
            let x_3589 : f32 = u_xlat12.z;
            txVec56 = vec3<f32>(x_3587.x, x_3587.y, x_3589);
            let x_3596 : vec3<f32> = txVec56;
            let x_3598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3596.xy, x_3596.z);
            u_xlat91 = x_3598;
            let x_3600 : f32 = u_xlat14.y;
            let x_3601 : f32 = u_xlat91;
            let x_3603 : f32 = u_xlat89;
            u_xlat89 = ((x_3600 * x_3601) + x_3603);
            let x_3606 : vec2<f32> = u_xlat70;
            let x_3608 : f32 = u_xlat12.z;
            txVec57 = vec3<f32>(x_3606.x, x_3606.y, x_3608);
            let x_3615 : vec3<f32> = txVec57;
            let x_3617 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3615.xy, x_3615.z);
            u_xlat91 = x_3617;
            let x_3619 : f32 = u_xlat14.z;
            let x_3620 : f32 = u_xlat91;
            let x_3622 : f32 = u_xlat89;
            u_xlat89 = ((x_3619 * x_3620) + x_3622);
            let x_3625 : vec4<f32> = u_xlat13;
            let x_3626 : vec2<f32> = vec2<f32>(x_3625.x, x_3625.y);
            let x_3628 : f32 = u_xlat12.z;
            txVec58 = vec3<f32>(x_3626.x, x_3626.y, x_3628);
            let x_3635 : vec3<f32> = txVec58;
            let x_3637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3635.xy, x_3635.z);
            u_xlat91 = x_3637;
            let x_3639 : f32 = u_xlat14.w;
            let x_3640 : f32 = u_xlat91;
            let x_3642 : f32 = u_xlat89;
            u_xlat62 = ((x_3639 * x_3640) + x_3642);
          }
        }
      } else {
        let x_3646 : vec4<f32> = u_xlat12;
        let x_3647 : vec2<f32> = vec2<f32>(x_3646.x, x_3646.y);
        let x_3649 : f32 = u_xlat12.z;
        txVec59 = vec3<f32>(x_3647.x, x_3647.y, x_3649);
        let x_3656 : vec3<f32> = txVec59;
        let x_3658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3656.xy, x_3656.z);
        u_xlat62 = x_3658;
      }
      let x_3659 : i32 = u_xlati86;
      let x_3661 : f32 = x_483.x_AdditionalShadowParams[x_3659].x;
      u_xlat89 = (1.0f + -(x_3661));
      let x_3664 : f32 = u_xlat62;
      let x_3665 : i32 = u_xlati86;
      let x_3667 : f32 = x_483.x_AdditionalShadowParams[x_3665].x;
      let x_3669 : f32 = u_xlat89;
      u_xlat62 = ((x_3664 * x_3667) + x_3669);
      let x_3672 : f32 = u_xlat12.z;
      u_xlatb89 = (0.0f >= x_3672);
      let x_3676 : f32 = u_xlat12.z;
      u_xlatb91 = (x_3676 >= 1.0f);
      let x_3678 : bool = u_xlatb89;
      let x_3679 : bool = u_xlatb91;
      u_xlatb89 = (x_3678 | x_3679);
      let x_3681 : bool = u_xlatb89;
      let x_3682 : f32 = u_xlat62;
      u_xlat62 = select(x_3682, 1.0f, x_3681);
    } else {
      u_xlat62 = 1.0f;
    }
    let x_3685 : f32 = u_xlat62;
    u_xlat89 = (-(x_3685) + 1.0f);
    let x_3689 : f32 = u_xlat3.x;
    let x_3690 : f32 = u_xlat89;
    let x_3692 : f32 = u_xlat62;
    u_xlat62 = ((x_3689 * x_3690) + x_3692);
    let x_3695 : i32 = u_xlati86;
    u_xlati89 = (1i << bitcast<u32>((x_3695 & 31i)));
    let x_3699 : i32 = u_xlati89;
    let x_3702 : f32 = x_1805.x_AdditionalLightsCookieEnableBits;
    u_xlati89 = bitcast<i32>((bitcast<u32>(x_3699) & bitcast<u32>(x_3702)));
    let x_3706 : i32 = u_xlati89;
    if ((x_3706 != 0i)) {
      let x_3710 : i32 = u_xlati86;
      let x_3712 : f32 = x_1805.x_AdditionalLightsLightTypes[x_3710].el;
      u_xlati89 = i32(x_3712);
      let x_3715 : i32 = u_xlati89;
      u_xlati91 = select(1i, 0i, (x_3715 != 0i));
      let x_3719 : i32 = u_xlati86;
      u_xlati92 = (x_3719 << bitcast<u32>(2i));
      let x_3721 : i32 = u_xlati91;
      if ((x_3721 != 0i)) {
        let x_3725 : vec3<f32> = vs_INTERP7;
        let x_3727 : i32 = u_xlati92;
        let x_3730 : i32 = u_xlati92;
        let x_3734 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3727 + 1i) / 4i)][((x_3730 + 1i) % 4i)];
        let x_3736 : vec3<f32> = (vec3<f32>(x_3725.y, x_3725.y, x_3725.y) * vec3<f32>(x_3734.x, x_3734.y, x_3734.w));
        let x_3737 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3736.x, x_3736.y, x_3736.z, x_3737.w);
        let x_3739 : i32 = u_xlati92;
        let x_3741 : i32 = u_xlati92;
        let x_3744 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3739 / 4i)][(x_3741 % 4i)];
        let x_3746 : vec3<f32> = vs_INTERP7;
        let x_3749 : vec4<f32> = u_xlat12;
        let x_3751 : vec3<f32> = ((vec3<f32>(x_3744.x, x_3744.y, x_3744.w) * vec3<f32>(x_3746.x, x_3746.x, x_3746.x)) + vec3<f32>(x_3749.x, x_3749.y, x_3749.z));
        let x_3752 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3751.x, x_3751.y, x_3751.z, x_3752.w);
        let x_3754 : i32 = u_xlati92;
        let x_3757 : i32 = u_xlati92;
        let x_3761 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3754 + 2i) / 4i)][((x_3757 + 2i) % 4i)];
        let x_3763 : vec3<f32> = vs_INTERP7;
        let x_3766 : vec4<f32> = u_xlat12;
        let x_3768 : vec3<f32> = ((vec3<f32>(x_3761.x, x_3761.y, x_3761.w) * vec3<f32>(x_3763.z, x_3763.z, x_3763.z)) + vec3<f32>(x_3766.x, x_3766.y, x_3766.z));
        let x_3769 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3769.w);
        let x_3771 : vec4<f32> = u_xlat12;
        let x_3773 : i32 = u_xlati92;
        let x_3776 : i32 = u_xlati92;
        let x_3780 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3773 + 3i) / 4i)][((x_3776 + 3i) % 4i)];
        let x_3782 : vec3<f32> = (vec3<f32>(x_3771.x, x_3771.y, x_3771.z) + vec3<f32>(x_3780.x, x_3780.y, x_3780.w));
        let x_3783 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3782.x, x_3782.y, x_3782.z, x_3783.w);
        let x_3785 : vec4<f32> = u_xlat12;
        let x_3787 : vec4<f32> = u_xlat12;
        let x_3789 : vec2<f32> = (vec2<f32>(x_3785.x, x_3785.y) / vec2<f32>(x_3787.z, x_3787.z));
        let x_3790 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3789.x, x_3789.y, x_3790.z, x_3790.w);
        let x_3792 : vec4<f32> = u_xlat12;
        let x_3795 : vec2<f32> = ((vec2<f32>(x_3792.x, x_3792.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3796 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3795.x, x_3795.y, x_3796.z, x_3796.w);
        let x_3798 : vec4<f32> = u_xlat12;
        let x_3802 : vec2<f32> = clamp(vec2<f32>(x_3798.x, x_3798.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3803 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3802.x, x_3802.y, x_3803.z, x_3803.w);
        let x_3805 : i32 = u_xlati86;
        let x_3807 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3805];
        let x_3809 : vec4<f32> = u_xlat12;
        let x_3812 : i32 = u_xlati86;
        let x_3814 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3812];
        let x_3816 : vec2<f32> = ((vec2<f32>(x_3807.x, x_3807.y) * vec2<f32>(x_3809.x, x_3809.y)) + vec2<f32>(x_3814.z, x_3814.w));
        let x_3817 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3816.x, x_3816.y, x_3817.z, x_3817.w);
      } else {
        let x_3820 : i32 = u_xlati89;
        u_xlatb89 = (x_3820 == 1i);
        let x_3822 : bool = u_xlatb89;
        u_xlati89 = select(0i, 1i, x_3822);
        let x_3824 : i32 = u_xlati89;
        if ((x_3824 != 0i)) {
          let x_3829 : vec3<f32> = vs_INTERP7;
          let x_3831 : i32 = u_xlati92;
          let x_3834 : i32 = u_xlati92;
          let x_3838 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3831 + 1i) / 4i)][((x_3834 + 1i) % 4i)];
          u_xlat66 = (vec2<f32>(x_3829.y, x_3829.y) * vec2<f32>(x_3838.x, x_3838.y));
          let x_3841 : i32 = u_xlati92;
          let x_3843 : i32 = u_xlati92;
          let x_3846 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3841 / 4i)][(x_3843 % 4i)];
          let x_3848 : vec3<f32> = vs_INTERP7;
          let x_3851 : vec2<f32> = u_xlat66;
          u_xlat66 = ((vec2<f32>(x_3846.x, x_3846.y) * vec2<f32>(x_3848.x, x_3848.x)) + x_3851);
          let x_3853 : i32 = u_xlati92;
          let x_3856 : i32 = u_xlati92;
          let x_3860 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3853 + 2i) / 4i)][((x_3856 + 2i) % 4i)];
          let x_3862 : vec3<f32> = vs_INTERP7;
          let x_3865 : vec2<f32> = u_xlat66;
          u_xlat66 = ((vec2<f32>(x_3860.x, x_3860.y) * vec2<f32>(x_3862.z, x_3862.z)) + x_3865);
          let x_3867 : vec2<f32> = u_xlat66;
          let x_3868 : i32 = u_xlati92;
          let x_3871 : i32 = u_xlati92;
          let x_3875 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3868 + 3i) / 4i)][((x_3871 + 3i) % 4i)];
          u_xlat66 = (x_3867 + vec2<f32>(x_3875.x, x_3875.y));
          let x_3878 : vec2<f32> = u_xlat66;
          u_xlat66 = ((x_3878 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3881 : vec2<f32> = u_xlat66;
          u_xlat66 = fract(x_3881);
          let x_3883 : i32 = u_xlati86;
          let x_3885 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3883];
          let x_3887 : vec2<f32> = u_xlat66;
          let x_3889 : i32 = u_xlati86;
          let x_3891 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3889];
          let x_3893 : vec2<f32> = ((vec2<f32>(x_3885.x, x_3885.y) * x_3887) + vec2<f32>(x_3891.z, x_3891.w));
          let x_3894 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3893.x, x_3893.y, x_3894.z, x_3894.w);
        } else {
          let x_3897 : vec3<f32> = vs_INTERP7;
          let x_3899 : i32 = u_xlati92;
          let x_3902 : i32 = u_xlati92;
          let x_3906 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3899 + 1i) / 4i)][((x_3902 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_3897.y, x_3897.y, x_3897.y, x_3897.y) * x_3906);
          let x_3908 : i32 = u_xlati92;
          let x_3910 : i32 = u_xlati92;
          let x_3913 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3908 / 4i)][(x_3910 % 4i)];
          let x_3914 : vec3<f32> = vs_INTERP7;
          let x_3917 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3913 * vec4<f32>(x_3914.x, x_3914.x, x_3914.x, x_3914.x)) + x_3917);
          let x_3919 : i32 = u_xlati92;
          let x_3922 : i32 = u_xlati92;
          let x_3926 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3919 + 2i) / 4i)][((x_3922 + 2i) % 4i)];
          let x_3927 : vec3<f32> = vs_INTERP7;
          let x_3930 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3926 * vec4<f32>(x_3927.z, x_3927.z, x_3927.z, x_3927.z)) + x_3930);
          let x_3932 : vec4<f32> = u_xlat13;
          let x_3933 : i32 = u_xlati92;
          let x_3936 : i32 = u_xlati92;
          let x_3940 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3933 + 3i) / 4i)][((x_3936 + 3i) % 4i)];
          u_xlat13 = (x_3932 + x_3940);
          let x_3942 : vec4<f32> = u_xlat13;
          let x_3944 : vec4<f32> = u_xlat13;
          let x_3946 : vec3<f32> = (vec3<f32>(x_3942.x, x_3942.y, x_3942.z) / vec3<f32>(x_3944.w, x_3944.w, x_3944.w));
          let x_3947 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3946.x, x_3946.y, x_3946.z, x_3947.w);
          let x_3949 : vec4<f32> = u_xlat13;
          let x_3951 : vec4<f32> = u_xlat13;
          u_xlat89 = dot(vec3<f32>(x_3949.x, x_3949.y, x_3949.z), vec3<f32>(x_3951.x, x_3951.y, x_3951.z));
          let x_3954 : f32 = u_xlat89;
          u_xlat89 = inverseSqrt(x_3954);
          let x_3956 : f32 = u_xlat89;
          let x_3958 : vec4<f32> = u_xlat13;
          let x_3960 : vec3<f32> = (vec3<f32>(x_3956, x_3956, x_3956) * vec3<f32>(x_3958.x, x_3958.y, x_3958.z));
          let x_3961 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3960.x, x_3960.y, x_3960.z, x_3961.w);
          let x_3963 : vec4<f32> = u_xlat13;
          u_xlat89 = dot(abs(vec3<f32>(x_3963.x, x_3963.y, x_3963.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3968 : f32 = u_xlat89;
          u_xlat89 = max(x_3968, 0.00000099999999747524f);
          let x_3971 : f32 = u_xlat89;
          u_xlat89 = (1.0f / x_3971);
          let x_3973 : f32 = u_xlat89;
          let x_3975 : vec4<f32> = u_xlat13;
          let x_3977 : vec3<f32> = (vec3<f32>(x_3973, x_3973, x_3973) * vec3<f32>(x_3975.z, x_3975.x, x_3975.y));
          let x_3978 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_3977.x, x_3977.y, x_3977.z, x_3978.w);
          let x_3981 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_3981);
          let x_3985 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_3985, 0.0f, 1.0f);
          let x_3989 : vec4<f32> = u_xlat14;
          let x_3991 : vec4<bool> = (vec4<f32>(x_3989.y, x_3989.z, x_3989.y, x_3989.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_3991.x, x_3991.y);
          let x_3994 : bool = u_xlatb66.x;
          if (x_3994) {
            let x_3999 : f32 = u_xlat14.x;
            x_3995 = x_3999;
          } else {
            let x_4002 : f32 = u_xlat14.x;
            x_3995 = -(x_4002);
          }
          let x_4004 : f32 = x_3995;
          u_xlat66.x = x_4004;
          let x_4007 : bool = u_xlatb66.y;
          if (x_4007) {
            let x_4012 : f32 = u_xlat14.x;
            x_4008 = x_4012;
          } else {
            let x_4015 : f32 = u_xlat14.x;
            x_4008 = -(x_4015);
          }
          let x_4017 : f32 = x_4008;
          u_xlat66.y = x_4017;
          let x_4019 : vec4<f32> = u_xlat13;
          let x_4021 : f32 = u_xlat89;
          let x_4024 : vec2<f32> = u_xlat66;
          u_xlat66 = ((vec2<f32>(x_4019.x, x_4019.y) * vec2<f32>(x_4021, x_4021)) + x_4024);
          let x_4026 : vec2<f32> = u_xlat66;
          u_xlat66 = ((x_4026 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4029 : vec2<f32> = u_xlat66;
          u_xlat66 = clamp(x_4029, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4033 : i32 = u_xlati86;
          let x_4035 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_4033];
          let x_4037 : vec2<f32> = u_xlat66;
          let x_4039 : i32 = u_xlati86;
          let x_4041 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_4039];
          let x_4043 : vec2<f32> = ((vec2<f32>(x_4035.x, x_4035.y) * x_4037) + vec2<f32>(x_4041.z, x_4041.w));
          let x_4044 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4043.x, x_4043.y, x_4044.z, x_4044.w);
        }
      }
      let x_4051 : vec4<f32> = u_xlat12;
      let x_4053 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4051.x, x_4051.y), 0.0f);
      u_xlat12 = x_4053;
      let x_4055 : bool = u_xlatb8.y;
      if (x_4055) {
        let x_4060 : f32 = u_xlat12.w;
        x_4056 = x_4060;
      } else {
        let x_4063 : f32 = u_xlat12.x;
        x_4056 = x_4063;
      }
      let x_4064 : f32 = x_4056;
      u_xlat89 = x_4064;
      let x_4066 : bool = u_xlatb8.x;
      if (x_4066) {
        let x_4070 : vec4<f32> = u_xlat12;
        x_4067 = vec3<f32>(x_4070.x, x_4070.y, x_4070.z);
      } else {
        let x_4073 : f32 = u_xlat89;
        x_4067 = vec3<f32>(x_4073, x_4073, x_4073);
      }
      let x_4075 : vec3<f32> = x_4067;
      let x_4076 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_4075.x, x_4075.y, x_4075.z, x_4076.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_4082 : vec4<f32> = u_xlat12;
    let x_4084 : i32 = u_xlati86;
    let x_4086 : vec4<f32> = x_2272.x_AdditionalLightsColor[x_4084];
    let x_4088 : vec3<f32> = (vec3<f32>(x_4082.x, x_4082.y, x_4082.z) * vec3<f32>(x_4086.x, x_4086.y, x_4086.z));
    let x_4089 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_4088.x, x_4088.y, x_4088.z, x_4089.w);
    let x_4091 : f32 = u_xlat87;
    let x_4092 : f32 = u_xlat62;
    u_xlat86 = (x_4091 * x_4092);
    let x_4094 : vec4<f32> = u_xlat4;
    let x_4096 : vec4<f32> = u_xlat11;
    u_xlat87 = dot(vec3<f32>(x_4094.x, x_4094.y, x_4094.z), vec3<f32>(x_4096.x, x_4096.y, x_4096.z));
    let x_4099 : f32 = u_xlat87;
    u_xlat87 = clamp(x_4099, 0.0f, 1.0f);
    let x_4101 : f32 = u_xlat86;
    let x_4102 : f32 = u_xlat87;
    u_xlat86 = (x_4101 * x_4102);
    let x_4104 : f32 = u_xlat86;
    let x_4106 : vec4<f32> = u_xlat12;
    let x_4108 : vec3<f32> = (vec3<f32>(x_4104, x_4104, x_4104) * vec3<f32>(x_4106.x, x_4106.y, x_4106.z));
    let x_4109 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4109.w);
    let x_4111 : vec4<f32> = u_xlat10;
    let x_4113 : f32 = u_xlat88;
    let x_4116 : vec4<f32> = u_xlat1;
    let x_4118 : vec3<f32> = ((vec3<f32>(x_4111.x, x_4111.y, x_4111.z) * vec3<f32>(x_4113, x_4113, x_4113)) + vec3<f32>(x_4116.x, x_4116.y, x_4116.w));
    let x_4119 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
    let x_4121 : vec4<f32> = u_xlat10;
    let x_4123 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_4121.x, x_4121.y, x_4121.z), vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
    let x_4126 : f32 = u_xlat86;
    u_xlat86 = max(x_4126, 1.17549435e-38f);
    let x_4128 : f32 = u_xlat86;
    u_xlat86 = inverseSqrt(x_4128);
    let x_4130 : f32 = u_xlat86;
    let x_4132 : vec4<f32> = u_xlat10;
    let x_4134 : vec3<f32> = (vec3<f32>(x_4130, x_4130, x_4130) * vec3<f32>(x_4132.x, x_4132.y, x_4132.z));
    let x_4135 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4134.x, x_4134.y, x_4134.z, x_4135.w);
    let x_4137 : vec4<f32> = u_xlat4;
    let x_4139 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_4137.x, x_4137.y, x_4137.z), vec3<f32>(x_4139.x, x_4139.y, x_4139.z));
    let x_4142 : f32 = u_xlat86;
    u_xlat86 = clamp(x_4142, 0.0f, 1.0f);
    let x_4144 : vec4<f32> = u_xlat11;
    let x_4146 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_4144.x, x_4144.y, x_4144.z), vec3<f32>(x_4146.x, x_4146.y, x_4146.z));
    let x_4149 : f32 = u_xlat87;
    u_xlat87 = clamp(x_4149, 0.0f, 1.0f);
    let x_4151 : f32 = u_xlat86;
    let x_4152 : f32 = u_xlat86;
    u_xlat86 = (x_4151 * x_4152);
    let x_4154 : f32 = u_xlat86;
    let x_4156 : f32 = u_xlat9.x;
    u_xlat86 = ((x_4154 * x_4156) + 1.00001001358032226562f);
    let x_4159 : f32 = u_xlat87;
    let x_4160 : f32 = u_xlat87;
    u_xlat87 = (x_4159 * x_4160);
    let x_4162 : f32 = u_xlat86;
    let x_4163 : f32 = u_xlat86;
    u_xlat86 = (x_4162 * x_4163);
    let x_4165 : f32 = u_xlat87;
    u_xlat87 = max(x_4165, 0.10000000149011611938f);
    let x_4167 : f32 = u_xlat86;
    let x_4168 : f32 = u_xlat87;
    u_xlat86 = (x_4167 * x_4168);
    let x_4170 : f32 = u_xlat85;
    let x_4171 : f32 = u_xlat86;
    u_xlat86 = (x_4170 * x_4171);
    let x_4173 : f32 = u_xlat30;
    let x_4174 : f32 = u_xlat86;
    u_xlat86 = (x_4173 / x_4174);
    let x_4176 : vec3<f32> = u_xlat0;
    let x_4177 : f32 = u_xlat86;
    let x_4180 : vec4<f32> = u_xlat6;
    let x_4182 : vec3<f32> = ((x_4176 * vec3<f32>(x_4177, x_4177, x_4177)) + vec3<f32>(x_4180.x, x_4180.y, x_4180.z));
    let x_4183 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4182.x, x_4182.y, x_4182.z, x_4183.w);
    let x_4185 : vec4<f32> = u_xlat10;
    let x_4187 : vec4<f32> = u_xlat12;
    let x_4190 : vec3<f32> = u_xlat36;
    u_xlat36 = ((vec3<f32>(x_4185.x, x_4185.y, x_4185.z) * vec3<f32>(x_4187.x, x_4187.y, x_4187.z)) + x_4190);

    continuing {
      let x_4192 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4192 + bitcast<u32>(1i));
    }
  }
  let x_4194 : vec3<f32> = u_xlat5;
  let x_4195 : f32 = u_xlat57;
  let x_4198 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_4194 * vec3<f32>(x_4195, x_4195, x_4195)) + vec3<f32>(x_4198.x, x_4198.y, x_4198.z));
  let x_4201 : vec3<f32> = u_xlat36;
  let x_4202 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_4201 + x_4202);
  let x_4204 : vec4<f32> = u_xlat2;
  let x_4206 : f32 = u_xlat55;
  let x_4209 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_4204.x, x_4204.y, x_4204.z) * vec3<f32>(x_4206, x_4206, x_4206)) + x_4209);
  let x_4211 : f32 = u_xlat81;
  let x_4212 : f32 = u_xlat81;
  u_xlat81 = (x_4211 * -(x_4212));
  let x_4215 : f32 = u_xlat81;
  u_xlat81 = exp2(x_4215);
  let x_4217 : vec3<f32> = u_xlat0;
  let x_4219 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_4217 + -(vec3<f32>(x_4219.x, x_4219.y, x_4219.z)));
  let x_4225 : f32 = u_xlat81;
  let x_4227 : vec3<f32> = u_xlat0;
  let x_4230 : vec4<f32> = x_29.unity_FogColor;
  let x_4232 : vec3<f32> = ((vec3<f32>(x_4225, x_4225, x_4225) * x_4227) + vec3<f32>(x_4230.x, x_4230.y, x_4230.z));
  let x_4233 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4232.x, x_4232.y, x_4232.z, x_4233.w);
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


