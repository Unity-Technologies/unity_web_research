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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_150 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb84 : bool;

@group(1) @binding(3) var<uniform> x_299 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat84 : f32;

var<private> u_xlatb85 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1623 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat86 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat87 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu81 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu85 : u32;

var<private> u_xlati86 : i32;

var<private> u_xlati85 : i32;

@group(1) @binding(1) var<uniform> x_2107 : AdditionalLights;

var<private> u_xlat88 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat90 : f32;

var<private> u_xlat73 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlat91 : f32;

var<private> u_xlatb89 : bool;

var<private> u_xlati62 : i32;

var<private> u_xlati89 : i32;

var<private> u_xlati90 : i32;

var<private> u_xlatb66 : vec2<bool>;

var<private> u_xlat66 : vec2<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu84 : u32;

fn main_1() {
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
  var x_1710 : f32;
  var x_1721 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2245 : f32;
  var x_2254 : f32;
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
  var x_3850 : f32;
  var x_3863 : f32;
  var x_3911 : f32;
  var x_3923 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_29.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.x = x_78.x;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  let x_85 : vec4<f32> = vs_TEXCOORD3;
  u_xlat28 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_88);
  let x_91 : f32 = u_xlat28;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91, x_91, x_91) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat28 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat28;
  u_xlat28 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat28;
  u_xlat28 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat28;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat28 = (x_124 + x_127);
  let x_129 : f32 = u_xlat28;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat28 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat28;
  u_xlat28 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat28;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat28 = (x_138 * x_141);
  u_xlat2.w = 1.0f;
  let x_154 : vec4<f32> = x_150.unity_SHAr;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_150.unity_SHAg;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_150.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_150.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_150.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_150.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat55 = (x_197 * x_199);
  let x_202 : f32 = u_xlat2.x;
  let x_204 : f32 = u_xlat2.x;
  let x_206 : f32 = u_xlat55;
  u_xlat55 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_150.unity_SHC;
  let x_213 : f32 = u_xlat55;
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat3;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_229 : f32 = u_xlat1.x;
  u_xlat55 = ((-(x_229) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_235 : f32 = u_xlat55;
  u_xlat82 = (-(x_235) + 1.0f);
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : f32 = u_xlat55;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240, x_240, x_240));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = u_xlat1;
  let x_254 : vec4<f32> = u_xlat0;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_263 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_263) + 1.0f);
  let x_268 : f32 = u_xlat1.x;
  let x_270 : f32 = u_xlat1.x;
  u_xlat55 = (x_268 * x_270);
  let x_272 : f32 = u_xlat55;
  u_xlat55 = max(x_272, 0.0078125f);
  let x_276 : f32 = u_xlat55;
  let x_277 : f32 = u_xlat55;
  u_xlat83 = (x_276 * x_277);
  let x_281 : f32 = u_xlat0.w;
  let x_282 : f32 = u_xlat82;
  u_xlat81 = (x_281 + x_282);
  let x_284 : f32 = u_xlat81;
  u_xlat81 = clamp(x_284, 0.0f, 1.0f);
  let x_286 : f32 = u_xlat55;
  u_xlat82 = ((x_286 * 4.0f) + 2.0f);
  let x_301 : f32 = x_299.x_MainLightShadowParams.y;
  u_xlatb84 = (0.0f < x_301);
  let x_303 : bool = u_xlatb84;
  if (x_303) {
    let x_307 : f32 = x_299.x_MainLightShadowParams.y;
    u_xlatb84 = (x_307 == 1.0f);
    let x_309 : bool = u_xlatb84;
    if (x_309) {
      let x_313 : vec4<f32> = vs_TEXCOORD8;
      let x_316 : vec4<f32> = x_299.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y) + x_316);
      let x_320 : vec4<f32> = u_xlat5;
      let x_321 : vec2<f32> = vec2<f32>(x_320.x, x_320.y);
      let x_323 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_321.x, x_321.y, x_323);
      let x_336 : vec3<f32> = txVec0;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat6.x = x_338;
      let x_341 : vec4<f32> = u_xlat5;
      let x_342 : vec2<f32> = vec2<f32>(x_341.z, x_341.w);
      let x_344 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_342.x, x_342.y, x_344);
      let x_351 : vec3<f32> = txVec1;
      let x_353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_351.xy, x_351.z);
      u_xlat6.y = x_353;
      let x_355 : vec4<f32> = vs_TEXCOORD8;
      let x_359 : vec4<f32> = x_299.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_355.x, x_355.y, x_355.x, x_355.y) + x_359);
      let x_362 : vec4<f32> = u_xlat5;
      let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
      let x_365 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_372 : vec3<f32> = txVec2;
      let x_374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_372.xy, x_372.z);
      u_xlat6.z = x_374;
      let x_377 : vec4<f32> = u_xlat5;
      let x_378 : vec2<f32> = vec2<f32>(x_377.z, x_377.w);
      let x_380 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_378.x, x_378.y, x_380);
      let x_387 : vec3<f32> = txVec3;
      let x_389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_387.xy, x_387.z);
      u_xlat6.w = x_389;
      let x_392 : vec4<f32> = u_xlat6;
      u_xlat84 = dot(x_392, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_399 : f32 = x_299.x_MainLightShadowParams.y;
      u_xlatb85 = (x_399 == 2.0f);
      let x_401 : bool = u_xlatb85;
      if (x_401) {
        let x_404 : vec4<f32> = vs_TEXCOORD8;
        let x_408 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_413 : vec2<f32> = ((vec2<f32>(x_404.x, x_404.y) * vec2<f32>(x_408.z, x_408.w)) + vec2<f32>(0.5f, 0.5f));
        let x_414 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_416 : vec4<f32> = u_xlat5;
        let x_418 : vec2<f32> = floor(vec2<f32>(x_416.x, x_416.y));
        let x_419 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_423 : vec4<f32> = vs_TEXCOORD8;
        let x_426 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_429 : vec4<f32> = u_xlat5;
        u_xlat59 = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426.z, x_426.w)) + -(vec2<f32>(x_429.x, x_429.y)));
        let x_433 : vec2<f32> = u_xlat59;
        u_xlat6 = (vec4<f32>(x_433.x, x_433.x, x_433.y, x_433.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_438 : vec4<f32> = u_xlat6;
        let x_440 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_438.x, x_438.x, x_438.z, x_438.z) * vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z));
        let x_443 : vec4<f32> = u_xlat7;
        let x_447 : vec2<f32> = (vec2<f32>(x_443.y, x_443.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_448.y, x_447.y, x_448.w);
        let x_450 : vec4<f32> = u_xlat7;
        let x_453 : vec2<f32> = u_xlat59;
        let x_455 : vec2<f32> = ((vec2<f32>(x_450.x, x_450.z) * vec2<f32>(0.5f, 0.5f)) + -(x_453));
        let x_456 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_459 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_459) + vec2<f32>(1.0f, 1.0f));
        let x_464 : vec2<f32> = u_xlat59;
        let x_466 : vec2<f32> = min(x_464, vec2<f32>(0.0f, 0.0f));
        let x_467 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec4<f32> = u_xlat8;
        let x_472 : vec4<f32> = u_xlat8;
        let x_475 : vec2<f32> = u_xlat61;
        let x_476 : vec2<f32> = ((-(vec2<f32>(x_469.x, x_469.y)) * vec2<f32>(x_472.x, x_472.y)) + x_475);
        let x_477 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_479, vec2<f32>(0.0f, 0.0f));
        let x_481 : vec2<f32> = u_xlat59;
        let x_483 : vec2<f32> = u_xlat59;
        let x_485 : vec4<f32> = u_xlat6;
        u_xlat59 = ((-(x_481) * x_483) + vec2<f32>(x_485.y, x_485.w));
        let x_488 : vec4<f32> = u_xlat8;
        let x_490 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) + vec2<f32>(1.0f, 1.0f));
        let x_491 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_493 + vec2<f32>(1.0f, 1.0f));
        let x_496 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_501 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_503 : vec2<f32> = u_xlat61;
        let x_504 : vec2<f32> = (x_503 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_505 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
        let x_507 : vec4<f32> = u_xlat8;
        let x_509 : vec2<f32> = (vec2<f32>(x_507.x, x_507.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_510 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
        let x_513 : vec2<f32> = u_xlat59;
        let x_514 : vec2<f32> = (x_513 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_515 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_517 : vec4<f32> = u_xlat6;
        u_xlat59 = (vec2<f32>(x_517.y, x_517.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_521 : f32 = u_xlat8.x;
        u_xlat9.z = x_521;
        let x_524 : f32 = u_xlat59.x;
        u_xlat9.w = x_524;
        let x_527 : f32 = u_xlat10.x;
        u_xlat7.z = x_527;
        let x_530 : f32 = u_xlat6.x;
        u_xlat7.w = x_530;
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_533.z, x_533.w, x_533.x, x_533.z) + vec4<f32>(x_535.z, x_535.w, x_535.x, x_535.z));
        let x_539 : f32 = u_xlat9.y;
        u_xlat8.z = x_539;
        let x_542 : f32 = u_xlat59.y;
        u_xlat8.w = x_542;
        let x_545 : f32 = u_xlat7.y;
        u_xlat10.z = x_545;
        let x_548 : f32 = u_xlat6.z;
        u_xlat10.w = x_548;
        let x_550 : vec4<f32> = u_xlat8;
        let x_552 : vec4<f32> = u_xlat10;
        let x_554 : vec3<f32> = (vec3<f32>(x_550.z, x_550.y, x_550.w) + vec3<f32>(x_552.z, x_552.y, x_552.w));
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat7;
        let x_559 : vec4<f32> = u_xlat11;
        let x_561 : vec3<f32> = (vec3<f32>(x_557.x, x_557.z, x_557.w) / vec3<f32>(x_559.z, x_559.w, x_559.y));
        let x_562 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat7;
        let x_570 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_571 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat10;
        let x_575 : vec4<f32> = u_xlat6;
        let x_577 : vec3<f32> = (vec3<f32>(x_573.z, x_573.y, x_573.w) / vec3<f32>(x_575.x, x_575.y, x_575.z));
        let x_578 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat8;
        let x_582 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_583 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat7;
        let x_588 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_590 : vec3<f32> = (vec3<f32>(x_585.y, x_585.x, x_585.z) * vec3<f32>(x_588.x, x_588.x, x_588.x));
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
        let x_593 : vec4<f32> = u_xlat8;
        let x_596 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_598 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(x_596.y, x_596.y, x_596.y));
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
        let x_602 : f32 = u_xlat8.x;
        u_xlat7.w = x_602;
        let x_604 : vec4<f32> = u_xlat5;
        let x_607 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) * vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y)) + vec4<f32>(x_610.y, x_610.w, x_610.x, x_610.w));
        let x_613 : vec4<f32> = u_xlat5;
        let x_616 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(x_619.z, x_619.w));
        let x_623 : f32 = u_xlat7.y;
        u_xlat8.w = x_623;
        let x_625 : vec4<f32> = u_xlat8;
        let x_626 : vec2<f32> = vec2<f32>(x_625.y, x_625.z);
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_627.x, x_626.x, x_627.z, x_626.y);
        let x_629 : vec4<f32> = u_xlat5;
        let x_632 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.x, x_635.y, x_635.z, x_635.y));
        let x_638 : vec4<f32> = u_xlat5;
        let x_641 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_638.x, x_638.y, x_638.x, x_638.y) * vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y)) + vec4<f32>(x_644.w, x_644.y, x_644.w, x_644.z));
        let x_647 : vec4<f32> = u_xlat5;
        let x_650 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y) * vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y)) + vec4<f32>(x_653.x, x_653.w, x_653.z, x_653.w));
        let x_657 : vec4<f32> = u_xlat6;
        let x_659 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_657.x, x_657.x, x_657.x, x_657.y) * vec4<f32>(x_659.z, x_659.w, x_659.y, x_659.z));
        let x_663 : vec4<f32> = u_xlat6;
        let x_665 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_663.y, x_663.y, x_663.z, x_663.z) * x_665);
        let x_669 : f32 = u_xlat6.z;
        let x_671 : f32 = u_xlat11.y;
        u_xlat85 = (x_669 * x_671);
        let x_674 : vec4<f32> = u_xlat9;
        let x_675 : vec2<f32> = vec2<f32>(x_674.x, x_674.y);
        let x_677 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec4;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat5.x = x_686;
        let x_689 : vec4<f32> = u_xlat9;
        let x_690 : vec2<f32> = vec2<f32>(x_689.z, x_689.w);
        let x_692 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_690.x, x_690.y, x_692);
        let x_700 : vec3<f32> = txVec5;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
        u_xlat32 = x_702;
        let x_703 : f32 = u_xlat32;
        let x_705 : f32 = u_xlat12.y;
        u_xlat32 = (x_703 * x_705);
        let x_708 : f32 = u_xlat12.x;
        let x_710 : f32 = u_xlat5.x;
        let x_712 : f32 = u_xlat32;
        u_xlat5.x = ((x_708 * x_710) + x_712);
        let x_716 : vec2<f32> = u_xlat59;
        let x_718 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec6;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat32 = x_727;
        let x_729 : f32 = u_xlat12.z;
        let x_730 : f32 = u_xlat32;
        let x_733 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_729 * x_730) + x_733);
        let x_737 : vec4<f32> = u_xlat8;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec7;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat32 = x_749;
        let x_751 : f32 = u_xlat12.w;
        let x_752 : f32 = u_xlat32;
        let x_755 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_751 * x_752) + x_755);
        let x_759 : vec4<f32> = u_xlat10;
        let x_760 : vec2<f32> = vec2<f32>(x_759.x, x_759.y);
        let x_762 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec8;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat32 = x_771;
        let x_773 : f32 = u_xlat13.x;
        let x_774 : f32 = u_xlat32;
        let x_777 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_773 * x_774) + x_777);
        let x_781 : vec4<f32> = u_xlat10;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec9;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat32 = x_793;
        let x_795 : f32 = u_xlat13.y;
        let x_796 : f32 = u_xlat32;
        let x_799 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_795 * x_796) + x_799);
        let x_803 : vec4<f32> = u_xlat8;
        let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
        let x_806 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec10;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
        u_xlat32 = x_815;
        let x_817 : f32 = u_xlat13.z;
        let x_818 : f32 = u_xlat32;
        let x_821 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_817 * x_818) + x_821);
        let x_825 : vec4<f32> = u_xlat7;
        let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
        let x_828 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec11;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat32 = x_837;
        let x_839 : f32 = u_xlat13.w;
        let x_840 : f32 = u_xlat32;
        let x_843 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_839 * x_840) + x_843);
        let x_847 : vec4<f32> = u_xlat7;
        let x_848 : vec2<f32> = vec2<f32>(x_847.z, x_847.w);
        let x_850 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec12;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat32 = x_859;
        let x_860 : f32 = u_xlat85;
        let x_861 : f32 = u_xlat32;
        let x_864 : f32 = u_xlat5.x;
        u_xlat84 = ((x_860 * x_861) + x_864);
      } else {
        let x_867 : vec4<f32> = vs_TEXCOORD8;
        let x_870 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_873 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.z, x_870.w)) + vec2<f32>(0.5f, 0.5f));
        let x_874 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat5;
        let x_878 : vec2<f32> = floor(vec2<f32>(x_876.x, x_876.y));
        let x_879 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = vs_TEXCOORD8;
        let x_884 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_887 : vec4<f32> = u_xlat5;
        u_xlat59 = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.z, x_884.w)) + -(vec2<f32>(x_887.x, x_887.y)));
        let x_891 : vec2<f32> = u_xlat59;
        u_xlat6 = (vec4<f32>(x_891.x, x_891.x, x_891.y, x_891.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_894 : vec4<f32> = u_xlat6;
        let x_896 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_894.x, x_894.x, x_894.z, x_894.z) * vec4<f32>(x_896.x, x_896.x, x_896.z, x_896.z));
        let x_899 : vec4<f32> = u_xlat7;
        let x_903 : vec2<f32> = (vec2<f32>(x_899.y, x_899.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_904.x, x_903.x, x_904.z, x_903.y);
        let x_906 : vec4<f32> = u_xlat7;
        let x_909 : vec2<f32> = u_xlat59;
        let x_911 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.z) * vec2<f32>(0.5f, 0.5f)) + -(x_909));
        let x_912 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_911.x, x_912.y, x_911.y, x_912.w);
        let x_914 : vec2<f32> = u_xlat59;
        let x_916 : vec2<f32> = (-(x_914) + vec2<f32>(1.0f, 1.0f));
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_919, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat61;
        let x_923 : vec2<f32> = u_xlat61;
        let x_925 : vec4<f32> = u_xlat7;
        let x_927 : vec2<f32> = ((-(x_921) * x_923) + vec2<f32>(x_925.x, x_925.y));
        let x_928 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_930 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_930, vec2<f32>(0.0f, 0.0f));
        let x_933 : vec2<f32> = u_xlat61;
        let x_935 : vec2<f32> = u_xlat61;
        let x_937 : vec4<f32> = u_xlat6;
        let x_939 : vec2<f32> = ((-(x_933) * x_935) + vec2<f32>(x_937.y, x_937.w));
        let x_940 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_939.x, x_940.y, x_939.y);
        let x_942 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = (vec2<f32>(x_942.x, x_942.y) + vec2<f32>(2.0f, 2.0f));
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        let x_948 : vec3<f32> = u_xlat33;
        let x_950 : vec2<f32> = (vec2<f32>(x_948.x, x_948.z) + vec2<f32>(2.0f, 2.0f));
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_954 : f32 = u_xlat6.y;
        u_xlat9.z = (x_954 * 0.08163200318813323975f);
        let x_958 : vec4<f32> = u_xlat6;
        let x_961 : vec3<f32> = (vec3<f32>(x_958.z, x_958.x, x_958.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_968 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_971 : f32 = u_xlat10.y;
        u_xlat9.x = x_971;
        let x_973 : vec2<f32> = u_xlat59;
        let x_980 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_981.x, x_980.x, x_981.z, x_980.y);
        let x_983 : vec2<f32> = u_xlat59;
        let x_987 : vec2<f32> = ((vec2<f32>(x_983.x, x_983.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_988 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_987.x, x_988.y, x_987.y, x_988.w);
        let x_991 : f32 = u_xlat6.x;
        u_xlat7.y = x_991;
        let x_994 : f32 = u_xlat8.y;
        u_xlat7.w = x_994;
        let x_996 : vec4<f32> = u_xlat7;
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_996 + x_997);
        let x_999 : vec2<f32> = u_xlat59;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_999.y, x_999.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1003 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1003.x, x_1002.x, x_1003.z, x_1002.y);
        let x_1005 : vec2<f32> = u_xlat59;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1005.y, x_1005.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1012 : f32 = u_xlat6.y;
        u_xlat8.y = x_1012;
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1014 + x_1015);
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1017 / x_1018);
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1020 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1026 / x_1027);
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1029 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1034 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1031.w, x_1031.x, x_1031.y, x_1031.z) * vec4<f32>(x_1034.x, x_1034.x, x_1034.x, x_1034.x));
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1040 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1037.x, x_1037.w, x_1037.y, x_1037.z) * vec4<f32>(x_1040.y, x_1040.y, x_1040.y, x_1040.y));
        let x_1043 : vec4<f32> = u_xlat7;
        let x_1044 : vec3<f32> = vec3<f32>(x_1043.y, x_1043.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1044.z);
        let x_1048 : f32 = u_xlat8.x;
        u_xlat10.y = x_1048;
        let x_1050 : vec4<f32> = u_xlat5;
        let x_1053 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat5;
        let x_1062 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat59 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.x, x_1062.y)) + vec2<f32>(x_1065.w, x_1065.y));
        let x_1069 : f32 = u_xlat10.y;
        u_xlat7.y = x_1069;
        let x_1072 : f32 = u_xlat8.z;
        u_xlat10.y = x_1072;
        let x_1074 : vec4<f32> = u_xlat5;
        let x_1077 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat5;
        let x_1086 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.w, x_1089.y));
        let x_1092 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1095 : f32 = u_xlat10.y;
        u_xlat7.z = x_1095;
        let x_1098 : vec4<f32> = u_xlat5;
        let x_1101 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.z));
        let x_1108 : f32 = u_xlat8.w;
        u_xlat10.y = x_1108;
        let x_1111 : vec4<f32> = u_xlat5;
        let x_1114 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1121 : vec4<f32> = u_xlat5;
        let x_1124 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat34 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.w, x_1127.y));
        let x_1131 : f32 = u_xlat10.y;
        u_xlat7.w = x_1131;
        let x_1134 : vec4<f32> = u_xlat5;
        let x_1137 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat67 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.x, x_1140.w));
        let x_1143 : vec4<f32> = u_xlat10;
        let x_1144 : vec3<f32> = vec3<f32>(x_1143.x, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1144.z);
        let x_1147 : vec4<f32> = u_xlat5;
        let x_1150 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1160 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.w, x_1163.y));
        let x_1167 : f32 = u_xlat7.x;
        u_xlat8.x = x_1167;
        let x_1169 : vec4<f32> = u_xlat5;
        let x_1172 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1177 : vec2<f32> = ((vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(x_1172.x, x_1172.y)) + vec2<f32>(x_1175.x, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1181.x, x_1181.x, x_1181.x, x_1181.x) * x_1183);
        let x_1186 : vec4<f32> = u_xlat6;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1186.y, x_1186.y, x_1186.y, x_1186.y) * x_1188);
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1191.z, x_1191.z, x_1191.z, x_1191.z) * x_1193);
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1195.w, x_1195.w, x_1195.w, x_1195.w) * x_1197);
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.x, x_1200.y);
        let x_1203 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec13;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1210.xy, x_1210.z);
        u_xlat85 = x_1212;
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec14;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat7.x = x_1226;
        let x_1229 : f32 = u_xlat7.x;
        let x_1231 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1229 * x_1231);
        let x_1235 : f32 = u_xlat16.x;
        let x_1236 : f32 = u_xlat85;
        let x_1239 : f32 = u_xlat7.x;
        u_xlat85 = ((x_1235 * x_1236) + x_1239);
        let x_1242 : vec2<f32> = u_xlat59;
        let x_1244 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec15;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat59.x = x_1253;
        let x_1256 : f32 = u_xlat16.z;
        let x_1258 : f32 = u_xlat59.x;
        let x_1260 : f32 = u_xlat85;
        u_xlat85 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat14;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec16;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat59.x = x_1275;
        let x_1278 : f32 = u_xlat16.w;
        let x_1280 : f32 = u_xlat59.x;
        let x_1282 : f32 = u_xlat85;
        u_xlat85 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat12;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec17;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat59.x = x_1297;
        let x_1300 : f32 = u_xlat17.x;
        let x_1302 : f32 = u_xlat59.x;
        let x_1304 : f32 = u_xlat85;
        u_xlat85 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec4<f32> = u_xlat12;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.z, x_1307.w);
        let x_1310 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec18;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat59.x = x_1319;
        let x_1322 : f32 = u_xlat17.y;
        let x_1324 : f32 = u_xlat59.x;
        let x_1326 : f32 = u_xlat85;
        u_xlat85 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat13;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec19;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat59.x = x_1341;
        let x_1344 : f32 = u_xlat17.z;
        let x_1346 : f32 = u_xlat59.x;
        let x_1348 : f32 = u_xlat85;
        u_xlat85 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat14;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec20;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat59.x = x_1363;
        let x_1366 : f32 = u_xlat17.w;
        let x_1368 : f32 = u_xlat59.x;
        let x_1370 : f32 = u_xlat85;
        u_xlat85 = ((x_1366 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat15;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec21;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat59.x = x_1385;
        let x_1388 : f32 = u_xlat18.x;
        let x_1390 : f32 = u_xlat59.x;
        let x_1392 : f32 = u_xlat85;
        u_xlat85 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat15;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec22;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat59.x = x_1407;
        let x_1410 : f32 = u_xlat18.y;
        let x_1412 : f32 = u_xlat59.x;
        let x_1414 : f32 = u_xlat85;
        u_xlat85 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec2<f32> = u_xlat34;
        let x_1419 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec23;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat59.x = x_1428;
        let x_1431 : f32 = u_xlat18.z;
        let x_1433 : f32 = u_xlat59.x;
        let x_1435 : f32 = u_xlat85;
        u_xlat85 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec2<f32> = u_xlat67;
        let x_1440 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec24;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat59.x = x_1449;
        let x_1452 : f32 = u_xlat18.w;
        let x_1454 : f32 = u_xlat59.x;
        let x_1456 : f32 = u_xlat85;
        u_xlat85 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat10;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.x, x_1459.y);
        let x_1462 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec25;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat59.x = x_1471;
        let x_1474 : f32 = u_xlat6.x;
        let x_1476 : f32 = u_xlat59.x;
        let x_1478 : f32 = u_xlat85;
        u_xlat85 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec4<f32> = u_xlat10;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.z, x_1481.w);
        let x_1484 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec26;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat59.x = x_1493;
        let x_1496 : f32 = u_xlat6.y;
        let x_1498 : f32 = u_xlat59.x;
        let x_1500 : f32 = u_xlat85;
        u_xlat85 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec2<f32> = u_xlat62;
        let x_1505 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec27;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat59.x = x_1514;
        let x_1517 : f32 = u_xlat6.z;
        let x_1519 : f32 = u_xlat59.x;
        let x_1521 : f32 = u_xlat85;
        u_xlat85 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat5;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec28;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat5.x = x_1536;
        let x_1539 : f32 = u_xlat6.w;
        let x_1541 : f32 = u_xlat5.x;
        let x_1543 : f32 = u_xlat85;
        u_xlat84 = ((x_1539 * x_1541) + x_1543);
      }
    }
  } else {
    let x_1547 : vec4<f32> = vs_TEXCOORD8;
    let x_1548 : vec2<f32> = vec2<f32>(x_1547.x, x_1547.y);
    let x_1550 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
    let x_1557 : vec3<f32> = txVec29;
    let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
    u_xlat84 = x_1559;
  }
  let x_1561 : f32 = x_299.x_MainLightShadowParams.x;
  u_xlat85 = (-(x_1561) + 1.0f);
  let x_1564 : f32 = u_xlat84;
  let x_1566 : f32 = x_299.x_MainLightShadowParams.x;
  let x_1568 : f32 = u_xlat85;
  u_xlat84 = ((x_1564 * x_1566) + x_1568);
  let x_1571 : f32 = vs_TEXCOORD8.z;
  u_xlatb85 = (0.0f >= x_1571);
  let x_1575 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1575 >= 1.0f);
  let x_1577 : bool = u_xlatb85;
  let x_1578 : bool = u_xlatb5;
  u_xlatb85 = (x_1577 | x_1578);
  let x_1580 : bool = u_xlatb85;
  let x_1581 : f32 = u_xlat84;
  u_xlat84 = select(x_1581, 1.0f, x_1580);
  let x_1583 : vec3<f32> = vs_TEXCOORD7;
  let x_1587 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1589 : vec3<f32> = (x_1583 + -(x_1587));
  let x_1590 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
  let x_1592 : vec4<f32> = u_xlat5;
  let x_1594 : vec4<f32> = u_xlat5;
  u_xlat85 = dot(vec3<f32>(x_1592.x, x_1592.y, x_1592.z), vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
  let x_1597 : f32 = u_xlat85;
  let x_1599 : f32 = x_299.x_MainLightShadowParams.z;
  let x_1602 : f32 = x_299.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1597 * x_1599) + x_1602);
  let x_1606 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1606, 0.0f, 1.0f);
  let x_1609 : f32 = u_xlat84;
  u_xlat32 = (-(x_1609) + 1.0f);
  let x_1613 : f32 = u_xlat5.x;
  let x_1614 : f32 = u_xlat32;
  let x_1616 : f32 = u_xlat84;
  u_xlat84 = ((x_1613 * x_1614) + x_1616);
  let x_1625 : f32 = x_1623.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1625 == -1.0f));
  let x_1628 : bool = u_xlatb5;
  if (x_1628) {
    let x_1631 : vec3<f32> = vs_TEXCOORD7;
    let x_1634 : vec4<f32> = x_1623.x_MainLightWorldToLight[1i];
    let x_1636 : vec2<f32> = (vec2<f32>(x_1631.y, x_1631.y) * vec2<f32>(x_1634.x, x_1634.y));
    let x_1637 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
    let x_1640 : vec4<f32> = x_1623.x_MainLightWorldToLight[0i];
    let x_1642 : vec3<f32> = vs_TEXCOORD7;
    let x_1645 : vec4<f32> = u_xlat5;
    let x_1647 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.x)) + vec2<f32>(x_1645.x, x_1645.y));
    let x_1648 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
    let x_1651 : vec4<f32> = x_1623.x_MainLightWorldToLight[2i];
    let x_1653 : vec3<f32> = vs_TEXCOORD7;
    let x_1656 : vec4<f32> = u_xlat5;
    let x_1658 : vec2<f32> = ((vec2<f32>(x_1651.x, x_1651.y) * vec2<f32>(x_1653.z, x_1653.z)) + vec2<f32>(x_1656.x, x_1656.y));
    let x_1659 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1658.x, x_1658.y, x_1659.z, x_1659.w);
    let x_1661 : vec4<f32> = u_xlat5;
    let x_1664 : vec4<f32> = x_1623.x_MainLightWorldToLight[3i];
    let x_1666 : vec2<f32> = (vec2<f32>(x_1661.x, x_1661.y) + vec2<f32>(x_1664.x, x_1664.y));
    let x_1667 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1666.x, x_1666.y, x_1667.z, x_1667.w);
    let x_1669 : vec4<f32> = u_xlat5;
    let x_1672 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1673 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
    let x_1680 : vec4<f32> = u_xlat5;
    let x_1683 : f32 = x_29.x_GlobalMipBias.x;
    let x_1684 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1680.x, x_1680.y), x_1683);
    u_xlat5 = x_1684;
    let x_1689 : f32 = x_1623.x_MainLightCookieTextureFormat;
    let x_1691 : f32 = x_1623.x_MainLightCookieTextureFormat;
    let x_1693 : f32 = x_1623.x_MainLightCookieTextureFormat;
    let x_1695 : f32 = x_1623.x_MainLightCookieTextureFormat;
    let x_1696 : vec4<f32> = vec4<f32>(x_1689, x_1691, x_1693, x_1695);
    let x_1704 : vec4<bool> = (vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1704.x, x_1704.y);
    let x_1708 : bool = u_xlatb6.y;
    if (x_1708) {
      let x_1714 : f32 = u_xlat5.w;
      x_1710 = x_1714;
    } else {
      let x_1717 : f32 = u_xlat5.x;
      x_1710 = x_1717;
    }
    let x_1718 : f32 = x_1710;
    u_xlat86 = x_1718;
    let x_1720 : bool = u_xlatb6.x;
    if (x_1720) {
      let x_1724 : vec4<f32> = u_xlat5;
      x_1721 = vec3<f32>(x_1724.x, x_1724.y, x_1724.z);
    } else {
      let x_1727 : f32 = u_xlat86;
      x_1721 = vec3<f32>(x_1727, x_1727, x_1727);
    }
    let x_1729 : vec3<f32> = x_1721;
    let x_1730 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1736 : vec4<f32> = u_xlat5;
  let x_1739 : vec4<f32> = x_29.x_MainLightColor;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1736.x, x_1736.y, x_1736.z) * vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1745 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1745;
  let x_1749 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1749;
  let x_1753 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1753;
  let x_1755 : vec4<f32> = u_xlat6;
  let x_1758 : vec4<f32> = u_xlat2;
  u_xlat86 = dot(-(vec3<f32>(x_1755.x, x_1755.y, x_1755.z)), vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : f32 = u_xlat86;
  let x_1762 : f32 = u_xlat86;
  u_xlat86 = (x_1761 + x_1762);
  let x_1764 : vec4<f32> = u_xlat2;
  let x_1766 : f32 = u_xlat86;
  let x_1770 : vec4<f32> = u_xlat6;
  let x_1773 : vec3<f32> = ((vec3<f32>(x_1764.x, x_1764.y, x_1764.z) * -(vec3<f32>(x_1766, x_1766, x_1766))) + -(vec3<f32>(x_1770.x, x_1770.y, x_1770.z)));
  let x_1774 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat2;
  let x_1778 : vec4<f32> = u_xlat6;
  u_xlat86 = dot(vec3<f32>(x_1776.x, x_1776.y, x_1776.z), vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : f32 = u_xlat86;
  u_xlat86 = clamp(x_1781, 0.0f, 1.0f);
  let x_1783 : f32 = u_xlat86;
  u_xlat86 = (-(x_1783) + 1.0f);
  let x_1786 : f32 = u_xlat86;
  let x_1787 : f32 = u_xlat86;
  u_xlat86 = (x_1786 * x_1787);
  let x_1789 : f32 = u_xlat86;
  let x_1790 : f32 = u_xlat86;
  u_xlat86 = (x_1789 * x_1790);
  let x_1794 : f32 = u_xlat1.x;
  u_xlat87 = ((-(x_1794) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1801 : f32 = u_xlat1.x;
  let x_1802 : f32 = u_xlat87;
  u_xlat1.x = (x_1801 * x_1802);
  let x_1806 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1806 * 6.0f);
  let x_1818 : vec4<f32> = u_xlat7;
  let x_1821 : f32 = u_xlat1.x;
  let x_1822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1818.x, x_1818.y, x_1818.z), x_1821);
  u_xlat7 = x_1822;
  let x_1824 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1824 + -1.0f);
  let x_1828 : f32 = x_150.unity_SpecCube0_HDR.w;
  let x_1830 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1828 * x_1830) + 1.0f);
  let x_1835 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1835, 0.0f);
  let x_1839 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1839);
  let x_1843 : f32 = u_xlat1.x;
  let x_1845 : f32 = x_150.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1843 * x_1845);
  let x_1849 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1849);
  let x_1853 : f32 = u_xlat1.x;
  let x_1855 : f32 = x_150.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1853 * x_1855);
  let x_1858 : vec4<f32> = u_xlat7;
  let x_1860 : vec3<f32> = u_xlat1;
  let x_1862 : vec3<f32> = (vec3<f32>(x_1858.x, x_1858.y, x_1858.z) * vec3<f32>(x_1860.x, x_1860.x, x_1860.x));
  let x_1863 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1865 : f32 = u_xlat55;
  let x_1867 : f32 = u_xlat55;
  let x_1871 : vec2<f32> = ((vec2<f32>(x_1865, x_1865) * vec2<f32>(x_1867, x_1867)) + vec2<f32>(-1.0f, 1.0f));
  let x_1872 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1871.x, x_1872.y, x_1871.y);
  let x_1875 : f32 = u_xlat1.z;
  u_xlat55 = (1.0f / x_1875);
  let x_1877 : vec4<f32> = u_xlat0;
  let x_1880 : f32 = u_xlat81;
  let x_1882 : vec3<f32> = (-(vec3<f32>(x_1877.x, x_1877.y, x_1877.z)) + vec3<f32>(x_1880, x_1880, x_1880));
  let x_1883 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
  let x_1885 : f32 = u_xlat86;
  let x_1887 : vec4<f32> = u_xlat8;
  let x_1890 : vec4<f32> = u_xlat0;
  let x_1892 : vec3<f32> = ((vec3<f32>(x_1885, x_1885, x_1885) * vec3<f32>(x_1887.x, x_1887.y, x_1887.z)) + vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
  let x_1893 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1895 : f32 = u_xlat55;
  let x_1897 : vec4<f32> = u_xlat8;
  let x_1899 : vec3<f32> = (vec3<f32>(x_1895, x_1895, x_1895) * vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
  let x_1900 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
  let x_1902 : vec4<f32> = u_xlat7;
  let x_1904 : vec4<f32> = u_xlat8;
  let x_1906 : vec3<f32> = (vec3<f32>(x_1902.x, x_1902.y, x_1902.z) * vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1909 : vec3<f32> = u_xlat3;
  let x_1910 : vec4<f32> = u_xlat4;
  let x_1913 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_1909 * vec3<f32>(x_1910.x, x_1910.y, x_1910.z)) + vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : f32 = u_xlat84;
  let x_1918 : f32 = x_150.unity_LightData.z;
  u_xlat81 = (x_1916 * x_1918);
  let x_1920 : vec4<f32> = u_xlat2;
  let x_1923 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1926, 0.0f, 1.0f);
  let x_1928 : f32 = u_xlat81;
  let x_1929 : f32 = u_xlat55;
  u_xlat81 = (x_1928 * x_1929);
  let x_1931 : f32 = u_xlat81;
  let x_1933 : vec4<f32> = u_xlat5;
  let x_1935 : vec3<f32> = (vec3<f32>(x_1931, x_1931, x_1931) * vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : vec4<f32> = u_xlat6;
  let x_1941 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1938.x, x_1938.y, x_1938.z) + vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec4<f32> = u_xlat7;
  let x_1948 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : f32 = u_xlat81;
  u_xlat81 = max(x_1951, 1.17549435e-38f);
  let x_1954 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_1954);
  let x_1956 : f32 = u_xlat81;
  let x_1958 : vec4<f32> = u_xlat7;
  let x_1960 : vec3<f32> = (vec3<f32>(x_1956, x_1956, x_1956) * vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
  let x_1961 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  let x_1963 : vec4<f32> = u_xlat2;
  let x_1965 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1968, 0.0f, 1.0f);
  let x_1971 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1973 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(vec3<f32>(x_1971.x, x_1971.y, x_1971.z), vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1976 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1976, 0.0f, 1.0f);
  let x_1978 : f32 = u_xlat81;
  let x_1979 : f32 = u_xlat81;
  u_xlat81 = (x_1978 * x_1979);
  let x_1981 : f32 = u_xlat81;
  let x_1983 : f32 = u_xlat1.x;
  u_xlat81 = ((x_1981 * x_1983) + 1.00001001358032226562f);
  let x_1987 : f32 = u_xlat55;
  let x_1988 : f32 = u_xlat55;
  u_xlat55 = (x_1987 * x_1988);
  let x_1990 : f32 = u_xlat81;
  let x_1991 : f32 = u_xlat81;
  u_xlat81 = (x_1990 * x_1991);
  let x_1993 : f32 = u_xlat55;
  u_xlat55 = max(x_1993, 0.10000000149011611938f);
  let x_1996 : f32 = u_xlat81;
  let x_1997 : f32 = u_xlat55;
  u_xlat81 = (x_1996 * x_1997);
  let x_1999 : f32 = u_xlat82;
  let x_2000 : f32 = u_xlat81;
  u_xlat81 = (x_1999 * x_2000);
  let x_2002 : f32 = u_xlat83;
  let x_2003 : f32 = u_xlat81;
  u_xlat81 = (x_2002 / x_2003);
  let x_2005 : vec4<f32> = u_xlat0;
  let x_2007 : f32 = u_xlat81;
  let x_2010 : vec4<f32> = u_xlat4;
  let x_2012 : vec3<f32> = ((vec3<f32>(x_2005.x, x_2005.y, x_2005.z) * vec3<f32>(x_2007, x_2007, x_2007)) + vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
  let x_2016 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2018 : f32 = x_150.unity_LightData.y;
  u_xlat81 = min(x_2016, x_2018);
  let x_2022 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_2022));
  let x_2025 : f32 = u_xlat85;
  let x_2028 : f32 = x_299.x_AdditionalShadowFadeParams.x;
  let x_2031 : f32 = x_299.x_AdditionalShadowFadeParams.y;
  u_xlat55 = ((x_2025 * x_2028) + x_2031);
  let x_2033 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2033, 0.0f, 1.0f);
  let x_2037 : f32 = x_1623.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2039 : f32 = x_1623.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2041 : f32 = x_1623.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2043 : f32 = x_1623.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2044 : vec4<f32> = vec4<f32>(x_2037, x_2039, x_2041, x_2043);
  let x_2050 : vec4<bool> = (vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2044.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2050.x, x_2050.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2062 : u32 = u_xlatu_loop_1;
    let x_2063 : u32 = u_xlatu81;
    if ((x_2062 < x_2063)) {
    } else {
      break;
    }
    let x_2066 : u32 = u_xlatu_loop_1;
    u_xlatu85 = (x_2066 >> 2u);
    let x_2070 : u32 = u_xlatu_loop_1;
    u_xlati86 = bitcast<i32>((x_2070 & 3u));
    let x_2073 : u32 = u_xlatu85;
    let x_2076 : vec4<f32> = x_150.unity_LightIndices[bitcast<i32>(x_2073)];
    let x_2086 : i32 = u_xlati86;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2091 : vec4<u32> = indexable[x_2086];
    u_xlat85 = dot(x_2076, bitcast<vec4<f32>>(x_2091));
    let x_2095 : f32 = u_xlat85;
    u_xlati85 = i32(x_2095);
    let x_2097 : vec3<f32> = vs_TEXCOORD7;
    let x_2108 : i32 = u_xlati85;
    let x_2110 : vec4<f32> = x_2107.x_AdditionalLightsPosition[x_2108];
    let x_2113 : i32 = u_xlati85;
    let x_2115 : vec4<f32> = x_2107.x_AdditionalLightsPosition[x_2113];
    let x_2117 : vec3<f32> = ((-(x_2097) * vec3<f32>(x_2110.w, x_2110.w, x_2110.w)) + vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2118 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2117.x, x_2117.y, x_2117.z, x_2118.w);
    let x_2120 : vec4<f32> = u_xlat10;
    let x_2122 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2120.x, x_2120.y, x_2120.z), vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
    let x_2125 : f32 = u_xlat86;
    u_xlat86 = max(x_2125, 0.00006103515625f);
    let x_2128 : f32 = u_xlat86;
    u_xlat87 = inverseSqrt(x_2128);
    let x_2130 : f32 = u_xlat87;
    let x_2132 : vec4<f32> = u_xlat10;
    let x_2134 : vec3<f32> = (vec3<f32>(x_2130, x_2130, x_2130) * vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
    let x_2135 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
    let x_2138 : f32 = u_xlat86;
    u_xlat88 = (1.0f / x_2138);
    let x_2140 : f32 = u_xlat86;
    let x_2141 : i32 = u_xlati85;
    let x_2143 : f32 = x_2107.x_AdditionalLightsAttenuation[x_2141].x;
    u_xlat86 = (x_2140 * x_2143);
    let x_2145 : f32 = u_xlat86;
    let x_2147 : f32 = u_xlat86;
    u_xlat86 = ((-(x_2145) * x_2147) + 1.0f);
    let x_2150 : f32 = u_xlat86;
    u_xlat86 = max(x_2150, 0.0f);
    let x_2152 : f32 = u_xlat86;
    let x_2153 : f32 = u_xlat86;
    u_xlat86 = (x_2152 * x_2153);
    let x_2155 : f32 = u_xlat86;
    let x_2156 : f32 = u_xlat88;
    u_xlat86 = (x_2155 * x_2156);
    let x_2158 : i32 = u_xlati85;
    let x_2160 : vec4<f32> = x_2107.x_AdditionalLightsSpotDir[x_2158];
    let x_2162 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_2160.x, x_2160.y, x_2160.z), vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : f32 = u_xlat88;
    let x_2166 : i32 = u_xlati85;
    let x_2168 : f32 = x_2107.x_AdditionalLightsAttenuation[x_2166].z;
    let x_2170 : i32 = u_xlati85;
    let x_2172 : f32 = x_2107.x_AdditionalLightsAttenuation[x_2170].w;
    u_xlat88 = ((x_2165 * x_2168) + x_2172);
    let x_2174 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2174, 0.0f, 1.0f);
    let x_2176 : f32 = u_xlat88;
    let x_2177 : f32 = u_xlat88;
    u_xlat88 = (x_2176 * x_2177);
    let x_2179 : f32 = u_xlat86;
    let x_2180 : f32 = u_xlat88;
    u_xlat86 = (x_2179 * x_2180);
    let x_2184 : i32 = u_xlati85;
    let x_2186 : f32 = x_299.x_AdditionalShadowParams[x_2184].w;
    u_xlati88 = i32(x_2186);
    let x_2189 : i32 = u_xlati88;
    u_xlatb62 = (x_2189 >= 0i);
    let x_2191 : bool = u_xlatb62;
    if (x_2191) {
      let x_2195 : i32 = u_xlati85;
      let x_2197 : f32 = x_299.x_AdditionalShadowParams[x_2195].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2197, x_2197, x_2197, x_2197))));
      let x_2201 : bool = u_xlatb62;
      if (x_2201) {
        let x_2206 : vec4<f32> = u_xlat11;
        let x_2209 : vec4<f32> = u_xlat11;
        let x_2212 : vec4<bool> = (abs(vec4<f32>(x_2206.z, x_2206.z, x_2206.y, x_2206.z)) >= abs(vec4<f32>(x_2209.x, x_2209.y, x_2209.x, x_2209.x)));
        let x_2214 : vec3<bool> = vec3<bool>(x_2212.x, x_2212.y, x_2212.z);
        let x_2215 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
        let x_2218 : bool = u_xlatb12.y;
        let x_2220 : bool = u_xlatb12.x;
        u_xlatb62 = (x_2218 & x_2220);
        let x_2222 : vec4<f32> = u_xlat11;
        let x_2225 : vec4<bool> = (-(vec4<f32>(x_2222.z, x_2222.y, x_2222.z, x_2222.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2226 : vec3<bool> = vec3<bool>(x_2225.x, x_2225.y, x_2225.w);
        let x_2227 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2226.x, x_2226.y, x_2227.z, x_2226.z);
        let x_2230 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_2230);
        let x_2235 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_2235);
        let x_2241 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_2241);
        let x_2244 : bool = u_xlatb12.z;
        if (x_2244) {
          let x_2249 : f32 = u_xlat12.y;
          x_2245 = x_2249;
        } else {
          let x_2251 : f32 = u_xlat89;
          x_2245 = x_2251;
        }
        let x_2252 : f32 = x_2245;
        u_xlat89 = x_2252;
        let x_2253 : bool = u_xlatb62;
        if (x_2253) {
          let x_2258 : f32 = u_xlat12.x;
          x_2254 = x_2258;
        } else {
          let x_2260 : f32 = u_xlat89;
          x_2254 = x_2260;
        }
        let x_2261 : f32 = x_2254;
        u_xlat62.x = x_2261;
        let x_2263 : i32 = u_xlati85;
        let x_2265 : f32 = x_299.x_AdditionalShadowParams[x_2263].w;
        u_xlat89 = trunc(x_2265);
        let x_2268 : f32 = u_xlat62.x;
        let x_2269 : f32 = u_xlat89;
        u_xlat62.x = (x_2268 + x_2269);
        let x_2273 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_2273);
      }
      let x_2275 : i32 = u_xlati88;
      u_xlati88 = (x_2275 << bitcast<u32>(2i));
      let x_2277 : vec3<f32> = vs_TEXCOORD7;
      let x_2280 : i32 = u_xlati88;
      let x_2283 : i32 = u_xlati88;
      let x_2287 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[((x_2280 + 1i) / 4i)][((x_2283 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_2277.y, x_2277.y, x_2277.y, x_2277.y) * x_2287);
      let x_2289 : i32 = u_xlati88;
      let x_2291 : i32 = u_xlati88;
      let x_2294 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[(x_2289 / 4i)][(x_2291 % 4i)];
      let x_2295 : vec3<f32> = vs_TEXCOORD7;
      let x_2298 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2294 * vec4<f32>(x_2295.x, x_2295.x, x_2295.x, x_2295.x)) + x_2298);
      let x_2300 : i32 = u_xlati88;
      let x_2303 : i32 = u_xlati88;
      let x_2307 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[((x_2300 + 2i) / 4i)][((x_2303 + 2i) % 4i)];
      let x_2308 : vec3<f32> = vs_TEXCOORD7;
      let x_2311 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2307 * vec4<f32>(x_2308.z, x_2308.z, x_2308.z, x_2308.z)) + x_2311);
      let x_2313 : vec4<f32> = u_xlat12;
      let x_2314 : i32 = u_xlati88;
      let x_2317 : i32 = u_xlati88;
      let x_2321 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[((x_2314 + 3i) / 4i)][((x_2317 + 3i) % 4i)];
      u_xlat12 = (x_2313 + x_2321);
      let x_2323 : vec4<f32> = u_xlat12;
      let x_2325 : vec4<f32> = u_xlat12;
      let x_2327 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.y, x_2323.z) / vec3<f32>(x_2325.w, x_2325.w, x_2325.w));
      let x_2328 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
      let x_2331 : i32 = u_xlati85;
      let x_2333 : f32 = x_299.x_AdditionalShadowParams[x_2331].y;
      u_xlatb88 = (0.0f < x_2333);
      let x_2335 : bool = u_xlatb88;
      if (x_2335) {
        let x_2338 : i32 = u_xlati85;
        let x_2340 : f32 = x_299.x_AdditionalShadowParams[x_2338].y;
        u_xlatb88 = (1.0f == x_2340);
        let x_2342 : bool = u_xlatb88;
        if (x_2342) {
          let x_2345 : vec4<f32> = u_xlat12;
          let x_2349 : vec4<f32> = x_299.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_2345.x, x_2345.y, x_2345.x, x_2345.y) + x_2349);
          let x_2352 : vec4<f32> = u_xlat13;
          let x_2353 : vec2<f32> = vec2<f32>(x_2352.x, x_2352.y);
          let x_2355 : f32 = u_xlat12.z;
          txVec30 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
          let x_2363 : vec3<f32> = txVec30;
          let x_2365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
          u_xlat14.x = x_2365;
          let x_2368 : vec4<f32> = u_xlat13;
          let x_2369 : vec2<f32> = vec2<f32>(x_2368.z, x_2368.w);
          let x_2371 : f32 = u_xlat12.z;
          txVec31 = vec3<f32>(x_2369.x, x_2369.y, x_2371);
          let x_2378 : vec3<f32> = txVec31;
          let x_2380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2378.xy, x_2378.z);
          u_xlat14.y = x_2380;
          let x_2382 : vec4<f32> = u_xlat12;
          let x_2386 : vec4<f32> = x_299.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_2382.x, x_2382.y, x_2382.x, x_2382.y) + x_2386);
          let x_2389 : vec4<f32> = u_xlat13;
          let x_2390 : vec2<f32> = vec2<f32>(x_2389.x, x_2389.y);
          let x_2392 : f32 = u_xlat12.z;
          txVec32 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
          let x_2399 : vec3<f32> = txVec32;
          let x_2401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
          u_xlat14.z = x_2401;
          let x_2404 : vec4<f32> = u_xlat13;
          let x_2405 : vec2<f32> = vec2<f32>(x_2404.z, x_2404.w);
          let x_2407 : f32 = u_xlat12.z;
          txVec33 = vec3<f32>(x_2405.x, x_2405.y, x_2407);
          let x_2414 : vec3<f32> = txVec33;
          let x_2416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2414.xy, x_2414.z);
          u_xlat14.w = x_2416;
          let x_2418 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_2418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2421 : i32 = u_xlati85;
          let x_2423 : f32 = x_299.x_AdditionalShadowParams[x_2421].y;
          u_xlatb62 = (2.0f == x_2423);
          let x_2425 : bool = u_xlatb62;
          if (x_2425) {
            let x_2428 : vec4<f32> = u_xlat12;
            let x_2432 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_2428.x, x_2428.y) * vec2<f32>(x_2432.z, x_2432.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2436 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_2436);
            let x_2438 : vec4<f32> = u_xlat12;
            let x_2441 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2444 : vec2<f32> = u_xlat62;
            let x_2446 : vec2<f32> = ((vec2<f32>(x_2438.x, x_2438.y) * vec2<f32>(x_2441.z, x_2441.w)) + -(x_2444));
            let x_2447 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2446.x, x_2446.y, x_2447.z, x_2447.w);
            let x_2449 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2449.x, x_2449.x, x_2449.y, x_2449.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2452 : vec4<f32> = u_xlat14;
            let x_2454 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2452.x, x_2452.x, x_2452.z, x_2452.z) * vec4<f32>(x_2454.x, x_2454.x, x_2454.z, x_2454.z));
            let x_2457 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_2457.y, x_2457.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2460 : vec4<f32> = u_xlat15;
            let x_2463 : vec4<f32> = u_xlat13;
            let x_2466 : vec2<f32> = ((vec2<f32>(x_2460.x, x_2460.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2463.x, x_2463.y)));
            let x_2467 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2466.x, x_2467.y, x_2466.y, x_2467.w);
            let x_2469 : vec4<f32> = u_xlat13;
            let x_2472 : vec2<f32> = (-(vec2<f32>(x_2469.x, x_2469.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2473 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
            let x_2476 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_2476.x, x_2476.y), vec2<f32>(0.0f, 0.0f));
            let x_2479 : vec2<f32> = u_xlat69;
            let x_2481 : vec2<f32> = u_xlat69;
            let x_2483 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_2479) * x_2481) + vec2<f32>(x_2483.x, x_2483.y));
            let x_2486 : vec4<f32> = u_xlat13;
            let x_2488 : vec2<f32> = max(vec2<f32>(x_2486.x, x_2486.y), vec2<f32>(0.0f, 0.0f));
            let x_2489 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2488.x, x_2488.y, x_2489.z, x_2489.w);
            let x_2491 : vec4<f32> = u_xlat13;
            let x_2494 : vec4<f32> = u_xlat13;
            let x_2497 : vec4<f32> = u_xlat14;
            let x_2499 : vec2<f32> = ((-(vec2<f32>(x_2491.x, x_2491.y)) * vec2<f32>(x_2494.x, x_2494.y)) + vec2<f32>(x_2497.y, x_2497.w));
            let x_2500 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2499.x, x_2499.y, x_2500.z, x_2500.w);
            let x_2502 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_2502 + vec2<f32>(1.0f, 1.0f));
            let x_2504 : vec4<f32> = u_xlat13;
            let x_2506 : vec2<f32> = (vec2<f32>(x_2504.x, x_2504.y) + vec2<f32>(1.0f, 1.0f));
            let x_2507 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2506.x, x_2506.y, x_2507.z, x_2507.w);
            let x_2509 : vec4<f32> = u_xlat14;
            let x_2511 : vec2<f32> = (vec2<f32>(x_2509.x, x_2509.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2512 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat15;
            let x_2516 : vec2<f32> = (vec2<f32>(x_2514.x, x_2514.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2517 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2516.x, x_2516.y, x_2517.z, x_2517.w);
            let x_2519 : vec2<f32> = u_xlat69;
            let x_2520 : vec2<f32> = (x_2519 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2521 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2520.x, x_2520.y, x_2521.z, x_2521.w);
            let x_2523 : vec4<f32> = u_xlat13;
            let x_2525 : vec2<f32> = (vec2<f32>(x_2523.x, x_2523.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2526 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2525.x, x_2525.y, x_2526.z, x_2526.w);
            let x_2528 : vec4<f32> = u_xlat14;
            let x_2530 : vec2<f32> = (vec2<f32>(x_2528.y, x_2528.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2531 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2530.x, x_2530.y, x_2531.z, x_2531.w);
            let x_2534 : f32 = u_xlat15.x;
            u_xlat16.z = x_2534;
            let x_2537 : f32 = u_xlat13.x;
            u_xlat16.w = x_2537;
            let x_2540 : f32 = u_xlat18.x;
            u_xlat17.z = x_2540;
            let x_2543 : f32 = u_xlat67.x;
            u_xlat17.w = x_2543;
            let x_2545 : vec4<f32> = u_xlat16;
            let x_2547 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_2545.z, x_2545.w, x_2545.x, x_2545.z) + vec4<f32>(x_2547.z, x_2547.w, x_2547.x, x_2547.z));
            let x_2551 : f32 = u_xlat16.y;
            u_xlat15.z = x_2551;
            let x_2554 : f32 = u_xlat13.y;
            u_xlat15.w = x_2554;
            let x_2557 : f32 = u_xlat17.y;
            u_xlat18.z = x_2557;
            let x_2560 : f32 = u_xlat67.y;
            u_xlat18.w = x_2560;
            let x_2562 : vec4<f32> = u_xlat15;
            let x_2564 : vec4<f32> = u_xlat18;
            let x_2566 : vec3<f32> = (vec3<f32>(x_2562.z, x_2562.y, x_2562.w) + vec3<f32>(x_2564.z, x_2564.y, x_2564.w));
            let x_2567 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat17;
            let x_2571 : vec4<f32> = u_xlat14;
            let x_2573 : vec3<f32> = (vec3<f32>(x_2569.x, x_2569.z, x_2569.w) / vec3<f32>(x_2571.z, x_2571.w, x_2571.y));
            let x_2574 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
            let x_2576 : vec4<f32> = u_xlat15;
            let x_2578 : vec3<f32> = (vec3<f32>(x_2576.x, x_2576.y, x_2576.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2579 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
            let x_2581 : vec4<f32> = u_xlat18;
            let x_2583 : vec4<f32> = u_xlat13;
            let x_2585 : vec3<f32> = (vec3<f32>(x_2581.z, x_2581.y, x_2581.w) / vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
            let x_2586 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);
            let x_2588 : vec4<f32> = u_xlat16;
            let x_2590 : vec3<f32> = (vec3<f32>(x_2588.x, x_2588.y, x_2588.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2591 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
            let x_2593 : vec4<f32> = u_xlat15;
            let x_2596 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2598 : vec3<f32> = (vec3<f32>(x_2593.y, x_2593.x, x_2593.z) * vec3<f32>(x_2596.x, x_2596.x, x_2596.x));
            let x_2599 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat16;
            let x_2604 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2606 : vec3<f32> = (vec3<f32>(x_2601.x, x_2601.y, x_2601.z) * vec3<f32>(x_2604.y, x_2604.y, x_2604.y));
            let x_2607 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
            let x_2610 : f32 = u_xlat16.x;
            u_xlat15.w = x_2610;
            let x_2612 : vec2<f32> = u_xlat62;
            let x_2615 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2618 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2612.x, x_2612.y, x_2612.x, x_2612.y) * vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y)) + vec4<f32>(x_2618.y, x_2618.w, x_2618.x, x_2618.w));
            let x_2621 : vec2<f32> = u_xlat62;
            let x_2623 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2626 : vec4<f32> = u_xlat15;
            let x_2628 : vec2<f32> = ((x_2621 * vec2<f32>(x_2623.x, x_2623.y)) + vec2<f32>(x_2626.z, x_2626.w));
            let x_2629 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2628.x, x_2628.y, x_2629.z, x_2629.w);
            let x_2632 : f32 = u_xlat15.y;
            u_xlat16.w = x_2632;
            let x_2634 : vec4<f32> = u_xlat16;
            let x_2635 : vec2<f32> = vec2<f32>(x_2634.y, x_2634.z);
            let x_2636 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
            let x_2639 : vec2<f32> = u_xlat62;
            let x_2642 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2645 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) * vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y)) + vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2645.y));
            let x_2648 : vec2<f32> = u_xlat62;
            let x_2651 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2654 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_2648.x, x_2648.y, x_2648.x, x_2648.y) * vec4<f32>(x_2651.x, x_2651.y, x_2651.x, x_2651.y)) + vec4<f32>(x_2654.w, x_2654.y, x_2654.w, x_2654.z));
            let x_2657 : vec2<f32> = u_xlat62;
            let x_2660 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2663 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2657.x, x_2657.y, x_2657.x, x_2657.y) * vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y)) + vec4<f32>(x_2663.x, x_2663.w, x_2663.z, x_2663.w));
            let x_2667 : vec4<f32> = u_xlat13;
            let x_2669 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_2667.x, x_2667.x, x_2667.x, x_2667.y) * vec4<f32>(x_2669.z, x_2669.w, x_2669.y, x_2669.z));
            let x_2673 : vec4<f32> = u_xlat13;
            let x_2675 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_2673.y, x_2673.y, x_2673.z, x_2673.z) * x_2675);
            let x_2678 : f32 = u_xlat13.z;
            let x_2680 : f32 = u_xlat14.y;
            u_xlat62.x = (x_2678 * x_2680);
            let x_2684 : vec4<f32> = u_xlat17;
            let x_2685 : vec2<f32> = vec2<f32>(x_2684.x, x_2684.y);
            let x_2687 : f32 = u_xlat12.z;
            txVec34 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec34;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat89 = x_2696;
            let x_2698 : vec4<f32> = u_xlat17;
            let x_2699 : vec2<f32> = vec2<f32>(x_2698.z, x_2698.w);
            let x_2701 : f32 = u_xlat12.z;
            txVec35 = vec3<f32>(x_2699.x, x_2699.y, x_2701);
            let x_2709 : vec3<f32> = txVec35;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat90 = x_2711;
            let x_2712 : f32 = u_xlat90;
            let x_2714 : f32 = u_xlat20.y;
            u_xlat90 = (x_2712 * x_2714);
            let x_2717 : f32 = u_xlat20.x;
            let x_2718 : f32 = u_xlat89;
            let x_2720 : f32 = u_xlat90;
            u_xlat89 = ((x_2717 * x_2718) + x_2720);
            let x_2723 : vec4<f32> = u_xlat18;
            let x_2724 : vec2<f32> = vec2<f32>(x_2723.x, x_2723.y);
            let x_2726 : f32 = u_xlat12.z;
            txVec36 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
            let x_2733 : vec3<f32> = txVec36;
            let x_2735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2733.xy, x_2733.z);
            u_xlat90 = x_2735;
            let x_2737 : f32 = u_xlat20.z;
            let x_2738 : f32 = u_xlat90;
            let x_2740 : f32 = u_xlat89;
            u_xlat89 = ((x_2737 * x_2738) + x_2740);
            let x_2743 : vec4<f32> = u_xlat16;
            let x_2744 : vec2<f32> = vec2<f32>(x_2743.x, x_2743.y);
            let x_2746 : f32 = u_xlat12.z;
            txVec37 = vec3<f32>(x_2744.x, x_2744.y, x_2746);
            let x_2753 : vec3<f32> = txVec37;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat90 = x_2755;
            let x_2757 : f32 = u_xlat20.w;
            let x_2758 : f32 = u_xlat90;
            let x_2760 : f32 = u_xlat89;
            u_xlat89 = ((x_2757 * x_2758) + x_2760);
            let x_2763 : vec4<f32> = u_xlat19;
            let x_2764 : vec2<f32> = vec2<f32>(x_2763.x, x_2763.y);
            let x_2766 : f32 = u_xlat12.z;
            txVec38 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
            let x_2773 : vec3<f32> = txVec38;
            let x_2775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
            u_xlat90 = x_2775;
            let x_2777 : f32 = u_xlat21.x;
            let x_2778 : f32 = u_xlat90;
            let x_2780 : f32 = u_xlat89;
            u_xlat89 = ((x_2777 * x_2778) + x_2780);
            let x_2783 : vec4<f32> = u_xlat19;
            let x_2784 : vec2<f32> = vec2<f32>(x_2783.z, x_2783.w);
            let x_2786 : f32 = u_xlat12.z;
            txVec39 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
            let x_2793 : vec3<f32> = txVec39;
            let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
            u_xlat90 = x_2795;
            let x_2797 : f32 = u_xlat21.y;
            let x_2798 : f32 = u_xlat90;
            let x_2800 : f32 = u_xlat89;
            u_xlat89 = ((x_2797 * x_2798) + x_2800);
            let x_2803 : vec4<f32> = u_xlat16;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.z, x_2803.w);
            let x_2806 : f32 = u_xlat12.z;
            txVec40 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec40;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat90 = x_2815;
            let x_2817 : f32 = u_xlat21.z;
            let x_2818 : f32 = u_xlat90;
            let x_2820 : f32 = u_xlat89;
            u_xlat89 = ((x_2817 * x_2818) + x_2820);
            let x_2823 : vec4<f32> = u_xlat15;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.x, x_2823.y);
            let x_2826 : f32 = u_xlat12.z;
            txVec41 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec41;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat90 = x_2835;
            let x_2837 : f32 = u_xlat21.w;
            let x_2838 : f32 = u_xlat90;
            let x_2840 : f32 = u_xlat89;
            u_xlat89 = ((x_2837 * x_2838) + x_2840);
            let x_2843 : vec4<f32> = u_xlat15;
            let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
            let x_2846 : f32 = u_xlat12.z;
            txVec42 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
            let x_2853 : vec3<f32> = txVec42;
            let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
            u_xlat90 = x_2855;
            let x_2857 : f32 = u_xlat62.x;
            let x_2858 : f32 = u_xlat90;
            let x_2860 : f32 = u_xlat89;
            u_xlat88 = ((x_2857 * x_2858) + x_2860);
          } else {
            let x_2863 : vec4<f32> = u_xlat12;
            let x_2866 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.z, x_2866.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2870 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_2870);
            let x_2872 : vec4<f32> = u_xlat12;
            let x_2875 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2878 : vec2<f32> = u_xlat62;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2872.x, x_2872.y) * vec2<f32>(x_2875.z, x_2875.w)) + -(x_2878));
            let x_2881 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2880.x, x_2880.y, x_2881.z, x_2881.w);
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2883.x, x_2883.x, x_2883.y, x_2883.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2886 : vec4<f32> = u_xlat14;
            let x_2888 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2886.x, x_2886.x, x_2886.z, x_2886.z) * vec4<f32>(x_2888.x, x_2888.x, x_2888.z, x_2888.z));
            let x_2891 : vec4<f32> = u_xlat15;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.y, x_2891.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2894 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2894.x, x_2893.x, x_2894.z, x_2893.y);
            let x_2896 : vec4<f32> = u_xlat15;
            let x_2899 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2896.x, x_2896.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2899.x, x_2899.y)));
            let x_2903 : vec4<f32> = u_xlat13;
            let x_2906 : vec2<f32> = (-(vec2<f32>(x_2903.x, x_2903.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2907 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2906.x, x_2907.y, x_2906.y, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat13;
            let x_2911 : vec2<f32> = min(vec2<f32>(x_2909.x, x_2909.y), vec2<f32>(0.0f, 0.0f));
            let x_2912 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2911.x, x_2911.y, x_2912.z, x_2912.w);
            let x_2914 : vec4<f32> = u_xlat15;
            let x_2917 : vec4<f32> = u_xlat15;
            let x_2920 : vec4<f32> = u_xlat14;
            let x_2922 : vec2<f32> = ((-(vec2<f32>(x_2914.x, x_2914.y)) * vec2<f32>(x_2917.x, x_2917.y)) + vec2<f32>(x_2920.x, x_2920.z));
            let x_2923 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2922.x, x_2923.y, x_2922.y, x_2923.w);
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2927 : vec2<f32> = max(vec2<f32>(x_2925.x, x_2925.y), vec2<f32>(0.0f, 0.0f));
            let x_2928 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2927.x, x_2927.y, x_2928.z, x_2928.w);
            let x_2930 : vec4<f32> = u_xlat15;
            let x_2933 : vec4<f32> = u_xlat15;
            let x_2936 : vec4<f32> = u_xlat14;
            let x_2938 : vec2<f32> = ((-(vec2<f32>(x_2930.x, x_2930.y)) * vec2<f32>(x_2933.x, x_2933.y)) + vec2<f32>(x_2936.y, x_2936.w));
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2939.x, x_2938.x, x_2939.z, x_2938.y);
            let x_2941 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2941 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2945 : f32 = u_xlat14.y;
            u_xlat15.z = (x_2945 * 0.08163200318813323975f);
            let x_2948 : vec2<f32> = u_xlat67;
            let x_2950 : vec2<f32> = (vec2<f32>(x_2948.y, x_2948.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2951 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2953 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_2953.x, x_2953.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2957 : f32 = u_xlat14.w;
            u_xlat17.z = (x_2957 * 0.08163200318813323975f);
            let x_2961 : f32 = u_xlat17.y;
            u_xlat15.x = x_2961;
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2966 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2967 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2967.x, x_2966.x, x_2967.z, x_2966.y);
            let x_2969 : vec4<f32> = u_xlat13;
            let x_2972 : vec2<f32> = ((vec2<f32>(x_2969.x, x_2969.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2973 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2972.x, x_2973.y, x_2972.y, x_2973.w);
            let x_2976 : f32 = u_xlat67.x;
            u_xlat14.y = x_2976;
            let x_2979 : f32 = u_xlat16.y;
            u_xlat14.w = x_2979;
            let x_2981 : vec4<f32> = u_xlat14;
            let x_2982 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2981 + x_2982);
            let x_2984 : vec4<f32> = u_xlat13;
            let x_2987 : vec2<f32> = ((vec2<f32>(x_2984.y, x_2984.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2988 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2988.x, x_2987.x, x_2988.z, x_2987.y);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2993 : vec2<f32> = ((vec2<f32>(x_2990.y, x_2990.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2994 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2993.x, x_2994.y, x_2993.y, x_2994.w);
            let x_2997 : f32 = u_xlat67.y;
            u_xlat16.y = x_2997;
            let x_2999 : vec4<f32> = u_xlat16;
            let x_3000 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2999 + x_3000);
            let x_3002 : vec4<f32> = u_xlat14;
            let x_3003 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_3002 / x_3003);
            let x_3005 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3007 : vec4<f32> = u_xlat16;
            let x_3008 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_3007 / x_3008);
            let x_3010 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3010 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3012 : vec4<f32> = u_xlat14;
            let x_3015 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3012.w, x_3012.x, x_3012.y, x_3012.z) * vec4<f32>(x_3015.x, x_3015.x, x_3015.x, x_3015.x));
            let x_3018 : vec4<f32> = u_xlat16;
            let x_3021 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_3018.x, x_3018.w, x_3018.y, x_3018.z) * vec4<f32>(x_3021.y, x_3021.y, x_3021.y, x_3021.y));
            let x_3024 : vec4<f32> = u_xlat14;
            let x_3025 : vec3<f32> = vec3<f32>(x_3024.y, x_3024.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3025.x, x_3026.y, x_3025.y, x_3025.z);
            let x_3029 : f32 = u_xlat16.x;
            u_xlat17.y = x_3029;
            let x_3031 : vec2<f32> = u_xlat62;
            let x_3034 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3037 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3031.x, x_3031.y, x_3031.x, x_3031.y) * vec4<f32>(x_3034.x, x_3034.y, x_3034.x, x_3034.y)) + vec4<f32>(x_3037.x, x_3037.y, x_3037.z, x_3037.y));
            let x_3040 : vec2<f32> = u_xlat62;
            let x_3042 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat17;
            let x_3047 : vec2<f32> = ((x_3040 * vec2<f32>(x_3042.x, x_3042.y)) + vec2<f32>(x_3045.w, x_3045.y));
            let x_3048 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3047.x, x_3047.y, x_3048.z, x_3048.w);
            let x_3051 : f32 = u_xlat17.y;
            u_xlat14.y = x_3051;
            let x_3054 : f32 = u_xlat16.z;
            u_xlat17.y = x_3054;
            let x_3056 : vec2<f32> = u_xlat62;
            let x_3059 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3062 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y) * vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y)) + vec4<f32>(x_3062.x, x_3062.y, x_3062.z, x_3062.y));
            let x_3066 : vec2<f32> = u_xlat62;
            let x_3068 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3071 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_3066 * vec2<f32>(x_3068.x, x_3068.y)) + vec2<f32>(x_3071.w, x_3071.y));
            let x_3075 : f32 = u_xlat17.y;
            u_xlat14.z = x_3075;
            let x_3077 : vec2<f32> = u_xlat62;
            let x_3080 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3083 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y) * vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y)) + vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.z));
            let x_3087 : f32 = u_xlat16.w;
            u_xlat17.y = x_3087;
            let x_3090 : vec2<f32> = u_xlat62;
            let x_3093 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3096 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3090.x, x_3090.y, x_3090.x, x_3090.y) * vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y)) + vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3096.y));
            let x_3100 : vec2<f32> = u_xlat62;
            let x_3102 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3105 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_3100 * vec2<f32>(x_3102.x, x_3102.y)) + vec2<f32>(x_3105.w, x_3105.y));
            let x_3109 : f32 = u_xlat17.y;
            u_xlat14.w = x_3109;
            let x_3112 : vec2<f32> = u_xlat62;
            let x_3114 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3117 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_3112 * vec2<f32>(x_3114.x, x_3114.y)) + vec2<f32>(x_3117.x, x_3117.w));
            let x_3120 : vec4<f32> = u_xlat17;
            let x_3121 : vec3<f32> = vec3<f32>(x_3120.x, x_3120.z, x_3120.w);
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3121.x, x_3122.y, x_3121.y, x_3121.z);
            let x_3124 : vec2<f32> = u_xlat62;
            let x_3127 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3124.x, x_3124.y, x_3124.x, x_3124.y) * vec4<f32>(x_3127.x, x_3127.y, x_3127.x, x_3127.y)) + vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3130.y));
            let x_3134 : vec2<f32> = u_xlat62;
            let x_3136 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3139 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3134 * vec2<f32>(x_3136.x, x_3136.y)) + vec2<f32>(x_3139.w, x_3139.y));
            let x_3143 : f32 = u_xlat14.x;
            u_xlat16.x = x_3143;
            let x_3145 : vec2<f32> = u_xlat62;
            let x_3147 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_3145 * vec2<f32>(x_3147.x, x_3147.y)) + vec2<f32>(x_3150.x, x_3150.y));
            let x_3154 : vec4<f32> = u_xlat13;
            let x_3156 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3154.x, x_3154.x, x_3154.x, x_3154.x) * x_3156);
            let x_3159 : vec4<f32> = u_xlat13;
            let x_3161 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_3159.y, x_3159.y, x_3159.y, x_3159.y) * x_3161);
            let x_3164 : vec4<f32> = u_xlat13;
            let x_3166 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_3164.z, x_3164.z, x_3164.z, x_3164.z) * x_3166);
            let x_3168 : vec4<f32> = u_xlat13;
            let x_3170 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_3168.w, x_3168.w, x_3168.w, x_3168.w) * x_3170);
            let x_3173 : vec4<f32> = u_xlat18;
            let x_3174 : vec2<f32> = vec2<f32>(x_3173.x, x_3173.y);
            let x_3176 : f32 = u_xlat12.z;
            txVec43 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
            let x_3183 : vec3<f32> = txVec43;
            let x_3185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
            u_xlat90 = x_3185;
            let x_3187 : vec4<f32> = u_xlat18;
            let x_3188 : vec2<f32> = vec2<f32>(x_3187.z, x_3187.w);
            let x_3190 : f32 = u_xlat12.z;
            txVec44 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3198 : vec3<f32> = txVec44;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat91 = x_3200;
            let x_3201 : f32 = u_xlat91;
            let x_3203 : f32 = u_xlat24.y;
            u_xlat91 = (x_3201 * x_3203);
            let x_3206 : f32 = u_xlat24.x;
            let x_3207 : f32 = u_xlat90;
            let x_3209 : f32 = u_xlat91;
            u_xlat90 = ((x_3206 * x_3207) + x_3209);
            let x_3212 : vec4<f32> = u_xlat19;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.x, x_3212.y);
            let x_3215 : f32 = u_xlat12.z;
            txVec45 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec45;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat91 = x_3224;
            let x_3226 : f32 = u_xlat24.z;
            let x_3227 : f32 = u_xlat91;
            let x_3229 : f32 = u_xlat90;
            u_xlat90 = ((x_3226 * x_3227) + x_3229);
            let x_3232 : vec4<f32> = u_xlat21;
            let x_3233 : vec2<f32> = vec2<f32>(x_3232.x, x_3232.y);
            let x_3235 : f32 = u_xlat12.z;
            txVec46 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec46;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat91 = x_3244;
            let x_3246 : f32 = u_xlat24.w;
            let x_3247 : f32 = u_xlat91;
            let x_3249 : f32 = u_xlat90;
            u_xlat90 = ((x_3246 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat20;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.x, x_3252.y);
            let x_3255 : f32 = u_xlat12.z;
            txVec47 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec47;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat91 = x_3264;
            let x_3266 : f32 = u_xlat25.x;
            let x_3267 : f32 = u_xlat91;
            let x_3269 : f32 = u_xlat90;
            u_xlat90 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec4<f32> = u_xlat20;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.z, x_3272.w);
            let x_3275 : f32 = u_xlat12.z;
            txVec48 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec48;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat91 = x_3284;
            let x_3286 : f32 = u_xlat25.y;
            let x_3287 : f32 = u_xlat91;
            let x_3289 : f32 = u_xlat90;
            u_xlat90 = ((x_3286 * x_3287) + x_3289);
            let x_3292 : vec2<f32> = u_xlat73;
            let x_3294 : f32 = u_xlat12.z;
            txVec49 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec49;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat91 = x_3303;
            let x_3305 : f32 = u_xlat25.z;
            let x_3306 : f32 = u_xlat91;
            let x_3308 : f32 = u_xlat90;
            u_xlat90 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat21;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat12.z;
            txVec50 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec50;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat91 = x_3323;
            let x_3325 : f32 = u_xlat25.w;
            let x_3326 : f32 = u_xlat91;
            let x_3328 : f32 = u_xlat90;
            u_xlat90 = ((x_3325 * x_3326) + x_3328);
            let x_3331 : vec4<f32> = u_xlat22;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.x, x_3331.y);
            let x_3334 : f32 = u_xlat12.z;
            txVec51 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec51;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat91 = x_3343;
            let x_3345 : f32 = u_xlat26.x;
            let x_3346 : f32 = u_xlat91;
            let x_3348 : f32 = u_xlat90;
            u_xlat90 = ((x_3345 * x_3346) + x_3348);
            let x_3351 : vec4<f32> = u_xlat22;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.z, x_3351.w);
            let x_3354 : f32 = u_xlat12.z;
            txVec52 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec52;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat91 = x_3363;
            let x_3365 : f32 = u_xlat26.y;
            let x_3366 : f32 = u_xlat91;
            let x_3368 : f32 = u_xlat90;
            u_xlat90 = ((x_3365 * x_3366) + x_3368);
            let x_3371 : vec2<f32> = u_xlat41;
            let x_3373 : f32 = u_xlat12.z;
            txVec53 = vec3<f32>(x_3371.x, x_3371.y, x_3373);
            let x_3380 : vec3<f32> = txVec53;
            let x_3382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3380.xy, x_3380.z);
            u_xlat91 = x_3382;
            let x_3384 : f32 = u_xlat26.z;
            let x_3385 : f32 = u_xlat91;
            let x_3387 : f32 = u_xlat90;
            u_xlat90 = ((x_3384 * x_3385) + x_3387);
            let x_3390 : vec2<f32> = u_xlat23;
            let x_3392 : f32 = u_xlat12.z;
            txVec54 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
            let x_3399 : vec3<f32> = txVec54;
            let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
            u_xlat91 = x_3401;
            let x_3403 : f32 = u_xlat26.w;
            let x_3404 : f32 = u_xlat91;
            let x_3406 : f32 = u_xlat90;
            u_xlat90 = ((x_3403 * x_3404) + x_3406);
            let x_3409 : vec4<f32> = u_xlat17;
            let x_3410 : vec2<f32> = vec2<f32>(x_3409.x, x_3409.y);
            let x_3412 : f32 = u_xlat12.z;
            txVec55 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec55;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat91 = x_3421;
            let x_3423 : f32 = u_xlat13.x;
            let x_3424 : f32 = u_xlat91;
            let x_3426 : f32 = u_xlat90;
            u_xlat90 = ((x_3423 * x_3424) + x_3426);
            let x_3429 : vec4<f32> = u_xlat17;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.z, x_3429.w);
            let x_3432 : f32 = u_xlat12.z;
            txVec56 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec56;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat91 = x_3441;
            let x_3443 : f32 = u_xlat13.y;
            let x_3444 : f32 = u_xlat91;
            let x_3446 : f32 = u_xlat90;
            u_xlat90 = ((x_3443 * x_3444) + x_3446);
            let x_3449 : vec2<f32> = u_xlat70;
            let x_3451 : f32 = u_xlat12.z;
            txVec57 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec57;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat91 = x_3460;
            let x_3462 : f32 = u_xlat13.z;
            let x_3463 : f32 = u_xlat91;
            let x_3465 : f32 = u_xlat90;
            u_xlat90 = ((x_3462 * x_3463) + x_3465);
            let x_3468 : vec2<f32> = u_xlat62;
            let x_3470 : f32 = u_xlat12.z;
            txVec58 = vec3<f32>(x_3468.x, x_3468.y, x_3470);
            let x_3477 : vec3<f32> = txVec58;
            let x_3479 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3477.xy, x_3477.z);
            u_xlat62.x = x_3479;
            let x_3482 : f32 = u_xlat13.w;
            let x_3484 : f32 = u_xlat62.x;
            let x_3486 : f32 = u_xlat90;
            u_xlat88 = ((x_3482 * x_3484) + x_3486);
          }
        }
      } else {
        let x_3490 : vec4<f32> = u_xlat12;
        let x_3491 : vec2<f32> = vec2<f32>(x_3490.x, x_3490.y);
        let x_3493 : f32 = u_xlat12.z;
        txVec59 = vec3<f32>(x_3491.x, x_3491.y, x_3493);
        let x_3500 : vec3<f32> = txVec59;
        let x_3502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3500.xy, x_3500.z);
        u_xlat88 = x_3502;
      }
      let x_3503 : i32 = u_xlati85;
      let x_3505 : f32 = x_299.x_AdditionalShadowParams[x_3503].x;
      u_xlat62.x = (1.0f + -(x_3505));
      let x_3509 : f32 = u_xlat88;
      let x_3510 : i32 = u_xlati85;
      let x_3512 : f32 = x_299.x_AdditionalShadowParams[x_3510].x;
      let x_3515 : f32 = u_xlat62.x;
      u_xlat88 = ((x_3509 * x_3512) + x_3515);
      let x_3518 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_3518);
      let x_3522 : f32 = u_xlat12.z;
      u_xlatb89 = (x_3522 >= 1.0f);
      let x_3524 : bool = u_xlatb89;
      let x_3525 : bool = u_xlatb62;
      u_xlatb62 = (x_3524 | x_3525);
      let x_3527 : bool = u_xlatb62;
      let x_3528 : f32 = u_xlat88;
      u_xlat88 = select(x_3528, 1.0f, x_3527);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3531 : f32 = u_xlat88;
    u_xlat62.x = (-(x_3531) + 1.0f);
    let x_3535 : f32 = u_xlat55;
    let x_3537 : f32 = u_xlat62.x;
    let x_3539 : f32 = u_xlat88;
    u_xlat88 = ((x_3535 * x_3537) + x_3539);
    let x_3542 : i32 = u_xlati85;
    u_xlati62 = (1i << bitcast<u32>((x_3542 & 31i)));
    let x_3546 : i32 = u_xlati62;
    let x_3549 : f32 = x_1623.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_3546) & bitcast<u32>(x_3549)));
    let x_3553 : i32 = u_xlati62;
    if ((x_3553 != 0i)) {
      let x_3557 : i32 = u_xlati85;
      let x_3559 : f32 = x_1623.x_AdditionalLightsLightTypes[x_3557].el;
      u_xlati62 = i32(x_3559);
      let x_3562 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_3562 != 0i));
      let x_3566 : i32 = u_xlati85;
      u_xlati90 = (x_3566 << bitcast<u32>(2i));
      let x_3568 : i32 = u_xlati89;
      if ((x_3568 != 0i)) {
        let x_3572 : vec3<f32> = vs_TEXCOORD7;
        let x_3574 : i32 = u_xlati90;
        let x_3577 : i32 = u_xlati90;
        let x_3581 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3574 + 1i) / 4i)][((x_3577 + 1i) % 4i)];
        let x_3583 : vec3<f32> = (vec3<f32>(x_3572.y, x_3572.y, x_3572.y) * vec3<f32>(x_3581.x, x_3581.y, x_3581.w));
        let x_3584 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3583.x, x_3583.y, x_3583.z, x_3584.w);
        let x_3586 : i32 = u_xlati90;
        let x_3588 : i32 = u_xlati90;
        let x_3591 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[(x_3586 / 4i)][(x_3588 % 4i)];
        let x_3593 : vec3<f32> = vs_TEXCOORD7;
        let x_3596 : vec4<f32> = u_xlat12;
        let x_3598 : vec3<f32> = ((vec3<f32>(x_3591.x, x_3591.y, x_3591.w) * vec3<f32>(x_3593.x, x_3593.x, x_3593.x)) + vec3<f32>(x_3596.x, x_3596.y, x_3596.z));
        let x_3599 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3598.x, x_3598.y, x_3598.z, x_3599.w);
        let x_3601 : i32 = u_xlati90;
        let x_3604 : i32 = u_xlati90;
        let x_3608 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3601 + 2i) / 4i)][((x_3604 + 2i) % 4i)];
        let x_3610 : vec3<f32> = vs_TEXCOORD7;
        let x_3613 : vec4<f32> = u_xlat12;
        let x_3615 : vec3<f32> = ((vec3<f32>(x_3608.x, x_3608.y, x_3608.w) * vec3<f32>(x_3610.z, x_3610.z, x_3610.z)) + vec3<f32>(x_3613.x, x_3613.y, x_3613.z));
        let x_3616 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3615.x, x_3615.y, x_3615.z, x_3616.w);
        let x_3618 : vec4<f32> = u_xlat12;
        let x_3620 : i32 = u_xlati90;
        let x_3623 : i32 = u_xlati90;
        let x_3627 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3620 + 3i) / 4i)][((x_3623 + 3i) % 4i)];
        let x_3629 : vec3<f32> = (vec3<f32>(x_3618.x, x_3618.y, x_3618.z) + vec3<f32>(x_3627.x, x_3627.y, x_3627.w));
        let x_3630 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3630.w);
        let x_3632 : vec4<f32> = u_xlat12;
        let x_3634 : vec4<f32> = u_xlat12;
        let x_3636 : vec2<f32> = (vec2<f32>(x_3632.x, x_3632.y) / vec2<f32>(x_3634.z, x_3634.z));
        let x_3637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3636.x, x_3636.y, x_3637.z, x_3637.w);
        let x_3639 : vec4<f32> = u_xlat12;
        let x_3642 : vec2<f32> = ((vec2<f32>(x_3639.x, x_3639.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3643 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3642.x, x_3642.y, x_3643.z, x_3643.w);
        let x_3645 : vec4<f32> = u_xlat12;
        let x_3649 : vec2<f32> = clamp(vec2<f32>(x_3645.x, x_3645.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3650 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3649.x, x_3649.y, x_3650.z, x_3650.w);
        let x_3652 : i32 = u_xlati85;
        let x_3654 : vec4<f32> = x_1623.x_AdditionalLightsCookieAtlasUVRects[x_3652];
        let x_3656 : vec4<f32> = u_xlat12;
        let x_3659 : i32 = u_xlati85;
        let x_3661 : vec4<f32> = x_1623.x_AdditionalLightsCookieAtlasUVRects[x_3659];
        let x_3663 : vec2<f32> = ((vec2<f32>(x_3654.x, x_3654.y) * vec2<f32>(x_3656.x, x_3656.y)) + vec2<f32>(x_3661.z, x_3661.w));
        let x_3664 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3663.x, x_3663.y, x_3664.z, x_3664.w);
      } else {
        let x_3667 : i32 = u_xlati62;
        u_xlatb62 = (x_3667 == 1i);
        let x_3669 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_3669);
        let x_3671 : i32 = u_xlati62;
        if ((x_3671 != 0i)) {
          let x_3675 : vec3<f32> = vs_TEXCOORD7;
          let x_3677 : i32 = u_xlati90;
          let x_3680 : i32 = u_xlati90;
          let x_3684 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3677 + 1i) / 4i)][((x_3680 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_3675.y, x_3675.y) * vec2<f32>(x_3684.x, x_3684.y));
          let x_3687 : i32 = u_xlati90;
          let x_3689 : i32 = u_xlati90;
          let x_3692 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[(x_3687 / 4i)][(x_3689 % 4i)];
          let x_3694 : vec3<f32> = vs_TEXCOORD7;
          let x_3697 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_3692.x, x_3692.y) * vec2<f32>(x_3694.x, x_3694.x)) + x_3697);
          let x_3699 : i32 = u_xlati90;
          let x_3702 : i32 = u_xlati90;
          let x_3706 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3699 + 2i) / 4i)][((x_3702 + 2i) % 4i)];
          let x_3708 : vec3<f32> = vs_TEXCOORD7;
          let x_3711 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_3706.x, x_3706.y) * vec2<f32>(x_3708.z, x_3708.z)) + x_3711);
          let x_3713 : vec2<f32> = u_xlat62;
          let x_3714 : i32 = u_xlati90;
          let x_3717 : i32 = u_xlati90;
          let x_3721 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3714 + 3i) / 4i)][((x_3717 + 3i) % 4i)];
          u_xlat62 = (x_3713 + vec2<f32>(x_3721.x, x_3721.y));
          let x_3724 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_3724 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3727 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_3727);
          let x_3729 : i32 = u_xlati85;
          let x_3731 : vec4<f32> = x_1623.x_AdditionalLightsCookieAtlasUVRects[x_3729];
          let x_3733 : vec2<f32> = u_xlat62;
          let x_3735 : i32 = u_xlati85;
          let x_3737 : vec4<f32> = x_1623.x_AdditionalLightsCookieAtlasUVRects[x_3735];
          let x_3739 : vec2<f32> = ((vec2<f32>(x_3731.x, x_3731.y) * x_3733) + vec2<f32>(x_3737.z, x_3737.w));
          let x_3740 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3739.x, x_3739.y, x_3740.z, x_3740.w);
        } else {
          let x_3743 : vec3<f32> = vs_TEXCOORD7;
          let x_3745 : i32 = u_xlati90;
          let x_3748 : i32 = u_xlati90;
          let x_3752 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3745 + 1i) / 4i)][((x_3748 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_3743.y, x_3743.y, x_3743.y, x_3743.y) * x_3752);
          let x_3754 : i32 = u_xlati90;
          let x_3756 : i32 = u_xlati90;
          let x_3759 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[(x_3754 / 4i)][(x_3756 % 4i)];
          let x_3760 : vec3<f32> = vs_TEXCOORD7;
          let x_3763 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3759 * vec4<f32>(x_3760.x, x_3760.x, x_3760.x, x_3760.x)) + x_3763);
          let x_3765 : i32 = u_xlati90;
          let x_3768 : i32 = u_xlati90;
          let x_3772 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3765 + 2i) / 4i)][((x_3768 + 2i) % 4i)];
          let x_3773 : vec3<f32> = vs_TEXCOORD7;
          let x_3776 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3772 * vec4<f32>(x_3773.z, x_3773.z, x_3773.z, x_3773.z)) + x_3776);
          let x_3778 : vec4<f32> = u_xlat13;
          let x_3779 : i32 = u_xlati90;
          let x_3782 : i32 = u_xlati90;
          let x_3786 : vec4<f32> = x_1623.x_AdditionalLightsWorldToLights[((x_3779 + 3i) / 4i)][((x_3782 + 3i) % 4i)];
          u_xlat13 = (x_3778 + x_3786);
          let x_3788 : vec4<f32> = u_xlat13;
          let x_3790 : vec4<f32> = u_xlat13;
          let x_3792 : vec3<f32> = (vec3<f32>(x_3788.x, x_3788.y, x_3788.z) / vec3<f32>(x_3790.w, x_3790.w, x_3790.w));
          let x_3793 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3792.x, x_3792.y, x_3792.z, x_3793.w);
          let x_3795 : vec4<f32> = u_xlat13;
          let x_3797 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_3795.x, x_3795.y, x_3795.z), vec3<f32>(x_3797.x, x_3797.y, x_3797.z));
          let x_3802 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_3802);
          let x_3805 : vec2<f32> = u_xlat62;
          let x_3807 : vec4<f32> = u_xlat13;
          let x_3809 : vec3<f32> = (vec3<f32>(x_3805.x, x_3805.x, x_3805.x) * vec3<f32>(x_3807.x, x_3807.y, x_3807.z));
          let x_3810 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3809.x, x_3809.y, x_3809.z, x_3810.w);
          let x_3812 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_3812.x, x_3812.y, x_3812.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3819 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_3819, 0.00000099999999747524f);
          let x_3824 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_3824);
          let x_3827 : vec2<f32> = u_xlat62;
          let x_3829 : vec4<f32> = u_xlat13;
          let x_3831 : vec3<f32> = (vec3<f32>(x_3827.x, x_3827.x, x_3827.x) * vec3<f32>(x_3829.z, x_3829.x, x_3829.y));
          let x_3832 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_3831.x, x_3831.y, x_3831.z, x_3832.w);
          let x_3835 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_3835);
          let x_3839 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_3839, 0.0f, 1.0f);
          let x_3843 : vec4<f32> = u_xlat14;
          let x_3845 : vec4<bool> = (vec4<f32>(x_3843.y, x_3843.z, x_3843.y, x_3843.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_3845.x, x_3845.y);
          let x_3849 : bool = u_xlatb66.x;
          if (x_3849) {
            let x_3854 : f32 = u_xlat14.x;
            x_3850 = x_3854;
          } else {
            let x_3857 : f32 = u_xlat14.x;
            x_3850 = -(x_3857);
          }
          let x_3859 : f32 = x_3850;
          u_xlat66.x = x_3859;
          let x_3862 : bool = u_xlatb66.y;
          if (x_3862) {
            let x_3867 : f32 = u_xlat14.x;
            x_3863 = x_3867;
          } else {
            let x_3870 : f32 = u_xlat14.x;
            x_3863 = -(x_3870);
          }
          let x_3872 : f32 = x_3863;
          u_xlat66.y = x_3872;
          let x_3874 : vec4<f32> = u_xlat13;
          let x_3876 : vec2<f32> = u_xlat62;
          let x_3879 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_3874.x, x_3874.y) * vec2<f32>(x_3876.x, x_3876.x)) + x_3879);
          let x_3881 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_3881 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3884 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_3884, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3888 : i32 = u_xlati85;
          let x_3890 : vec4<f32> = x_1623.x_AdditionalLightsCookieAtlasUVRects[x_3888];
          let x_3892 : vec2<f32> = u_xlat62;
          let x_3894 : i32 = u_xlati85;
          let x_3896 : vec4<f32> = x_1623.x_AdditionalLightsCookieAtlasUVRects[x_3894];
          let x_3898 : vec2<f32> = ((vec2<f32>(x_3890.x, x_3890.y) * x_3892) + vec2<f32>(x_3896.z, x_3896.w));
          let x_3899 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3898.x, x_3898.y, x_3899.z, x_3899.w);
        }
      }
      let x_3906 : vec4<f32> = u_xlat12;
      let x_3908 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3906.x, x_3906.y), 0.0f);
      u_xlat12 = x_3908;
      let x_3910 : bool = u_xlatb8.y;
      if (x_3910) {
        let x_3915 : f32 = u_xlat12.w;
        x_3911 = x_3915;
      } else {
        let x_3918 : f32 = u_xlat12.x;
        x_3911 = x_3918;
      }
      let x_3919 : f32 = x_3911;
      u_xlat62.x = x_3919;
      let x_3922 : bool = u_xlatb8.x;
      if (x_3922) {
        let x_3926 : vec4<f32> = u_xlat12;
        x_3923 = vec3<f32>(x_3926.x, x_3926.y, x_3926.z);
      } else {
        let x_3929 : vec2<f32> = u_xlat62;
        x_3923 = vec3<f32>(x_3929.x, x_3929.x, x_3929.x);
      }
      let x_3931 : vec3<f32> = x_3923;
      let x_3932 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_3931.x, x_3931.y, x_3931.z, x_3932.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_3938 : vec4<f32> = u_xlat12;
    let x_3940 : i32 = u_xlati85;
    let x_3942 : vec4<f32> = x_2107.x_AdditionalLightsColor[x_3940];
    let x_3944 : vec3<f32> = (vec3<f32>(x_3938.x, x_3938.y, x_3938.z) * vec3<f32>(x_3942.x, x_3942.y, x_3942.z));
    let x_3945 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
    let x_3947 : f32 = u_xlat86;
    let x_3948 : f32 = u_xlat88;
    u_xlat85 = (x_3947 * x_3948);
    let x_3950 : vec4<f32> = u_xlat2;
    let x_3952 : vec4<f32> = u_xlat11;
    u_xlat86 = dot(vec3<f32>(x_3950.x, x_3950.y, x_3950.z), vec3<f32>(x_3952.x, x_3952.y, x_3952.z));
    let x_3955 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3955, 0.0f, 1.0f);
    let x_3957 : f32 = u_xlat85;
    let x_3958 : f32 = u_xlat86;
    u_xlat85 = (x_3957 * x_3958);
    let x_3960 : f32 = u_xlat85;
    let x_3962 : vec4<f32> = u_xlat12;
    let x_3964 : vec3<f32> = (vec3<f32>(x_3960, x_3960, x_3960) * vec3<f32>(x_3962.x, x_3962.y, x_3962.z));
    let x_3965 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3964.x, x_3964.y, x_3964.z, x_3965.w);
    let x_3967 : vec4<f32> = u_xlat10;
    let x_3969 : f32 = u_xlat87;
    let x_3972 : vec4<f32> = u_xlat6;
    let x_3974 : vec3<f32> = ((vec3<f32>(x_3967.x, x_3967.y, x_3967.z) * vec3<f32>(x_3969, x_3969, x_3969)) + vec3<f32>(x_3972.x, x_3972.y, x_3972.z));
    let x_3975 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3974.x, x_3974.y, x_3974.z, x_3975.w);
    let x_3977 : vec4<f32> = u_xlat10;
    let x_3979 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3977.x, x_3977.y, x_3977.z), vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
    let x_3982 : f32 = u_xlat85;
    u_xlat85 = max(x_3982, 1.17549435e-38f);
    let x_3984 : f32 = u_xlat85;
    u_xlat85 = inverseSqrt(x_3984);
    let x_3986 : f32 = u_xlat85;
    let x_3988 : vec4<f32> = u_xlat10;
    let x_3990 : vec3<f32> = (vec3<f32>(x_3986, x_3986, x_3986) * vec3<f32>(x_3988.x, x_3988.y, x_3988.z));
    let x_3991 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3990.x, x_3990.y, x_3990.z, x_3991.w);
    let x_3993 : vec4<f32> = u_xlat2;
    let x_3995 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3993.x, x_3993.y, x_3993.z), vec3<f32>(x_3995.x, x_3995.y, x_3995.z));
    let x_3998 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3998, 0.0f, 1.0f);
    let x_4000 : vec4<f32> = u_xlat11;
    let x_4002 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_4000.x, x_4000.y, x_4000.z), vec3<f32>(x_4002.x, x_4002.y, x_4002.z));
    let x_4005 : f32 = u_xlat86;
    u_xlat86 = clamp(x_4005, 0.0f, 1.0f);
    let x_4007 : f32 = u_xlat85;
    let x_4008 : f32 = u_xlat85;
    u_xlat85 = (x_4007 * x_4008);
    let x_4010 : f32 = u_xlat85;
    let x_4012 : f32 = u_xlat1.x;
    u_xlat85 = ((x_4010 * x_4012) + 1.00001001358032226562f);
    let x_4015 : f32 = u_xlat86;
    let x_4016 : f32 = u_xlat86;
    u_xlat86 = (x_4015 * x_4016);
    let x_4018 : f32 = u_xlat85;
    let x_4019 : f32 = u_xlat85;
    u_xlat85 = (x_4018 * x_4019);
    let x_4021 : f32 = u_xlat86;
    u_xlat86 = max(x_4021, 0.10000000149011611938f);
    let x_4023 : f32 = u_xlat85;
    let x_4024 : f32 = u_xlat86;
    u_xlat85 = (x_4023 * x_4024);
    let x_4026 : f32 = u_xlat82;
    let x_4027 : f32 = u_xlat85;
    u_xlat85 = (x_4026 * x_4027);
    let x_4029 : f32 = u_xlat83;
    let x_4030 : f32 = u_xlat85;
    u_xlat85 = (x_4029 / x_4030);
    let x_4032 : vec4<f32> = u_xlat0;
    let x_4034 : f32 = u_xlat85;
    let x_4037 : vec4<f32> = u_xlat4;
    let x_4039 : vec3<f32> = ((vec3<f32>(x_4032.x, x_4032.y, x_4032.z) * vec3<f32>(x_4034, x_4034, x_4034)) + vec3<f32>(x_4037.x, x_4037.y, x_4037.z));
    let x_4040 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4039.x, x_4039.y, x_4039.z, x_4040.w);
    let x_4042 : vec4<f32> = u_xlat10;
    let x_4044 : vec4<f32> = u_xlat12;
    let x_4047 : vec4<f32> = u_xlat9;
    let x_4049 : vec3<f32> = ((vec3<f32>(x_4042.x, x_4042.y, x_4042.z) * vec3<f32>(x_4044.x, x_4044.y, x_4044.z)) + vec3<f32>(x_4047.x, x_4047.y, x_4047.z));
    let x_4050 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4049.x, x_4049.y, x_4049.z, x_4050.w);

    continuing {
      let x_4052 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4052 + bitcast<u32>(1i));
    }
  }
  let x_4054 : vec4<f32> = u_xlat7;
  let x_4056 : vec4<f32> = u_xlat5;
  let x_4059 : vec3<f32> = u_xlat3;
  let x_4060 : vec3<f32> = ((vec3<f32>(x_4054.x, x_4054.y, x_4054.z) * vec3<f32>(x_4056.x, x_4056.y, x_4056.z)) + x_4059);
  let x_4061 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4060.x, x_4060.y, x_4060.z, x_4061.w);
  let x_4063 : vec4<f32> = u_xlat9;
  let x_4065 : vec4<f32> = u_xlat0;
  let x_4067 : vec3<f32> = (vec3<f32>(x_4063.x, x_4063.y, x_4063.z) + vec3<f32>(x_4065.x, x_4065.y, x_4065.z));
  let x_4068 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4067.x, x_4067.y, x_4067.z, x_4068.w);
  let x_4070 : f32 = u_xlat28;
  let x_4071 : f32 = u_xlat28;
  u_xlat81 = (x_4070 * -(x_4071));
  let x_4074 : f32 = u_xlat81;
  u_xlat81 = exp2(x_4074);
  let x_4076 : vec4<f32> = u_xlat0;
  let x_4079 : vec4<f32> = x_29.unity_FogColor;
  let x_4082 : vec3<f32> = (vec3<f32>(x_4076.x, x_4076.y, x_4076.z) + -(vec3<f32>(x_4079.x, x_4079.y, x_4079.z)));
  let x_4083 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
  let x_4087 : f32 = u_xlat81;
  let x_4089 : vec4<f32> = u_xlat0;
  let x_4093 : vec4<f32> = x_29.unity_FogColor;
  let x_4095 : vec3<f32> = ((vec3<f32>(x_4087, x_4087, x_4087) * vec3<f32>(x_4089.x, x_4089.y, x_4089.z)) + vec3<f32>(x_4093.x, x_4093.y, x_4093.z));
  let x_4096 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


