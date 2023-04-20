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

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_211 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_357 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_1695 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2134 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_130 : vec3<f32>;
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
  var x_1779 : f32;
  var x_1790 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2273 : f32;
  var x_2284 : f32;
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
  var x_3903 : f32;
  var x_3916 : f32;
  var x_3974 : f32;
  var x_3985 : vec3<f32>;
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
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat53;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_117 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_117;
  let x_120 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_120;
  let x_125 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_125;
  let x_128 : bool = u_xlatb27;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec3<f32> = u_xlat3;
    x_130 = x_136;
  }
  let x_137 : vec3<f32> = x_130;
  u_xlat27 = x_137;
  let x_139 : vec3<f32> = vs_TEXCOORD3;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_139, x_140);
  let x_144 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_144);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  let x_150 : vec3<f32> = (vec3<f32>(x_147.x, x_147.x, x_147.x) * x_149);
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_155 : f32 = vs_TEXCOORD7.y;
  let x_157 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_155 * x_157);
  let x_161 : f32 = x_29.unity_MatrixV[0i].z;
  let x_163 : f32 = vs_TEXCOORD7.x;
  let x_166 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_161 * x_163) + x_166);
  let x_170 : f32 = x_29.unity_MatrixV[2i].z;
  let x_172 : f32 = vs_TEXCOORD7.z;
  let x_175 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_170 * x_172) + x_175);
  let x_179 : f32 = u_xlat3.x;
  let x_182 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_179 + x_182);
  let x_186 : f32 = u_xlat3.x;
  let x_190 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_186) + -(x_190));
  let x_195 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_195, 0.0f);
  let x_199 : f32 = u_xlat3.x;
  let x_202 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_199 * x_202);
  u_xlat2.w = 1.0f;
  let x_215 : vec4<f32> = x_211.unity_SHAr;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_215, x_216);
  let x_221 : vec4<f32> = x_211.unity_SHAg;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_221, x_222);
  let x_227 : vec4<f32> = x_211.unity_SHAb;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_227, x_228);
  let x_232 : vec4<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_232.y, x_232.z, x_232.z, x_232.x) * vec4<f32>(x_234.x, x_234.y, x_234.z, x_234.z));
  let x_240 : vec4<f32> = x_211.unity_SHBr;
  let x_241 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_240, x_241);
  let x_246 : vec4<f32> = x_211.unity_SHBg;
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_246, x_247);
  let x_252 : vec4<f32> = x_211.unity_SHBb;
  let x_253 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_252, x_253);
  let x_258 : f32 = u_xlat2.y;
  let x_260 : f32 = u_xlat2.y;
  u_xlat80 = (x_258 * x_260);
  let x_263 : f32 = u_xlat2.x;
  let x_265 : f32 = u_xlat2.x;
  let x_267 : f32 = u_xlat80;
  u_xlat80 = ((x_263 * x_265) + -(x_267));
  let x_273 : vec4<f32> = x_211.unity_SHC;
  let x_275 : f32 = u_xlat80;
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat29 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275, x_275, x_275)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec3<f32> = u_xlat29;
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat29 = (x_281 + x_282);
  let x_284 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_284, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_287 : f32 = u_xlat1;
  u_xlat80 = ((-(x_287) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_292 : f32 = u_xlat80;
  u_xlat4.x = (-(x_292) + 1.0f);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : f32 = u_xlat80;
  u_xlat30 = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299, x_299, x_299));
  let x_302 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : f32 = u_xlat1;
  let x_311 : vec4<f32> = u_xlat0;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_320) + 1.0f);
  let x_323 : f32 = u_xlat1;
  let x_324 : f32 = u_xlat1;
  u_xlat80 = (x_323 * x_324);
  let x_326 : f32 = u_xlat80;
  u_xlat80 = max(x_326, 0.0078125f);
  let x_329 : f32 = u_xlat80;
  let x_330 : f32 = u_xlat80;
  u_xlat5.x = (x_329 * x_330);
  let x_335 : f32 = u_xlat0.w;
  let x_337 : f32 = u_xlat4.x;
  u_xlat78 = (x_335 + x_337);
  let x_339 : f32 = u_xlat78;
  u_xlat78 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat80;
  u_xlat4.x = ((x_341 * 4.0f) + 2.0f);
  let x_360 : f32 = x_357.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_360);
  let x_364 : bool = u_xlatb31.x;
  if (x_364) {
    let x_368 : f32 = x_357.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_368 == 1.0f);
    let x_372 : bool = u_xlatb31.x;
    if (x_372) {
      let x_376 : vec4<f32> = vs_TEXCOORD8;
      let x_379 : vec4<f32> = x_357.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_376.x, x_376.y, x_376.x, x_376.y) + x_379);
      let x_382 : vec4<f32> = u_xlat6;
      let x_383 : vec2<f32> = vec2<f32>(x_382.x, x_382.y);
      let x_385 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_383.x, x_383.y, x_385);
      let x_398 : vec3<f32> = txVec0;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_398.xy, x_398.z);
      u_xlat7.x = x_400;
      let x_403 : vec4<f32> = u_xlat6;
      let x_404 : vec2<f32> = vec2<f32>(x_403.z, x_403.w);
      let x_406 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_404.x, x_404.y, x_406);
      let x_413 : vec3<f32> = txVec1;
      let x_415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_413.xy, x_413.z);
      u_xlat7.y = x_415;
      let x_417 : vec4<f32> = vs_TEXCOORD8;
      let x_420 : vec4<f32> = x_357.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_417.x, x_417.y, x_417.x, x_417.y) + x_420);
      let x_423 : vec4<f32> = u_xlat6;
      let x_424 : vec2<f32> = vec2<f32>(x_423.x, x_423.y);
      let x_426 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_424.x, x_424.y, x_426);
      let x_433 : vec3<f32> = txVec2;
      let x_435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_433.xy, x_433.z);
      u_xlat7.z = x_435;
      let x_438 : vec4<f32> = u_xlat6;
      let x_439 : vec2<f32> = vec2<f32>(x_438.z, x_438.w);
      let x_441 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_439.x, x_439.y, x_441);
      let x_448 : vec3<f32> = txVec3;
      let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_448.xy, x_448.z);
      u_xlat7.w = x_450;
      let x_453 : vec4<f32> = u_xlat7;
      u_xlat31 = dot(x_453, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_460 : f32 = x_357.x_MainLightShadowParams.y;
      u_xlatb57 = (x_460 == 2.0f);
      let x_462 : bool = u_xlatb57;
      if (x_462) {
        let x_467 : vec4<f32> = vs_TEXCOORD8;
        let x_470 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_470.z, x_470.w)) + vec2<f32>(0.5f, 0.5f));
        let x_476 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_476);
        let x_478 : vec4<f32> = vs_TEXCOORD8;
        let x_481 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_484 : vec2<f32> = u_xlat57;
        let x_486 : vec2<f32> = ((vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_481.z, x_481.w)) + -(x_484));
        let x_487 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_489 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_489.x, x_489.x, x_489.y, x_489.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_494 : vec4<f32> = u_xlat7;
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_494.x, x_494.x, x_494.z, x_494.z) * vec4<f32>(x_496.x, x_496.x, x_496.z, x_496.z));
        let x_500 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_500.y, x_500.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_505 : vec4<f32> = u_xlat8;
        let x_508 : vec4<f32> = u_xlat6;
        let x_511 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_508.x, x_508.y)));
        let x_512 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_511.x, x_512.y, x_511.y, x_512.w);
        let x_514 : vec4<f32> = u_xlat6;
        let x_518 : vec2<f32> = (-(vec2<f32>(x_514.x, x_514.y)) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_522 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_522.x, x_522.y), vec2<f32>(0.0f, 0.0f));
        let x_526 : vec2<f32> = u_xlat60;
        let x_528 : vec2<f32> = u_xlat60;
        let x_530 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_526) * x_528) + vec2<f32>(x_530.x, x_530.y));
        let x_533 : vec4<f32> = u_xlat6;
        let x_535 : vec2<f32> = max(vec2<f32>(x_533.x, x_533.y), vec2<f32>(0.0f, 0.0f));
        let x_536 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat6;
        let x_541 : vec4<f32> = u_xlat6;
        let x_544 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = ((-(vec2<f32>(x_538.x, x_538.y)) * vec2<f32>(x_541.x, x_541.y)) + vec2<f32>(x_544.y, x_544.w));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_549 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_549 + vec2<f32>(1.0f, 1.0f));
        let x_551 : vec4<f32> = u_xlat6;
        let x_553 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) + vec2<f32>(1.0f, 1.0f));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_557 : vec4<f32> = u_xlat7;
        let x_561 : vec2<f32> = (vec2<f32>(x_557.x, x_557.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_565 : vec4<f32> = u_xlat8;
        let x_567 : vec2<f32> = (vec2<f32>(x_565.x, x_565.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_568 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec2<f32> = u_xlat60;
        let x_571 : vec2<f32> = (x_570 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_575 : vec4<f32> = u_xlat6;
        let x_577 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat7;
        let x_582 : vec2<f32> = (vec2<f32>(x_580.y, x_580.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_586 : f32 = u_xlat8.x;
        u_xlat9.z = x_586;
        let x_589 : f32 = u_xlat6.x;
        u_xlat9.w = x_589;
        let x_592 : f32 = u_xlat11.x;
        u_xlat10.z = x_592;
        let x_595 : f32 = u_xlat58.x;
        u_xlat10.w = x_595;
        let x_597 : vec4<f32> = u_xlat9;
        let x_599 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_597.z, x_597.w, x_597.x, x_597.z) + vec4<f32>(x_599.z, x_599.w, x_599.x, x_599.z));
        let x_603 : f32 = u_xlat9.y;
        u_xlat8.z = x_603;
        let x_606 : f32 = u_xlat6.y;
        u_xlat8.w = x_606;
        let x_609 : f32 = u_xlat10.y;
        u_xlat11.z = x_609;
        let x_612 : f32 = u_xlat58.y;
        u_xlat11.w = x_612;
        let x_614 : vec4<f32> = u_xlat8;
        let x_616 : vec4<f32> = u_xlat11;
        let x_618 : vec3<f32> = (vec3<f32>(x_614.z, x_614.y, x_614.w) + vec3<f32>(x_616.z, x_616.y, x_616.w));
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
        let x_621 : vec4<f32> = u_xlat10;
        let x_623 : vec4<f32> = u_xlat7;
        let x_625 : vec3<f32> = (vec3<f32>(x_621.x, x_621.z, x_621.w) / vec3<f32>(x_623.z, x_623.w, x_623.y));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat8;
        let x_634 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
        let x_637 : vec4<f32> = u_xlat11;
        let x_639 : vec4<f32> = u_xlat6;
        let x_641 : vec3<f32> = (vec3<f32>(x_637.z, x_637.y, x_637.w) / vec3<f32>(x_639.x, x_639.y, x_639.z));
        let x_642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_646 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_652 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_654 : vec3<f32> = (vec3<f32>(x_649.y, x_649.x, x_649.z) * vec3<f32>(x_652.x, x_652.x, x_652.x));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat9;
        let x_660 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_662 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_660.y, x_660.y, x_660.y));
        let x_663 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
        let x_666 : f32 = u_xlat9.x;
        u_xlat8.w = x_666;
        let x_668 : vec2<f32> = u_xlat57;
        let x_671 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y) * vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y)) + vec4<f32>(x_674.y, x_674.w, x_674.x, x_674.w));
        let x_677 : vec2<f32> = u_xlat57;
        let x_679 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_682 : vec4<f32> = u_xlat8;
        let x_684 : vec2<f32> = ((x_677 * vec2<f32>(x_679.x, x_679.y)) + vec2<f32>(x_682.z, x_682.w));
        let x_685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_688 : f32 = u_xlat8.y;
        u_xlat9.w = x_688;
        let x_690 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = vec2<f32>(x_690.y, x_690.z);
        let x_692 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_691.x, x_692.z, x_691.y);
        let x_695 : vec2<f32> = u_xlat57;
        let x_698 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_695.x, x_695.y, x_695.x, x_695.y) * vec4<f32>(x_698.x, x_698.y, x_698.x, x_698.y)) + vec4<f32>(x_701.x, x_701.y, x_701.z, x_701.y));
        let x_704 : vec2<f32> = u_xlat57;
        let x_707 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) * vec4<f32>(x_707.x, x_707.y, x_707.x, x_707.y)) + vec4<f32>(x_710.w, x_710.y, x_710.w, x_710.z));
        let x_713 : vec2<f32> = u_xlat57;
        let x_716 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.x, x_719.w, x_719.z, x_719.w));
        let x_723 : vec4<f32> = u_xlat6;
        let x_725 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_723.x, x_723.x, x_723.x, x_723.y) * vec4<f32>(x_725.z, x_725.w, x_725.y, x_725.z));
        let x_729 : vec4<f32> = u_xlat6;
        let x_731 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_729.y, x_729.y, x_729.z, x_729.z) * x_731);
        let x_734 : f32 = u_xlat6.z;
        let x_736 : f32 = u_xlat7.y;
        u_xlat57.x = (x_734 * x_736);
        let x_740 : vec4<f32> = u_xlat10;
        let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
        let x_743 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_751 : vec3<f32> = txVec4;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat83 = x_753;
        let x_755 : vec4<f32> = u_xlat10;
        let x_756 : vec2<f32> = vec2<f32>(x_755.z, x_755.w);
        let x_758 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec5;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_765.xy, x_765.z);
        u_xlat6.x = x_767;
        let x_770 : f32 = u_xlat6.x;
        let x_772 : f32 = u_xlat13.y;
        u_xlat6.x = (x_770 * x_772);
        let x_776 : f32 = u_xlat13.x;
        let x_777 : f32 = u_xlat83;
        let x_780 : f32 = u_xlat6.x;
        u_xlat83 = ((x_776 * x_777) + x_780);
        let x_783 : vec4<f32> = u_xlat11;
        let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
        let x_786 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_793 : vec3<f32> = txVec6;
        let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_793.xy, x_793.z);
        u_xlat6.x = x_795;
        let x_798 : f32 = u_xlat13.z;
        let x_800 : f32 = u_xlat6.x;
        let x_802 : f32 = u_xlat83;
        u_xlat83 = ((x_798 * x_800) + x_802);
        let x_805 : vec4<f32> = u_xlat9;
        let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
        let x_808 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec7;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_815.xy, x_815.z);
        u_xlat6.x = x_817;
        let x_820 : f32 = u_xlat13.w;
        let x_822 : f32 = u_xlat6.x;
        let x_824 : f32 = u_xlat83;
        u_xlat83 = ((x_820 * x_822) + x_824);
        let x_827 : vec4<f32> = u_xlat12;
        let x_828 : vec2<f32> = vec2<f32>(x_827.x, x_827.y);
        let x_830 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec8;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat6.x = x_839;
        let x_842 : f32 = u_xlat14.x;
        let x_844 : f32 = u_xlat6.x;
        let x_846 : f32 = u_xlat83;
        u_xlat83 = ((x_842 * x_844) + x_846);
        let x_849 : vec4<f32> = u_xlat12;
        let x_850 : vec2<f32> = vec2<f32>(x_849.z, x_849.w);
        let x_852 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_850.x, x_850.y, x_852);
        let x_859 : vec3<f32> = txVec9;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_859.xy, x_859.z);
        u_xlat6.x = x_861;
        let x_864 : f32 = u_xlat14.y;
        let x_866 : f32 = u_xlat6.x;
        let x_868 : f32 = u_xlat83;
        u_xlat83 = ((x_864 * x_866) + x_868);
        let x_871 : vec4<f32> = u_xlat9;
        let x_872 : vec2<f32> = vec2<f32>(x_871.z, x_871.w);
        let x_874 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_881 : vec3<f32> = txVec10;
        let x_883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_881.xy, x_881.z);
        u_xlat6.x = x_883;
        let x_886 : f32 = u_xlat14.z;
        let x_888 : f32 = u_xlat6.x;
        let x_890 : f32 = u_xlat83;
        u_xlat83 = ((x_886 * x_888) + x_890);
        let x_893 : vec4<f32> = u_xlat8;
        let x_894 : vec2<f32> = vec2<f32>(x_893.x, x_893.y);
        let x_896 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_894.x, x_894.y, x_896);
        let x_903 : vec3<f32> = txVec11;
        let x_905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_903.xy, x_903.z);
        u_xlat6.x = x_905;
        let x_908 : f32 = u_xlat14.w;
        let x_910 : f32 = u_xlat6.x;
        let x_912 : f32 = u_xlat83;
        u_xlat83 = ((x_908 * x_910) + x_912);
        let x_915 : vec4<f32> = u_xlat8;
        let x_916 : vec2<f32> = vec2<f32>(x_915.z, x_915.w);
        let x_918 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_916.x, x_916.y, x_918);
        let x_925 : vec3<f32> = txVec12;
        let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_925.xy, x_925.z);
        u_xlat6.x = x_927;
        let x_930 : f32 = u_xlat57.x;
        let x_932 : f32 = u_xlat6.x;
        let x_934 : f32 = u_xlat83;
        u_xlat31 = ((x_930 * x_932) + x_934);
      } else {
        let x_937 : vec4<f32> = vs_TEXCOORD8;
        let x_940 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_937.x, x_937.y) * vec2<f32>(x_940.z, x_940.w)) + vec2<f32>(0.5f, 0.5f));
        let x_944 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_944);
        let x_946 : vec4<f32> = vs_TEXCOORD8;
        let x_949 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_952 : vec2<f32> = u_xlat57;
        let x_954 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_949.z, x_949.w)) + -(x_952));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_957.x, x_957.x, x_957.y, x_957.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_960 : vec4<f32> = u_xlat7;
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_960.x, x_960.x, x_960.z, x_960.z) * vec4<f32>(x_962.x, x_962.x, x_962.z, x_962.z));
        let x_965 : vec4<f32> = u_xlat8;
        let x_969 : vec2<f32> = (vec2<f32>(x_965.y, x_965.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_969.x, x_970.z, x_969.y);
        let x_972 : vec4<f32> = u_xlat8;
        let x_975 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_972.x, x_972.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_975.x, x_975.y)));
        let x_979 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = (-(vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(1.0f, 1.0f));
        let x_983 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_985 : vec4<f32> = u_xlat6;
        let x_987 : vec2<f32> = min(vec2<f32>(x_985.x, x_985.y), vec2<f32>(0.0f, 0.0f));
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat8;
        let x_993 : vec4<f32> = u_xlat8;
        let x_996 : vec4<f32> = u_xlat7;
        let x_998 : vec2<f32> = ((-(vec2<f32>(x_990.x, x_990.y)) * vec2<f32>(x_993.x, x_993.y)) + vec2<f32>(x_996.x, x_996.z));
        let x_999 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_998.x, x_999.y, x_998.y, x_999.w);
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1003 : vec2<f32> = max(vec2<f32>(x_1001.x, x_1001.y), vec2<f32>(0.0f, 0.0f));
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat8;
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1014 : vec2<f32> = ((-(vec2<f32>(x_1006.x, x_1006.y)) * vec2<f32>(x_1009.x, x_1009.y)) + vec2<f32>(x_1012.y, x_1012.w));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1014.x, x_1015.z, x_1014.y);
        let x_1017 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1017 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1021 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1021 * 0.08163200318813323975f);
        let x_1025 : vec2<f32> = u_xlat58;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1025.y, x_1025.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1029 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1031.x, x_1031.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1035 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1035 * 0.08163200318813323975f);
        let x_1039 : f32 = u_xlat10.y;
        u_xlat8.x = x_1039;
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1048.x, x_1049.z, x_1048.y);
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1056.y, x_1055.y, x_1056.w);
        let x_1059 : f32 = u_xlat58.x;
        u_xlat7.y = x_1059;
        let x_1062 : f32 = u_xlat9.y;
        u_xlat7.w = x_1062;
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1064 + x_1065);
        let x_1067 : vec4<f32> = u_xlat6;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1067.y, x_1067.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1071.x, x_1070.x, x_1071.z, x_1070.y);
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1073.y, x_1073.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1076.x, x_1077.y, x_1076.y, x_1077.w);
        let x_1080 : f32 = u_xlat58.y;
        u_xlat9.y = x_1080;
        let x_1082 : vec4<f32> = u_xlat9;
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1082 + x_1083);
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1085 / x_1086);
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1088 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1095 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1094 / x_1095);
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1097 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1102 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1099.w, x_1099.x, x_1099.y, x_1099.z) * vec4<f32>(x_1102.x, x_1102.x, x_1102.x, x_1102.x));
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1108 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1105.x, x_1105.w, x_1105.y, x_1105.z) * vec4<f32>(x_1108.y, x_1108.y, x_1108.y, x_1108.y));
        let x_1111 : vec4<f32> = u_xlat7;
        let x_1112 : vec3<f32> = vec3<f32>(x_1111.y, x_1111.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1112.x, x_1113.y, x_1112.y, x_1112.z);
        let x_1116 : f32 = u_xlat9.x;
        u_xlat10.y = x_1116;
        let x_1118 : vec2<f32> = u_xlat57;
        let x_1121 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.y));
        let x_1127 : vec2<f32> = u_xlat57;
        let x_1129 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat10;
        let x_1134 : vec2<f32> = ((x_1127 * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.w, x_1132.y));
        let x_1135 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1138 : f32 = u_xlat10.y;
        u_xlat7.y = x_1138;
        let x_1141 : f32 = u_xlat9.z;
        u_xlat10.y = x_1141;
        let x_1143 : vec2<f32> = u_xlat57;
        let x_1146 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y) * vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y)) + vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1149.y));
        let x_1153 : vec2<f32> = u_xlat57;
        let x_1155 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1153 * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.w, x_1158.y));
        let x_1162 : f32 = u_xlat10.y;
        u_xlat7.z = x_1162;
        let x_1164 : vec2<f32> = u_xlat57;
        let x_1167 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y) * vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y)) + vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.z));
        let x_1174 : f32 = u_xlat9.w;
        u_xlat10.y = x_1174;
        let x_1177 : vec2<f32> = u_xlat57;
        let x_1180 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) * vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y)) + vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1183.y));
        let x_1187 : vec2<f32> = u_xlat57;
        let x_1189 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1187 * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.w, x_1192.y));
        let x_1196 : f32 = u_xlat10.y;
        u_xlat7.w = x_1196;
        let x_1199 : vec2<f32> = u_xlat57;
        let x_1201 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1206 : vec2<f32> = ((x_1199 * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.x, x_1204.w));
        let x_1207 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec3<f32> = vec3<f32>(x_1209.x, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1210.x, x_1211.y, x_1210.y, x_1210.z);
        let x_1213 : vec2<f32> = u_xlat57;
        let x_1216 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y) * vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y)) + vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1219.y));
        let x_1223 : vec2<f32> = u_xlat57;
        let x_1225 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1223 * vec2<f32>(x_1225.x, x_1225.y)) + vec2<f32>(x_1228.w, x_1228.y));
        let x_1232 : f32 = u_xlat7.x;
        u_xlat9.x = x_1232;
        let x_1234 : vec2<f32> = u_xlat57;
        let x_1236 : vec4<f32> = x_357.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1234 * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.x, x_1239.y));
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1243.x, x_1243.x, x_1243.x, x_1243.x) * x_1245);
        let x_1248 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1248.y, x_1248.y, x_1248.y, x_1248.y) * x_1250);
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1253.z, x_1253.z, x_1253.z, x_1253.z) * x_1255);
        let x_1257 : vec4<f32> = u_xlat6;
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1257.w, x_1257.w, x_1257.w, x_1257.w) * x_1259);
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec13;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat7.x = x_1274;
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.z, x_1277.w);
        let x_1280 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1288 : vec3<f32> = txVec14;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat85 = x_1290;
        let x_1291 : f32 = u_xlat85;
        let x_1293 : f32 = u_xlat17.y;
        u_xlat85 = (x_1291 * x_1293);
        let x_1296 : f32 = u_xlat17.x;
        let x_1298 : f32 = u_xlat7.x;
        let x_1300 : f32 = u_xlat85;
        u_xlat7.x = ((x_1296 * x_1298) + x_1300);
        let x_1304 : vec4<f32> = u_xlat12;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec15;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat85 = x_1316;
        let x_1318 : f32 = u_xlat17.z;
        let x_1319 : f32 = u_xlat85;
        let x_1322 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1318 * x_1319) + x_1322);
        let x_1326 : vec4<f32> = u_xlat14;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.x, x_1326.y);
        let x_1329 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1336 : vec3<f32> = txVec16;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1336.xy, x_1336.z);
        u_xlat85 = x_1338;
        let x_1340 : f32 = u_xlat17.w;
        let x_1341 : f32 = u_xlat85;
        let x_1344 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1340 * x_1341) + x_1344);
        let x_1348 : vec4<f32> = u_xlat13;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.x, x_1348.y);
        let x_1351 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec17;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
        u_xlat85 = x_1360;
        let x_1362 : f32 = u_xlat18.x;
        let x_1363 : f32 = u_xlat85;
        let x_1366 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1362 * x_1363) + x_1366);
        let x_1370 : vec4<f32> = u_xlat13;
        let x_1371 : vec2<f32> = vec2<f32>(x_1370.z, x_1370.w);
        let x_1373 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec18;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat85 = x_1382;
        let x_1384 : f32 = u_xlat18.y;
        let x_1385 : f32 = u_xlat85;
        let x_1388 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1384 * x_1385) + x_1388);
        let x_1392 : vec2<f32> = u_xlat64;
        let x_1394 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec19;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat85 = x_1403;
        let x_1405 : f32 = u_xlat18.z;
        let x_1406 : f32 = u_xlat85;
        let x_1409 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1405 * x_1406) + x_1409);
        let x_1413 : vec4<f32> = u_xlat14;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.z, x_1413.w);
        let x_1416 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec20;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat85 = x_1425;
        let x_1427 : f32 = u_xlat18.w;
        let x_1428 : f32 = u_xlat85;
        let x_1431 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1427 * x_1428) + x_1431);
        let x_1435 : vec4<f32> = u_xlat15;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.x, x_1435.y);
        let x_1438 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec21;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1445.xy, x_1445.z);
        u_xlat85 = x_1447;
        let x_1449 : f32 = u_xlat19.x;
        let x_1450 : f32 = u_xlat85;
        let x_1453 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1449 * x_1450) + x_1453);
        let x_1457 : vec4<f32> = u_xlat15;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec22;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat85 = x_1469;
        let x_1471 : f32 = u_xlat19.y;
        let x_1472 : f32 = u_xlat85;
        let x_1475 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1471 * x_1472) + x_1475);
        let x_1479 : vec2<f32> = u_xlat33;
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec23;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat33.x = x_1490;
        let x_1493 : f32 = u_xlat19.z;
        let x_1495 : f32 = u_xlat33.x;
        let x_1498 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1493 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat16;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec24;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat33.x = x_1514;
        let x_1517 : f32 = u_xlat19.w;
        let x_1519 : f32 = u_xlat33.x;
        let x_1522 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1517 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec25;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat33.x = x_1538;
        let x_1541 : f32 = u_xlat6.x;
        let x_1543 : f32 = u_xlat33.x;
        let x_1546 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1541 * x_1543) + x_1546);
        let x_1550 : vec4<f32> = u_xlat10;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec26;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat7.x = x_1562;
        let x_1565 : f32 = u_xlat6.y;
        let x_1567 : f32 = u_xlat7.x;
        let x_1570 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1565 * x_1567) + x_1570);
        let x_1574 : vec2<f32> = u_xlat61;
        let x_1576 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1584 : vec3<f32> = txVec27;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat32 = x_1586;
        let x_1588 : f32 = u_xlat6.z;
        let x_1589 : f32 = u_xlat32;
        let x_1592 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1588 * x_1589) + x_1592);
        let x_1596 : vec2<f32> = u_xlat57;
        let x_1598 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec28;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
        u_xlat57.x = x_1607;
        let x_1610 : f32 = u_xlat6.w;
        let x_1612 : f32 = u_xlat57.x;
        let x_1615 : f32 = u_xlat6.x;
        u_xlat31 = ((x_1610 * x_1612) + x_1615);
      }
    }
  } else {
    let x_1619 : vec4<f32> = vs_TEXCOORD8;
    let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
    let x_1622 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
    let x_1629 : vec3<f32> = txVec29;
    let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
    u_xlat31 = x_1631;
  }
  let x_1633 : f32 = x_357.x_MainLightShadowParams.x;
  u_xlat57.x = (-(x_1633) + 1.0f);
  let x_1637 : f32 = u_xlat31;
  let x_1639 : f32 = x_357.x_MainLightShadowParams.x;
  let x_1642 : f32 = u_xlat57.x;
  u_xlat31 = ((x_1637 * x_1639) + x_1642);
  let x_1645 : f32 = vs_TEXCOORD8.z;
  u_xlatb57 = (0.0f >= x_1645);
  let x_1649 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (x_1649 >= 1.0f);
  let x_1651 : bool = u_xlatb83;
  let x_1652 : bool = u_xlatb57;
  u_xlatb57 = (x_1651 | x_1652);
  let x_1654 : bool = u_xlatb57;
  let x_1655 : f32 = u_xlat31;
  u_xlat31 = select(x_1655, 1.0f, x_1654);
  let x_1657 : vec3<f32> = vs_TEXCOORD7;
  let x_1659 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1661 : vec3<f32> = (x_1657 + -(x_1659));
  let x_1662 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : vec4<f32> = u_xlat6;
  let x_1666 : vec4<f32> = u_xlat6;
  u_xlat57.x = dot(vec3<f32>(x_1664.x, x_1664.y, x_1664.z), vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1671 : f32 = u_xlat57.x;
  let x_1673 : f32 = x_357.x_MainLightShadowParams.z;
  let x_1676 : f32 = x_357.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1671 * x_1673) + x_1676);
  let x_1678 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1678, 0.0f, 1.0f);
  let x_1680 : f32 = u_xlat31;
  u_xlat6.x = (-(x_1680) + 1.0f);
  let x_1684 : f32 = u_xlat83;
  let x_1686 : f32 = u_xlat6.x;
  let x_1688 : f32 = u_xlat31;
  u_xlat31 = ((x_1684 * x_1686) + x_1688);
  let x_1697 : f32 = x_1695.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1697 == -1.0f));
  let x_1700 : bool = u_xlatb83;
  if (x_1700) {
    let x_1703 : vec3<f32> = vs_TEXCOORD7;
    let x_1706 : vec4<f32> = x_1695.x_MainLightWorldToLight[1i];
    let x_1708 : vec2<f32> = (vec2<f32>(x_1703.y, x_1703.y) * vec2<f32>(x_1706.x, x_1706.y));
    let x_1709 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
    let x_1712 : vec4<f32> = x_1695.x_MainLightWorldToLight[0i];
    let x_1714 : vec3<f32> = vs_TEXCOORD7;
    let x_1717 : vec4<f32> = u_xlat6;
    let x_1719 : vec2<f32> = ((vec2<f32>(x_1712.x, x_1712.y) * vec2<f32>(x_1714.x, x_1714.x)) + vec2<f32>(x_1717.x, x_1717.y));
    let x_1720 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1719.x, x_1719.y, x_1720.z, x_1720.w);
    let x_1723 : vec4<f32> = x_1695.x_MainLightWorldToLight[2i];
    let x_1725 : vec3<f32> = vs_TEXCOORD7;
    let x_1728 : vec4<f32> = u_xlat6;
    let x_1730 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1725.z, x_1725.z)) + vec2<f32>(x_1728.x, x_1728.y));
    let x_1731 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1730.x, x_1730.y, x_1731.z, x_1731.w);
    let x_1733 : vec4<f32> = u_xlat6;
    let x_1736 : vec4<f32> = x_1695.x_MainLightWorldToLight[3i];
    let x_1738 : vec2<f32> = (vec2<f32>(x_1733.x, x_1733.y) + vec2<f32>(x_1736.x, x_1736.y));
    let x_1739 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1738.x, x_1738.y, x_1739.z, x_1739.w);
    let x_1741 : vec4<f32> = u_xlat6;
    let x_1744 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1745 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1744.x, x_1744.y, x_1745.z, x_1745.w);
    let x_1752 : vec4<f32> = u_xlat6;
    let x_1755 : f32 = x_29.x_GlobalMipBias.x;
    let x_1756 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1752.x, x_1752.y), x_1755);
    u_xlat6 = x_1756;
    let x_1759 : f32 = x_1695.x_MainLightCookieTextureFormat;
    let x_1761 : f32 = x_1695.x_MainLightCookieTextureFormat;
    let x_1763 : f32 = x_1695.x_MainLightCookieTextureFormat;
    let x_1765 : f32 = x_1695.x_MainLightCookieTextureFormat;
    let x_1766 : vec4<f32> = vec4<f32>(x_1759, x_1761, x_1763, x_1765);
    let x_1774 : vec4<bool> = (vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1766.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1774.x, x_1774.y);
    let x_1777 : bool = u_xlatb7.y;
    if (x_1777) {
      let x_1783 : f32 = u_xlat6.w;
      x_1779 = x_1783;
    } else {
      let x_1786 : f32 = u_xlat6.x;
      x_1779 = x_1786;
    }
    let x_1787 : f32 = x_1779;
    u_xlat83 = x_1787;
    let x_1789 : bool = u_xlatb7.x;
    if (x_1789) {
      let x_1793 : vec4<f32> = u_xlat6;
      x_1790 = vec3<f32>(x_1793.x, x_1793.y, x_1793.z);
    } else {
      let x_1796 : f32 = u_xlat83;
      x_1790 = vec3<f32>(x_1796, x_1796, x_1796);
    }
    let x_1798 : vec3<f32> = x_1790;
    let x_1799 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1805 : vec4<f32> = u_xlat6;
  let x_1808 : vec4<f32> = x_29.x_MainLightColor;
  let x_1810 : vec3<f32> = (vec3<f32>(x_1805.x, x_1805.y, x_1805.z) * vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
  let x_1811 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
  let x_1813 : vec3<f32> = u_xlat27;
  let x_1815 : vec4<f32> = u_xlat2;
  u_xlat83 = dot(-(x_1813), vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : f32 = u_xlat83;
  let x_1819 : f32 = u_xlat83;
  u_xlat83 = (x_1818 + x_1819);
  let x_1821 : vec4<f32> = u_xlat2;
  let x_1823 : f32 = u_xlat83;
  let x_1827 : vec3<f32> = u_xlat27;
  let x_1829 : vec3<f32> = ((vec3<f32>(x_1821.x, x_1821.y, x_1821.z) * -(vec3<f32>(x_1823, x_1823, x_1823))) + -(x_1827));
  let x_1830 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1832 : vec4<f32> = u_xlat2;
  let x_1834 : vec3<f32> = u_xlat27;
  u_xlat83 = dot(vec3<f32>(x_1832.x, x_1832.y, x_1832.z), x_1834);
  let x_1836 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1836, 0.0f, 1.0f);
  let x_1838 : f32 = u_xlat83;
  u_xlat83 = (-(x_1838) + 1.0f);
  let x_1841 : f32 = u_xlat83;
  let x_1842 : f32 = u_xlat83;
  u_xlat83 = (x_1841 * x_1842);
  let x_1844 : f32 = u_xlat83;
  let x_1845 : f32 = u_xlat83;
  u_xlat83 = (x_1844 * x_1845);
  let x_1848 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1848) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1854 : f32 = u_xlat1;
  let x_1855 : f32 = u_xlat84;
  u_xlat1 = (x_1854 * x_1855);
  let x_1857 : f32 = u_xlat1;
  u_xlat1 = (x_1857 * 6.0f);
  let x_1868 : vec4<f32> = u_xlat7;
  let x_1870 : f32 = u_xlat1;
  let x_1871 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1868.x, x_1868.y, x_1868.z), x_1870);
  u_xlat7 = x_1871;
  let x_1873 : f32 = u_xlat7.w;
  u_xlat1 = (x_1873 + -1.0f);
  let x_1876 : f32 = x_211.unity_SpecCube0_HDR.w;
  let x_1877 : f32 = u_xlat1;
  u_xlat1 = ((x_1876 * x_1877) + 1.0f);
  let x_1880 : f32 = u_xlat1;
  u_xlat1 = max(x_1880, 0.0f);
  let x_1882 : f32 = u_xlat1;
  u_xlat1 = log2(x_1882);
  let x_1884 : f32 = u_xlat1;
  let x_1886 : f32 = x_211.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1884 * x_1886);
  let x_1888 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1888);
  let x_1890 : f32 = u_xlat1;
  let x_1892 : f32 = x_211.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1890 * x_1892);
  let x_1894 : vec4<f32> = u_xlat7;
  let x_1896 : f32 = u_xlat1;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1894.x, x_1894.y, x_1894.z) * vec3<f32>(x_1896, x_1896, x_1896));
  let x_1899 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : f32 = u_xlat80;
  let x_1903 : f32 = u_xlat80;
  let x_1907 : vec2<f32> = ((vec2<f32>(x_1901, x_1901) * vec2<f32>(x_1903, x_1903)) + vec2<f32>(-1.0f, 1.0f));
  let x_1908 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1907.x, x_1907.y, x_1908.z, x_1908.w);
  let x_1911 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1911);
  let x_1914 : vec4<f32> = u_xlat0;
  let x_1917 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1914.x, x_1914.y, x_1914.z)) + vec3<f32>(x_1917, x_1917, x_1917));
  let x_1920 : f32 = u_xlat83;
  let x_1922 : vec3<f32> = u_xlat34;
  let x_1924 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1920, x_1920, x_1920) * x_1922) + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat1;
  let x_1929 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1927, x_1927, x_1927) * x_1929);
  let x_1931 : vec4<f32> = u_xlat7;
  let x_1933 : vec3<f32> = u_xlat34;
  let x_1934 : vec3<f32> = (vec3<f32>(x_1931.x, x_1931.y, x_1931.z) * x_1933);
  let x_1935 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : vec3<f32> = u_xlat29;
  let x_1938 : vec3<f32> = u_xlat30;
  let x_1940 : vec4<f32> = u_xlat7;
  u_xlat29 = ((x_1937 * x_1938) + vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : f32 = u_xlat31;
  let x_1945 : f32 = x_211.unity_LightData.z;
  u_xlat78 = (x_1943 * x_1945);
  let x_1947 : vec4<f32> = u_xlat2;
  let x_1950 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_1947.x, x_1947.y, x_1947.z), vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1953, 0.0f, 1.0f);
  let x_1955 : f32 = u_xlat78;
  let x_1956 : f32 = u_xlat1;
  u_xlat78 = (x_1955 * x_1956);
  let x_1958 : f32 = u_xlat78;
  let x_1960 : vec4<f32> = u_xlat6;
  let x_1962 : vec3<f32> = (vec3<f32>(x_1958, x_1958, x_1958) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec3<f32> = u_xlat27;
  let x_1967 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1969 : vec3<f32> = (x_1965 + vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
  let x_1972 : vec4<f32> = u_xlat7;
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1972.x, x_1972.y, x_1972.z), vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : f32 = u_xlat78;
  u_xlat78 = max(x_1977, 1.17549435e-38f);
  let x_1980 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1980);
  let x_1982 : f32 = u_xlat78;
  let x_1984 : vec4<f32> = u_xlat7;
  let x_1986 : vec3<f32> = (vec3<f32>(x_1982, x_1982, x_1982) * vec3<f32>(x_1984.x, x_1984.y, x_1984.z));
  let x_1987 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1989 : vec4<f32> = u_xlat2;
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1994, 0.0f, 1.0f);
  let x_1997 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1999 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1997.x, x_1997.y, x_1997.z), vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
  let x_2002 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2002, 0.0f, 1.0f);
  let x_2004 : f32 = u_xlat78;
  let x_2005 : f32 = u_xlat78;
  u_xlat78 = (x_2004 * x_2005);
  let x_2007 : f32 = u_xlat78;
  let x_2009 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2007 * x_2009) + 1.00001001358032226562f);
  let x_2013 : f32 = u_xlat1;
  let x_2014 : f32 = u_xlat1;
  u_xlat1 = (x_2013 * x_2014);
  let x_2016 : f32 = u_xlat78;
  let x_2017 : f32 = u_xlat78;
  u_xlat78 = (x_2016 * x_2017);
  let x_2019 : f32 = u_xlat1;
  u_xlat1 = max(x_2019, 0.10000000149011611938f);
  let x_2022 : f32 = u_xlat78;
  let x_2023 : f32 = u_xlat1;
  u_xlat78 = (x_2022 * x_2023);
  let x_2026 : f32 = u_xlat4.x;
  let x_2027 : f32 = u_xlat78;
  u_xlat78 = (x_2026 * x_2027);
  let x_2030 : f32 = u_xlat5.x;
  let x_2031 : f32 = u_xlat78;
  u_xlat78 = (x_2030 / x_2031);
  let x_2033 : vec4<f32> = u_xlat0;
  let x_2035 : f32 = u_xlat78;
  let x_2038 : vec3<f32> = u_xlat30;
  let x_2039 : vec3<f32> = ((vec3<f32>(x_2033.x, x_2033.y, x_2033.z) * vec3<f32>(x_2035, x_2035, x_2035)) + x_2038);
  let x_2040 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2043 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2045 : f32 = x_211.unity_LightData.y;
  u_xlat78 = min(x_2043, x_2045);
  let x_2049 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2049));
  let x_2053 : f32 = u_xlat57.x;
  let x_2056 : f32 = x_357.x_AdditionalShadowFadeParams.x;
  let x_2059 : f32 = x_357.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2053 * x_2056) + x_2059);
  let x_2061 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2061, 0.0f, 1.0f);
  let x_2064 : f32 = x_1695.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2066 : f32 = x_1695.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2068 : f32 = x_1695.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2070 : f32 = x_1695.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2071 : vec4<f32> = vec4<f32>(x_2064, x_2066, x_2068, x_2070);
  let x_2077 : vec4<bool> = (vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2071.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_2077.x, x_2077.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2089 : u32 = u_xlatu_loop_1;
    let x_2090 : u32 = u_xlatu78;
    if ((x_2089 < x_2090)) {
    } else {
      break;
    }
    let x_2093 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2093 >> 2u);
    let x_2097 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2097 & 3u));
    let x_2100 : u32 = u_xlatu83;
    let x_2103 : vec4<f32> = x_211.unity_LightIndices[bitcast<i32>(x_2100)];
    let x_2113 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2118 : vec4<u32> = indexable[x_2113];
    u_xlat83 = dot(x_2103, bitcast<vec4<f32>>(x_2118));
    let x_2122 : f32 = u_xlat83;
    u_xlati83 = i32(x_2122);
    let x_2124 : vec3<f32> = vs_TEXCOORD7;
    let x_2135 : i32 = u_xlati83;
    let x_2137 : vec4<f32> = x_2134.x_AdditionalLightsPosition[x_2135];
    let x_2140 : i32 = u_xlati83;
    let x_2142 : vec4<f32> = x_2134.x_AdditionalLightsPosition[x_2140];
    let x_2144 : vec3<f32> = ((-(x_2124) * vec3<f32>(x_2137.w, x_2137.w, x_2137.w)) + vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
    let x_2147 : vec4<f32> = u_xlat9;
    let x_2149 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2147.x, x_2147.y, x_2147.z), vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : f32 = u_xlat84;
    u_xlat84 = max(x_2152, 0.00006103515625f);
    let x_2155 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2155);
    let x_2157 : f32 = u_xlat85;
    let x_2159 : vec4<f32> = u_xlat9;
    let x_2161 : vec3<f32> = (vec3<f32>(x_2157, x_2157, x_2157) * vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
    let x_2162 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
    let x_2165 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2165);
    let x_2167 : f32 = u_xlat84;
    let x_2168 : i32 = u_xlati83;
    let x_2170 : f32 = x_2134.x_AdditionalLightsAttenuation[x_2168].x;
    u_xlat84 = (x_2167 * x_2170);
    let x_2172 : f32 = u_xlat84;
    let x_2174 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2172) * x_2174) + 1.0f);
    let x_2177 : f32 = u_xlat84;
    u_xlat84 = max(x_2177, 0.0f);
    let x_2179 : f32 = u_xlat84;
    let x_2180 : f32 = u_xlat84;
    u_xlat84 = (x_2179 * x_2180);
    let x_2182 : f32 = u_xlat84;
    let x_2183 : f32 = u_xlat87;
    u_xlat84 = (x_2182 * x_2183);
    let x_2185 : i32 = u_xlati83;
    let x_2187 : vec4<f32> = x_2134.x_AdditionalLightsSpotDir[x_2185];
    let x_2189 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2187.x, x_2187.y, x_2187.z), vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
    let x_2192 : f32 = u_xlat87;
    let x_2193 : i32 = u_xlati83;
    let x_2195 : f32 = x_2134.x_AdditionalLightsAttenuation[x_2193].z;
    let x_2197 : i32 = u_xlati83;
    let x_2199 : f32 = x_2134.x_AdditionalLightsAttenuation[x_2197].w;
    u_xlat87 = ((x_2192 * x_2195) + x_2199);
    let x_2201 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2201, 0.0f, 1.0f);
    let x_2203 : f32 = u_xlat87;
    let x_2204 : f32 = u_xlat87;
    u_xlat87 = (x_2203 * x_2204);
    let x_2206 : f32 = u_xlat84;
    let x_2207 : f32 = u_xlat87;
    u_xlat84 = (x_2206 * x_2207);
    let x_2211 : i32 = u_xlati83;
    let x_2213 : f32 = x_357.x_AdditionalShadowParams[x_2211].w;
    u_xlati87 = i32(x_2213);
    let x_2216 : i32 = u_xlati87;
    u_xlatb88 = (x_2216 >= 0i);
    let x_2218 : bool = u_xlatb88;
    if (x_2218) {
      let x_2222 : i32 = u_xlati83;
      let x_2224 : f32 = x_357.x_AdditionalShadowParams[x_2222].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2224, x_2224, x_2224, x_2224))));
      let x_2228 : bool = u_xlatb88;
      if (x_2228) {
        let x_2233 : vec4<f32> = u_xlat10;
        let x_2236 : vec4<f32> = u_xlat10;
        let x_2239 : vec4<bool> = (abs(vec4<f32>(x_2233.z, x_2233.z, x_2233.y, x_2233.z)) >= abs(vec4<f32>(x_2236.x, x_2236.y, x_2236.x, x_2236.x)));
        let x_2241 : vec3<bool> = vec3<bool>(x_2239.x, x_2239.y, x_2239.z);
        let x_2242 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
        let x_2245 : bool = u_xlatb11.y;
        let x_2247 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2245 & x_2247);
        let x_2249 : vec4<f32> = u_xlat10;
        let x_2252 : vec4<bool> = (-(vec4<f32>(x_2249.z, x_2249.y, x_2249.z, x_2249.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2253 : vec3<bool> = vec3<bool>(x_2252.x, x_2252.y, x_2252.w);
        let x_2254 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2253.x, x_2253.y, x_2254.z, x_2253.z);
        let x_2257 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2257);
        let x_2262 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2262);
        let x_2268 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2268);
        let x_2272 : bool = u_xlatb11.z;
        if (x_2272) {
          let x_2277 : f32 = u_xlat11.y;
          x_2273 = x_2277;
        } else {
          let x_2279 : f32 = u_xlat89;
          x_2273 = x_2279;
        }
        let x_2280 : f32 = x_2273;
        u_xlat37.x = x_2280;
        let x_2283 : bool = u_xlatb88;
        if (x_2283) {
          let x_2288 : f32 = u_xlat11.x;
          x_2284 = x_2288;
        } else {
          let x_2291 : f32 = u_xlat37.x;
          x_2284 = x_2291;
        }
        let x_2292 : f32 = x_2284;
        u_xlat88 = x_2292;
        let x_2293 : i32 = u_xlati83;
        let x_2295 : f32 = x_357.x_AdditionalShadowParams[x_2293].w;
        u_xlat11.x = trunc(x_2295);
        let x_2298 : f32 = u_xlat88;
        let x_2300 : f32 = u_xlat11.x;
        u_xlat88 = (x_2298 + x_2300);
        let x_2302 : f32 = u_xlat88;
        u_xlati87 = i32(x_2302);
      }
      let x_2304 : i32 = u_xlati87;
      u_xlati87 = (x_2304 << bitcast<u32>(2i));
      let x_2306 : vec3<f32> = vs_TEXCOORD7;
      let x_2309 : i32 = u_xlati87;
      let x_2312 : i32 = u_xlati87;
      let x_2316 : vec4<f32> = x_357.x_AdditionalLightsWorldToShadow[((x_2309 + 1i) / 4i)][((x_2312 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2306.y, x_2306.y, x_2306.y, x_2306.y) * x_2316);
      let x_2318 : i32 = u_xlati87;
      let x_2320 : i32 = u_xlati87;
      let x_2323 : vec4<f32> = x_357.x_AdditionalLightsWorldToShadow[(x_2318 / 4i)][(x_2320 % 4i)];
      let x_2324 : vec3<f32> = vs_TEXCOORD7;
      let x_2327 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2323 * vec4<f32>(x_2324.x, x_2324.x, x_2324.x, x_2324.x)) + x_2327);
      let x_2329 : i32 = u_xlati87;
      let x_2332 : i32 = u_xlati87;
      let x_2336 : vec4<f32> = x_357.x_AdditionalLightsWorldToShadow[((x_2329 + 2i) / 4i)][((x_2332 + 2i) % 4i)];
      let x_2337 : vec3<f32> = vs_TEXCOORD7;
      let x_2340 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2336 * vec4<f32>(x_2337.z, x_2337.z, x_2337.z, x_2337.z)) + x_2340);
      let x_2342 : vec4<f32> = u_xlat11;
      let x_2343 : i32 = u_xlati87;
      let x_2346 : i32 = u_xlati87;
      let x_2350 : vec4<f32> = x_357.x_AdditionalLightsWorldToShadow[((x_2343 + 3i) / 4i)][((x_2346 + 3i) % 4i)];
      u_xlat11 = (x_2342 + x_2350);
      let x_2352 : vec4<f32> = u_xlat11;
      let x_2354 : vec4<f32> = u_xlat11;
      let x_2356 : vec3<f32> = (vec3<f32>(x_2352.x, x_2352.y, x_2352.z) / vec3<f32>(x_2354.w, x_2354.w, x_2354.w));
      let x_2357 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
      let x_2360 : i32 = u_xlati83;
      let x_2362 : f32 = x_357.x_AdditionalShadowParams[x_2360].y;
      u_xlatb87 = (0.0f < x_2362);
      let x_2364 : bool = u_xlatb87;
      if (x_2364) {
        let x_2367 : i32 = u_xlati83;
        let x_2369 : f32 = x_357.x_AdditionalShadowParams[x_2367].y;
        u_xlatb87 = (1.0f == x_2369);
        let x_2371 : bool = u_xlatb87;
        if (x_2371) {
          let x_2374 : vec4<f32> = u_xlat11;
          let x_2378 : vec4<f32> = x_357.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.y) + x_2378);
          let x_2381 : vec4<f32> = u_xlat12;
          let x_2382 : vec2<f32> = vec2<f32>(x_2381.x, x_2381.y);
          let x_2384 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
          let x_2392 : vec3<f32> = txVec30;
          let x_2394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2392.xy, x_2392.z);
          u_xlat13.x = x_2394;
          let x_2397 : vec4<f32> = u_xlat12;
          let x_2398 : vec2<f32> = vec2<f32>(x_2397.z, x_2397.w);
          let x_2400 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
          let x_2407 : vec3<f32> = txVec31;
          let x_2409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
          u_xlat13.y = x_2409;
          let x_2411 : vec4<f32> = u_xlat11;
          let x_2415 : vec4<f32> = x_357.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2411.x, x_2411.y, x_2411.x, x_2411.y) + x_2415);
          let x_2418 : vec4<f32> = u_xlat12;
          let x_2419 : vec2<f32> = vec2<f32>(x_2418.x, x_2418.y);
          let x_2421 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2419.x, x_2419.y, x_2421);
          let x_2428 : vec3<f32> = txVec32;
          let x_2430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2428.xy, x_2428.z);
          u_xlat13.z = x_2430;
          let x_2433 : vec4<f32> = u_xlat12;
          let x_2434 : vec2<f32> = vec2<f32>(x_2433.z, x_2433.w);
          let x_2436 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2434.x, x_2434.y, x_2436);
          let x_2443 : vec3<f32> = txVec33;
          let x_2445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2443.xy, x_2443.z);
          u_xlat13.w = x_2445;
          let x_2447 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2447, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2450 : i32 = u_xlati83;
          let x_2452 : f32 = x_357.x_AdditionalShadowParams[x_2450].y;
          u_xlatb88 = (2.0f == x_2452);
          let x_2454 : bool = u_xlatb88;
          if (x_2454) {
            let x_2457 : vec4<f32> = u_xlat11;
            let x_2461 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2464 : vec2<f32> = ((vec2<f32>(x_2457.x, x_2457.y) * vec2<f32>(x_2461.z, x_2461.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2465 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
            let x_2467 : vec4<f32> = u_xlat12;
            let x_2469 : vec2<f32> = floor(vec2<f32>(x_2467.x, x_2467.y));
            let x_2470 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat11;
            let x_2475 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2478 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2472.x, x_2472.y) * vec2<f32>(x_2475.z, x_2475.w)) + -(vec2<f32>(x_2478.x, x_2478.y)));
            let x_2482 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2482.x, x_2482.x, x_2482.y, x_2482.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2487 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2485.x, x_2485.x, x_2485.z, x_2485.z) * vec4<f32>(x_2487.x, x_2487.x, x_2487.z, x_2487.z));
            let x_2490 : vec4<f32> = u_xlat14;
            let x_2492 : vec2<f32> = (vec2<f32>(x_2490.y, x_2490.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2493 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2492.x, x_2493.y, x_2492.y, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat14;
            let x_2498 : vec2<f32> = u_xlat64;
            let x_2500 : vec2<f32> = ((vec2<f32>(x_2495.x, x_2495.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2498));
            let x_2501 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
            let x_2504 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2504) + vec2<f32>(1.0f, 1.0f));
            let x_2507 : vec2<f32> = u_xlat64;
            let x_2508 : vec2<f32> = min(x_2507, vec2<f32>(0.0f, 0.0f));
            let x_2509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
            let x_2511 : vec4<f32> = u_xlat15;
            let x_2514 : vec4<f32> = u_xlat15;
            let x_2517 : vec2<f32> = u_xlat66;
            let x_2518 : vec2<f32> = ((-(vec2<f32>(x_2511.x, x_2511.y)) * vec2<f32>(x_2514.x, x_2514.y)) + x_2517);
            let x_2519 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2518.x, x_2518.y, x_2519.z, x_2519.w);
            let x_2521 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2521, vec2<f32>(0.0f, 0.0f));
            let x_2523 : vec2<f32> = u_xlat64;
            let x_2525 : vec2<f32> = u_xlat64;
            let x_2527 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2523) * x_2525) + vec2<f32>(x_2527.y, x_2527.w));
            let x_2530 : vec4<f32> = u_xlat15;
            let x_2532 : vec2<f32> = (vec2<f32>(x_2530.x, x_2530.y) + vec2<f32>(1.0f, 1.0f));
            let x_2533 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2535 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2535 + vec2<f32>(1.0f, 1.0f));
            let x_2537 : vec4<f32> = u_xlat14;
            let x_2539 : vec2<f32> = (vec2<f32>(x_2537.x, x_2537.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2540 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2539.x, x_2539.y, x_2540.z, x_2540.w);
            let x_2542 : vec2<f32> = u_xlat66;
            let x_2543 : vec2<f32> = (x_2542 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2544 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
            let x_2546 : vec4<f32> = u_xlat15;
            let x_2548 : vec2<f32> = (vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2549 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2548.x, x_2548.y, x_2549.z, x_2549.w);
            let x_2551 : vec2<f32> = u_xlat64;
            let x_2552 : vec2<f32> = (x_2551 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2553 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2555.y, x_2555.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2559 : f32 = u_xlat15.x;
            u_xlat16.z = x_2559;
            let x_2562 : f32 = u_xlat64.x;
            u_xlat16.w = x_2562;
            let x_2565 : f32 = u_xlat17.x;
            u_xlat14.z = x_2565;
            let x_2568 : f32 = u_xlat13.x;
            u_xlat14.w = x_2568;
            let x_2570 : vec4<f32> = u_xlat14;
            let x_2572 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2570.z, x_2570.w, x_2570.x, x_2570.z) + vec4<f32>(x_2572.z, x_2572.w, x_2572.x, x_2572.z));
            let x_2576 : f32 = u_xlat16.y;
            u_xlat15.z = x_2576;
            let x_2579 : f32 = u_xlat64.y;
            u_xlat15.w = x_2579;
            let x_2582 : f32 = u_xlat14.y;
            u_xlat17.z = x_2582;
            let x_2585 : f32 = u_xlat13.z;
            u_xlat17.w = x_2585;
            let x_2587 : vec4<f32> = u_xlat15;
            let x_2589 : vec4<f32> = u_xlat17;
            let x_2591 : vec3<f32> = (vec3<f32>(x_2587.z, x_2587.y, x_2587.w) + vec3<f32>(x_2589.z, x_2589.y, x_2589.w));
            let x_2592 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
            let x_2594 : vec4<f32> = u_xlat14;
            let x_2596 : vec4<f32> = u_xlat18;
            let x_2598 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.z, x_2594.w) / vec3<f32>(x_2596.z, x_2596.w, x_2596.y));
            let x_2599 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat14;
            let x_2603 : vec3<f32> = (vec3<f32>(x_2601.x, x_2601.y, x_2601.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2604 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
            let x_2606 : vec4<f32> = u_xlat17;
            let x_2608 : vec4<f32> = u_xlat13;
            let x_2610 : vec3<f32> = (vec3<f32>(x_2606.z, x_2606.y, x_2606.w) / vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
            let x_2611 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
            let x_2613 : vec4<f32> = u_xlat15;
            let x_2615 : vec3<f32> = (vec3<f32>(x_2613.x, x_2613.y, x_2613.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2616 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
            let x_2618 : vec4<f32> = u_xlat14;
            let x_2621 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2623 : vec3<f32> = (vec3<f32>(x_2618.y, x_2618.x, x_2618.z) * vec3<f32>(x_2621.x, x_2621.x, x_2621.x));
            let x_2624 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
            let x_2626 : vec4<f32> = u_xlat15;
            let x_2629 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2631 : vec3<f32> = (vec3<f32>(x_2626.x, x_2626.y, x_2626.z) * vec3<f32>(x_2629.y, x_2629.y, x_2629.y));
            let x_2632 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
            let x_2635 : f32 = u_xlat15.x;
            u_xlat14.w = x_2635;
            let x_2637 : vec4<f32> = u_xlat12;
            let x_2640 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2643 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.y) * vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y)) + vec4<f32>(x_2643.y, x_2643.w, x_2643.x, x_2643.w));
            let x_2646 : vec4<f32> = u_xlat12;
            let x_2649 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2652 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2646.x, x_2646.y) * vec2<f32>(x_2649.x, x_2649.y)) + vec2<f32>(x_2652.z, x_2652.w));
            let x_2656 : f32 = u_xlat14.y;
            u_xlat15.w = x_2656;
            let x_2658 : vec4<f32> = u_xlat15;
            let x_2659 : vec2<f32> = vec2<f32>(x_2658.y, x_2658.z);
            let x_2660 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2660.x, x_2659.x, x_2660.z, x_2659.y);
            let x_2662 : vec4<f32> = u_xlat12;
            let x_2665 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2668 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y) * vec4<f32>(x_2665.x, x_2665.y, x_2665.x, x_2665.y)) + vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2668.y));
            let x_2671 : vec4<f32> = u_xlat12;
            let x_2674 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2677 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2671.x, x_2671.y, x_2671.x, x_2671.y) * vec4<f32>(x_2674.x, x_2674.y, x_2674.x, x_2674.y)) + vec4<f32>(x_2677.w, x_2677.y, x_2677.w, x_2677.z));
            let x_2680 : vec4<f32> = u_xlat12;
            let x_2683 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2686 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2680.x, x_2680.y, x_2680.x, x_2680.y) * vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.y)) + vec4<f32>(x_2686.x, x_2686.w, x_2686.z, x_2686.w));
            let x_2689 : vec4<f32> = u_xlat13;
            let x_2691 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2689.x, x_2689.x, x_2689.x, x_2689.y) * vec4<f32>(x_2691.z, x_2691.w, x_2691.y, x_2691.z));
            let x_2695 : vec4<f32> = u_xlat13;
            let x_2697 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2695.y, x_2695.y, x_2695.z, x_2695.z) * x_2697);
            let x_2700 : f32 = u_xlat13.z;
            let x_2702 : f32 = u_xlat18.y;
            u_xlat88 = (x_2700 * x_2702);
            let x_2705 : vec4<f32> = u_xlat16;
            let x_2706 : vec2<f32> = vec2<f32>(x_2705.x, x_2705.y);
            let x_2708 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2706.x, x_2706.y, x_2708);
            let x_2715 : vec3<f32> = txVec34;
            let x_2717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
            u_xlat89 = x_2717;
            let x_2719 : vec4<f32> = u_xlat16;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec35;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat12.x = x_2731;
            let x_2734 : f32 = u_xlat12.x;
            let x_2736 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2734 * x_2736);
            let x_2740 : f32 = u_xlat19.x;
            let x_2741 : f32 = u_xlat89;
            let x_2744 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2740 * x_2741) + x_2744);
            let x_2747 : vec2<f32> = u_xlat64;
            let x_2749 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2747.x, x_2747.y, x_2749);
            let x_2756 : vec3<f32> = txVec36;
            let x_2758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2756.xy, x_2756.z);
            u_xlat12.x = x_2758;
            let x_2761 : f32 = u_xlat19.z;
            let x_2763 : f32 = u_xlat12.x;
            let x_2765 : f32 = u_xlat89;
            u_xlat89 = ((x_2761 * x_2763) + x_2765);
            let x_2768 : vec4<f32> = u_xlat15;
            let x_2769 : vec2<f32> = vec2<f32>(x_2768.x, x_2768.y);
            let x_2771 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2769.x, x_2769.y, x_2771);
            let x_2778 : vec3<f32> = txVec37;
            let x_2780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2778.xy, x_2778.z);
            u_xlat12.x = x_2780;
            let x_2783 : f32 = u_xlat19.w;
            let x_2785 : f32 = u_xlat12.x;
            let x_2787 : f32 = u_xlat89;
            u_xlat89 = ((x_2783 * x_2785) + x_2787);
            let x_2790 : vec4<f32> = u_xlat17;
            let x_2791 : vec2<f32> = vec2<f32>(x_2790.x, x_2790.y);
            let x_2793 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2791.x, x_2791.y, x_2793);
            let x_2800 : vec3<f32> = txVec38;
            let x_2802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2800.xy, x_2800.z);
            u_xlat12.x = x_2802;
            let x_2805 : f32 = u_xlat20.x;
            let x_2807 : f32 = u_xlat12.x;
            let x_2809 : f32 = u_xlat89;
            u_xlat89 = ((x_2805 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat17;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.z, x_2812.w);
            let x_2815 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec39;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat12.x = x_2824;
            let x_2827 : f32 = u_xlat20.y;
            let x_2829 : f32 = u_xlat12.x;
            let x_2831 : f32 = u_xlat89;
            u_xlat89 = ((x_2827 * x_2829) + x_2831);
            let x_2834 : vec4<f32> = u_xlat15;
            let x_2835 : vec2<f32> = vec2<f32>(x_2834.z, x_2834.w);
            let x_2837 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
            let x_2844 : vec3<f32> = txVec40;
            let x_2846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
            u_xlat12.x = x_2846;
            let x_2849 : f32 = u_xlat20.z;
            let x_2851 : f32 = u_xlat12.x;
            let x_2853 : f32 = u_xlat89;
            u_xlat89 = ((x_2849 * x_2851) + x_2853);
            let x_2856 : vec4<f32> = u_xlat14;
            let x_2857 : vec2<f32> = vec2<f32>(x_2856.x, x_2856.y);
            let x_2859 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
            let x_2866 : vec3<f32> = txVec41;
            let x_2868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
            u_xlat12.x = x_2868;
            let x_2871 : f32 = u_xlat20.w;
            let x_2873 : f32 = u_xlat12.x;
            let x_2875 : f32 = u_xlat89;
            u_xlat89 = ((x_2871 * x_2873) + x_2875);
            let x_2878 : vec4<f32> = u_xlat14;
            let x_2879 : vec2<f32> = vec2<f32>(x_2878.z, x_2878.w);
            let x_2881 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
            let x_2888 : vec3<f32> = txVec42;
            let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
            u_xlat12.x = x_2890;
            let x_2892 : f32 = u_xlat88;
            let x_2894 : f32 = u_xlat12.x;
            let x_2896 : f32 = u_xlat89;
            u_xlat87 = ((x_2892 * x_2894) + x_2896);
          } else {
            let x_2899 : vec4<f32> = u_xlat11;
            let x_2902 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2905 : vec2<f32> = ((vec2<f32>(x_2899.x, x_2899.y) * vec2<f32>(x_2902.z, x_2902.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2906 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2905.x, x_2905.y, x_2906.z, x_2906.w);
            let x_2908 : vec4<f32> = u_xlat12;
            let x_2910 : vec2<f32> = floor(vec2<f32>(x_2908.x, x_2908.y));
            let x_2911 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2910.x, x_2910.y, x_2911.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat11;
            let x_2916 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_2919 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2913.x, x_2913.y) * vec2<f32>(x_2916.z, x_2916.w)) + -(vec2<f32>(x_2919.x, x_2919.y)));
            let x_2923 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2923.x, x_2923.x, x_2923.y, x_2923.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2926 : vec4<f32> = u_xlat13;
            let x_2928 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2926.x, x_2926.x, x_2926.z, x_2926.z) * vec4<f32>(x_2928.x, x_2928.x, x_2928.z, x_2928.z));
            let x_2931 : vec4<f32> = u_xlat14;
            let x_2933 : vec2<f32> = (vec2<f32>(x_2931.y, x_2931.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2934 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2934.x, x_2933.x, x_2934.z, x_2933.y);
            let x_2936 : vec4<f32> = u_xlat14;
            let x_2939 : vec2<f32> = u_xlat64;
            let x_2941 : vec2<f32> = ((vec2<f32>(x_2936.x, x_2936.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2939));
            let x_2942 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2941.x, x_2942.y, x_2941.y, x_2942.w);
            let x_2944 : vec2<f32> = u_xlat64;
            let x_2946 : vec2<f32> = (-(x_2944) + vec2<f32>(1.0f, 1.0f));
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2946.x, x_2946.y, x_2947.z, x_2947.w);
            let x_2949 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2949, vec2<f32>(0.0f, 0.0f));
            let x_2951 : vec2<f32> = u_xlat66;
            let x_2953 : vec2<f32> = u_xlat66;
            let x_2955 : vec4<f32> = u_xlat14;
            let x_2957 : vec2<f32> = ((-(x_2951) * x_2953) + vec2<f32>(x_2955.x, x_2955.y));
            let x_2958 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2957.x, x_2957.y, x_2958.z, x_2958.w);
            let x_2960 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2960, vec2<f32>(0.0f, 0.0f));
            let x_2963 : vec2<f32> = u_xlat66;
            let x_2965 : vec2<f32> = u_xlat66;
            let x_2967 : vec4<f32> = u_xlat13;
            let x_2969 : vec2<f32> = ((-(x_2963) * x_2965) + vec2<f32>(x_2967.y, x_2967.w));
            let x_2970 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2969.x, x_2970.y, x_2969.y);
            let x_2972 : vec4<f32> = u_xlat14;
            let x_2975 : vec2<f32> = (vec2<f32>(x_2972.x, x_2972.y) + vec2<f32>(2.0f, 2.0f));
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec3<f32> = u_xlat39;
            let x_2980 : vec2<f32> = (vec2<f32>(x_2978.x, x_2978.z) + vec2<f32>(2.0f, 2.0f));
            let x_2981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2981.x, x_2980.x, x_2981.z, x_2980.y);
            let x_2984 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2984 * 0.08163200318813323975f);
            let x_2987 : vec4<f32> = u_xlat13;
            let x_2990 : vec3<f32> = (vec3<f32>(x_2987.z, x_2987.x, x_2987.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2991 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
            let x_2993 : vec4<f32> = u_xlat14;
            let x_2995 : vec2<f32> = (vec2<f32>(x_2993.x, x_2993.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2995.x, x_2995.y, x_2996.z, x_2996.w);
            let x_2999 : f32 = u_xlat17.y;
            u_xlat16.x = x_2999;
            let x_3001 : vec2<f32> = u_xlat64;
            let x_3004 : vec2<f32> = ((vec2<f32>(x_3001.x, x_3001.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3005 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3005.x, x_3004.x, x_3005.z, x_3004.y);
            let x_3007 : vec2<f32> = u_xlat64;
            let x_3010 : vec2<f32> = ((vec2<f32>(x_3007.x, x_3007.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3010.x, x_3011.y, x_3010.y, x_3011.w);
            let x_3014 : f32 = u_xlat13.x;
            u_xlat14.y = x_3014;
            let x_3017 : f32 = u_xlat15.y;
            u_xlat14.w = x_3017;
            let x_3019 : vec4<f32> = u_xlat14;
            let x_3020 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3019 + x_3020);
            let x_3022 : vec2<f32> = u_xlat64;
            let x_3025 : vec2<f32> = ((vec2<f32>(x_3022.y, x_3022.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3026 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3026.x, x_3025.x, x_3026.z, x_3025.y);
            let x_3028 : vec2<f32> = u_xlat64;
            let x_3031 : vec2<f32> = ((vec2<f32>(x_3028.y, x_3028.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3032 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3031.x, x_3032.y, x_3031.y, x_3032.w);
            let x_3035 : f32 = u_xlat13.y;
            u_xlat15.y = x_3035;
            let x_3037 : vec4<f32> = u_xlat15;
            let x_3038 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3037 + x_3038);
            let x_3040 : vec4<f32> = u_xlat14;
            let x_3041 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3040 / x_3041);
            let x_3043 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3043 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3045 : vec4<f32> = u_xlat15;
            let x_3046 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3045 / x_3046);
            let x_3048 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3048 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3053 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3050.w, x_3050.x, x_3050.y, x_3050.z) * vec4<f32>(x_3053.x, x_3053.x, x_3053.x, x_3053.x));
            let x_3056 : vec4<f32> = u_xlat15;
            let x_3059 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3056.x, x_3056.w, x_3056.y, x_3056.z) * vec4<f32>(x_3059.y, x_3059.y, x_3059.y, x_3059.y));
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3063 : vec3<f32> = vec3<f32>(x_3062.y, x_3062.z, x_3062.w);
            let x_3064 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3063.x, x_3064.y, x_3063.y, x_3063.z);
            let x_3067 : f32 = u_xlat15.x;
            u_xlat17.y = x_3067;
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3072 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y) * vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y)) + vec4<f32>(x_3075.x, x_3075.y, x_3075.z, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat12;
            let x_3081 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3078.x, x_3078.y) * vec2<f32>(x_3081.x, x_3081.y)) + vec2<f32>(x_3084.w, x_3084.y));
            let x_3088 : f32 = u_xlat17.y;
            u_xlat14.y = x_3088;
            let x_3091 : f32 = u_xlat15.z;
            u_xlat17.y = x_3091;
            let x_3093 : vec4<f32> = u_xlat12;
            let x_3096 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3099 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y) * vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y)) + vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3099.y));
            let x_3102 : vec4<f32> = u_xlat12;
            let x_3105 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3108 : vec4<f32> = u_xlat17;
            let x_3110 : vec2<f32> = ((vec2<f32>(x_3102.x, x_3102.y) * vec2<f32>(x_3105.x, x_3105.y)) + vec2<f32>(x_3108.w, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3114 : f32 = u_xlat17.y;
            u_xlat14.z = x_3114;
            let x_3117 : vec4<f32> = u_xlat12;
            let x_3120 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3123 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3117.x, x_3117.y, x_3117.x, x_3117.y) * vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y)) + vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.z));
            let x_3127 : f32 = u_xlat15.w;
            u_xlat17.y = x_3127;
            let x_3130 : vec4<f32> = u_xlat12;
            let x_3133 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3136 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y) * vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y)) + vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3136.y));
            let x_3140 : vec4<f32> = u_xlat12;
            let x_3143 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3146 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3140.x, x_3140.y) * vec2<f32>(x_3143.x, x_3143.y)) + vec2<f32>(x_3146.w, x_3146.y));
            let x_3150 : f32 = u_xlat17.y;
            u_xlat14.w = x_3150;
            let x_3153 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(x_3156.x, x_3156.y)) + vec2<f32>(x_3159.x, x_3159.w));
            let x_3162 : vec4<f32> = u_xlat17;
            let x_3163 : vec3<f32> = vec3<f32>(x_3162.x, x_3162.z, x_3162.w);
            let x_3164 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3163.x, x_3164.y, x_3163.y, x_3163.z);
            let x_3166 : vec4<f32> = u_xlat12;
            let x_3169 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3172 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3166.x, x_3166.y, x_3166.x, x_3166.y) * vec4<f32>(x_3169.x, x_3169.y, x_3169.x, x_3169.y)) + vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3172.y));
            let x_3176 : vec4<f32> = u_xlat12;
            let x_3179 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3182 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3176.x, x_3176.y) * vec2<f32>(x_3179.x, x_3179.y)) + vec2<f32>(x_3182.w, x_3182.y));
            let x_3186 : f32 = u_xlat14.x;
            u_xlat15.x = x_3186;
            let x_3188 : vec4<f32> = u_xlat12;
            let x_3191 : vec4<f32> = x_357.x_AdditionalShadowmapSize;
            let x_3194 : vec4<f32> = u_xlat15;
            let x_3196 : vec2<f32> = ((vec2<f32>(x_3188.x, x_3188.y) * vec2<f32>(x_3191.x, x_3191.y)) + vec2<f32>(x_3194.x, x_3194.y));
            let x_3197 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3196.x, x_3196.y, x_3197.z, x_3197.w);
            let x_3200 : vec4<f32> = u_xlat13;
            let x_3202 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3200.x, x_3200.x, x_3200.x, x_3200.x) * x_3202);
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3207 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3205.y, x_3205.y, x_3205.y, x_3205.y) * x_3207);
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3212 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3210.z, x_3210.z, x_3210.z, x_3210.z) * x_3212);
            let x_3214 : vec4<f32> = u_xlat13;
            let x_3216 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3214.w, x_3214.w, x_3214.w, x_3214.w) * x_3216);
            let x_3219 : vec4<f32> = u_xlat18;
            let x_3220 : vec2<f32> = vec2<f32>(x_3219.x, x_3219.y);
            let x_3222 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3220.x, x_3220.y, x_3222);
            let x_3229 : vec3<f32> = txVec43;
            let x_3231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3229.xy, x_3229.z);
            u_xlat88 = x_3231;
            let x_3233 : vec4<f32> = u_xlat18;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.z, x_3233.w);
            let x_3236 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
            let x_3243 : vec3<f32> = txVec44;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat89 = x_3245;
            let x_3246 : f32 = u_xlat89;
            let x_3248 : f32 = u_xlat23.y;
            u_xlat89 = (x_3246 * x_3248);
            let x_3251 : f32 = u_xlat23.x;
            let x_3252 : f32 = u_xlat88;
            let x_3254 : f32 = u_xlat89;
            u_xlat88 = ((x_3251 * x_3252) + x_3254);
            let x_3257 : vec2<f32> = u_xlat64;
            let x_3259 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
            let x_3266 : vec3<f32> = txVec45;
            let x_3268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
            u_xlat89 = x_3268;
            let x_3270 : f32 = u_xlat23.z;
            let x_3271 : f32 = u_xlat89;
            let x_3273 : f32 = u_xlat88;
            u_xlat88 = ((x_3270 * x_3271) + x_3273);
            let x_3276 : vec4<f32> = u_xlat21;
            let x_3277 : vec2<f32> = vec2<f32>(x_3276.x, x_3276.y);
            let x_3279 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3277.x, x_3277.y, x_3279);
            let x_3286 : vec3<f32> = txVec46;
            let x_3288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
            u_xlat89 = x_3288;
            let x_3290 : f32 = u_xlat23.w;
            let x_3291 : f32 = u_xlat89;
            let x_3293 : f32 = u_xlat88;
            u_xlat88 = ((x_3290 * x_3291) + x_3293);
            let x_3296 : vec4<f32> = u_xlat19;
            let x_3297 : vec2<f32> = vec2<f32>(x_3296.x, x_3296.y);
            let x_3299 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
            let x_3306 : vec3<f32> = txVec47;
            let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
            u_xlat89 = x_3308;
            let x_3310 : f32 = u_xlat24.x;
            let x_3311 : f32 = u_xlat89;
            let x_3313 : f32 = u_xlat88;
            u_xlat88 = ((x_3310 * x_3311) + x_3313);
            let x_3316 : vec4<f32> = u_xlat19;
            let x_3317 : vec2<f32> = vec2<f32>(x_3316.z, x_3316.w);
            let x_3319 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
            let x_3326 : vec3<f32> = txVec48;
            let x_3328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
            u_xlat89 = x_3328;
            let x_3330 : f32 = u_xlat24.y;
            let x_3331 : f32 = u_xlat89;
            let x_3333 : f32 = u_xlat88;
            u_xlat88 = ((x_3330 * x_3331) + x_3333);
            let x_3336 : vec4<f32> = u_xlat20;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec49;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat89 = x_3348;
            let x_3350 : f32 = u_xlat24.z;
            let x_3351 : f32 = u_xlat89;
            let x_3353 : f32 = u_xlat88;
            u_xlat88 = ((x_3350 * x_3351) + x_3353);
            let x_3356 : vec4<f32> = u_xlat21;
            let x_3357 : vec2<f32> = vec2<f32>(x_3356.z, x_3356.w);
            let x_3359 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3357.x, x_3357.y, x_3359);
            let x_3366 : vec3<f32> = txVec50;
            let x_3368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3366.xy, x_3366.z);
            u_xlat89 = x_3368;
            let x_3370 : f32 = u_xlat24.w;
            let x_3371 : f32 = u_xlat89;
            let x_3373 : f32 = u_xlat88;
            u_xlat88 = ((x_3370 * x_3371) + x_3373);
            let x_3376 : vec4<f32> = u_xlat22;
            let x_3377 : vec2<f32> = vec2<f32>(x_3376.x, x_3376.y);
            let x_3379 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3377.x, x_3377.y, x_3379);
            let x_3386 : vec3<f32> = txVec51;
            let x_3388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3386.xy, x_3386.z);
            u_xlat89 = x_3388;
            let x_3390 : f32 = u_xlat25.x;
            let x_3391 : f32 = u_xlat89;
            let x_3393 : f32 = u_xlat88;
            u_xlat88 = ((x_3390 * x_3391) + x_3393);
            let x_3396 : vec4<f32> = u_xlat22;
            let x_3397 : vec2<f32> = vec2<f32>(x_3396.z, x_3396.w);
            let x_3399 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3397.x, x_3397.y, x_3399);
            let x_3406 : vec3<f32> = txVec52;
            let x_3408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3406.xy, x_3406.z);
            u_xlat89 = x_3408;
            let x_3410 : f32 = u_xlat25.y;
            let x_3411 : f32 = u_xlat89;
            let x_3413 : f32 = u_xlat88;
            u_xlat88 = ((x_3410 * x_3411) + x_3413);
            let x_3416 : vec2<f32> = u_xlat40;
            let x_3418 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3416.x, x_3416.y, x_3418);
            let x_3425 : vec3<f32> = txVec53;
            let x_3427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3425.xy, x_3425.z);
            u_xlat89 = x_3427;
            let x_3429 : f32 = u_xlat25.z;
            let x_3430 : f32 = u_xlat89;
            let x_3432 : f32 = u_xlat88;
            u_xlat88 = ((x_3429 * x_3430) + x_3432);
            let x_3435 : vec2<f32> = u_xlat72;
            let x_3437 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3435.x, x_3435.y, x_3437);
            let x_3444 : vec3<f32> = txVec54;
            let x_3446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3444.xy, x_3444.z);
            u_xlat89 = x_3446;
            let x_3448 : f32 = u_xlat25.w;
            let x_3449 : f32 = u_xlat89;
            let x_3451 : f32 = u_xlat88;
            u_xlat88 = ((x_3448 * x_3449) + x_3451);
            let x_3454 : vec4<f32> = u_xlat17;
            let x_3455 : vec2<f32> = vec2<f32>(x_3454.x, x_3454.y);
            let x_3457 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
            let x_3464 : vec3<f32> = txVec55;
            let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
            u_xlat89 = x_3466;
            let x_3468 : f32 = u_xlat13.x;
            let x_3469 : f32 = u_xlat89;
            let x_3471 : f32 = u_xlat88;
            u_xlat88 = ((x_3468 * x_3469) + x_3471);
            let x_3474 : vec4<f32> = u_xlat17;
            let x_3475 : vec2<f32> = vec2<f32>(x_3474.z, x_3474.w);
            let x_3477 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3475.x, x_3475.y, x_3477);
            let x_3484 : vec3<f32> = txVec56;
            let x_3486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3484.xy, x_3484.z);
            u_xlat89 = x_3486;
            let x_3488 : f32 = u_xlat13.y;
            let x_3489 : f32 = u_xlat89;
            let x_3491 : f32 = u_xlat88;
            u_xlat88 = ((x_3488 * x_3489) + x_3491);
            let x_3494 : vec2<f32> = u_xlat67;
            let x_3496 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec57;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat89 = x_3505;
            let x_3507 : f32 = u_xlat13.z;
            let x_3508 : f32 = u_xlat89;
            let x_3510 : f32 = u_xlat88;
            u_xlat88 = ((x_3507 * x_3508) + x_3510);
            let x_3513 : vec4<f32> = u_xlat12;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.x, x_3513.y);
            let x_3516 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec58;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat89 = x_3525;
            let x_3527 : f32 = u_xlat13.w;
            let x_3528 : f32 = u_xlat89;
            let x_3530 : f32 = u_xlat88;
            u_xlat87 = ((x_3527 * x_3528) + x_3530);
          }
        }
      } else {
        let x_3534 : vec4<f32> = u_xlat11;
        let x_3535 : vec2<f32> = vec2<f32>(x_3534.x, x_3534.y);
        let x_3537 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
        let x_3544 : vec3<f32> = txVec59;
        let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
        u_xlat87 = x_3546;
      }
      let x_3547 : i32 = u_xlati83;
      let x_3549 : f32 = x_357.x_AdditionalShadowParams[x_3547].x;
      u_xlat88 = (1.0f + -(x_3549));
      let x_3552 : f32 = u_xlat87;
      let x_3553 : i32 = u_xlati83;
      let x_3555 : f32 = x_357.x_AdditionalShadowParams[x_3553].x;
      let x_3557 : f32 = u_xlat88;
      u_xlat87 = ((x_3552 * x_3555) + x_3557);
      let x_3560 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3560);
      let x_3563 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3563 >= 1.0f);
      let x_3566 : bool = u_xlatb88;
      let x_3568 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3566 | x_3568);
      let x_3570 : bool = u_xlatb88;
      let x_3571 : f32 = u_xlat87;
      u_xlat87 = select(x_3571, 1.0f, x_3570);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3574 : f32 = u_xlat87;
    u_xlat88 = (-(x_3574) + 1.0f);
    let x_3577 : f32 = u_xlat1;
    let x_3578 : f32 = u_xlat88;
    let x_3580 : f32 = u_xlat87;
    u_xlat87 = ((x_3577 * x_3578) + x_3580);
    let x_3583 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3583 & 31i)));
    let x_3587 : i32 = u_xlati88;
    let x_3590 : f32 = x_1695.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3587) & bitcast<u32>(x_3590)));
    let x_3594 : i32 = u_xlati88;
    if ((x_3594 != 0i)) {
      let x_3598 : i32 = u_xlati83;
      let x_3600 : f32 = x_1695.x_AdditionalLightsLightTypes[x_3598].el;
      u_xlati88 = i32(x_3600);
      let x_3603 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3603 != 0i));
      let x_3607 : i32 = u_xlati83;
      u_xlati37 = (x_3607 << bitcast<u32>(2i));
      let x_3609 : i32 = u_xlati11;
      if ((x_3609 != 0i)) {
        let x_3613 : vec3<f32> = vs_TEXCOORD7;
        let x_3615 : i32 = u_xlati37;
        let x_3618 : i32 = u_xlati37;
        let x_3622 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3615 + 1i) / 4i)][((x_3618 + 1i) % 4i)];
        let x_3624 : vec3<f32> = (vec3<f32>(x_3613.y, x_3613.y, x_3613.y) * vec3<f32>(x_3622.x, x_3622.y, x_3622.w));
        let x_3625 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3624.x, x_3625.y, x_3624.y, x_3624.z);
        let x_3627 : i32 = u_xlati37;
        let x_3629 : i32 = u_xlati37;
        let x_3632 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[(x_3627 / 4i)][(x_3629 % 4i)];
        let x_3634 : vec3<f32> = vs_TEXCOORD7;
        let x_3637 : vec4<f32> = u_xlat11;
        let x_3639 : vec3<f32> = ((vec3<f32>(x_3632.x, x_3632.y, x_3632.w) * vec3<f32>(x_3634.x, x_3634.x, x_3634.x)) + vec3<f32>(x_3637.x, x_3637.z, x_3637.w));
        let x_3640 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3639.x, x_3640.y, x_3639.y, x_3639.z);
        let x_3642 : i32 = u_xlati37;
        let x_3645 : i32 = u_xlati37;
        let x_3649 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3642 + 2i) / 4i)][((x_3645 + 2i) % 4i)];
        let x_3651 : vec3<f32> = vs_TEXCOORD7;
        let x_3654 : vec4<f32> = u_xlat11;
        let x_3656 : vec3<f32> = ((vec3<f32>(x_3649.x, x_3649.y, x_3649.w) * vec3<f32>(x_3651.z, x_3651.z, x_3651.z)) + vec3<f32>(x_3654.x, x_3654.z, x_3654.w));
        let x_3657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3656.x, x_3657.y, x_3656.y, x_3656.z);
        let x_3659 : vec4<f32> = u_xlat11;
        let x_3661 : i32 = u_xlati37;
        let x_3664 : i32 = u_xlati37;
        let x_3668 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3661 + 3i) / 4i)][((x_3664 + 3i) % 4i)];
        let x_3670 : vec3<f32> = (vec3<f32>(x_3659.x, x_3659.z, x_3659.w) + vec3<f32>(x_3668.x, x_3668.y, x_3668.w));
        let x_3671 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3670.x, x_3671.y, x_3670.y, x_3670.z);
        let x_3673 : vec4<f32> = u_xlat11;
        let x_3675 : vec4<f32> = u_xlat11;
        let x_3677 : vec2<f32> = (vec2<f32>(x_3673.x, x_3673.z) / vec2<f32>(x_3675.w, x_3675.w));
        let x_3678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3677.x, x_3678.y, x_3677.y, x_3678.w);
        let x_3680 : vec4<f32> = u_xlat11;
        let x_3683 : vec2<f32> = ((vec2<f32>(x_3680.x, x_3680.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3684 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3683.x, x_3684.y, x_3683.y, x_3684.w);
        let x_3686 : vec4<f32> = u_xlat11;
        let x_3690 : vec2<f32> = clamp(vec2<f32>(x_3686.x, x_3686.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3690.x, x_3691.y, x_3690.y, x_3691.w);
        let x_3693 : i32 = u_xlati83;
        let x_3695 : vec4<f32> = x_1695.x_AdditionalLightsCookieAtlasUVRects[x_3693];
        let x_3697 : vec4<f32> = u_xlat11;
        let x_3700 : i32 = u_xlati83;
        let x_3702 : vec4<f32> = x_1695.x_AdditionalLightsCookieAtlasUVRects[x_3700];
        let x_3704 : vec2<f32> = ((vec2<f32>(x_3695.x, x_3695.y) * vec2<f32>(x_3697.x, x_3697.z)) + vec2<f32>(x_3702.z, x_3702.w));
        let x_3705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3704.x, x_3705.y, x_3704.y, x_3705.w);
      } else {
        let x_3708 : i32 = u_xlati88;
        u_xlatb88 = (x_3708 == 1i);
        let x_3710 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3710);
        let x_3712 : i32 = u_xlati88;
        if ((x_3712 != 0i)) {
          let x_3716 : vec3<f32> = vs_TEXCOORD7;
          let x_3718 : i32 = u_xlati37;
          let x_3721 : i32 = u_xlati37;
          let x_3725 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3718 + 1i) / 4i)][((x_3721 + 1i) % 4i)];
          let x_3727 : vec2<f32> = (vec2<f32>(x_3716.y, x_3716.y) * vec2<f32>(x_3725.x, x_3725.y));
          let x_3728 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3727.x, x_3727.y, x_3728.z, x_3728.w);
          let x_3730 : i32 = u_xlati37;
          let x_3732 : i32 = u_xlati37;
          let x_3735 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[(x_3730 / 4i)][(x_3732 % 4i)];
          let x_3737 : vec3<f32> = vs_TEXCOORD7;
          let x_3740 : vec4<f32> = u_xlat12;
          let x_3742 : vec2<f32> = ((vec2<f32>(x_3735.x, x_3735.y) * vec2<f32>(x_3737.x, x_3737.x)) + vec2<f32>(x_3740.x, x_3740.y));
          let x_3743 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3742.x, x_3742.y, x_3743.z, x_3743.w);
          let x_3745 : i32 = u_xlati37;
          let x_3748 : i32 = u_xlati37;
          let x_3752 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3745 + 2i) / 4i)][((x_3748 + 2i) % 4i)];
          let x_3754 : vec3<f32> = vs_TEXCOORD7;
          let x_3757 : vec4<f32> = u_xlat12;
          let x_3759 : vec2<f32> = ((vec2<f32>(x_3752.x, x_3752.y) * vec2<f32>(x_3754.z, x_3754.z)) + vec2<f32>(x_3757.x, x_3757.y));
          let x_3760 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3759.x, x_3759.y, x_3760.z, x_3760.w);
          let x_3762 : vec4<f32> = u_xlat12;
          let x_3764 : i32 = u_xlati37;
          let x_3767 : i32 = u_xlati37;
          let x_3771 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3764 + 3i) / 4i)][((x_3767 + 3i) % 4i)];
          let x_3773 : vec2<f32> = (vec2<f32>(x_3762.x, x_3762.y) + vec2<f32>(x_3771.x, x_3771.y));
          let x_3774 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3773.x, x_3773.y, x_3774.z, x_3774.w);
          let x_3776 : vec4<f32> = u_xlat12;
          let x_3779 : vec2<f32> = ((vec2<f32>(x_3776.x, x_3776.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3780 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3779.x, x_3779.y, x_3780.z, x_3780.w);
          let x_3782 : vec4<f32> = u_xlat12;
          let x_3784 : vec2<f32> = fract(vec2<f32>(x_3782.x, x_3782.y));
          let x_3785 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3784.x, x_3784.y, x_3785.z, x_3785.w);
          let x_3787 : i32 = u_xlati83;
          let x_3789 : vec4<f32> = x_1695.x_AdditionalLightsCookieAtlasUVRects[x_3787];
          let x_3791 : vec4<f32> = u_xlat12;
          let x_3794 : i32 = u_xlati83;
          let x_3796 : vec4<f32> = x_1695.x_AdditionalLightsCookieAtlasUVRects[x_3794];
          let x_3798 : vec2<f32> = ((vec2<f32>(x_3789.x, x_3789.y) * vec2<f32>(x_3791.x, x_3791.y)) + vec2<f32>(x_3796.z, x_3796.w));
          let x_3799 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3798.x, x_3799.y, x_3798.y, x_3799.w);
        } else {
          let x_3802 : vec3<f32> = vs_TEXCOORD7;
          let x_3804 : i32 = u_xlati37;
          let x_3807 : i32 = u_xlati37;
          let x_3811 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3804 + 1i) / 4i)][((x_3807 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3802.y, x_3802.y, x_3802.y, x_3802.y) * x_3811);
          let x_3813 : i32 = u_xlati37;
          let x_3815 : i32 = u_xlati37;
          let x_3818 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[(x_3813 / 4i)][(x_3815 % 4i)];
          let x_3819 : vec3<f32> = vs_TEXCOORD7;
          let x_3822 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3818 * vec4<f32>(x_3819.x, x_3819.x, x_3819.x, x_3819.x)) + x_3822);
          let x_3824 : i32 = u_xlati37;
          let x_3827 : i32 = u_xlati37;
          let x_3831 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3824 + 2i) / 4i)][((x_3827 + 2i) % 4i)];
          let x_3832 : vec3<f32> = vs_TEXCOORD7;
          let x_3835 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3831 * vec4<f32>(x_3832.z, x_3832.z, x_3832.z, x_3832.z)) + x_3835);
          let x_3837 : vec4<f32> = u_xlat12;
          let x_3838 : i32 = u_xlati37;
          let x_3841 : i32 = u_xlati37;
          let x_3845 : vec4<f32> = x_1695.x_AdditionalLightsWorldToLights[((x_3838 + 3i) / 4i)][((x_3841 + 3i) % 4i)];
          u_xlat12 = (x_3837 + x_3845);
          let x_3847 : vec4<f32> = u_xlat12;
          let x_3849 : vec4<f32> = u_xlat12;
          let x_3851 : vec3<f32> = (vec3<f32>(x_3847.x, x_3847.y, x_3847.z) / vec3<f32>(x_3849.w, x_3849.w, x_3849.w));
          let x_3852 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3851.x, x_3851.y, x_3851.z, x_3852.w);
          let x_3854 : vec4<f32> = u_xlat12;
          let x_3856 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3854.x, x_3854.y, x_3854.z), vec3<f32>(x_3856.x, x_3856.y, x_3856.z));
          let x_3859 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3859);
          let x_3861 : f32 = u_xlat88;
          let x_3863 : vec4<f32> = u_xlat12;
          let x_3865 : vec3<f32> = (vec3<f32>(x_3861, x_3861, x_3861) * vec3<f32>(x_3863.x, x_3863.y, x_3863.z));
          let x_3866 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3865.x, x_3865.y, x_3865.z, x_3866.w);
          let x_3868 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3868.x, x_3868.y, x_3868.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3873 : f32 = u_xlat88;
          u_xlat88 = max(x_3873, 0.00000099999999747524f);
          let x_3876 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3876);
          let x_3878 : f32 = u_xlat88;
          let x_3880 : vec4<f32> = u_xlat12;
          let x_3882 : vec3<f32> = (vec3<f32>(x_3878, x_3878, x_3878) * vec3<f32>(x_3880.z, x_3880.x, x_3880.y));
          let x_3883 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3882.x, x_3882.y, x_3882.z, x_3883.w);
          let x_3886 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3886);
          let x_3890 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3890, 0.0f, 1.0f);
          let x_3895 : vec4<f32> = u_xlat13;
          let x_3897 : vec4<bool> = (vec4<f32>(x_3895.y, x_3895.y, x_3895.z, x_3895.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3898 : vec2<bool> = vec2<bool>(x_3897.x, x_3897.z);
          let x_3899 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3898.x, x_3899.y, x_3898.y);
          let x_3902 : bool = u_xlatb37.x;
          if (x_3902) {
            let x_3907 : f32 = u_xlat13.x;
            x_3903 = x_3907;
          } else {
            let x_3910 : f32 = u_xlat13.x;
            x_3903 = -(x_3910);
          }
          let x_3912 : f32 = x_3903;
          u_xlat37.x = x_3912;
          let x_3915 : bool = u_xlatb37.z;
          if (x_3915) {
            let x_3920 : f32 = u_xlat13.x;
            x_3916 = x_3920;
          } else {
            let x_3923 : f32 = u_xlat13.x;
            x_3916 = -(x_3923);
          }
          let x_3925 : f32 = x_3916;
          u_xlat37.z = x_3925;
          let x_3927 : vec4<f32> = u_xlat12;
          let x_3929 : f32 = u_xlat88;
          let x_3932 : vec3<f32> = u_xlat37;
          let x_3934 : vec2<f32> = ((vec2<f32>(x_3927.x, x_3927.y) * vec2<f32>(x_3929, x_3929)) + vec2<f32>(x_3932.x, x_3932.z));
          let x_3935 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3934.x, x_3935.y, x_3934.y);
          let x_3937 : vec3<f32> = u_xlat37;
          let x_3940 : vec2<f32> = ((vec2<f32>(x_3937.x, x_3937.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3941 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3940.x, x_3941.y, x_3940.y);
          let x_3943 : vec3<f32> = u_xlat37;
          let x_3947 : vec2<f32> = clamp(vec2<f32>(x_3943.x, x_3943.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3948 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3947.x, x_3948.y, x_3947.y);
          let x_3950 : i32 = u_xlati83;
          let x_3952 : vec4<f32> = x_1695.x_AdditionalLightsCookieAtlasUVRects[x_3950];
          let x_3954 : vec3<f32> = u_xlat37;
          let x_3957 : i32 = u_xlati83;
          let x_3959 : vec4<f32> = x_1695.x_AdditionalLightsCookieAtlasUVRects[x_3957];
          let x_3961 : vec2<f32> = ((vec2<f32>(x_3952.x, x_3952.y) * vec2<f32>(x_3954.x, x_3954.z)) + vec2<f32>(x_3959.z, x_3959.w));
          let x_3962 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3961.x, x_3962.y, x_3961.y, x_3962.w);
        }
      }
      let x_3969 : vec4<f32> = u_xlat11;
      let x_3971 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3969.x, x_3969.z), 0.0f);
      u_xlat11 = x_3971;
      let x_3973 : bool = u_xlatb31.y;
      if (x_3973) {
        let x_3978 : f32 = u_xlat11.w;
        x_3974 = x_3978;
      } else {
        let x_3981 : f32 = u_xlat11.x;
        x_3974 = x_3981;
      }
      let x_3982 : f32 = x_3974;
      u_xlat88 = x_3982;
      let x_3984 : bool = u_xlatb31.x;
      if (x_3984) {
        let x_3988 : vec4<f32> = u_xlat11;
        x_3985 = vec3<f32>(x_3988.x, x_3988.y, x_3988.z);
      } else {
        let x_3991 : f32 = u_xlat88;
        x_3985 = vec3<f32>(x_3991, x_3991, x_3991);
      }
      let x_3993 : vec3<f32> = x_3985;
      let x_3994 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3993.x, x_3993.y, x_3993.z, x_3994.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4000 : vec4<f32> = u_xlat11;
    let x_4002 : i32 = u_xlati83;
    let x_4004 : vec4<f32> = x_2134.x_AdditionalLightsColor[x_4002];
    let x_4006 : vec3<f32> = (vec3<f32>(x_4000.x, x_4000.y, x_4000.z) * vec3<f32>(x_4004.x, x_4004.y, x_4004.z));
    let x_4007 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4006.x, x_4006.y, x_4006.z, x_4007.w);
    let x_4009 : f32 = u_xlat84;
    let x_4010 : f32 = u_xlat87;
    u_xlat83 = (x_4009 * x_4010);
    let x_4012 : vec4<f32> = u_xlat2;
    let x_4014 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4012.x, x_4012.y, x_4012.z), vec3<f32>(x_4014.x, x_4014.y, x_4014.z));
    let x_4017 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4017, 0.0f, 1.0f);
    let x_4019 : f32 = u_xlat83;
    let x_4020 : f32 = u_xlat84;
    u_xlat83 = (x_4019 * x_4020);
    let x_4022 : f32 = u_xlat83;
    let x_4024 : vec4<f32> = u_xlat11;
    let x_4026 : vec3<f32> = (vec3<f32>(x_4022, x_4022, x_4022) * vec3<f32>(x_4024.x, x_4024.y, x_4024.z));
    let x_4027 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4026.x, x_4026.y, x_4026.z, x_4027.w);
    let x_4029 : vec4<f32> = u_xlat9;
    let x_4031 : f32 = u_xlat85;
    let x_4034 : vec3<f32> = u_xlat27;
    let x_4035 : vec3<f32> = ((vec3<f32>(x_4029.x, x_4029.y, x_4029.z) * vec3<f32>(x_4031, x_4031, x_4031)) + x_4034);
    let x_4036 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4035.x, x_4035.y, x_4035.z, x_4036.w);
    let x_4038 : vec4<f32> = u_xlat9;
    let x_4040 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4038.x, x_4038.y, x_4038.z), vec3<f32>(x_4040.x, x_4040.y, x_4040.z));
    let x_4043 : f32 = u_xlat83;
    u_xlat83 = max(x_4043, 1.17549435e-38f);
    let x_4045 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4045);
    let x_4047 : f32 = u_xlat83;
    let x_4049 : vec4<f32> = u_xlat9;
    let x_4051 : vec3<f32> = (vec3<f32>(x_4047, x_4047, x_4047) * vec3<f32>(x_4049.x, x_4049.y, x_4049.z));
    let x_4052 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4051.x, x_4051.y, x_4051.z, x_4052.w);
    let x_4054 : vec4<f32> = u_xlat2;
    let x_4056 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4054.x, x_4054.y, x_4054.z), vec3<f32>(x_4056.x, x_4056.y, x_4056.z));
    let x_4059 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4059, 0.0f, 1.0f);
    let x_4061 : vec4<f32> = u_xlat10;
    let x_4063 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4061.x, x_4061.y, x_4061.z), vec3<f32>(x_4063.x, x_4063.y, x_4063.z));
    let x_4066 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4066, 0.0f, 1.0f);
    let x_4068 : f32 = u_xlat83;
    let x_4069 : f32 = u_xlat83;
    u_xlat83 = (x_4068 * x_4069);
    let x_4071 : f32 = u_xlat83;
    let x_4073 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4071 * x_4073) + 1.00001001358032226562f);
    let x_4076 : f32 = u_xlat84;
    let x_4077 : f32 = u_xlat84;
    u_xlat84 = (x_4076 * x_4077);
    let x_4079 : f32 = u_xlat83;
    let x_4080 : f32 = u_xlat83;
    u_xlat83 = (x_4079 * x_4080);
    let x_4082 : f32 = u_xlat84;
    u_xlat84 = max(x_4082, 0.10000000149011611938f);
    let x_4084 : f32 = u_xlat83;
    let x_4085 : f32 = u_xlat84;
    u_xlat83 = (x_4084 * x_4085);
    let x_4088 : f32 = u_xlat4.x;
    let x_4089 : f32 = u_xlat83;
    u_xlat83 = (x_4088 * x_4089);
    let x_4092 : f32 = u_xlat5.x;
    let x_4093 : f32 = u_xlat83;
    u_xlat83 = (x_4092 / x_4093);
    let x_4095 : vec4<f32> = u_xlat0;
    let x_4097 : f32 = u_xlat83;
    let x_4100 : vec3<f32> = u_xlat30;
    let x_4101 : vec3<f32> = ((vec3<f32>(x_4095.x, x_4095.y, x_4095.z) * vec3<f32>(x_4097, x_4097, x_4097)) + x_4100);
    let x_4102 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4101.x, x_4101.y, x_4101.z, x_4102.w);
    let x_4104 : vec4<f32> = u_xlat9;
    let x_4106 : vec4<f32> = u_xlat11;
    let x_4109 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4104.x, x_4104.y, x_4104.z) * vec3<f32>(x_4106.x, x_4106.y, x_4106.z)) + x_4109);

    continuing {
      let x_4111 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4111 + bitcast<u32>(1i));
    }
  }
  let x_4113 : vec4<f32> = u_xlat7;
  let x_4115 : vec4<f32> = u_xlat6;
  let x_4118 : vec3<f32> = u_xlat29;
  let x_4119 : vec3<f32> = ((vec3<f32>(x_4113.x, x_4113.y, x_4113.z) * vec3<f32>(x_4115.x, x_4115.y, x_4115.z)) + x_4118);
  let x_4120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4119.x, x_4119.y, x_4119.z, x_4120.w);
  let x_4122 : vec3<f32> = u_xlat34;
  let x_4123 : vec4<f32> = u_xlat0;
  let x_4125 : vec3<f32> = (x_4122 + vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
  let x_4126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
  let x_4129 : f32 = u_xlat3.x;
  let x_4131 : f32 = u_xlat3.x;
  u_xlat78 = (x_4129 * -(x_4131));
  let x_4134 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4134);
  let x_4136 : vec4<f32> = u_xlat0;
  let x_4139 : vec4<f32> = x_29.unity_FogColor;
  let x_4142 : vec3<f32> = (vec3<f32>(x_4136.x, x_4136.y, x_4136.z) + -(vec3<f32>(x_4139.x, x_4139.y, x_4139.z)));
  let x_4143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4142.x, x_4142.y, x_4142.z, x_4143.w);
  let x_4147 : f32 = u_xlat78;
  let x_4149 : vec4<f32> = u_xlat0;
  let x_4153 : vec4<f32> = x_29.unity_FogColor;
  let x_4155 : vec3<f32> = ((vec3<f32>(x_4147, x_4147, x_4147) * vec3<f32>(x_4149.x, x_4149.y, x_4149.z)) + vec3<f32>(x_4153.x, x_4153.y, x_4153.z));
  let x_4156 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4155.x, x_4155.y, x_4155.z, x_4156.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


