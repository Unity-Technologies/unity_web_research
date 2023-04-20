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

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_298 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu81 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat57 : f32;

var<private> u_xlatb86 : bool;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat86 : f32;

var<private> u_xlatb87 : bool;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlat36 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb32 : bool;

var<private> u_xlatb59 : vec2<bool>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat59 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_1980 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu83 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu32 : u32;

var<private> u_xlati87 : i32;

var<private> u_xlati32 : i32;

@group(1) @binding(1) var<uniform> x_2449 : AdditionalLights;

var<private> u_xlati62 : i32;

var<private> u_xlatb89 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat90 : f32;

var<private> u_xlat89 : f32;

var<private> u_xlatb62 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat92 : f32;

var<private> u_xlat41 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat75 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlatb90 : bool;

var<private> u_xlati89 : i32;

var<private> u_xlati90 : i32;

var<private> u_xlati92 : i32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlatb66 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

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
  var x_1931 : f32;
  var x_2047 : f32;
  var x_2058 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2590 : f32;
  var x_2600 : f32;
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
  var x_3868 : f32;
  var x_4191 : f32;
  var x_4204 : f32;
  var x_4252 : f32;
  var x_4263 : vec3<f32>;
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
    let x_285 : vec4<f32> = u_xlat5;
    x_279 = vec3<f32>(x_285.x, x_285.y, x_285.z);
  }
  let x_287 : vec3<f32> = x_279;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_287.z);
  let x_290 : vec3<f32> = vs_INTERP7;
  let x_300 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres0;
  let x_303 : vec3<f32> = (x_290 + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec3<f32> = vs_INTERP7;
  let x_309 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres1;
  let x_312 : vec3<f32> = (x_307 + -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec3<f32> = vs_INTERP7;
  let x_318 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres2;
  let x_321 : vec3<f32> = (x_316 + -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec3<f32> = vs_INTERP7;
  let x_327 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres3;
  let x_330 : vec3<f32> = (x_325 + -(vec3<f32>(x_327.x, x_327.y, x_327.z)));
  let x_331 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec4<f32> = u_xlat7;
  let x_347 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat8;
  let x_353 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_360 : vec4<f32> = u_xlat5;
  let x_363 : vec4<f32> = x_298.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_360 < x_363);
  let x_366 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_374);
  let x_378 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_378);
  let x_382 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_382);
  let x_387 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_387);
  let x_391 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_391);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(x_396.y, x_396.z, x_396.w));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat5;
  let x_404 : vec3<f32> = max(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_404.x, x_404.y, x_404.z);
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat81 = dot(x_407, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_412 : f32 = u_xlat81;
  u_xlat81 = (-(x_412) + 4.0f);
  let x_417 : f32 = u_xlat81;
  u_xlatu81 = u32(x_417);
  let x_421 : u32 = u_xlatu81;
  u_xlati81 = (bitcast<i32>(x_421) << bitcast<u32>(2i));
  let x_424 : vec3<f32> = vs_INTERP7;
  let x_426 : i32 = u_xlati81;
  let x_429 : i32 = u_xlati81;
  let x_433 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_426 + 1i) / 4i)][((x_429 + 1i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.y, x_424.y, x_424.y) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : i32 = u_xlati81;
  let x_440 : i32 = u_xlati81;
  let x_443 : vec4<f32> = x_298.x_MainLightWorldToShadow[(x_438 / 4i)][(x_440 % 4i)];
  let x_445 : vec3<f32> = vs_INTERP7;
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_445.x, x_445.x, x_445.x)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : i32 = u_xlati81;
  let x_456 : i32 = u_xlati81;
  let x_460 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_453 + 2i) / 4i)][((x_456 + 2i) % 4i)];
  let x_462 : vec3<f32> = vs_INTERP7;
  let x_465 : vec4<f32> = u_xlat5;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.z, x_462.z, x_462.z)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat5;
  let x_472 : i32 = u_xlati81;
  let x_475 : i32 = u_xlati81;
  let x_479 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_472 + 3i) / 4i)][((x_475 + 3i) % 4i)];
  let x_481 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = vs_INTERP7.y;
  let x_487 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat81 = (x_485 * x_487);
  let x_490 : f32 = x_29.unity_MatrixV[0i].z;
  let x_492 : f32 = vs_INTERP7.x;
  let x_494 : f32 = u_xlat81;
  u_xlat81 = ((x_490 * x_492) + x_494);
  let x_497 : f32 = x_29.unity_MatrixV[2i].z;
  let x_499 : f32 = vs_INTERP7.z;
  let x_501 : f32 = u_xlat81;
  u_xlat81 = ((x_497 * x_499) + x_501);
  let x_503 : f32 = u_xlat81;
  let x_505 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat81 = (x_503 + x_505);
  let x_507 : f32 = u_xlat81;
  let x_510 : f32 = x_29.x_ProjectionParams.y;
  u_xlat81 = (-(x_507) + -(x_510));
  let x_513 : f32 = u_xlat81;
  u_xlat81 = max(x_513, 0.0f);
  let x_515 : f32 = u_xlat81;
  let x_518 : f32 = x_29.unity_FogParams.x;
  u_xlat81 = (x_515 * x_518);
  u_xlat4.w = 1.0f;
  let x_523 : vec4<f32> = x_107.unity_SHAr;
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_107.unity_SHAg;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_107.unity_SHAb;
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_535, x_536);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_539.y, x_539.z, x_539.z, x_539.x) * vec4<f32>(x_541.x, x_541.y, x_541.z, x_541.z));
  let x_546 : vec4<f32> = x_107.unity_SHBr;
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_546, x_547);
  let x_552 : vec4<f32> = x_107.unity_SHBg;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_552, x_553);
  let x_558 : vec4<f32> = x_107.unity_SHBb;
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_558, x_559);
  let x_563 : f32 = u_xlat4.y;
  let x_565 : f32 = u_xlat4.y;
  u_xlat83 = (x_563 * x_565);
  let x_568 : f32 = u_xlat4.x;
  let x_570 : f32 = u_xlat4.x;
  let x_572 : f32 = u_xlat83;
  u_xlat83 = ((x_568 * x_570) + -(x_572));
  let x_577 : vec4<f32> = x_107.unity_SHC;
  let x_579 : f32 = u_xlat83;
  let x_582 : vec4<f32> = u_xlat8;
  let x_584 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_579, x_579, x_579)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat6;
  let x_589 : vec4<f32> = u_xlat7;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = max(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = u_xlat3;
  let x_600 : vec2<f32> = vec2<f32>(x_599.x, x_599.y);
  let x_601 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_600.x, x_600.y, x_601.z);
  let x_603 : vec3<f32> = u_xlat3;
  let x_607 : vec2<f32> = clamp(vec2<f32>(x_603.x, x_603.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_608 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_607.x, x_607.y, x_608.z);
  let x_611 : f32 = u_xlat3.x;
  u_xlat83 = ((-(x_611) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_617 : f32 = u_xlat83;
  u_xlat84 = (-(x_617) + 1.0f);
  let x_620 : vec3<f32> = u_xlat0;
  let x_621 : f32 = u_xlat83;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621, x_621, x_621));
  let x_624 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_626 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_630 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_630.x, x_630.x, x_630.x) * x_632) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_638 : f32 = u_xlat3.y;
  u_xlat83 = (-(x_638) + 1.0f);
  let x_641 : f32 = u_xlat83;
  let x_642 : f32 = u_xlat83;
  u_xlat3.x = (x_641 * x_642);
  let x_646 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_646, 0.0078125f);
  let x_652 : f32 = u_xlat3.x;
  let x_654 : f32 = u_xlat3.x;
  u_xlat85 = (x_652 * x_654);
  let x_657 : f32 = u_xlat84;
  let x_659 : f32 = u_xlat3.y;
  u_xlat30 = (x_657 + x_659);
  let x_661 : f32 = u_xlat30;
  u_xlat30 = min(x_661, 1.0f);
  let x_664 : f32 = u_xlat3.x;
  u_xlat84 = ((x_664 * 4.0f) + 2.0f);
  let x_669 : f32 = u_xlat3.z;
  u_xlat57 = min(x_669, 1.0f);
  let x_674 : f32 = x_298.x_MainLightShadowParams.y;
  u_xlatb86 = (0.0f < x_674);
  let x_676 : bool = u_xlatb86;
  if (x_676) {
    let x_680 : f32 = x_298.x_MainLightShadowParams.y;
    u_xlatb86 = (x_680 == 1.0f);
    let x_682 : bool = u_xlatb86;
    if (x_682) {
      let x_685 : vec4<f32> = u_xlat5;
      let x_688 : vec4<f32> = x_298.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) + x_688);
      let x_691 : vec4<f32> = u_xlat8;
      let x_692 : vec2<f32> = vec2<f32>(x_691.x, x_691.y);
      let x_694 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_692.x, x_692.y, x_694);
      let x_707 : vec3<f32> = txVec0;
      let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
      u_xlat9.x = x_709;
      let x_712 : vec4<f32> = u_xlat8;
      let x_713 : vec2<f32> = vec2<f32>(x_712.z, x_712.w);
      let x_715 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_713.x, x_713.y, x_715);
      let x_722 : vec3<f32> = txVec1;
      let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
      u_xlat9.y = x_724;
      let x_726 : vec4<f32> = u_xlat5;
      let x_729 : vec4<f32> = x_298.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_726.x, x_726.y, x_726.x, x_726.y) + x_729);
      let x_732 : vec4<f32> = u_xlat8;
      let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
      let x_735 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_733.x, x_733.y, x_735);
      let x_742 : vec3<f32> = txVec2;
      let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
      u_xlat9.z = x_744;
      let x_747 : vec4<f32> = u_xlat8;
      let x_748 : vec2<f32> = vec2<f32>(x_747.z, x_747.w);
      let x_750 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_748.x, x_748.y, x_750);
      let x_757 : vec3<f32> = txVec3;
      let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
      u_xlat9.w = x_759;
      let x_762 : vec4<f32> = u_xlat9;
      u_xlat86 = dot(x_762, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_769 : f32 = x_298.x_MainLightShadowParams.y;
      u_xlatb87 = (x_769 == 2.0f);
      let x_771 : bool = u_xlatb87;
      if (x_771) {
        let x_774 : vec4<f32> = u_xlat5;
        let x_777 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_782 : vec2<f32> = ((vec2<f32>(x_774.x, x_774.y) * vec2<f32>(x_777.z, x_777.w)) + vec2<f32>(0.5f, 0.5f));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
        let x_785 : vec4<f32> = u_xlat8;
        let x_787 : vec2<f32> = floor(vec2<f32>(x_785.x, x_785.y));
        let x_788 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_792 : vec4<f32> = u_xlat5;
        let x_795 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_795.z, x_795.w)) + -(vec2<f32>(x_798.x, x_798.y)));
        let x_802 : vec2<f32> = u_xlat62;
        u_xlat9 = (vec4<f32>(x_802.x, x_802.x, x_802.y, x_802.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_807.x, x_807.x, x_807.z, x_807.z) * vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z));
        let x_812 : vec4<f32> = u_xlat10;
        let x_816 : vec2<f32> = (vec2<f32>(x_812.y, x_812.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_817.y, x_816.y, x_817.w);
        let x_819 : vec4<f32> = u_xlat10;
        let x_822 : vec2<f32> = u_xlat62;
        let x_824 : vec2<f32> = ((vec2<f32>(x_819.x, x_819.z) * vec2<f32>(0.5f, 0.5f)) + -(x_822));
        let x_825 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_828 : vec2<f32> = u_xlat62;
        u_xlat64 = (-(x_828) + vec2<f32>(1.0f, 1.0f));
        let x_833 : vec2<f32> = u_xlat62;
        let x_835 : vec2<f32> = min(x_833, vec2<f32>(0.0f, 0.0f));
        let x_836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat11;
        let x_841 : vec4<f32> = u_xlat11;
        let x_844 : vec2<f32> = u_xlat64;
        let x_845 : vec2<f32> = ((-(vec2<f32>(x_838.x, x_838.y)) * vec2<f32>(x_841.x, x_841.y)) + x_844);
        let x_846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_848 : vec2<f32> = u_xlat62;
        u_xlat62 = max(x_848, vec2<f32>(0.0f, 0.0f));
        let x_850 : vec2<f32> = u_xlat62;
        let x_852 : vec2<f32> = u_xlat62;
        let x_854 : vec4<f32> = u_xlat9;
        u_xlat62 = ((-(x_850) * x_852) + vec2<f32>(x_854.y, x_854.w));
        let x_857 : vec4<f32> = u_xlat11;
        let x_859 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) + vec2<f32>(1.0f, 1.0f));
        let x_860 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_862 + vec2<f32>(1.0f, 1.0f));
        let x_865 : vec4<f32> = u_xlat10;
        let x_869 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_870 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec2<f32> = u_xlat64;
        let x_873 : vec2<f32> = (x_872 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_874 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat11;
        let x_878 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_882 : vec2<f32> = u_xlat62;
        let x_883 : vec2<f32> = (x_882 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_884 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat62 = (vec2<f32>(x_886.y, x_886.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_890 : f32 = u_xlat11.x;
        u_xlat12.z = x_890;
        let x_893 : f32 = u_xlat62.x;
        u_xlat12.w = x_893;
        let x_896 : f32 = u_xlat13.x;
        u_xlat10.z = x_896;
        let x_899 : f32 = u_xlat9.x;
        u_xlat10.w = x_899;
        let x_902 : vec4<f32> = u_xlat10;
        let x_904 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_902.z, x_902.w, x_902.x, x_902.z) + vec4<f32>(x_904.z, x_904.w, x_904.x, x_904.z));
        let x_908 : f32 = u_xlat12.y;
        u_xlat11.z = x_908;
        let x_911 : f32 = u_xlat62.y;
        u_xlat11.w = x_911;
        let x_914 : f32 = u_xlat10.y;
        u_xlat13.z = x_914;
        let x_917 : f32 = u_xlat9.z;
        u_xlat13.w = x_917;
        let x_919 : vec4<f32> = u_xlat11;
        let x_921 : vec4<f32> = u_xlat13;
        let x_923 : vec3<f32> = (vec3<f32>(x_919.z, x_919.y, x_919.w) + vec3<f32>(x_921.z, x_921.y, x_921.w));
        let x_924 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat10;
        let x_928 : vec4<f32> = u_xlat14;
        let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.z, x_926.w) / vec3<f32>(x_928.z, x_928.w, x_928.y));
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat10;
        let x_939 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_940 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat13;
        let x_944 : vec4<f32> = u_xlat9;
        let x_946 : vec3<f32> = (vec3<f32>(x_942.z, x_942.y, x_942.w) / vec3<f32>(x_944.x, x_944.y, x_944.z));
        let x_947 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat11;
        let x_951 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat10;
        let x_957 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_959 : vec3<f32> = (vec3<f32>(x_954.y, x_954.x, x_954.z) * vec3<f32>(x_957.x, x_957.x, x_957.x));
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat11;
        let x_965 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_967 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(x_965.y, x_965.y, x_965.y));
        let x_968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_971 : f32 = u_xlat11.x;
        u_xlat10.w = x_971;
        let x_973 : vec4<f32> = u_xlat8;
        let x_976 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_973.x, x_973.y, x_973.x, x_973.y) * vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y)) + vec4<f32>(x_979.y, x_979.w, x_979.x, x_979.w));
        let x_982 : vec4<f32> = u_xlat8;
        let x_985 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_982.x, x_982.y) * vec2<f32>(x_985.x, x_985.y)) + vec2<f32>(x_988.z, x_988.w));
        let x_992 : f32 = u_xlat10.y;
        u_xlat11.w = x_992;
        let x_994 : vec4<f32> = u_xlat11;
        let x_995 : vec2<f32> = vec2<f32>(x_994.y, x_994.z);
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_996.x, x_995.x, x_996.z, x_995.y);
        let x_998 : vec4<f32> = u_xlat8;
        let x_1001 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y) * vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y)) + vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1010 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1013 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y) * vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y)) + vec4<f32>(x_1013.w, x_1013.y, x_1013.w, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.x, x_1022.w, x_1022.z, x_1022.w));
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1028 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_1026.x, x_1026.x, x_1026.x, x_1026.y) * vec4<f32>(x_1028.z, x_1028.w, x_1028.y, x_1028.z));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1032.y, x_1032.y, x_1032.z, x_1032.z) * x_1034);
        let x_1038 : f32 = u_xlat9.z;
        let x_1040 : f32 = u_xlat14.y;
        u_xlat87 = (x_1038 * x_1040);
        let x_1043 : vec4<f32> = u_xlat12;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.x, x_1043.y);
        let x_1046 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1054 : vec3<f32> = txVec4;
        let x_1056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1054.xy, x_1054.z);
        u_xlat88 = x_1056;
        let x_1058 : vec4<f32> = u_xlat12;
        let x_1059 : vec2<f32> = vec2<f32>(x_1058.z, x_1058.w);
        let x_1061 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1059.x, x_1059.y, x_1061);
        let x_1068 : vec3<f32> = txVec5;
        let x_1070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1068.xy, x_1068.z);
        u_xlat8.x = x_1070;
        let x_1073 : f32 = u_xlat8.x;
        let x_1075 : f32 = u_xlat15.y;
        u_xlat8.x = (x_1073 * x_1075);
        let x_1079 : f32 = u_xlat15.x;
        let x_1080 : f32 = u_xlat88;
        let x_1083 : f32 = u_xlat8.x;
        u_xlat88 = ((x_1079 * x_1080) + x_1083);
        let x_1086 : vec2<f32> = u_xlat62;
        let x_1088 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec6;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
        u_xlat8.x = x_1097;
        let x_1100 : f32 = u_xlat15.z;
        let x_1102 : f32 = u_xlat8.x;
        let x_1104 : f32 = u_xlat88;
        u_xlat88 = ((x_1100 * x_1102) + x_1104);
        let x_1107 : vec4<f32> = u_xlat11;
        let x_1108 : vec2<f32> = vec2<f32>(x_1107.x, x_1107.y);
        let x_1110 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1108.x, x_1108.y, x_1110);
        let x_1117 : vec3<f32> = txVec7;
        let x_1119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1117.xy, x_1117.z);
        u_xlat8.x = x_1119;
        let x_1122 : f32 = u_xlat15.w;
        let x_1124 : f32 = u_xlat8.x;
        let x_1126 : f32 = u_xlat88;
        u_xlat88 = ((x_1122 * x_1124) + x_1126);
        let x_1129 : vec4<f32> = u_xlat13;
        let x_1130 : vec2<f32> = vec2<f32>(x_1129.x, x_1129.y);
        let x_1132 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
        let x_1139 : vec3<f32> = txVec8;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1139.xy, x_1139.z);
        u_xlat8.x = x_1141;
        let x_1144 : f32 = u_xlat16.x;
        let x_1146 : f32 = u_xlat8.x;
        let x_1148 : f32 = u_xlat88;
        u_xlat88 = ((x_1144 * x_1146) + x_1148);
        let x_1151 : vec4<f32> = u_xlat13;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.z, x_1151.w);
        let x_1154 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec9;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
        u_xlat8.x = x_1163;
        let x_1166 : f32 = u_xlat16.y;
        let x_1168 : f32 = u_xlat8.x;
        let x_1170 : f32 = u_xlat88;
        u_xlat88 = ((x_1166 * x_1168) + x_1170);
        let x_1173 : vec4<f32> = u_xlat11;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.z, x_1173.w);
        let x_1176 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec10;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1183.xy, x_1183.z);
        u_xlat8.x = x_1185;
        let x_1188 : f32 = u_xlat16.z;
        let x_1190 : f32 = u_xlat8.x;
        let x_1192 : f32 = u_xlat88;
        u_xlat88 = ((x_1188 * x_1190) + x_1192);
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec11;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1205.xy, x_1205.z);
        u_xlat8.x = x_1207;
        let x_1210 : f32 = u_xlat16.w;
        let x_1212 : f32 = u_xlat8.x;
        let x_1214 : f32 = u_xlat88;
        u_xlat88 = ((x_1210 * x_1212) + x_1214);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec12;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat8.x = x_1229;
        let x_1231 : f32 = u_xlat87;
        let x_1233 : f32 = u_xlat8.x;
        let x_1235 : f32 = u_xlat88;
        u_xlat86 = ((x_1231 * x_1233) + x_1235);
      } else {
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1244 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.z, x_1241.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1244.y, x_1245.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1249 : vec2<f32> = floor(vec2<f32>(x_1247.x, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.z, x_1255.w)) + -(vec2<f32>(x_1258.x, x_1258.y)));
        let x_1262 : vec2<f32> = u_xlat62;
        u_xlat9 = (vec4<f32>(x_1262.x, x_1262.x, x_1262.y, x_1262.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1265.x, x_1265.x, x_1265.z, x_1265.z) * vec4<f32>(x_1267.x, x_1267.x, x_1267.z, x_1267.z));
        let x_1270 : vec4<f32> = u_xlat10;
        let x_1274 : vec2<f32> = (vec2<f32>(x_1270.y, x_1270.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1274.x, x_1275.z, x_1274.y);
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1280 : vec2<f32> = u_xlat62;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1280));
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1282.x, x_1283.y, x_1282.y, x_1283.w);
        let x_1285 : vec2<f32> = u_xlat62;
        let x_1287 : vec2<f32> = (-(x_1285) + vec2<f32>(1.0f, 1.0f));
        let x_1288 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : vec2<f32> = u_xlat62;
        u_xlat64 = min(x_1290, vec2<f32>(0.0f, 0.0f));
        let x_1292 : vec2<f32> = u_xlat64;
        let x_1294 : vec2<f32> = u_xlat64;
        let x_1296 : vec4<f32> = u_xlat10;
        let x_1298 : vec2<f32> = ((-(x_1292) * x_1294) + vec2<f32>(x_1296.x, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1301 : vec2<f32> = u_xlat62;
        u_xlat64 = max(x_1301, vec2<f32>(0.0f, 0.0f));
        let x_1304 : vec2<f32> = u_xlat64;
        let x_1306 : vec2<f32> = u_xlat64;
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1310 : vec2<f32> = ((-(x_1304) * x_1306) + vec2<f32>(x_1308.y, x_1308.w));
        let x_1311 : vec3<f32> = u_xlat36;
        u_xlat36 = vec3<f32>(x_1310.x, x_1311.y, x_1310.y);
        let x_1313 : vec4<f32> = u_xlat10;
        let x_1315 : vec2<f32> = (vec2<f32>(x_1313.x, x_1313.y) + vec2<f32>(2.0f, 2.0f));
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec3<f32> = u_xlat36;
        let x_1320 : vec2<f32> = (vec2<f32>(x_1318.x, x_1318.z) + vec2<f32>(2.0f, 2.0f));
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1324 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1324 * 0.08163200318813323975f);
        let x_1328 : vec4<f32> = u_xlat9;
        let x_1331 : vec3<f32> = (vec3<f32>(x_1328.z, x_1328.x, x_1328.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1332 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat10;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : f32 = u_xlat13.y;
        u_xlat12.x = x_1341;
        let x_1343 : vec2<f32> = u_xlat62;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1351 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1351.x, x_1350.x, x_1351.z, x_1350.y);
        let x_1353 : vec2<f32> = u_xlat62;
        let x_1357 : vec2<f32> = ((vec2<f32>(x_1353.x, x_1353.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1358.w);
        let x_1361 : f32 = u_xlat9.x;
        u_xlat10.y = x_1361;
        let x_1364 : f32 = u_xlat11.y;
        u_xlat10.w = x_1364;
        let x_1366 : vec4<f32> = u_xlat10;
        let x_1367 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1366 + x_1367);
        let x_1369 : vec2<f32> = u_xlat62;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1369.y, x_1369.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1373 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1373.x, x_1372.x, x_1373.z, x_1372.y);
        let x_1375 : vec2<f32> = u_xlat62;
        let x_1378 : vec2<f32> = ((vec2<f32>(x_1375.y, x_1375.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1379.w);
        let x_1382 : f32 = u_xlat9.y;
        u_xlat11.y = x_1382;
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1385 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1384 + x_1385);
        let x_1387 : vec4<f32> = u_xlat10;
        let x_1388 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1387 / x_1388);
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1390 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1396 : vec4<f32> = u_xlat11;
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1396 / x_1397);
        let x_1399 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1399 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1404 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1401.w, x_1401.x, x_1401.y, x_1401.z) * vec4<f32>(x_1404.x, x_1404.x, x_1404.x, x_1404.x));
        let x_1407 : vec4<f32> = u_xlat11;
        let x_1410 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1407.x, x_1407.w, x_1407.y, x_1407.z) * vec4<f32>(x_1410.y, x_1410.y, x_1410.y, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat10;
        let x_1414 : vec3<f32> = vec3<f32>(x_1413.y, x_1413.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1414.x, x_1415.y, x_1414.y, x_1414.z);
        let x_1418 : f32 = u_xlat11.x;
        u_xlat13.y = x_1418;
        let x_1420 : vec4<f32> = u_xlat8;
        let x_1423 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1420.x, x_1420.y, x_1420.x, x_1420.y) * vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y)) + vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1426.y));
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat13;
        u_xlat62 = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.x, x_1432.y)) + vec2<f32>(x_1435.w, x_1435.y));
        let x_1439 : f32 = u_xlat13.y;
        u_xlat10.y = x_1439;
        let x_1442 : f32 = u_xlat11.z;
        u_xlat13.y = x_1442;
        let x_1444 : vec4<f32> = u_xlat8;
        let x_1447 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.y) * vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y)) + vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1450.y));
        let x_1453 : vec4<f32> = u_xlat8;
        let x_1456 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat13;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.w, x_1459.y));
        let x_1462 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat13.y;
        u_xlat10.z = x_1465;
        let x_1468 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.z));
        let x_1478 : f32 = u_xlat11.w;
        u_xlat13.y = x_1478;
        let x_1481 : vec4<f32> = u_xlat8;
        let x_1484 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1481.x, x_1481.y, x_1481.x, x_1481.y) * vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y)) + vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1487.y));
        let x_1491 : vec4<f32> = u_xlat8;
        let x_1494 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat13;
        let x_1499 : vec2<f32> = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(x_1494.x, x_1494.y)) + vec2<f32>(x_1497.w, x_1497.y));
        let x_1500 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_1499.x, x_1499.y, x_1500.z);
        let x_1503 : f32 = u_xlat13.y;
        u_xlat10.w = x_1503;
        let x_1506 : vec4<f32> = u_xlat8;
        let x_1509 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1512 : vec4<f32> = u_xlat10;
        u_xlat70 = ((vec2<f32>(x_1506.x, x_1506.y) * vec2<f32>(x_1509.x, x_1509.y)) + vec2<f32>(x_1512.x, x_1512.w));
        let x_1515 : vec4<f32> = u_xlat13;
        let x_1516 : vec3<f32> = vec3<f32>(x_1515.x, x_1515.z, x_1515.w);
        let x_1517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1516.x, x_1517.y, x_1516.y, x_1516.z);
        let x_1519 : vec4<f32> = u_xlat8;
        let x_1522 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y) * vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y)) + vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1525.y));
        let x_1529 : vec4<f32> = u_xlat8;
        let x_1532 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1535 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1532.x, x_1532.y)) + vec2<f32>(x_1535.w, x_1535.y));
        let x_1539 : f32 = u_xlat10.x;
        u_xlat11.x = x_1539;
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1544 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1547 : vec4<f32> = u_xlat11;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * vec2<f32>(x_1544.x, x_1544.y)) + vec2<f32>(x_1547.x, x_1547.y));
        let x_1550 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1549.x, x_1549.y, x_1550.z, x_1550.w);
        let x_1553 : vec4<f32> = u_xlat9;
        let x_1555 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1553.x, x_1553.x, x_1553.x, x_1553.x) * x_1555);
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1560 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1558.y, x_1558.y, x_1558.y, x_1558.y) * x_1560);
        let x_1563 : vec4<f32> = u_xlat9;
        let x_1565 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1563.z, x_1563.z, x_1563.z, x_1563.z) * x_1565);
        let x_1567 : vec4<f32> = u_xlat9;
        let x_1569 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1567.w, x_1567.w, x_1567.w, x_1567.w) * x_1569);
        let x_1572 : vec4<f32> = u_xlat14;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.x, x_1572.y);
        let x_1575 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec13;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat87 = x_1584;
        let x_1586 : vec4<f32> = u_xlat14;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec14;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat88 = x_1598;
        let x_1599 : f32 = u_xlat88;
        let x_1601 : f32 = u_xlat19.y;
        u_xlat88 = (x_1599 * x_1601);
        let x_1604 : f32 = u_xlat19.x;
        let x_1605 : f32 = u_xlat87;
        let x_1607 : f32 = u_xlat88;
        u_xlat87 = ((x_1604 * x_1605) + x_1607);
        let x_1610 : vec2<f32> = u_xlat62;
        let x_1612 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec15;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1619.xy, x_1619.z);
        u_xlat88 = x_1621;
        let x_1623 : f32 = u_xlat19.z;
        let x_1624 : f32 = u_xlat88;
        let x_1626 : f32 = u_xlat87;
        u_xlat87 = ((x_1623 * x_1624) + x_1626);
        let x_1629 : vec4<f32> = u_xlat17;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec16;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat88 = x_1641;
        let x_1643 : f32 = u_xlat19.w;
        let x_1644 : f32 = u_xlat88;
        let x_1646 : f32 = u_xlat87;
        u_xlat87 = ((x_1643 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat15;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec17;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat88 = x_1661;
        let x_1663 : f32 = u_xlat20.x;
        let x_1664 : f32 = u_xlat88;
        let x_1666 : f32 = u_xlat87;
        u_xlat87 = ((x_1663 * x_1664) + x_1666);
        let x_1669 : vec4<f32> = u_xlat15;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.z, x_1669.w);
        let x_1672 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec18;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat88 = x_1681;
        let x_1683 : f32 = u_xlat20.y;
        let x_1684 : f32 = u_xlat88;
        let x_1686 : f32 = u_xlat87;
        u_xlat87 = ((x_1683 * x_1684) + x_1686);
        let x_1689 : vec4<f32> = u_xlat16;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
        let x_1692 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec19;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1699.xy, x_1699.z);
        u_xlat88 = x_1701;
        let x_1703 : f32 = u_xlat20.z;
        let x_1704 : f32 = u_xlat88;
        let x_1706 : f32 = u_xlat87;
        u_xlat87 = ((x_1703 * x_1704) + x_1706);
        let x_1709 : vec4<f32> = u_xlat17;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.z, x_1709.w);
        let x_1712 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec20;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat88 = x_1721;
        let x_1723 : f32 = u_xlat20.w;
        let x_1724 : f32 = u_xlat88;
        let x_1726 : f32 = u_xlat87;
        u_xlat87 = ((x_1723 * x_1724) + x_1726);
        let x_1729 : vec4<f32> = u_xlat18;
        let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
        let x_1732 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec21;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1739.xy, x_1739.z);
        u_xlat88 = x_1741;
        let x_1743 : f32 = u_xlat21.x;
        let x_1744 : f32 = u_xlat88;
        let x_1746 : f32 = u_xlat87;
        u_xlat87 = ((x_1743 * x_1744) + x_1746);
        let x_1749 : vec4<f32> = u_xlat18;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.z, x_1749.w);
        let x_1752 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec22;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
        u_xlat88 = x_1761;
        let x_1763 : f32 = u_xlat21.y;
        let x_1764 : f32 = u_xlat88;
        let x_1766 : f32 = u_xlat87;
        u_xlat87 = ((x_1763 * x_1764) + x_1766);
        let x_1769 : vec3<f32> = u_xlat37;
        let x_1770 : vec2<f32> = vec2<f32>(x_1769.x, x_1769.y);
        let x_1772 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
        let x_1779 : vec3<f32> = txVec23;
        let x_1781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1779.xy, x_1779.z);
        u_xlat88 = x_1781;
        let x_1783 : f32 = u_xlat21.z;
        let x_1784 : f32 = u_xlat88;
        let x_1786 : f32 = u_xlat87;
        u_xlat87 = ((x_1783 * x_1784) + x_1786);
        let x_1789 : vec2<f32> = u_xlat70;
        let x_1791 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec24;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat88 = x_1800;
        let x_1802 : f32 = u_xlat21.w;
        let x_1803 : f32 = u_xlat88;
        let x_1805 : f32 = u_xlat87;
        u_xlat87 = ((x_1802 * x_1803) + x_1805);
        let x_1808 : vec4<f32> = u_xlat13;
        let x_1809 : vec2<f32> = vec2<f32>(x_1808.x, x_1808.y);
        let x_1811 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
        let x_1818 : vec3<f32> = txVec25;
        let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1818.xy, x_1818.z);
        u_xlat88 = x_1820;
        let x_1822 : f32 = u_xlat9.x;
        let x_1823 : f32 = u_xlat88;
        let x_1825 : f32 = u_xlat87;
        u_xlat87 = ((x_1822 * x_1823) + x_1825);
        let x_1828 : vec4<f32> = u_xlat13;
        let x_1829 : vec2<f32> = vec2<f32>(x_1828.z, x_1828.w);
        let x_1831 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1829.x, x_1829.y, x_1831);
        let x_1838 : vec3<f32> = txVec26;
        let x_1840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1838.xy, x_1838.z);
        u_xlat88 = x_1840;
        let x_1842 : f32 = u_xlat9.y;
        let x_1843 : f32 = u_xlat88;
        let x_1845 : f32 = u_xlat87;
        u_xlat87 = ((x_1842 * x_1843) + x_1845);
        let x_1848 : vec2<f32> = u_xlat65;
        let x_1850 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1848.x, x_1848.y, x_1850);
        let x_1857 : vec3<f32> = txVec27;
        let x_1859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1857.xy, x_1857.z);
        u_xlat88 = x_1859;
        let x_1861 : f32 = u_xlat9.z;
        let x_1862 : f32 = u_xlat88;
        let x_1864 : f32 = u_xlat87;
        u_xlat87 = ((x_1861 * x_1862) + x_1864);
        let x_1867 : vec4<f32> = u_xlat8;
        let x_1868 : vec2<f32> = vec2<f32>(x_1867.x, x_1867.y);
        let x_1870 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
        let x_1877 : vec3<f32> = txVec28;
        let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1877.xy, x_1877.z);
        u_xlat88 = x_1879;
        let x_1881 : f32 = u_xlat9.w;
        let x_1882 : f32 = u_xlat88;
        let x_1884 : f32 = u_xlat87;
        u_xlat86 = ((x_1881 * x_1882) + x_1884);
      }
    }
  } else {
    let x_1888 : vec4<f32> = u_xlat5;
    let x_1889 : vec2<f32> = vec2<f32>(x_1888.x, x_1888.y);
    let x_1891 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
    let x_1898 : vec3<f32> = txVec29;
    let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1898.xy, x_1898.z);
    u_xlat86 = x_1900;
  }
  let x_1902 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1902) + 1.0f);
  let x_1906 : f32 = u_xlat86;
  let x_1908 : f32 = x_298.x_MainLightShadowParams.x;
  let x_1911 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1906 * x_1908) + x_1911);
  let x_1916 : f32 = u_xlat5.z;
  u_xlatb32 = (0.0f >= x_1916);
  let x_1922 : f32 = u_xlat5.z;
  u_xlatb59.x = (x_1922 >= 1.0f);
  let x_1926 : bool = u_xlatb59.x;
  let x_1927 : bool = u_xlatb32;
  u_xlatb32 = (x_1926 | x_1927);
  let x_1929 : bool = u_xlatb32;
  if (x_1929) {
    x_1931 = 1.0f;
  } else {
    let x_1936 : f32 = u_xlat5.x;
    x_1931 = x_1936;
  }
  let x_1937 : f32 = x_1931;
  u_xlat5.x = x_1937;
  let x_1940 : vec3<f32> = vs_INTERP7;
  let x_1942 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat32 = (x_1940 + -(x_1942));
  let x_1945 : vec3<f32> = u_xlat32;
  let x_1946 : vec3<f32> = u_xlat32;
  u_xlat32.x = dot(x_1945, x_1946);
  let x_1951 : f32 = u_xlat32.x;
  let x_1953 : f32 = x_298.x_MainLightShadowParams.z;
  let x_1956 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat59.x = ((x_1951 * x_1953) + x_1956);
  let x_1960 : f32 = u_xlat59.x;
  u_xlat59.x = clamp(x_1960, 0.0f, 1.0f);
  let x_1964 : f32 = u_xlat5.x;
  u_xlat86 = (-(x_1964) + 1.0f);
  let x_1968 : f32 = u_xlat59.x;
  let x_1969 : f32 = u_xlat86;
  let x_1972 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1968 * x_1969) + x_1972);
  let x_1982 : f32 = x_1980.x_MainLightCookieTextureFormat;
  u_xlatb59.x = !((x_1982 == -1.0f));
  let x_1986 : bool = u_xlatb59.x;
  if (x_1986) {
    let x_1989 : vec3<f32> = vs_INTERP7;
    let x_1992 : vec4<f32> = x_1980.x_MainLightWorldToLight[1i];
    u_xlat59 = (vec2<f32>(x_1989.y, x_1989.y) * vec2<f32>(x_1992.x, x_1992.y));
    let x_1996 : vec4<f32> = x_1980.x_MainLightWorldToLight[0i];
    let x_1998 : vec3<f32> = vs_INTERP7;
    let x_2001 : vec2<f32> = u_xlat59;
    u_xlat59 = ((vec2<f32>(x_1996.x, x_1996.y) * vec2<f32>(x_1998.x, x_1998.x)) + x_2001);
    let x_2004 : vec4<f32> = x_1980.x_MainLightWorldToLight[2i];
    let x_2006 : vec3<f32> = vs_INTERP7;
    let x_2009 : vec2<f32> = u_xlat59;
    u_xlat59 = ((vec2<f32>(x_2004.x, x_2004.y) * vec2<f32>(x_2006.z, x_2006.z)) + x_2009);
    let x_2011 : vec2<f32> = u_xlat59;
    let x_2013 : vec4<f32> = x_1980.x_MainLightWorldToLight[3i];
    u_xlat59 = (x_2011 + vec2<f32>(x_2013.x, x_2013.y));
    let x_2016 : vec2<f32> = u_xlat59;
    u_xlat59 = ((x_2016 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2024 : vec2<f32> = u_xlat59;
    let x_2026 : f32 = x_29.x_GlobalMipBias.x;
    let x_2027 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2024, x_2026);
    u_xlat8 = x_2027;
    let x_2029 : f32 = x_1980.x_MainLightCookieTextureFormat;
    let x_2031 : f32 = x_1980.x_MainLightCookieTextureFormat;
    let x_2033 : f32 = x_1980.x_MainLightCookieTextureFormat;
    let x_2035 : f32 = x_1980.x_MainLightCookieTextureFormat;
    let x_2036 : vec4<f32> = vec4<f32>(x_2029, x_2031, x_2033, x_2035);
    let x_2043 : vec4<bool> = (vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2036.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb59 = vec2<bool>(x_2043.x, x_2043.y);
    let x_2046 : bool = u_xlatb59.y;
    if (x_2046) {
      let x_2051 : f32 = u_xlat8.w;
      x_2047 = x_2051;
    } else {
      let x_2054 : f32 = u_xlat8.x;
      x_2047 = x_2054;
    }
    let x_2055 : f32 = x_2047;
    u_xlat86 = x_2055;
    let x_2057 : bool = u_xlatb59.x;
    if (x_2057) {
      let x_2061 : vec4<f32> = u_xlat8;
      x_2058 = vec3<f32>(x_2061.x, x_2061.y, x_2061.z);
    } else {
      let x_2064 : f32 = u_xlat86;
      x_2058 = vec3<f32>(x_2064, x_2064, x_2064);
    }
    let x_2066 : vec3<f32> = x_2058;
    let x_2067 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_2073 : vec4<f32> = u_xlat8;
  let x_2076 : vec4<f32> = x_29.x_MainLightColor;
  let x_2078 : vec3<f32> = (vec3<f32>(x_2073.x, x_2073.y, x_2073.z) * vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
  let x_2079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec4<f32> = u_xlat1;
  let x_2084 : vec4<f32> = u_xlat4;
  u_xlat59.x = dot(-(vec3<f32>(x_2081.x, x_2081.y, x_2081.w)), vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
  let x_2089 : f32 = u_xlat59.x;
  let x_2091 : f32 = u_xlat59.x;
  u_xlat59.x = (x_2089 + x_2091);
  let x_2094 : vec4<f32> = u_xlat4;
  let x_2096 : vec2<f32> = u_xlat59;
  let x_2100 : vec4<f32> = u_xlat1;
  let x_2103 : vec3<f32> = ((vec3<f32>(x_2094.x, x_2094.y, x_2094.z) * -(vec3<f32>(x_2096.x, x_2096.x, x_2096.x))) + -(vec3<f32>(x_2100.x, x_2100.y, x_2100.w)));
  let x_2104 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2106 : vec4<f32> = u_xlat4;
  let x_2108 : vec4<f32> = u_xlat1;
  u_xlat59.x = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.w));
  let x_2113 : f32 = u_xlat59.x;
  u_xlat59.x = clamp(x_2113, 0.0f, 1.0f);
  let x_2117 : f32 = u_xlat59.x;
  u_xlat59.x = (-(x_2117) + 1.0f);
  let x_2122 : f32 = u_xlat59.x;
  let x_2124 : f32 = u_xlat59.x;
  u_xlat59.x = (x_2122 * x_2124);
  let x_2128 : f32 = u_xlat59.x;
  let x_2130 : f32 = u_xlat59.x;
  u_xlat59.x = (x_2128 * x_2130);
  let x_2133 : f32 = u_xlat83;
  u_xlat86 = ((-(x_2133) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2139 : f32 = u_xlat83;
  let x_2140 : f32 = u_xlat86;
  u_xlat2.w = (x_2139 * x_2140);
  let x_2143 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2143 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2156 : vec4<f32> = u_xlat9;
  let x_2159 : f32 = u_xlat2.w;
  let x_2160 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2156.x, x_2156.y, x_2156.z), x_2159);
  u_xlat9 = x_2160;
  let x_2162 : f32 = u_xlat9.w;
  u_xlat83 = (x_2162 + -1.0f);
  let x_2165 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_2166 : f32 = u_xlat83;
  u_xlat83 = ((x_2165 * x_2166) + 1.0f);
  let x_2169 : f32 = u_xlat83;
  u_xlat83 = max(x_2169, 0.0f);
  let x_2171 : f32 = u_xlat83;
  u_xlat83 = log2(x_2171);
  let x_2173 : f32 = u_xlat83;
  let x_2175 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat83 = (x_2173 * x_2175);
  let x_2177 : f32 = u_xlat83;
  u_xlat83 = exp2(x_2177);
  let x_2179 : f32 = u_xlat83;
  let x_2181 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat83 = (x_2179 * x_2181);
  let x_2183 : vec4<f32> = u_xlat9;
  let x_2185 : f32 = u_xlat83;
  let x_2187 : vec3<f32> = (vec3<f32>(x_2183.x, x_2183.y, x_2183.z) * vec3<f32>(x_2185, x_2185, x_2185));
  let x_2188 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
  let x_2190 : vec3<f32> = u_xlat3;
  let x_2192 : vec3<f32> = u_xlat3;
  let x_2196 : vec2<f32> = ((vec2<f32>(x_2190.x, x_2190.x) * vec2<f32>(x_2192.x, x_2192.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2197 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
  let x_2200 : f32 = u_xlat10.y;
  u_xlat83 = (1.0f / x_2200);
  let x_2202 : vec3<f32> = u_xlat0;
  let x_2204 : f32 = u_xlat30;
  u_xlat37 = (-(x_2202) + vec3<f32>(x_2204, x_2204, x_2204));
  let x_2207 : vec2<f32> = u_xlat59;
  let x_2209 : vec3<f32> = u_xlat37;
  let x_2211 : vec3<f32> = u_xlat0;
  u_xlat37 = ((vec3<f32>(x_2207.x, x_2207.x, x_2207.x) * x_2209) + x_2211);
  let x_2213 : f32 = u_xlat83;
  let x_2215 : vec3<f32> = u_xlat37;
  u_xlat37 = (vec3<f32>(x_2213, x_2213, x_2213) * x_2215);
  let x_2217 : vec4<f32> = u_xlat9;
  let x_2219 : vec3<f32> = u_xlat37;
  let x_2220 : vec3<f32> = (vec3<f32>(x_2217.x, x_2217.y, x_2217.z) * x_2219);
  let x_2221 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
  let x_2223 : vec4<f32> = u_xlat6;
  let x_2225 : vec4<f32> = u_xlat7;
  let x_2228 : vec4<f32> = u_xlat9;
  let x_2230 : vec3<f32> = ((vec3<f32>(x_2223.x, x_2223.y, x_2223.z) * vec3<f32>(x_2225.x, x_2225.y, x_2225.z)) + vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
  let x_2231 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2234 : f32 = u_xlat5.x;
  let x_2236 : f32 = x_107.unity_LightData.z;
  u_xlat83 = (x_2234 * x_2236);
  let x_2238 : vec4<f32> = u_xlat4;
  let x_2241 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2246 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2246, 0.0f, 1.0f);
  let x_2249 : f32 = u_xlat83;
  let x_2251 : f32 = u_xlat3.x;
  u_xlat83 = (x_2249 * x_2251);
  let x_2253 : f32 = u_xlat83;
  let x_2255 : vec4<f32> = u_xlat8;
  let x_2257 : vec3<f32> = (vec3<f32>(x_2253, x_2253, x_2253) * vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
  let x_2258 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2257.x, x_2258.y, x_2257.y, x_2257.z);
  let x_2260 : vec4<f32> = u_xlat1;
  let x_2263 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2265 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.y, x_2260.w) + vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat8;
  let x_2270 : vec4<f32> = u_xlat8;
  u_xlat83 = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2273 : f32 = u_xlat83;
  u_xlat83 = max(x_2273, 1.17549435e-38f);
  let x_2276 : f32 = u_xlat83;
  u_xlat83 = inverseSqrt(x_2276);
  let x_2278 : f32 = u_xlat83;
  let x_2280 : vec4<f32> = u_xlat8;
  let x_2282 : vec3<f32> = (vec3<f32>(x_2278, x_2278, x_2278) * vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2285 : vec4<f32> = u_xlat4;
  let x_2287 : vec4<f32> = u_xlat8;
  u_xlat83 = dot(vec3<f32>(x_2285.x, x_2285.y, x_2285.z), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2290, 0.0f, 1.0f);
  let x_2293 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2295 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2293.x, x_2293.y, x_2293.z), vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2300 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2300, 0.0f, 1.0f);
  let x_2303 : f32 = u_xlat83;
  let x_2304 : f32 = u_xlat83;
  u_xlat83 = (x_2303 * x_2304);
  let x_2306 : f32 = u_xlat83;
  let x_2308 : f32 = u_xlat10.x;
  u_xlat83 = ((x_2306 * x_2308) + 1.00001001358032226562f);
  let x_2313 : f32 = u_xlat3.x;
  let x_2315 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2313 * x_2315);
  let x_2318 : f32 = u_xlat83;
  let x_2319 : f32 = u_xlat83;
  u_xlat83 = (x_2318 * x_2319);
  let x_2322 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2322, 0.10000000149011611938f);
  let x_2326 : f32 = u_xlat83;
  let x_2328 : f32 = u_xlat3.x;
  u_xlat83 = (x_2326 * x_2328);
  let x_2330 : f32 = u_xlat84;
  let x_2331 : f32 = u_xlat83;
  u_xlat83 = (x_2330 * x_2331);
  let x_2333 : f32 = u_xlat85;
  let x_2334 : f32 = u_xlat83;
  u_xlat83 = (x_2333 / x_2334);
  let x_2336 : vec3<f32> = u_xlat0;
  let x_2337 : f32 = u_xlat83;
  let x_2340 : vec4<f32> = u_xlat7;
  let x_2342 : vec3<f32> = ((x_2336 * vec3<f32>(x_2337, x_2337, x_2337)) + vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2345 : vec4<f32> = u_xlat5;
  let x_2347 : vec4<f32> = u_xlat8;
  let x_2349 : vec3<f32> = (vec3<f32>(x_2345.x, x_2345.z, x_2345.w) * vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2349.x, x_2350.y, x_2349.y, x_2349.z);
  let x_2353 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2355 : f32 = x_107.unity_LightData.y;
  u_xlat83 = min(x_2353, x_2355);
  let x_2358 : f32 = u_xlat83;
  u_xlatu83 = bitcast<u32>(i32(x_2358));
  let x_2362 : f32 = u_xlat32.x;
  let x_2365 : f32 = x_298.x_AdditionalShadowFadeParams.x;
  let x_2368 : f32 = x_298.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2362 * x_2365) + x_2368);
  let x_2372 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2372, 0.0f, 1.0f);
  let x_2377 : f32 = x_1980.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2379 : f32 = x_1980.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2381 : f32 = x_1980.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2383 : f32 = x_1980.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2384 : vec4<f32> = vec4<f32>(x_2377, x_2379, x_2381, x_2383);
  let x_2391 : vec4<bool> = (vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2384.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2391.x, x_2391.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2403 : u32 = u_xlatu_loop_1;
    let x_2404 : u32 = u_xlatu83;
    if ((x_2403 < x_2404)) {
    } else {
      break;
    }
    let x_2407 : u32 = u_xlatu_loop_1;
    u_xlatu32 = (x_2407 >> 2u);
    let x_2410 : u32 = u_xlatu_loop_1;
    u_xlati87 = bitcast<i32>((x_2410 & 3u));
    let x_2413 : u32 = u_xlatu32;
    let x_2416 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_2413)];
    let x_2426 : i32 = u_xlati87;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2431 : vec4<u32> = indexable[x_2426];
    u_xlat32.x = dot(x_2416, bitcast<vec4<f32>>(x_2431));
    let x_2437 : f32 = u_xlat32.x;
    u_xlati32 = i32(x_2437);
    let x_2439 : vec3<f32> = vs_INTERP7;
    let x_2450 : i32 = u_xlati32;
    let x_2452 : vec4<f32> = x_2449.x_AdditionalLightsPosition[x_2450];
    let x_2455 : i32 = u_xlati32;
    let x_2457 : vec4<f32> = x_2449.x_AdditionalLightsPosition[x_2455];
    u_xlat37 = ((-(x_2439) * vec3<f32>(x_2452.w, x_2452.w, x_2452.w)) + vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
    let x_2460 : vec3<f32> = u_xlat37;
    let x_2461 : vec3<f32> = u_xlat37;
    u_xlat87 = dot(x_2460, x_2461);
    let x_2463 : f32 = u_xlat87;
    u_xlat87 = max(x_2463, 0.00006103515625f);
    let x_2466 : f32 = u_xlat87;
    u_xlat88 = inverseSqrt(x_2466);
    let x_2468 : f32 = u_xlat88;
    let x_2470 : vec3<f32> = u_xlat37;
    let x_2471 : vec3<f32> = (vec3<f32>(x_2468, x_2468, x_2468) * x_2470);
    let x_2472 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
    let x_2474 : f32 = u_xlat87;
    u_xlat62.x = (1.0f / x_2474);
    let x_2477 : f32 = u_xlat87;
    let x_2478 : i32 = u_xlati32;
    let x_2480 : f32 = x_2449.x_AdditionalLightsAttenuation[x_2478].x;
    u_xlat87 = (x_2477 * x_2480);
    let x_2482 : f32 = u_xlat87;
    let x_2484 : f32 = u_xlat87;
    u_xlat87 = ((-(x_2482) * x_2484) + 1.0f);
    let x_2487 : f32 = u_xlat87;
    u_xlat87 = max(x_2487, 0.0f);
    let x_2489 : f32 = u_xlat87;
    let x_2490 : f32 = u_xlat87;
    u_xlat87 = (x_2489 * x_2490);
    let x_2492 : f32 = u_xlat87;
    let x_2494 : f32 = u_xlat62.x;
    u_xlat87 = (x_2492 * x_2494);
    let x_2496 : i32 = u_xlati32;
    let x_2498 : vec4<f32> = x_2449.x_AdditionalLightsSpotDir[x_2496];
    let x_2500 : vec4<f32> = u_xlat11;
    u_xlat62.x = dot(vec3<f32>(x_2498.x, x_2498.y, x_2498.z), vec3<f32>(x_2500.x, x_2500.y, x_2500.z));
    let x_2505 : f32 = u_xlat62.x;
    let x_2506 : i32 = u_xlati32;
    let x_2508 : f32 = x_2449.x_AdditionalLightsAttenuation[x_2506].z;
    let x_2510 : i32 = u_xlati32;
    let x_2512 : f32 = x_2449.x_AdditionalLightsAttenuation[x_2510].w;
    u_xlat62.x = ((x_2505 * x_2508) + x_2512);
    let x_2516 : f32 = u_xlat62.x;
    u_xlat62.x = clamp(x_2516, 0.0f, 1.0f);
    let x_2520 : f32 = u_xlat62.x;
    let x_2522 : f32 = u_xlat62.x;
    u_xlat62.x = (x_2520 * x_2522);
    let x_2525 : f32 = u_xlat87;
    let x_2527 : f32 = u_xlat62.x;
    u_xlat87 = (x_2525 * x_2527);
    let x_2531 : i32 = u_xlati32;
    let x_2533 : f32 = x_298.x_AdditionalShadowParams[x_2531].w;
    u_xlati62 = i32(x_2533);
    let x_2536 : i32 = u_xlati62;
    u_xlatb89 = (x_2536 >= 0i);
    let x_2538 : bool = u_xlatb89;
    if (x_2538) {
      let x_2542 : i32 = u_xlati32;
      let x_2544 : f32 = x_298.x_AdditionalShadowParams[x_2542].z;
      u_xlatb89 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2544, x_2544, x_2544, x_2544))));
      let x_2548 : bool = u_xlatb89;
      if (x_2548) {
        let x_2552 : vec4<f32> = u_xlat11;
        let x_2555 : vec4<f32> = u_xlat11;
        let x_2558 : vec4<bool> = (abs(vec4<f32>(x_2552.z, x_2552.z, x_2552.y, x_2552.z)) >= abs(vec4<f32>(x_2555.x, x_2555.y, x_2555.x, x_2555.x)));
        let x_2560 : vec3<bool> = vec3<bool>(x_2558.x, x_2558.y, x_2558.z);
        let x_2561 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
        let x_2564 : bool = u_xlatb12.y;
        let x_2566 : bool = u_xlatb12.x;
        u_xlatb89 = (x_2564 & x_2566);
        let x_2568 : vec4<f32> = u_xlat11;
        let x_2571 : vec4<bool> = (-(vec4<f32>(x_2568.z, x_2568.y, x_2568.z, x_2568.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2572 : vec3<bool> = vec3<bool>(x_2571.x, x_2571.y, x_2571.w);
        let x_2573 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2572.x, x_2572.y, x_2573.z, x_2572.z);
        let x_2576 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_2576);
        let x_2581 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_2581);
        let x_2586 : bool = u_xlatb12.w;
        u_xlat90 = select(0.0f, 1.0f, x_2586);
        let x_2589 : bool = u_xlatb12.z;
        if (x_2589) {
          let x_2594 : f32 = u_xlat12.y;
          x_2590 = x_2594;
        } else {
          let x_2596 : f32 = u_xlat90;
          x_2590 = x_2596;
        }
        let x_2597 : f32 = x_2590;
        u_xlat90 = x_2597;
        let x_2599 : bool = u_xlatb89;
        if (x_2599) {
          let x_2604 : f32 = u_xlat12.x;
          x_2600 = x_2604;
        } else {
          let x_2606 : f32 = u_xlat90;
          x_2600 = x_2606;
        }
        let x_2607 : f32 = x_2600;
        u_xlat89 = x_2607;
        let x_2608 : i32 = u_xlati32;
        let x_2610 : f32 = x_298.x_AdditionalShadowParams[x_2608].w;
        u_xlat90 = trunc(x_2610);
        let x_2612 : f32 = u_xlat89;
        let x_2613 : f32 = u_xlat90;
        u_xlat89 = (x_2612 + x_2613);
        let x_2615 : f32 = u_xlat89;
        u_xlati62 = i32(x_2615);
      }
      let x_2617 : i32 = u_xlati62;
      u_xlati62 = (x_2617 << bitcast<u32>(2i));
      let x_2619 : vec3<f32> = vs_INTERP7;
      let x_2622 : i32 = u_xlati62;
      let x_2625 : i32 = u_xlati62;
      let x_2629 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2622 + 1i) / 4i)][((x_2625 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_2619.y, x_2619.y, x_2619.y, x_2619.y) * x_2629);
      let x_2631 : i32 = u_xlati62;
      let x_2633 : i32 = u_xlati62;
      let x_2636 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[(x_2631 / 4i)][(x_2633 % 4i)];
      let x_2637 : vec3<f32> = vs_INTERP7;
      let x_2640 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2636 * vec4<f32>(x_2637.x, x_2637.x, x_2637.x, x_2637.x)) + x_2640);
      let x_2642 : i32 = u_xlati62;
      let x_2645 : i32 = u_xlati62;
      let x_2649 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2642 + 2i) / 4i)][((x_2645 + 2i) % 4i)];
      let x_2650 : vec3<f32> = vs_INTERP7;
      let x_2653 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2649 * vec4<f32>(x_2650.z, x_2650.z, x_2650.z, x_2650.z)) + x_2653);
      let x_2655 : vec4<f32> = u_xlat12;
      let x_2656 : i32 = u_xlati62;
      let x_2659 : i32 = u_xlati62;
      let x_2663 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2656 + 3i) / 4i)][((x_2659 + 3i) % 4i)];
      u_xlat12 = (x_2655 + x_2663);
      let x_2665 : vec4<f32> = u_xlat12;
      let x_2667 : vec4<f32> = u_xlat12;
      let x_2669 : vec3<f32> = (vec3<f32>(x_2665.x, x_2665.y, x_2665.z) / vec3<f32>(x_2667.w, x_2667.w, x_2667.w));
      let x_2670 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
      let x_2673 : i32 = u_xlati32;
      let x_2675 : f32 = x_298.x_AdditionalShadowParams[x_2673].y;
      u_xlatb62 = (0.0f < x_2675);
      let x_2677 : bool = u_xlatb62;
      if (x_2677) {
        let x_2680 : i32 = u_xlati32;
        let x_2682 : f32 = x_298.x_AdditionalShadowParams[x_2680].y;
        u_xlatb62 = (1.0f == x_2682);
        let x_2684 : bool = u_xlatb62;
        if (x_2684) {
          let x_2687 : vec4<f32> = u_xlat12;
          let x_2690 : vec4<f32> = x_298.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_2687.x, x_2687.y, x_2687.x, x_2687.y) + x_2690);
          let x_2693 : vec4<f32> = u_xlat13;
          let x_2694 : vec2<f32> = vec2<f32>(x_2693.x, x_2693.y);
          let x_2696 : f32 = u_xlat12.z;
          txVec30 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
          let x_2704 : vec3<f32> = txVec30;
          let x_2706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2704.xy, x_2704.z);
          u_xlat14.x = x_2706;
          let x_2709 : vec4<f32> = u_xlat13;
          let x_2710 : vec2<f32> = vec2<f32>(x_2709.z, x_2709.w);
          let x_2712 : f32 = u_xlat12.z;
          txVec31 = vec3<f32>(x_2710.x, x_2710.y, x_2712);
          let x_2719 : vec3<f32> = txVec31;
          let x_2721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2719.xy, x_2719.z);
          u_xlat14.y = x_2721;
          let x_2723 : vec4<f32> = u_xlat12;
          let x_2727 : vec4<f32> = x_298.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.y) + x_2727);
          let x_2730 : vec4<f32> = u_xlat13;
          let x_2731 : vec2<f32> = vec2<f32>(x_2730.x, x_2730.y);
          let x_2733 : f32 = u_xlat12.z;
          txVec32 = vec3<f32>(x_2731.x, x_2731.y, x_2733);
          let x_2740 : vec3<f32> = txVec32;
          let x_2742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2740.xy, x_2740.z);
          u_xlat14.z = x_2742;
          let x_2745 : vec4<f32> = u_xlat13;
          let x_2746 : vec2<f32> = vec2<f32>(x_2745.z, x_2745.w);
          let x_2748 : f32 = u_xlat12.z;
          txVec33 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
          let x_2755 : vec3<f32> = txVec33;
          let x_2757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2755.xy, x_2755.z);
          u_xlat14.w = x_2757;
          let x_2759 : vec4<f32> = u_xlat14;
          u_xlat62.x = dot(x_2759, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2763 : i32 = u_xlati32;
          let x_2765 : f32 = x_298.x_AdditionalShadowParams[x_2763].y;
          u_xlatb89 = (2.0f == x_2765);
          let x_2767 : bool = u_xlatb89;
          if (x_2767) {
            let x_2770 : vec4<f32> = u_xlat12;
            let x_2774 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2777 : vec2<f32> = ((vec2<f32>(x_2770.x, x_2770.y) * vec2<f32>(x_2774.z, x_2774.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2778 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2777.x, x_2777.y, x_2778.z, x_2778.w);
            let x_2780 : vec4<f32> = u_xlat13;
            let x_2782 : vec2<f32> = floor(vec2<f32>(x_2780.x, x_2780.y));
            let x_2783 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2782.x, x_2782.y, x_2783.z, x_2783.w);
            let x_2786 : vec4<f32> = u_xlat12;
            let x_2789 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2786.x, x_2786.y) * vec2<f32>(x_2789.z, x_2789.w)) + -(vec2<f32>(x_2792.x, x_2792.y)));
            let x_2796 : vec2<f32> = u_xlat67;
            u_xlat14 = (vec4<f32>(x_2796.x, x_2796.x, x_2796.y, x_2796.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2799 : vec4<f32> = u_xlat14;
            let x_2801 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2799.x, x_2799.x, x_2799.z, x_2799.z) * vec4<f32>(x_2801.x, x_2801.x, x_2801.z, x_2801.z));
            let x_2804 : vec4<f32> = u_xlat15;
            let x_2806 : vec2<f32> = (vec2<f32>(x_2804.y, x_2804.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2807 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2806.x, x_2807.y, x_2806.y, x_2807.w);
            let x_2809 : vec4<f32> = u_xlat15;
            let x_2812 : vec2<f32> = u_xlat67;
            let x_2814 : vec2<f32> = ((vec2<f32>(x_2809.x, x_2809.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2812));
            let x_2815 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2814.x, x_2814.y, x_2815.z, x_2815.w);
            let x_2818 : vec2<f32> = u_xlat67;
            u_xlat69 = (-(x_2818) + vec2<f32>(1.0f, 1.0f));
            let x_2821 : vec2<f32> = u_xlat67;
            let x_2822 : vec2<f32> = min(x_2821, vec2<f32>(0.0f, 0.0f));
            let x_2823 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
            let x_2825 : vec4<f32> = u_xlat16;
            let x_2828 : vec4<f32> = u_xlat16;
            let x_2831 : vec2<f32> = u_xlat69;
            let x_2832 : vec2<f32> = ((-(vec2<f32>(x_2825.x, x_2825.y)) * vec2<f32>(x_2828.x, x_2828.y)) + x_2831);
            let x_2833 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2832.x, x_2832.y, x_2833.z, x_2833.w);
            let x_2835 : vec2<f32> = u_xlat67;
            u_xlat67 = max(x_2835, vec2<f32>(0.0f, 0.0f));
            let x_2837 : vec2<f32> = u_xlat67;
            let x_2839 : vec2<f32> = u_xlat67;
            let x_2841 : vec4<f32> = u_xlat14;
            u_xlat67 = ((-(x_2837) * x_2839) + vec2<f32>(x_2841.y, x_2841.w));
            let x_2844 : vec4<f32> = u_xlat16;
            let x_2846 : vec2<f32> = (vec2<f32>(x_2844.x, x_2844.y) + vec2<f32>(1.0f, 1.0f));
            let x_2847 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2846.x, x_2846.y, x_2847.z, x_2847.w);
            let x_2849 : vec2<f32> = u_xlat67;
            u_xlat67 = (x_2849 + vec2<f32>(1.0f, 1.0f));
            let x_2851 : vec4<f32> = u_xlat15;
            let x_2853 : vec2<f32> = (vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2854 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2856 : vec2<f32> = u_xlat69;
            let x_2857 : vec2<f32> = (x_2856 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2858 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2857.x, x_2857.y, x_2858.z, x_2858.w);
            let x_2860 : vec4<f32> = u_xlat16;
            let x_2862 : vec2<f32> = (vec2<f32>(x_2860.x, x_2860.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2863 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2865 : vec2<f32> = u_xlat67;
            let x_2866 : vec2<f32> = (x_2865 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2867 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2866.x, x_2866.y, x_2867.z, x_2867.w);
            let x_2869 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_2869.y, x_2869.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2873 : f32 = u_xlat16.x;
            u_xlat17.z = x_2873;
            let x_2876 : f32 = u_xlat67.x;
            u_xlat17.w = x_2876;
            let x_2879 : f32 = u_xlat18.x;
            u_xlat15.z = x_2879;
            let x_2882 : f32 = u_xlat14.x;
            u_xlat15.w = x_2882;
            let x_2884 : vec4<f32> = u_xlat15;
            let x_2886 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2884.z, x_2884.w, x_2884.x, x_2884.z) + vec4<f32>(x_2886.z, x_2886.w, x_2886.x, x_2886.z));
            let x_2890 : f32 = u_xlat17.y;
            u_xlat16.z = x_2890;
            let x_2893 : f32 = u_xlat67.y;
            u_xlat16.w = x_2893;
            let x_2896 : f32 = u_xlat15.y;
            u_xlat18.z = x_2896;
            let x_2899 : f32 = u_xlat14.z;
            u_xlat18.w = x_2899;
            let x_2901 : vec4<f32> = u_xlat16;
            let x_2903 : vec4<f32> = u_xlat18;
            let x_2905 : vec3<f32> = (vec3<f32>(x_2901.z, x_2901.y, x_2901.w) + vec3<f32>(x_2903.z, x_2903.y, x_2903.w));
            let x_2906 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
            let x_2908 : vec4<f32> = u_xlat15;
            let x_2910 : vec4<f32> = u_xlat19;
            let x_2912 : vec3<f32> = (vec3<f32>(x_2908.x, x_2908.z, x_2908.w) / vec3<f32>(x_2910.z, x_2910.w, x_2910.y));
            let x_2913 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2912.x, x_2912.y, x_2912.z, x_2913.w);
            let x_2915 : vec4<f32> = u_xlat15;
            let x_2917 : vec3<f32> = (vec3<f32>(x_2915.x, x_2915.y, x_2915.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2918 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
            let x_2920 : vec4<f32> = u_xlat18;
            let x_2922 : vec4<f32> = u_xlat14;
            let x_2924 : vec3<f32> = (vec3<f32>(x_2920.z, x_2920.y, x_2920.w) / vec3<f32>(x_2922.x, x_2922.y, x_2922.z));
            let x_2925 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2925.w);
            let x_2927 : vec4<f32> = u_xlat16;
            let x_2929 : vec3<f32> = (vec3<f32>(x_2927.x, x_2927.y, x_2927.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2930 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2929.x, x_2929.y, x_2929.z, x_2930.w);
            let x_2932 : vec4<f32> = u_xlat15;
            let x_2935 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2937 : vec3<f32> = (vec3<f32>(x_2932.y, x_2932.x, x_2932.z) * vec3<f32>(x_2935.x, x_2935.x, x_2935.x));
            let x_2938 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2937.x, x_2937.y, x_2937.z, x_2938.w);
            let x_2940 : vec4<f32> = u_xlat16;
            let x_2943 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2945 : vec3<f32> = (vec3<f32>(x_2940.x, x_2940.y, x_2940.z) * vec3<f32>(x_2943.y, x_2943.y, x_2943.y));
            let x_2946 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2945.x, x_2945.y, x_2945.z, x_2946.w);
            let x_2949 : f32 = u_xlat16.x;
            u_xlat15.w = x_2949;
            let x_2951 : vec4<f32> = u_xlat13;
            let x_2954 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2957 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2951.x, x_2951.y, x_2951.x, x_2951.y) * vec4<f32>(x_2954.x, x_2954.y, x_2954.x, x_2954.y)) + vec4<f32>(x_2957.y, x_2957.w, x_2957.x, x_2957.w));
            let x_2960 : vec4<f32> = u_xlat13;
            let x_2963 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2966 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_2960.x, x_2960.y) * vec2<f32>(x_2963.x, x_2963.y)) + vec2<f32>(x_2966.z, x_2966.w));
            let x_2970 : f32 = u_xlat15.y;
            u_xlat16.w = x_2970;
            let x_2972 : vec4<f32> = u_xlat16;
            let x_2973 : vec2<f32> = vec2<f32>(x_2972.y, x_2972.z);
            let x_2974 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2974.x, x_2973.x, x_2974.z, x_2973.y);
            let x_2976 : vec4<f32> = u_xlat13;
            let x_2979 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2982 : vec4<f32> = u_xlat15;
            u_xlat18 = ((vec4<f32>(x_2976.x, x_2976.y, x_2976.x, x_2976.y) * vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y)) + vec4<f32>(x_2982.x, x_2982.y, x_2982.z, x_2982.y));
            let x_2985 : vec4<f32> = u_xlat13;
            let x_2988 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2991 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y) * vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y)) + vec4<f32>(x_2991.w, x_2991.y, x_2991.w, x_2991.z));
            let x_2994 : vec4<f32> = u_xlat13;
            let x_2997 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3000 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2994.x, x_2994.y, x_2994.x, x_2994.y) * vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.y)) + vec4<f32>(x_3000.x, x_3000.w, x_3000.z, x_3000.w));
            let x_3003 : vec4<f32> = u_xlat14;
            let x_3005 : vec4<f32> = u_xlat19;
            u_xlat20 = (vec4<f32>(x_3003.x, x_3003.x, x_3003.x, x_3003.y) * vec4<f32>(x_3005.z, x_3005.w, x_3005.y, x_3005.z));
            let x_3008 : vec4<f32> = u_xlat14;
            let x_3010 : vec4<f32> = u_xlat19;
            u_xlat21 = (vec4<f32>(x_3008.y, x_3008.y, x_3008.z, x_3008.z) * x_3010);
            let x_3013 : f32 = u_xlat14.z;
            let x_3015 : f32 = u_xlat19.y;
            u_xlat89 = (x_3013 * x_3015);
            let x_3018 : vec4<f32> = u_xlat17;
            let x_3019 : vec2<f32> = vec2<f32>(x_3018.x, x_3018.y);
            let x_3021 : f32 = u_xlat12.z;
            txVec34 = vec3<f32>(x_3019.x, x_3019.y, x_3021);
            let x_3028 : vec3<f32> = txVec34;
            let x_3030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3028.xy, x_3028.z);
            u_xlat90 = x_3030;
            let x_3032 : vec4<f32> = u_xlat17;
            let x_3033 : vec2<f32> = vec2<f32>(x_3032.z, x_3032.w);
            let x_3035 : f32 = u_xlat12.z;
            txVec35 = vec3<f32>(x_3033.x, x_3033.y, x_3035);
            let x_3043 : vec3<f32> = txVec35;
            let x_3045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
            u_xlat92 = x_3045;
            let x_3046 : f32 = u_xlat92;
            let x_3048 : f32 = u_xlat20.y;
            u_xlat92 = (x_3046 * x_3048);
            let x_3051 : f32 = u_xlat20.x;
            let x_3052 : f32 = u_xlat90;
            let x_3054 : f32 = u_xlat92;
            u_xlat90 = ((x_3051 * x_3052) + x_3054);
            let x_3057 : vec2<f32> = u_xlat67;
            let x_3059 : f32 = u_xlat12.z;
            txVec36 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
            let x_3066 : vec3<f32> = txVec36;
            let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
            u_xlat92 = x_3068;
            let x_3070 : f32 = u_xlat20.z;
            let x_3071 : f32 = u_xlat92;
            let x_3073 : f32 = u_xlat90;
            u_xlat90 = ((x_3070 * x_3071) + x_3073);
            let x_3076 : vec4<f32> = u_xlat16;
            let x_3077 : vec2<f32> = vec2<f32>(x_3076.x, x_3076.y);
            let x_3079 : f32 = u_xlat12.z;
            txVec37 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3086 : vec3<f32> = txVec37;
            let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
            u_xlat92 = x_3088;
            let x_3090 : f32 = u_xlat20.w;
            let x_3091 : f32 = u_xlat92;
            let x_3093 : f32 = u_xlat90;
            u_xlat90 = ((x_3090 * x_3091) + x_3093);
            let x_3096 : vec4<f32> = u_xlat18;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.x, x_3096.y);
            let x_3099 : f32 = u_xlat12.z;
            txVec38 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3106 : vec3<f32> = txVec38;
            let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
            u_xlat92 = x_3108;
            let x_3110 : f32 = u_xlat21.x;
            let x_3111 : f32 = u_xlat92;
            let x_3113 : f32 = u_xlat90;
            u_xlat90 = ((x_3110 * x_3111) + x_3113);
            let x_3116 : vec4<f32> = u_xlat18;
            let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
            let x_3119 : f32 = u_xlat12.z;
            txVec39 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
            let x_3126 : vec3<f32> = txVec39;
            let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
            u_xlat92 = x_3128;
            let x_3130 : f32 = u_xlat21.y;
            let x_3131 : f32 = u_xlat92;
            let x_3133 : f32 = u_xlat90;
            u_xlat90 = ((x_3130 * x_3131) + x_3133);
            let x_3136 : vec4<f32> = u_xlat16;
            let x_3137 : vec2<f32> = vec2<f32>(x_3136.z, x_3136.w);
            let x_3139 : f32 = u_xlat12.z;
            txVec40 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
            let x_3146 : vec3<f32> = txVec40;
            let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
            u_xlat92 = x_3148;
            let x_3150 : f32 = u_xlat21.z;
            let x_3151 : f32 = u_xlat92;
            let x_3153 : f32 = u_xlat90;
            u_xlat90 = ((x_3150 * x_3151) + x_3153);
            let x_3156 : vec4<f32> = u_xlat15;
            let x_3157 : vec2<f32> = vec2<f32>(x_3156.x, x_3156.y);
            let x_3159 : f32 = u_xlat12.z;
            txVec41 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
            let x_3166 : vec3<f32> = txVec41;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat92 = x_3168;
            let x_3170 : f32 = u_xlat21.w;
            let x_3171 : f32 = u_xlat92;
            let x_3173 : f32 = u_xlat90;
            u_xlat90 = ((x_3170 * x_3171) + x_3173);
            let x_3176 : vec4<f32> = u_xlat15;
            let x_3177 : vec2<f32> = vec2<f32>(x_3176.z, x_3176.w);
            let x_3179 : f32 = u_xlat12.z;
            txVec42 = vec3<f32>(x_3177.x, x_3177.y, x_3179);
            let x_3186 : vec3<f32> = txVec42;
            let x_3188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
            u_xlat92 = x_3188;
            let x_3189 : f32 = u_xlat89;
            let x_3190 : f32 = u_xlat92;
            let x_3192 : f32 = u_xlat90;
            u_xlat62.x = ((x_3189 * x_3190) + x_3192);
          } else {
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3199 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3202 : vec2<f32> = ((vec2<f32>(x_3196.x, x_3196.y) * vec2<f32>(x_3199.z, x_3199.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3203 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3202.x, x_3202.y, x_3203.z, x_3203.w);
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3207 : vec2<f32> = floor(vec2<f32>(x_3205.x, x_3205.y));
            let x_3208 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3207.x, x_3207.y, x_3208.z, x_3208.w);
            let x_3210 : vec4<f32> = u_xlat12;
            let x_3213 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3216 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_3210.x, x_3210.y) * vec2<f32>(x_3213.z, x_3213.w)) + -(vec2<f32>(x_3216.x, x_3216.y)));
            let x_3220 : vec2<f32> = u_xlat67;
            u_xlat14 = (vec4<f32>(x_3220.x, x_3220.x, x_3220.y, x_3220.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3223 : vec4<f32> = u_xlat14;
            let x_3225 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_3223.x, x_3223.x, x_3223.z, x_3223.z) * vec4<f32>(x_3225.x, x_3225.x, x_3225.z, x_3225.z));
            let x_3228 : vec4<f32> = u_xlat15;
            let x_3230 : vec2<f32> = (vec2<f32>(x_3228.y, x_3228.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3231 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3231.x, x_3230.x, x_3231.z, x_3230.y);
            let x_3233 : vec4<f32> = u_xlat15;
            let x_3236 : vec2<f32> = u_xlat67;
            let x_3238 : vec2<f32> = ((vec2<f32>(x_3233.x, x_3233.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3236));
            let x_3239 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3238.x, x_3239.y, x_3238.y, x_3239.w);
            let x_3241 : vec2<f32> = u_xlat67;
            let x_3243 : vec2<f32> = (-(x_3241) + vec2<f32>(1.0f, 1.0f));
            let x_3244 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
            let x_3246 : vec2<f32> = u_xlat67;
            u_xlat69 = min(x_3246, vec2<f32>(0.0f, 0.0f));
            let x_3248 : vec2<f32> = u_xlat69;
            let x_3250 : vec2<f32> = u_xlat69;
            let x_3252 : vec4<f32> = u_xlat15;
            let x_3254 : vec2<f32> = ((-(x_3248) * x_3250) + vec2<f32>(x_3252.x, x_3252.y));
            let x_3255 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3254.x, x_3254.y, x_3255.z, x_3255.w);
            let x_3257 : vec2<f32> = u_xlat67;
            u_xlat69 = max(x_3257, vec2<f32>(0.0f, 0.0f));
            let x_3260 : vec2<f32> = u_xlat69;
            let x_3262 : vec2<f32> = u_xlat69;
            let x_3264 : vec4<f32> = u_xlat14;
            let x_3266 : vec2<f32> = ((-(x_3260) * x_3262) + vec2<f32>(x_3264.y, x_3264.w));
            let x_3267 : vec3<f32> = u_xlat41;
            u_xlat41 = vec3<f32>(x_3266.x, x_3267.y, x_3266.y);
            let x_3269 : vec4<f32> = u_xlat15;
            let x_3271 : vec2<f32> = (vec2<f32>(x_3269.x, x_3269.y) + vec2<f32>(2.0f, 2.0f));
            let x_3272 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3271.x, x_3271.y, x_3272.z, x_3272.w);
            let x_3274 : vec3<f32> = u_xlat41;
            let x_3276 : vec2<f32> = (vec2<f32>(x_3274.x, x_3274.z) + vec2<f32>(2.0f, 2.0f));
            let x_3277 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3277.x, x_3276.x, x_3277.z, x_3276.y);
            let x_3280 : f32 = u_xlat14.y;
            u_xlat17.z = (x_3280 * 0.08163200318813323975f);
            let x_3283 : vec4<f32> = u_xlat14;
            let x_3285 : vec3<f32> = (vec3<f32>(x_3283.z, x_3283.x, x_3283.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3286 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3285.x, x_3285.y, x_3285.z, x_3286.w);
            let x_3288 : vec4<f32> = u_xlat15;
            let x_3290 : vec2<f32> = (vec2<f32>(x_3288.x, x_3288.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3290.x, x_3290.y, x_3291.z, x_3291.w);
            let x_3294 : f32 = u_xlat18.y;
            u_xlat17.x = x_3294;
            let x_3296 : vec2<f32> = u_xlat67;
            let x_3299 : vec2<f32> = ((vec2<f32>(x_3296.x, x_3296.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3300 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3300.x, x_3299.x, x_3300.z, x_3299.y);
            let x_3302 : vec2<f32> = u_xlat67;
            let x_3305 : vec2<f32> = ((vec2<f32>(x_3302.x, x_3302.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3306 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3305.x, x_3306.y, x_3305.y, x_3306.w);
            let x_3309 : f32 = u_xlat14.x;
            u_xlat15.y = x_3309;
            let x_3312 : f32 = u_xlat16.y;
            u_xlat15.w = x_3312;
            let x_3314 : vec4<f32> = u_xlat15;
            let x_3315 : vec4<f32> = u_xlat17;
            u_xlat17 = (x_3314 + x_3315);
            let x_3317 : vec2<f32> = u_xlat67;
            let x_3320 : vec2<f32> = ((vec2<f32>(x_3317.y, x_3317.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3321 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3321.x, x_3320.x, x_3321.z, x_3320.y);
            let x_3323 : vec2<f32> = u_xlat67;
            let x_3326 : vec2<f32> = ((vec2<f32>(x_3323.y, x_3323.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3327 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3326.x, x_3327.y, x_3326.y, x_3327.w);
            let x_3330 : f32 = u_xlat14.y;
            u_xlat16.y = x_3330;
            let x_3332 : vec4<f32> = u_xlat16;
            let x_3333 : vec4<f32> = u_xlat18;
            u_xlat14 = (x_3332 + x_3333);
            let x_3335 : vec4<f32> = u_xlat15;
            let x_3336 : vec4<f32> = u_xlat17;
            u_xlat15 = (x_3335 / x_3336);
            let x_3338 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3338 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3340 : vec4<f32> = u_xlat16;
            let x_3341 : vec4<f32> = u_xlat14;
            u_xlat16 = (x_3340 / x_3341);
            let x_3343 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3343 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3345 : vec4<f32> = u_xlat15;
            let x_3348 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3345.w, x_3345.x, x_3345.y, x_3345.z) * vec4<f32>(x_3348.x, x_3348.x, x_3348.x, x_3348.x));
            let x_3351 : vec4<f32> = u_xlat16;
            let x_3354 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_3351.x, x_3351.w, x_3351.y, x_3351.z) * vec4<f32>(x_3354.y, x_3354.y, x_3354.y, x_3354.y));
            let x_3357 : vec4<f32> = u_xlat15;
            let x_3358 : vec3<f32> = vec3<f32>(x_3357.y, x_3357.z, x_3357.w);
            let x_3359 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3358.x, x_3359.y, x_3358.y, x_3358.z);
            let x_3362 : f32 = u_xlat16.x;
            u_xlat18.y = x_3362;
            let x_3364 : vec4<f32> = u_xlat13;
            let x_3367 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3370 : vec4<f32> = u_xlat18;
            u_xlat19 = ((vec4<f32>(x_3364.x, x_3364.y, x_3364.x, x_3364.y) * vec4<f32>(x_3367.x, x_3367.y, x_3367.x, x_3367.y)) + vec4<f32>(x_3370.x, x_3370.y, x_3370.z, x_3370.y));
            let x_3373 : vec4<f32> = u_xlat13;
            let x_3376 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3379 : vec4<f32> = u_xlat18;
            u_xlat67 = ((vec2<f32>(x_3373.x, x_3373.y) * vec2<f32>(x_3376.x, x_3376.y)) + vec2<f32>(x_3379.w, x_3379.y));
            let x_3383 : f32 = u_xlat18.y;
            u_xlat15.y = x_3383;
            let x_3386 : f32 = u_xlat16.z;
            u_xlat18.y = x_3386;
            let x_3388 : vec4<f32> = u_xlat13;
            let x_3391 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3394 : vec4<f32> = u_xlat18;
            u_xlat20 = ((vec4<f32>(x_3388.x, x_3388.y, x_3388.x, x_3388.y) * vec4<f32>(x_3391.x, x_3391.y, x_3391.x, x_3391.y)) + vec4<f32>(x_3394.x, x_3394.y, x_3394.z, x_3394.y));
            let x_3397 : vec4<f32> = u_xlat13;
            let x_3400 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3403 : vec4<f32> = u_xlat18;
            let x_3405 : vec2<f32> = ((vec2<f32>(x_3397.x, x_3397.y) * vec2<f32>(x_3400.x, x_3400.y)) + vec2<f32>(x_3403.w, x_3403.y));
            let x_3406 : vec4<f32> = u_xlat21;
            u_xlat21 = vec4<f32>(x_3405.x, x_3405.y, x_3406.z, x_3406.w);
            let x_3409 : f32 = u_xlat18.y;
            u_xlat15.z = x_3409;
            let x_3412 : vec4<f32> = u_xlat13;
            let x_3415 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3418 : vec4<f32> = u_xlat15;
            u_xlat22 = ((vec4<f32>(x_3412.x, x_3412.y, x_3412.x, x_3412.y) * vec4<f32>(x_3415.x, x_3415.y, x_3415.x, x_3415.y)) + vec4<f32>(x_3418.x, x_3418.y, x_3418.x, x_3418.z));
            let x_3422 : f32 = u_xlat16.w;
            u_xlat18.y = x_3422;
            let x_3425 : vec4<f32> = u_xlat13;
            let x_3428 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat18;
            u_xlat23 = ((vec4<f32>(x_3425.x, x_3425.y, x_3425.x, x_3425.y) * vec4<f32>(x_3428.x, x_3428.y, x_3428.x, x_3428.y)) + vec4<f32>(x_3431.x, x_3431.y, x_3431.z, x_3431.y));
            let x_3435 : vec4<f32> = u_xlat13;
            let x_3438 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3441 : vec4<f32> = u_xlat18;
            u_xlat42 = ((vec2<f32>(x_3435.x, x_3435.y) * vec2<f32>(x_3438.x, x_3438.y)) + vec2<f32>(x_3441.w, x_3441.y));
            let x_3445 : f32 = u_xlat18.y;
            u_xlat15.w = x_3445;
            let x_3448 : vec4<f32> = u_xlat13;
            let x_3451 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3454 : vec4<f32> = u_xlat15;
            u_xlat75 = ((vec2<f32>(x_3448.x, x_3448.y) * vec2<f32>(x_3451.x, x_3451.y)) + vec2<f32>(x_3454.x, x_3454.w));
            let x_3457 : vec4<f32> = u_xlat18;
            let x_3458 : vec3<f32> = vec3<f32>(x_3457.x, x_3457.z, x_3457.w);
            let x_3459 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3458.x, x_3459.y, x_3458.y, x_3458.z);
            let x_3461 : vec4<f32> = u_xlat13;
            let x_3464 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3467 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3461.x, x_3461.y, x_3461.x, x_3461.y) * vec4<f32>(x_3464.x, x_3464.y, x_3464.x, x_3464.y)) + vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3467.y));
            let x_3470 : vec4<f32> = u_xlat13;
            let x_3473 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3476 : vec4<f32> = u_xlat16;
            u_xlat70 = ((vec2<f32>(x_3470.x, x_3470.y) * vec2<f32>(x_3473.x, x_3473.y)) + vec2<f32>(x_3476.w, x_3476.y));
            let x_3480 : f32 = u_xlat15.x;
            u_xlat16.x = x_3480;
            let x_3482 : vec4<f32> = u_xlat13;
            let x_3485 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3488 : vec4<f32> = u_xlat16;
            let x_3490 : vec2<f32> = ((vec2<f32>(x_3482.x, x_3482.y) * vec2<f32>(x_3485.x, x_3485.y)) + vec2<f32>(x_3488.x, x_3488.y));
            let x_3491 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3490.x, x_3490.y, x_3491.z, x_3491.w);
            let x_3494 : vec4<f32> = u_xlat14;
            let x_3496 : vec4<f32> = u_xlat17;
            u_xlat24 = (vec4<f32>(x_3494.x, x_3494.x, x_3494.x, x_3494.x) * x_3496);
            let x_3499 : vec4<f32> = u_xlat14;
            let x_3501 : vec4<f32> = u_xlat17;
            u_xlat25 = (vec4<f32>(x_3499.y, x_3499.y, x_3499.y, x_3499.y) * x_3501);
            let x_3504 : vec4<f32> = u_xlat14;
            let x_3506 : vec4<f32> = u_xlat17;
            u_xlat26 = (vec4<f32>(x_3504.z, x_3504.z, x_3504.z, x_3504.z) * x_3506);
            let x_3508 : vec4<f32> = u_xlat14;
            let x_3510 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_3508.w, x_3508.w, x_3508.w, x_3508.w) * x_3510);
            let x_3513 : vec4<f32> = u_xlat19;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.x, x_3513.y);
            let x_3516 : f32 = u_xlat12.z;
            txVec43 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec43;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat89 = x_3525;
            let x_3527 : vec4<f32> = u_xlat19;
            let x_3528 : vec2<f32> = vec2<f32>(x_3527.z, x_3527.w);
            let x_3530 : f32 = u_xlat12.z;
            txVec44 = vec3<f32>(x_3528.x, x_3528.y, x_3530);
            let x_3537 : vec3<f32> = txVec44;
            let x_3539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3537.xy, x_3537.z);
            u_xlat90 = x_3539;
            let x_3540 : f32 = u_xlat90;
            let x_3542 : f32 = u_xlat24.y;
            u_xlat90 = (x_3540 * x_3542);
            let x_3545 : f32 = u_xlat24.x;
            let x_3546 : f32 = u_xlat89;
            let x_3548 : f32 = u_xlat90;
            u_xlat89 = ((x_3545 * x_3546) + x_3548);
            let x_3551 : vec2<f32> = u_xlat67;
            let x_3553 : f32 = u_xlat12.z;
            txVec45 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec45;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat90 = x_3562;
            let x_3564 : f32 = u_xlat24.z;
            let x_3565 : f32 = u_xlat90;
            let x_3567 : f32 = u_xlat89;
            u_xlat89 = ((x_3564 * x_3565) + x_3567);
            let x_3570 : vec4<f32> = u_xlat22;
            let x_3571 : vec2<f32> = vec2<f32>(x_3570.x, x_3570.y);
            let x_3573 : f32 = u_xlat12.z;
            txVec46 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec46;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat90 = x_3582;
            let x_3584 : f32 = u_xlat24.w;
            let x_3585 : f32 = u_xlat90;
            let x_3587 : f32 = u_xlat89;
            u_xlat89 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec4<f32> = u_xlat20;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.x, x_3590.y);
            let x_3593 : f32 = u_xlat12.z;
            txVec47 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec47;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat90 = x_3602;
            let x_3604 : f32 = u_xlat25.x;
            let x_3605 : f32 = u_xlat90;
            let x_3607 : f32 = u_xlat89;
            u_xlat89 = ((x_3604 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat20;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.z, x_3610.w);
            let x_3613 : f32 = u_xlat12.z;
            txVec48 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec48;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat90 = x_3622;
            let x_3624 : f32 = u_xlat25.y;
            let x_3625 : f32 = u_xlat90;
            let x_3627 : f32 = u_xlat89;
            u_xlat89 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat21;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.x, x_3630.y);
            let x_3633 : f32 = u_xlat12.z;
            txVec49 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec49;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat90 = x_3642;
            let x_3644 : f32 = u_xlat25.z;
            let x_3645 : f32 = u_xlat90;
            let x_3647 : f32 = u_xlat89;
            u_xlat89 = ((x_3644 * x_3645) + x_3647);
            let x_3650 : vec4<f32> = u_xlat22;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.z, x_3650.w);
            let x_3653 : f32 = u_xlat12.z;
            txVec50 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec50;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat90 = x_3662;
            let x_3664 : f32 = u_xlat25.w;
            let x_3665 : f32 = u_xlat90;
            let x_3667 : f32 = u_xlat89;
            u_xlat89 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec4<f32> = u_xlat23;
            let x_3671 : vec2<f32> = vec2<f32>(x_3670.x, x_3670.y);
            let x_3673 : f32 = u_xlat12.z;
            txVec51 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
            let x_3680 : vec3<f32> = txVec51;
            let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
            u_xlat90 = x_3682;
            let x_3684 : f32 = u_xlat26.x;
            let x_3685 : f32 = u_xlat90;
            let x_3687 : f32 = u_xlat89;
            u_xlat89 = ((x_3684 * x_3685) + x_3687);
            let x_3690 : vec4<f32> = u_xlat23;
            let x_3691 : vec2<f32> = vec2<f32>(x_3690.z, x_3690.w);
            let x_3693 : f32 = u_xlat12.z;
            txVec52 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec52;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat90 = x_3702;
            let x_3704 : f32 = u_xlat26.y;
            let x_3705 : f32 = u_xlat90;
            let x_3707 : f32 = u_xlat89;
            u_xlat89 = ((x_3704 * x_3705) + x_3707);
            let x_3710 : vec2<f32> = u_xlat42;
            let x_3712 : f32 = u_xlat12.z;
            txVec53 = vec3<f32>(x_3710.x, x_3710.y, x_3712);
            let x_3719 : vec3<f32> = txVec53;
            let x_3721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3719.xy, x_3719.z);
            u_xlat90 = x_3721;
            let x_3723 : f32 = u_xlat26.z;
            let x_3724 : f32 = u_xlat90;
            let x_3726 : f32 = u_xlat89;
            u_xlat89 = ((x_3723 * x_3724) + x_3726);
            let x_3729 : vec2<f32> = u_xlat75;
            let x_3731 : f32 = u_xlat12.z;
            txVec54 = vec3<f32>(x_3729.x, x_3729.y, x_3731);
            let x_3738 : vec3<f32> = txVec54;
            let x_3740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3738.xy, x_3738.z);
            u_xlat90 = x_3740;
            let x_3742 : f32 = u_xlat26.w;
            let x_3743 : f32 = u_xlat90;
            let x_3745 : f32 = u_xlat89;
            u_xlat89 = ((x_3742 * x_3743) + x_3745);
            let x_3748 : vec4<f32> = u_xlat18;
            let x_3749 : vec2<f32> = vec2<f32>(x_3748.x, x_3748.y);
            let x_3751 : f32 = u_xlat12.z;
            txVec55 = vec3<f32>(x_3749.x, x_3749.y, x_3751);
            let x_3758 : vec3<f32> = txVec55;
            let x_3760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3758.xy, x_3758.z);
            u_xlat90 = x_3760;
            let x_3762 : f32 = u_xlat14.x;
            let x_3763 : f32 = u_xlat90;
            let x_3765 : f32 = u_xlat89;
            u_xlat89 = ((x_3762 * x_3763) + x_3765);
            let x_3768 : vec4<f32> = u_xlat18;
            let x_3769 : vec2<f32> = vec2<f32>(x_3768.z, x_3768.w);
            let x_3771 : f32 = u_xlat12.z;
            txVec56 = vec3<f32>(x_3769.x, x_3769.y, x_3771);
            let x_3778 : vec3<f32> = txVec56;
            let x_3780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3778.xy, x_3778.z);
            u_xlat90 = x_3780;
            let x_3782 : f32 = u_xlat14.y;
            let x_3783 : f32 = u_xlat90;
            let x_3785 : f32 = u_xlat89;
            u_xlat89 = ((x_3782 * x_3783) + x_3785);
            let x_3788 : vec2<f32> = u_xlat70;
            let x_3790 : f32 = u_xlat12.z;
            txVec57 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
            let x_3797 : vec3<f32> = txVec57;
            let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
            u_xlat90 = x_3799;
            let x_3801 : f32 = u_xlat14.z;
            let x_3802 : f32 = u_xlat90;
            let x_3804 : f32 = u_xlat89;
            u_xlat89 = ((x_3801 * x_3802) + x_3804);
            let x_3807 : vec4<f32> = u_xlat13;
            let x_3808 : vec2<f32> = vec2<f32>(x_3807.x, x_3807.y);
            let x_3810 : f32 = u_xlat12.z;
            txVec58 = vec3<f32>(x_3808.x, x_3808.y, x_3810);
            let x_3817 : vec3<f32> = txVec58;
            let x_3819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3817.xy, x_3817.z);
            u_xlat90 = x_3819;
            let x_3821 : f32 = u_xlat14.w;
            let x_3822 : f32 = u_xlat90;
            let x_3824 : f32 = u_xlat89;
            u_xlat62.x = ((x_3821 * x_3822) + x_3824);
          }
        }
      } else {
        let x_3829 : vec4<f32> = u_xlat12;
        let x_3830 : vec2<f32> = vec2<f32>(x_3829.x, x_3829.y);
        let x_3832 : f32 = u_xlat12.z;
        txVec59 = vec3<f32>(x_3830.x, x_3830.y, x_3832);
        let x_3839 : vec3<f32> = txVec59;
        let x_3841 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3839.xy, x_3839.z);
        u_xlat62.x = x_3841;
      }
      let x_3843 : i32 = u_xlati32;
      let x_3845 : f32 = x_298.x_AdditionalShadowParams[x_3843].x;
      u_xlat89 = (1.0f + -(x_3845));
      let x_3849 : f32 = u_xlat62.x;
      let x_3850 : i32 = u_xlati32;
      let x_3852 : f32 = x_298.x_AdditionalShadowParams[x_3850].x;
      let x_3854 : f32 = u_xlat89;
      u_xlat62.x = ((x_3849 * x_3852) + x_3854);
      let x_3858 : f32 = u_xlat12.z;
      u_xlatb89 = (0.0f >= x_3858);
      let x_3862 : f32 = u_xlat12.z;
      u_xlatb90 = (x_3862 >= 1.0f);
      let x_3864 : bool = u_xlatb89;
      let x_3865 : bool = u_xlatb90;
      u_xlatb89 = (x_3864 | x_3865);
      let x_3867 : bool = u_xlatb89;
      if (x_3867) {
        x_3868 = 1.0f;
      } else {
        let x_3873 : f32 = u_xlat62.x;
        x_3868 = x_3873;
      }
      let x_3874 : f32 = x_3868;
      u_xlat62.x = x_3874;
    } else {
      u_xlat62.x = 1.0f;
    }
    let x_3879 : f32 = u_xlat62.x;
    u_xlat89 = (-(x_3879) + 1.0f);
    let x_3883 : f32 = u_xlat3.x;
    let x_3884 : f32 = u_xlat89;
    let x_3887 : f32 = u_xlat62.x;
    u_xlat62.x = ((x_3883 * x_3884) + x_3887);
    let x_3891 : i32 = u_xlati32;
    u_xlati89 = (1i << bitcast<u32>((x_3891 & 31i)));
    let x_3895 : i32 = u_xlati89;
    let x_3898 : f32 = x_1980.x_AdditionalLightsCookieEnableBits;
    u_xlati89 = bitcast<i32>((bitcast<u32>(x_3895) & bitcast<u32>(x_3898)));
    let x_3902 : i32 = u_xlati89;
    if ((x_3902 != 0i)) {
      let x_3906 : i32 = u_xlati32;
      let x_3908 : f32 = x_1980.x_AdditionalLightsLightTypes[x_3906].el;
      u_xlati89 = i32(x_3908);
      let x_3911 : i32 = u_xlati89;
      u_xlati90 = select(1i, 0i, (x_3911 != 0i));
      let x_3915 : i32 = u_xlati32;
      u_xlati92 = (x_3915 << bitcast<u32>(2i));
      let x_3917 : i32 = u_xlati90;
      if ((x_3917 != 0i)) {
        let x_3921 : vec3<f32> = vs_INTERP7;
        let x_3923 : i32 = u_xlati92;
        let x_3926 : i32 = u_xlati92;
        let x_3930 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_3923 + 1i) / 4i)][((x_3926 + 1i) % 4i)];
        let x_3932 : vec3<f32> = (vec3<f32>(x_3921.y, x_3921.y, x_3921.y) * vec3<f32>(x_3930.x, x_3930.y, x_3930.w));
        let x_3933 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
        let x_3935 : i32 = u_xlati92;
        let x_3937 : i32 = u_xlati92;
        let x_3940 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[(x_3935 / 4i)][(x_3937 % 4i)];
        let x_3942 : vec3<f32> = vs_INTERP7;
        let x_3945 : vec4<f32> = u_xlat12;
        let x_3947 : vec3<f32> = ((vec3<f32>(x_3940.x, x_3940.y, x_3940.w) * vec3<f32>(x_3942.x, x_3942.x, x_3942.x)) + vec3<f32>(x_3945.x, x_3945.y, x_3945.z));
        let x_3948 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3947.x, x_3947.y, x_3947.z, x_3948.w);
        let x_3950 : i32 = u_xlati92;
        let x_3953 : i32 = u_xlati92;
        let x_3957 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_3950 + 2i) / 4i)][((x_3953 + 2i) % 4i)];
        let x_3959 : vec3<f32> = vs_INTERP7;
        let x_3962 : vec4<f32> = u_xlat12;
        let x_3964 : vec3<f32> = ((vec3<f32>(x_3957.x, x_3957.y, x_3957.w) * vec3<f32>(x_3959.z, x_3959.z, x_3959.z)) + vec3<f32>(x_3962.x, x_3962.y, x_3962.z));
        let x_3965 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3964.x, x_3964.y, x_3964.z, x_3965.w);
        let x_3967 : vec4<f32> = u_xlat12;
        let x_3969 : i32 = u_xlati92;
        let x_3972 : i32 = u_xlati92;
        let x_3976 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_3969 + 3i) / 4i)][((x_3972 + 3i) % 4i)];
        let x_3978 : vec3<f32> = (vec3<f32>(x_3967.x, x_3967.y, x_3967.z) + vec3<f32>(x_3976.x, x_3976.y, x_3976.w));
        let x_3979 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3978.x, x_3978.y, x_3978.z, x_3979.w);
        let x_3981 : vec4<f32> = u_xlat12;
        let x_3983 : vec4<f32> = u_xlat12;
        let x_3985 : vec2<f32> = (vec2<f32>(x_3981.x, x_3981.y) / vec2<f32>(x_3983.z, x_3983.z));
        let x_3986 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3985.x, x_3985.y, x_3986.z, x_3986.w);
        let x_3988 : vec4<f32> = u_xlat12;
        let x_3991 : vec2<f32> = ((vec2<f32>(x_3988.x, x_3988.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3992 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3991.x, x_3991.y, x_3992.z, x_3992.w);
        let x_3994 : vec4<f32> = u_xlat12;
        let x_3998 : vec2<f32> = clamp(vec2<f32>(x_3994.x, x_3994.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3999 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3998.x, x_3998.y, x_3999.z, x_3999.w);
        let x_4001 : i32 = u_xlati32;
        let x_4003 : vec4<f32> = x_1980.x_AdditionalLightsCookieAtlasUVRects[x_4001];
        let x_4005 : vec4<f32> = u_xlat12;
        let x_4008 : i32 = u_xlati32;
        let x_4010 : vec4<f32> = x_1980.x_AdditionalLightsCookieAtlasUVRects[x_4008];
        let x_4012 : vec2<f32> = ((vec2<f32>(x_4003.x, x_4003.y) * vec2<f32>(x_4005.x, x_4005.y)) + vec2<f32>(x_4010.z, x_4010.w));
        let x_4013 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_4012.x, x_4012.y, x_4013.z, x_4013.w);
      } else {
        let x_4016 : i32 = u_xlati89;
        u_xlatb89 = (x_4016 == 1i);
        let x_4018 : bool = u_xlatb89;
        u_xlati89 = select(0i, 1i, x_4018);
        let x_4020 : i32 = u_xlati89;
        if ((x_4020 != 0i)) {
          let x_4025 : vec3<f32> = vs_INTERP7;
          let x_4027 : i32 = u_xlati92;
          let x_4030 : i32 = u_xlati92;
          let x_4034 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_4027 + 1i) / 4i)][((x_4030 + 1i) % 4i)];
          u_xlat66 = (vec2<f32>(x_4025.y, x_4025.y) * vec2<f32>(x_4034.x, x_4034.y));
          let x_4037 : i32 = u_xlati92;
          let x_4039 : i32 = u_xlati92;
          let x_4042 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[(x_4037 / 4i)][(x_4039 % 4i)];
          let x_4044 : vec3<f32> = vs_INTERP7;
          let x_4047 : vec2<f32> = u_xlat66;
          u_xlat66 = ((vec2<f32>(x_4042.x, x_4042.y) * vec2<f32>(x_4044.x, x_4044.x)) + x_4047);
          let x_4049 : i32 = u_xlati92;
          let x_4052 : i32 = u_xlati92;
          let x_4056 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_4049 + 2i) / 4i)][((x_4052 + 2i) % 4i)];
          let x_4058 : vec3<f32> = vs_INTERP7;
          let x_4061 : vec2<f32> = u_xlat66;
          u_xlat66 = ((vec2<f32>(x_4056.x, x_4056.y) * vec2<f32>(x_4058.z, x_4058.z)) + x_4061);
          let x_4063 : vec2<f32> = u_xlat66;
          let x_4064 : i32 = u_xlati92;
          let x_4067 : i32 = u_xlati92;
          let x_4071 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_4064 + 3i) / 4i)][((x_4067 + 3i) % 4i)];
          u_xlat66 = (x_4063 + vec2<f32>(x_4071.x, x_4071.y));
          let x_4074 : vec2<f32> = u_xlat66;
          u_xlat66 = ((x_4074 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4077 : vec2<f32> = u_xlat66;
          u_xlat66 = fract(x_4077);
          let x_4079 : i32 = u_xlati32;
          let x_4081 : vec4<f32> = x_1980.x_AdditionalLightsCookieAtlasUVRects[x_4079];
          let x_4083 : vec2<f32> = u_xlat66;
          let x_4085 : i32 = u_xlati32;
          let x_4087 : vec4<f32> = x_1980.x_AdditionalLightsCookieAtlasUVRects[x_4085];
          let x_4089 : vec2<f32> = ((vec2<f32>(x_4081.x, x_4081.y) * x_4083) + vec2<f32>(x_4087.z, x_4087.w));
          let x_4090 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4089.x, x_4089.y, x_4090.z, x_4090.w);
        } else {
          let x_4093 : vec3<f32> = vs_INTERP7;
          let x_4095 : i32 = u_xlati92;
          let x_4098 : i32 = u_xlati92;
          let x_4102 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_4095 + 1i) / 4i)][((x_4098 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_4093.y, x_4093.y, x_4093.y, x_4093.y) * x_4102);
          let x_4104 : i32 = u_xlati92;
          let x_4106 : i32 = u_xlati92;
          let x_4109 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[(x_4104 / 4i)][(x_4106 % 4i)];
          let x_4110 : vec3<f32> = vs_INTERP7;
          let x_4113 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_4109 * vec4<f32>(x_4110.x, x_4110.x, x_4110.x, x_4110.x)) + x_4113);
          let x_4115 : i32 = u_xlati92;
          let x_4118 : i32 = u_xlati92;
          let x_4122 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_4115 + 2i) / 4i)][((x_4118 + 2i) % 4i)];
          let x_4123 : vec3<f32> = vs_INTERP7;
          let x_4126 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_4122 * vec4<f32>(x_4123.z, x_4123.z, x_4123.z, x_4123.z)) + x_4126);
          let x_4128 : vec4<f32> = u_xlat13;
          let x_4129 : i32 = u_xlati92;
          let x_4132 : i32 = u_xlati92;
          let x_4136 : vec4<f32> = x_1980.x_AdditionalLightsWorldToLights[((x_4129 + 3i) / 4i)][((x_4132 + 3i) % 4i)];
          u_xlat13 = (x_4128 + x_4136);
          let x_4138 : vec4<f32> = u_xlat13;
          let x_4140 : vec4<f32> = u_xlat13;
          let x_4142 : vec3<f32> = (vec3<f32>(x_4138.x, x_4138.y, x_4138.z) / vec3<f32>(x_4140.w, x_4140.w, x_4140.w));
          let x_4143 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4142.x, x_4142.y, x_4142.z, x_4143.w);
          let x_4145 : vec4<f32> = u_xlat13;
          let x_4147 : vec4<f32> = u_xlat13;
          u_xlat89 = dot(vec3<f32>(x_4145.x, x_4145.y, x_4145.z), vec3<f32>(x_4147.x, x_4147.y, x_4147.z));
          let x_4150 : f32 = u_xlat89;
          u_xlat89 = inverseSqrt(x_4150);
          let x_4152 : f32 = u_xlat89;
          let x_4154 : vec4<f32> = u_xlat13;
          let x_4156 : vec3<f32> = (vec3<f32>(x_4152, x_4152, x_4152) * vec3<f32>(x_4154.x, x_4154.y, x_4154.z));
          let x_4157 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4156.x, x_4156.y, x_4156.z, x_4157.w);
          let x_4159 : vec4<f32> = u_xlat13;
          u_xlat89 = dot(abs(vec3<f32>(x_4159.x, x_4159.y, x_4159.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4164 : f32 = u_xlat89;
          u_xlat89 = max(x_4164, 0.00000099999999747524f);
          let x_4167 : f32 = u_xlat89;
          u_xlat89 = (1.0f / x_4167);
          let x_4169 : f32 = u_xlat89;
          let x_4171 : vec4<f32> = u_xlat13;
          let x_4173 : vec3<f32> = (vec3<f32>(x_4169, x_4169, x_4169) * vec3<f32>(x_4171.z, x_4171.x, x_4171.y));
          let x_4174 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_4173.x, x_4173.y, x_4173.z, x_4174.w);
          let x_4177 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_4177);
          let x_4181 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_4181, 0.0f, 1.0f);
          let x_4185 : vec4<f32> = u_xlat14;
          let x_4187 : vec4<bool> = (vec4<f32>(x_4185.y, x_4185.z, x_4185.y, x_4185.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_4187.x, x_4187.y);
          let x_4190 : bool = u_xlatb66.x;
          if (x_4190) {
            let x_4195 : f32 = u_xlat14.x;
            x_4191 = x_4195;
          } else {
            let x_4198 : f32 = u_xlat14.x;
            x_4191 = -(x_4198);
          }
          let x_4200 : f32 = x_4191;
          u_xlat66.x = x_4200;
          let x_4203 : bool = u_xlatb66.y;
          if (x_4203) {
            let x_4208 : f32 = u_xlat14.x;
            x_4204 = x_4208;
          } else {
            let x_4211 : f32 = u_xlat14.x;
            x_4204 = -(x_4211);
          }
          let x_4213 : f32 = x_4204;
          u_xlat66.y = x_4213;
          let x_4215 : vec4<f32> = u_xlat13;
          let x_4217 : f32 = u_xlat89;
          let x_4220 : vec2<f32> = u_xlat66;
          u_xlat66 = ((vec2<f32>(x_4215.x, x_4215.y) * vec2<f32>(x_4217, x_4217)) + x_4220);
          let x_4222 : vec2<f32> = u_xlat66;
          u_xlat66 = ((x_4222 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4225 : vec2<f32> = u_xlat66;
          u_xlat66 = clamp(x_4225, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4229 : i32 = u_xlati32;
          let x_4231 : vec4<f32> = x_1980.x_AdditionalLightsCookieAtlasUVRects[x_4229];
          let x_4233 : vec2<f32> = u_xlat66;
          let x_4235 : i32 = u_xlati32;
          let x_4237 : vec4<f32> = x_1980.x_AdditionalLightsCookieAtlasUVRects[x_4235];
          let x_4239 : vec2<f32> = ((vec2<f32>(x_4231.x, x_4231.y) * x_4233) + vec2<f32>(x_4237.z, x_4237.w));
          let x_4240 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4239.x, x_4239.y, x_4240.z, x_4240.w);
        }
      }
      let x_4247 : vec4<f32> = u_xlat12;
      let x_4249 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4247.x, x_4247.y), 0.0f);
      u_xlat12 = x_4249;
      let x_4251 : bool = u_xlatb8.y;
      if (x_4251) {
        let x_4256 : f32 = u_xlat12.w;
        x_4252 = x_4256;
      } else {
        let x_4259 : f32 = u_xlat12.x;
        x_4252 = x_4259;
      }
      let x_4260 : f32 = x_4252;
      u_xlat89 = x_4260;
      let x_4262 : bool = u_xlatb8.x;
      if (x_4262) {
        let x_4266 : vec4<f32> = u_xlat12;
        x_4263 = vec3<f32>(x_4266.x, x_4266.y, x_4266.z);
      } else {
        let x_4269 : f32 = u_xlat89;
        x_4263 = vec3<f32>(x_4269, x_4269, x_4269);
      }
      let x_4271 : vec3<f32> = x_4263;
      let x_4272 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_4271.x, x_4271.y, x_4271.z, x_4272.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_4278 : vec4<f32> = u_xlat12;
    let x_4280 : i32 = u_xlati32;
    let x_4282 : vec4<f32> = x_2449.x_AdditionalLightsColor[x_4280];
    let x_4284 : vec3<f32> = (vec3<f32>(x_4278.x, x_4278.y, x_4278.z) * vec3<f32>(x_4282.x, x_4282.y, x_4282.z));
    let x_4285 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_4284.x, x_4284.y, x_4284.z, x_4285.w);
    let x_4287 : f32 = u_xlat87;
    let x_4289 : f32 = u_xlat62.x;
    u_xlat32.x = (x_4287 * x_4289);
    let x_4292 : vec4<f32> = u_xlat4;
    let x_4294 : vec4<f32> = u_xlat11;
    u_xlat87 = dot(vec3<f32>(x_4292.x, x_4292.y, x_4292.z), vec3<f32>(x_4294.x, x_4294.y, x_4294.z));
    let x_4297 : f32 = u_xlat87;
    u_xlat87 = clamp(x_4297, 0.0f, 1.0f);
    let x_4300 : f32 = u_xlat32.x;
    let x_4301 : f32 = u_xlat87;
    u_xlat32.x = (x_4300 * x_4301);
    let x_4304 : vec3<f32> = u_xlat32;
    let x_4306 : vec4<f32> = u_xlat12;
    let x_4308 : vec3<f32> = (vec3<f32>(x_4304.x, x_4304.x, x_4304.x) * vec3<f32>(x_4306.x, x_4306.y, x_4306.z));
    let x_4309 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_4308.x, x_4308.y, x_4308.z, x_4309.w);
    let x_4311 : vec3<f32> = u_xlat37;
    let x_4312 : f32 = u_xlat88;
    let x_4315 : vec4<f32> = u_xlat1;
    u_xlat37 = ((x_4311 * vec3<f32>(x_4312, x_4312, x_4312)) + vec3<f32>(x_4315.x, x_4315.y, x_4315.w));
    let x_4318 : vec3<f32> = u_xlat37;
    let x_4319 : vec3<f32> = u_xlat37;
    u_xlat32.x = dot(x_4318, x_4319);
    let x_4323 : f32 = u_xlat32.x;
    u_xlat32.x = max(x_4323, 1.17549435e-38f);
    let x_4327 : f32 = u_xlat32.x;
    u_xlat32.x = inverseSqrt(x_4327);
    let x_4330 : vec3<f32> = u_xlat32;
    let x_4332 : vec3<f32> = u_xlat37;
    u_xlat37 = (vec3<f32>(x_4330.x, x_4330.x, x_4330.x) * x_4332);
    let x_4334 : vec4<f32> = u_xlat4;
    let x_4336 : vec3<f32> = u_xlat37;
    u_xlat32.x = dot(vec3<f32>(x_4334.x, x_4334.y, x_4334.z), x_4336);
    let x_4340 : f32 = u_xlat32.x;
    u_xlat32.x = clamp(x_4340, 0.0f, 1.0f);
    let x_4343 : vec4<f32> = u_xlat11;
    let x_4345 : vec3<f32> = u_xlat37;
    u_xlat87 = dot(vec3<f32>(x_4343.x, x_4343.y, x_4343.z), x_4345);
    let x_4347 : f32 = u_xlat87;
    u_xlat87 = clamp(x_4347, 0.0f, 1.0f);
    let x_4350 : f32 = u_xlat32.x;
    let x_4352 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4350 * x_4352);
    let x_4356 : f32 = u_xlat32.x;
    let x_4358 : f32 = u_xlat10.x;
    u_xlat32.x = ((x_4356 * x_4358) + 1.00001001358032226562f);
    let x_4362 : f32 = u_xlat87;
    let x_4363 : f32 = u_xlat87;
    u_xlat87 = (x_4362 * x_4363);
    let x_4366 : f32 = u_xlat32.x;
    let x_4368 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4366 * x_4368);
    let x_4371 : f32 = u_xlat87;
    u_xlat87 = max(x_4371, 0.10000000149011611938f);
    let x_4374 : f32 = u_xlat32.x;
    let x_4375 : f32 = u_xlat87;
    u_xlat32.x = (x_4374 * x_4375);
    let x_4378 : f32 = u_xlat84;
    let x_4380 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4378 * x_4380);
    let x_4383 : f32 = u_xlat85;
    let x_4385 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4383 / x_4385);
    let x_4388 : vec3<f32> = u_xlat0;
    let x_4389 : vec3<f32> = u_xlat32;
    let x_4392 : vec4<f32> = u_xlat7;
    u_xlat37 = ((x_4388 * vec3<f32>(x_4389.x, x_4389.x, x_4389.x)) + vec3<f32>(x_4392.x, x_4392.y, x_4392.z));
    let x_4395 : vec3<f32> = u_xlat37;
    let x_4396 : vec4<f32> = u_xlat12;
    let x_4399 : vec4<f32> = u_xlat9;
    let x_4401 : vec3<f32> = ((x_4395 * vec3<f32>(x_4396.x, x_4396.y, x_4396.z)) + vec3<f32>(x_4399.x, x_4399.y, x_4399.z));
    let x_4402 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4401.x, x_4401.y, x_4401.z, x_4402.w);

    continuing {
      let x_4404 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4404 + bitcast<u32>(1i));
    }
  }
  let x_4406 : vec4<f32> = u_xlat6;
  let x_4408 : f32 = u_xlat57;
  let x_4411 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4406.x, x_4406.y, x_4406.z) * vec3<f32>(x_4408, x_4408, x_4408)) + vec3<f32>(x_4411.x, x_4411.z, x_4411.w));
  let x_4414 : vec4<f32> = u_xlat9;
  let x_4416 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4414.x, x_4414.y, x_4414.z) + x_4416);
  let x_4418 : vec4<f32> = u_xlat2;
  let x_4420 : f32 = u_xlat55;
  let x_4423 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_4418.x, x_4418.y, x_4418.z) * vec3<f32>(x_4420, x_4420, x_4420)) + x_4423);
  let x_4425 : f32 = u_xlat81;
  let x_4426 : f32 = u_xlat81;
  u_xlat81 = (x_4425 * -(x_4426));
  let x_4429 : f32 = u_xlat81;
  u_xlat81 = exp2(x_4429);
  let x_4431 : vec3<f32> = u_xlat0;
  let x_4433 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_4431 + -(vec3<f32>(x_4433.x, x_4433.y, x_4433.z)));
  let x_4439 : f32 = u_xlat81;
  let x_4441 : vec3<f32> = u_xlat0;
  let x_4444 : vec4<f32> = x_29.unity_FogColor;
  let x_4446 : vec3<f32> = ((vec3<f32>(x_4439, x_4439, x_4439) * x_4441) + vec3<f32>(x_4444.x, x_4444.y, x_4444.z));
  let x_4447 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4446.x, x_4446.y, x_4446.z, x_4447.w);
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


