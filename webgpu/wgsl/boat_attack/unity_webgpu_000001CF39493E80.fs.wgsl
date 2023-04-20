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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
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

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_162 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat81 : f32;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb32 : bool;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb55 : bool;

var<private> u_xlat55 : f32;

@group(1) @binding(4) var<uniform> x_1855 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2295 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

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
  var x_1805 : f32;
  var x_1938 : f32;
  var x_1949 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2433 : f32;
  var x_2444 : f32;
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
  var x_4063 : f32;
  var x_4076 : f32;
  var x_4134 : f32;
  var x_4145 : vec3<f32>;
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
  let x_116 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_116;
  let x_119 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_119;
  let x_124 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_124;
  let x_128 : bool = u_xlatb27;
  if (x_128) {
    let x_133 : vec4<f32> = u_xlat2;
    x_130 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  } else {
    let x_136 : vec4<f32> = u_xlat3;
    x_130 = vec3<f32>(x_136.x, x_136.y, x_136.z);
  }
  let x_138 : vec3<f32> = x_130;
  u_xlat27 = x_138;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_140, x_141);
  let x_145 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_145);
  let x_148 : vec4<f32> = u_xlat2;
  let x_150 : vec3<f32> = vs_TEXCOORD3;
  let x_151 : vec3<f32> = (vec3<f32>(x_148.x, x_148.x, x_148.x) * x_150);
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : vec3<f32> = vs_TEXCOORD7;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_168 : vec3<f32> = (x_154 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD7;
  let x_174 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_177 : vec3<f32> = (x_172 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec3<f32> = vs_TEXCOORD7;
  let x_184 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  let x_187 : vec3<f32> = (x_181 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec3<f32> = vs_TEXCOORD7;
  let x_193 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  let x_196 : vec3<f32> = (x_191 + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec4<f32> = u_xlat5;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec4<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_226 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_226 < x_229);
  let x_232 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_232);
  let x_237 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_241);
  let x_245 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_245);
  let x_249 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_249);
  let x_255 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_255);
  let x_259 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_259);
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = u_xlat4;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(x_264.y, x_264.z, x_264.w));
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_272 : vec3<f32> = max(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_272.x, x_272.y, x_272.z);
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_275, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_283 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_283) + 4.0f);
  let x_290 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_290);
  let x_294 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_294) << bitcast<u32>(2i));
  let x_298 : vec3<f32> = vs_TEXCOORD7;
  let x_300 : i32 = u_xlati3;
  let x_303 : i32 = u_xlati3;
  let x_307 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_300 + 1i) / 4i)][((x_303 + 1i) % 4i)];
  u_xlat29 = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : i32 = u_xlati3;
  let x_312 : i32 = u_xlati3;
  let x_315 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_310 / 4i)][(x_312 % 4i)];
  let x_317 : vec3<f32> = vs_TEXCOORD7;
  let x_320 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + x_320);
  let x_322 : i32 = u_xlati3;
  let x_325 : i32 = u_xlati3;
  let x_329 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_322 + 2i) / 4i)][((x_325 + 2i) % 4i)];
  let x_331 : vec3<f32> = vs_TEXCOORD7;
  let x_334 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
  let x_336 : vec3<f32> = u_xlat29;
  let x_337 : i32 = u_xlati3;
  let x_340 : i32 = u_xlati3;
  let x_344 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_337 + 3i) / 4i)][((x_340 + 3i) % 4i)];
  let x_346 : vec3<f32> = (x_336 + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_352 : f32 = vs_TEXCOORD7.y;
  let x_354 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat81 = (x_352 * x_354);
  let x_357 : f32 = x_29.unity_MatrixV[0i].z;
  let x_359 : f32 = vs_TEXCOORD7.x;
  let x_361 : f32 = u_xlat81;
  u_xlat81 = ((x_357 * x_359) + x_361);
  let x_364 : f32 = x_29.unity_MatrixV[2i].z;
  let x_366 : f32 = vs_TEXCOORD7.z;
  let x_368 : f32 = u_xlat81;
  u_xlat81 = ((x_364 * x_366) + x_368);
  let x_370 : f32 = u_xlat81;
  let x_372 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat81 = (x_370 + x_372);
  let x_374 : f32 = u_xlat81;
  let x_377 : f32 = x_29.x_ProjectionParams.y;
  u_xlat81 = (-(x_374) + -(x_377));
  let x_380 : f32 = u_xlat81;
  u_xlat81 = max(x_380, 0.0f);
  let x_382 : f32 = u_xlat81;
  let x_385 : f32 = x_29.unity_FogParams.x;
  u_xlat81 = (x_382 * x_385);
  u_xlat2.w = 1.0f;
  let x_394 : vec4<f32> = x_391.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_394, x_395);
  let x_400 : vec4<f32> = x_391.unity_SHAg;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_391.unity_SHAb;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_406, x_407);
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_410.y, x_410.z, x_410.z, x_410.x) * vec4<f32>(x_412.x, x_412.y, x_412.z, x_412.z));
  let x_417 : vec4<f32> = x_391.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_391.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_391.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_435 : f32 = u_xlat2.y;
  let x_437 : f32 = u_xlat2.y;
  u_xlat80 = (x_435 * x_437);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  let x_444 : f32 = u_xlat80;
  u_xlat80 = ((x_440 * x_442) + -(x_444));
  let x_449 : vec4<f32> = x_391.unity_SHC;
  let x_451 : f32 = u_xlat80;
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec3<f32> = ((vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(x_451, x_451, x_451)) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec3<f32> = max(vec3<f32>(x_466.x, x_466.y, x_466.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : f32 = u_xlat1;
  u_xlat80 = ((-(x_471) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_477 : f32 = u_xlat80;
  u_xlat82 = (-(x_477) + 1.0f);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : f32 = u_xlat80;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482, x_482, x_482));
  let x_485 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : f32 = u_xlat1;
  let x_496 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.x, x_496.y, x_496.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat1;
  let x_509 : f32 = u_xlat1;
  u_xlat80 = (x_508 * x_509);
  let x_511 : f32 = u_xlat80;
  u_xlat80 = max(x_511, 0.0078125f);
  let x_515 : f32 = u_xlat80;
  let x_516 : f32 = u_xlat80;
  u_xlat83 = (x_515 * x_516);
  let x_520 : f32 = u_xlat0.w;
  let x_521 : f32 = u_xlat82;
  u_xlat78 = (x_520 + x_521);
  let x_523 : f32 = u_xlat78;
  u_xlat78 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat80;
  u_xlat82 = ((x_525 * 4.0f) + 2.0f);
  let x_531 : f32 = x_162.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_531);
  let x_533 : bool = u_xlatb6;
  if (x_533) {
    let x_537 : f32 = x_162.x_MainLightShadowParams.y;
    u_xlatb6 = (x_537 == 1.0f);
    let x_539 : bool = u_xlatb6;
    if (x_539) {
      let x_542 : vec4<f32> = u_xlat3;
      let x_545 : vec4<f32> = x_162.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y) + x_545);
      let x_548 : vec4<f32> = u_xlat6;
      let x_549 : vec2<f32> = vec2<f32>(x_548.x, x_548.y);
      let x_551 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_549.x, x_549.y, x_551);
      let x_564 : vec3<f32> = txVec0;
      let x_566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_564.xy, x_564.z);
      u_xlat7.x = x_566;
      let x_569 : vec4<f32> = u_xlat6;
      let x_570 : vec2<f32> = vec2<f32>(x_569.z, x_569.w);
      let x_572 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_570.x, x_570.y, x_572);
      let x_579 : vec3<f32> = txVec1;
      let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_579.xy, x_579.z);
      u_xlat7.y = x_581;
      let x_583 : vec4<f32> = u_xlat3;
      let x_586 : vec4<f32> = x_162.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y) + x_586);
      let x_589 : vec4<f32> = u_xlat6;
      let x_590 : vec2<f32> = vec2<f32>(x_589.x, x_589.y);
      let x_592 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_590.x, x_590.y, x_592);
      let x_599 : vec3<f32> = txVec2;
      let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_599.xy, x_599.z);
      u_xlat7.z = x_601;
      let x_604 : vec4<f32> = u_xlat6;
      let x_605 : vec2<f32> = vec2<f32>(x_604.z, x_604.w);
      let x_607 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_605.x, x_605.y, x_607);
      let x_614 : vec3<f32> = txVec3;
      let x_616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_614.xy, x_614.z);
      u_xlat7.w = x_616;
      let x_618 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_618, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_626 : f32 = x_162.x_MainLightShadowParams.y;
      u_xlatb32 = (x_626 == 2.0f);
      let x_628 : bool = u_xlatb32;
      if (x_628) {
        let x_633 : vec4<f32> = u_xlat3;
        let x_636 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_633.x, x_633.y) * vec2<f32>(x_636.z, x_636.w)) + vec2<f32>(0.5f, 0.5f));
        let x_642 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_642);
        let x_644 : vec4<f32> = u_xlat3;
        let x_647 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_650 : vec2<f32> = u_xlat32;
        let x_652 : vec2<f32> = ((vec2<f32>(x_644.x, x_644.y) * vec2<f32>(x_647.z, x_647.w)) + -(x_650));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_656 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_656.x, x_656.x, x_656.y, x_656.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_661 : vec4<f32> = u_xlat8;
        let x_663 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_661.x, x_661.x, x_661.z, x_661.z) * vec4<f32>(x_663.x, x_663.x, x_663.z, x_663.z));
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_667.y, x_667.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_672 : vec4<f32> = u_xlat9;
        let x_675 : vec4<f32> = u_xlat7;
        let x_678 : vec2<f32> = ((vec2<f32>(x_672.x, x_672.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_675.x, x_675.y)));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_679.y, x_678.y, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        let x_685 : vec2<f32> = (-(vec2<f32>(x_681.x, x_681.y)) + vec2<f32>(1.0f, 1.0f));
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_689.x, x_689.y), vec2<f32>(0.0f, 0.0f));
        let x_693 : vec2<f32> = u_xlat61;
        let x_695 : vec2<f32> = u_xlat61;
        let x_697 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_693) * x_695) + vec2<f32>(x_697.x, x_697.y));
        let x_700 : vec4<f32> = u_xlat7;
        let x_702 : vec2<f32> = max(vec2<f32>(x_700.x, x_700.y), vec2<f32>(0.0f, 0.0f));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        let x_708 : vec4<f32> = u_xlat7;
        let x_711 : vec4<f32> = u_xlat8;
        let x_713 : vec2<f32> = ((-(vec2<f32>(x_705.x, x_705.y)) * vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(x_711.y, x_711.w));
        let x_714 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_716 + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec4<f32> = u_xlat7;
        let x_720 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) + vec2<f32>(1.0f, 1.0f));
        let x_721 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_724 : vec4<f32> = u_xlat8;
        let x_728 : vec2<f32> = (vec2<f32>(x_724.x, x_724.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_729 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_732 : vec4<f32> = u_xlat9;
        let x_734 : vec2<f32> = (vec2<f32>(x_732.x, x_732.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_737 : vec2<f32> = u_xlat61;
        let x_738 : vec2<f32> = (x_737 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_738.x, x_738.y, x_739.z, x_739.w);
        let x_742 : vec4<f32> = u_xlat7;
        let x_744 : vec2<f32> = (vec2<f32>(x_742.x, x_742.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_745 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat8;
        let x_749 : vec2<f32> = (vec2<f32>(x_747.y, x_747.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_753 : f32 = u_xlat9.x;
        u_xlat10.z = x_753;
        let x_756 : f32 = u_xlat7.x;
        u_xlat10.w = x_756;
        let x_759 : f32 = u_xlat12.x;
        u_xlat11.z = x_759;
        let x_762 : f32 = u_xlat59.x;
        u_xlat11.w = x_762;
        let x_764 : vec4<f32> = u_xlat10;
        let x_766 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_764.z, x_764.w, x_764.x, x_764.z) + vec4<f32>(x_766.z, x_766.w, x_766.x, x_766.z));
        let x_770 : f32 = u_xlat10.y;
        u_xlat9.z = x_770;
        let x_773 : f32 = u_xlat7.y;
        u_xlat9.w = x_773;
        let x_776 : f32 = u_xlat11.y;
        u_xlat12.z = x_776;
        let x_779 : f32 = u_xlat59.y;
        u_xlat12.w = x_779;
        let x_781 : vec4<f32> = u_xlat9;
        let x_783 : vec4<f32> = u_xlat12;
        let x_785 : vec3<f32> = (vec3<f32>(x_781.z, x_781.y, x_781.w) + vec3<f32>(x_783.z, x_783.y, x_783.w));
        let x_786 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat11;
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.z, x_788.w) / vec3<f32>(x_790.z, x_790.w, x_790.y));
        let x_793 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat9;
        let x_801 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_802 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat12;
        let x_806 : vec4<f32> = u_xlat7;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.z, x_804.y, x_804.w) / vec3<f32>(x_806.x, x_806.y, x_806.z));
        let x_809 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat10;
        let x_813 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat9;
        let x_819 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_821 : vec3<f32> = (vec3<f32>(x_816.y, x_816.x, x_816.z) * vec3<f32>(x_819.x, x_819.x, x_819.x));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat10;
        let x_827 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_829 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_827.y, x_827.y, x_827.y));
        let x_830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_833 : f32 = u_xlat10.x;
        u_xlat9.w = x_833;
        let x_835 : vec2<f32> = u_xlat32;
        let x_838 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.y, x_841.w, x_841.x, x_841.w));
        let x_844 : vec2<f32> = u_xlat32;
        let x_846 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_849 : vec4<f32> = u_xlat9;
        let x_851 : vec2<f32> = ((x_844 * vec2<f32>(x_846.x, x_846.y)) + vec2<f32>(x_849.z, x_849.w));
        let x_852 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_855 : f32 = u_xlat9.y;
        u_xlat10.w = x_855;
        let x_857 : vec4<f32> = u_xlat10;
        let x_858 : vec2<f32> = vec2<f32>(x_857.y, x_857.z);
        let x_859 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_859.x, x_858.x, x_859.z, x_858.y);
        let x_862 : vec2<f32> = u_xlat32;
        let x_865 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_862.x, x_862.y, x_862.x, x_862.y) * vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y)) + vec4<f32>(x_868.x, x_868.y, x_868.z, x_868.y));
        let x_871 : vec2<f32> = u_xlat32;
        let x_874 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_877 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_871.x, x_871.y, x_871.x, x_871.y) * vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y)) + vec4<f32>(x_877.w, x_877.y, x_877.w, x_877.z));
        let x_880 : vec2<f32> = u_xlat32;
        let x_883 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_880.x, x_880.y, x_880.x, x_880.y) * vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y)) + vec4<f32>(x_886.x, x_886.w, x_886.z, x_886.w));
        let x_890 : vec4<f32> = u_xlat7;
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_890.x, x_890.x, x_890.x, x_890.y) * vec4<f32>(x_892.z, x_892.w, x_892.y, x_892.z));
        let x_896 : vec4<f32> = u_xlat7;
        let x_898 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_896.y, x_896.y, x_896.z, x_896.z) * x_898);
        let x_901 : f32 = u_xlat7.z;
        let x_903 : f32 = u_xlat8.y;
        u_xlat32.x = (x_901 * x_903);
        let x_907 : vec4<f32> = u_xlat11;
        let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
        let x_910 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_918 : vec3<f32> = txVec4;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_918.xy, x_918.z);
        u_xlat58 = x_920;
        let x_922 : vec4<f32> = u_xlat11;
        let x_923 : vec2<f32> = vec2<f32>(x_922.z, x_922.w);
        let x_925 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_933 : vec3<f32> = txVec5;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_933.xy, x_933.z);
        u_xlat84 = x_935;
        let x_936 : f32 = u_xlat84;
        let x_938 : f32 = u_xlat14.y;
        u_xlat84 = (x_936 * x_938);
        let x_941 : f32 = u_xlat14.x;
        let x_942 : f32 = u_xlat58;
        let x_944 : f32 = u_xlat84;
        u_xlat58 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat12;
        let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.y);
        let x_950 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec6;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat84 = x_959;
        let x_961 : f32 = u_xlat14.z;
        let x_962 : f32 = u_xlat84;
        let x_964 : f32 = u_xlat58;
        u_xlat58 = ((x_961 * x_962) + x_964);
        let x_967 : vec4<f32> = u_xlat10;
        let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
        let x_970 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec7;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat84 = x_979;
        let x_981 : f32 = u_xlat14.w;
        let x_982 : f32 = u_xlat84;
        let x_984 : f32 = u_xlat58;
        u_xlat58 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat13;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec8;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat84 = x_999;
        let x_1001 : f32 = u_xlat15.x;
        let x_1002 : f32 = u_xlat84;
        let x_1004 : f32 = u_xlat58;
        u_xlat58 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat13;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec9;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat84 = x_1019;
        let x_1021 : f32 = u_xlat15.y;
        let x_1022 : f32 = u_xlat84;
        let x_1024 : f32 = u_xlat58;
        u_xlat58 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat10;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.z, x_1027.w);
        let x_1030 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec10;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1037.xy, x_1037.z);
        u_xlat84 = x_1039;
        let x_1041 : f32 = u_xlat15.z;
        let x_1042 : f32 = u_xlat84;
        let x_1044 : f32 = u_xlat58;
        u_xlat58 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
        let x_1050 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec11;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat84 = x_1059;
        let x_1061 : f32 = u_xlat15.w;
        let x_1062 : f32 = u_xlat84;
        let x_1064 : f32 = u_xlat58;
        u_xlat58 = ((x_1061 * x_1062) + x_1064);
        let x_1067 : vec4<f32> = u_xlat9;
        let x_1068 : vec2<f32> = vec2<f32>(x_1067.z, x_1067.w);
        let x_1070 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
        let x_1077 : vec3<f32> = txVec12;
        let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
        u_xlat84 = x_1079;
        let x_1081 : f32 = u_xlat32.x;
        let x_1082 : f32 = u_xlat84;
        let x_1084 : f32 = u_xlat58;
        u_xlat6.x = ((x_1081 * x_1082) + x_1084);
      } else {
        let x_1088 : vec4<f32> = u_xlat3;
        let x_1091 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1091.z, x_1091.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1095 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1095);
        let x_1097 : vec4<f32> = u_xlat3;
        let x_1100 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1103 : vec2<f32> = u_xlat32;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + -(x_1103));
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1108.x, x_1108.x, x_1108.y, x_1108.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1111.x, x_1111.x, x_1111.z, x_1111.z) * vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1120 : vec2<f32> = (vec2<f32>(x_1116.y, x_1116.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1121.x, x_1120.x, x_1121.z, x_1120.y);
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1123.x, x_1123.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1126.x, x_1126.y)));
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1133 : vec2<f32> = (-(vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1134.y, x_1133.y, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec2<f32> = min(vec2<f32>(x_1136.x, x_1136.y), vec2<f32>(0.0f, 0.0f));
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat9;
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1147 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = ((-(vec2<f32>(x_1141.x, x_1141.y)) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.z));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = max(vec2<f32>(x_1152.x, x_1152.y), vec2<f32>(0.0f, 0.0f));
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = ((-(vec2<f32>(x_1157.x, x_1157.y)) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.y, x_1163.w));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1165.x, x_1166.z, x_1165.y);
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1168 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1172 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1172 * 0.08163200318813323975f);
        let x_1176 : vec2<f32> = u_xlat59;
        let x_1179 : vec2<f32> = (vec2<f32>(x_1176.y, x_1176.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1180 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1182.x, x_1182.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1186 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1186 * 0.08163200318813323975f);
        let x_1190 : f32 = u_xlat11.y;
        u_xlat9.x = x_1190;
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1199 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1200.x, x_1199.x, x_1200.z, x_1199.y);
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1202.x, x_1202.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1207.w);
        let x_1210 : f32 = u_xlat59.x;
        u_xlat8.y = x_1210;
        let x_1213 : f32 = u_xlat10.y;
        u_xlat8.w = x_1213;
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1215 + x_1216);
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1218.y, x_1218.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1227 : vec2<f32> = ((vec2<f32>(x_1224.y, x_1224.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1228 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1228.w);
        let x_1231 : f32 = u_xlat59.y;
        u_xlat10.y = x_1231;
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1234 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1233 + x_1234);
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1236 / x_1237);
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1239 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1245 : vec4<f32> = u_xlat10;
        let x_1246 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1245 / x_1246);
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1248 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1250 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1250.w, x_1250.x, x_1250.y, x_1250.z) * vec4<f32>(x_1253.x, x_1253.x, x_1253.x, x_1253.x));
        let x_1256 : vec4<f32> = u_xlat10;
        let x_1259 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1256.x, x_1256.w, x_1256.y, x_1256.z) * vec4<f32>(x_1259.y, x_1259.y, x_1259.y, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1263 : vec3<f32> = vec3<f32>(x_1262.y, x_1262.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1263.x, x_1264.y, x_1263.y, x_1263.z);
        let x_1267 : f32 = u_xlat10.x;
        u_xlat11.y = x_1267;
        let x_1269 : vec2<f32> = u_xlat32;
        let x_1272 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1275.y));
        let x_1278 : vec2<f32> = u_xlat32;
        let x_1280 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = ((x_1278 * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1289 : f32 = u_xlat11.y;
        u_xlat8.y = x_1289;
        let x_1292 : f32 = u_xlat10.z;
        u_xlat11.y = x_1292;
        let x_1294 : vec2<f32> = u_xlat32;
        let x_1297 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y) * vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y)) + vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1300.y));
        let x_1304 : vec2<f32> = u_xlat32;
        let x_1306 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1304 * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.w, x_1309.y));
        let x_1313 : f32 = u_xlat11.y;
        u_xlat8.z = x_1313;
        let x_1315 : vec2<f32> = u_xlat32;
        let x_1318 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.z));
        let x_1325 : f32 = u_xlat10.w;
        u_xlat11.y = x_1325;
        let x_1328 : vec2<f32> = u_xlat32;
        let x_1331 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1338 : vec2<f32> = u_xlat32;
        let x_1340 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat11;
        let x_1345 : vec2<f32> = ((x_1338 * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1346 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1345.x, x_1345.y, x_1346.z);
        let x_1349 : f32 = u_xlat11.y;
        u_xlat8.w = x_1349;
        let x_1352 : vec2<f32> = u_xlat32;
        let x_1354 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1359 : vec2<f32> = ((x_1352 * vec2<f32>(x_1354.x, x_1354.y)) + vec2<f32>(x_1357.x, x_1357.w));
        let x_1360 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec4<f32> = u_xlat11;
        let x_1363 : vec3<f32> = vec3<f32>(x_1362.x, x_1362.z, x_1362.w);
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1363.x, x_1364.y, x_1363.y, x_1363.z);
        let x_1366 : vec2<f32> = u_xlat32;
        let x_1369 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1372 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y) * vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y)) + vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1372.y));
        let x_1376 : vec2<f32> = u_xlat32;
        let x_1378 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1376 * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.w, x_1381.y));
        let x_1385 : f32 = u_xlat8.x;
        u_xlat10.x = x_1385;
        let x_1387 : vec2<f32> = u_xlat32;
        let x_1389 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1392 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1387 * vec2<f32>(x_1389.x, x_1389.y)) + vec2<f32>(x_1392.x, x_1392.y));
        let x_1396 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1396.x, x_1396.x, x_1396.x, x_1396.x) * x_1398);
        let x_1401 : vec4<f32> = u_xlat7;
        let x_1403 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1401.y, x_1401.y, x_1401.y, x_1401.y) * x_1403);
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1406.z, x_1406.z, x_1406.z, x_1406.z) * x_1408);
        let x_1410 : vec4<f32> = u_xlat7;
        let x_1412 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1410.w, x_1410.w, x_1410.w, x_1410.w) * x_1412);
        let x_1415 : vec4<f32> = u_xlat12;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
        let x_1418 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec13;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat84 = x_1427;
        let x_1429 : vec4<f32> = u_xlat12;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec14;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat8.x = x_1441;
        let x_1444 : f32 = u_xlat8.x;
        let x_1446 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1444 * x_1446);
        let x_1450 : f32 = u_xlat18.x;
        let x_1451 : f32 = u_xlat84;
        let x_1454 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1450 * x_1451) + x_1454);
        let x_1457 : vec4<f32> = u_xlat13;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec15;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat8.x = x_1469;
        let x_1472 : f32 = u_xlat18.z;
        let x_1474 : f32 = u_xlat8.x;
        let x_1476 : f32 = u_xlat84;
        u_xlat84 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec4<f32> = u_xlat15;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec16;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat8.x = x_1491;
        let x_1494 : f32 = u_xlat18.w;
        let x_1496 : f32 = u_xlat8.x;
        let x_1498 : f32 = u_xlat84;
        u_xlat84 = ((x_1494 * x_1496) + x_1498);
        let x_1501 : vec4<f32> = u_xlat14;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec17;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat8.x = x_1513;
        let x_1516 : f32 = u_xlat19.x;
        let x_1518 : f32 = u_xlat8.x;
        let x_1520 : f32 = u_xlat84;
        u_xlat84 = ((x_1516 * x_1518) + x_1520);
        let x_1523 : vec4<f32> = u_xlat14;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.z, x_1523.w);
        let x_1526 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec18;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat8.x = x_1535;
        let x_1538 : f32 = u_xlat19.y;
        let x_1540 : f32 = u_xlat8.x;
        let x_1542 : f32 = u_xlat84;
        u_xlat84 = ((x_1538 * x_1540) + x_1542);
        let x_1545 : vec2<f32> = u_xlat65;
        let x_1547 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec19;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
        u_xlat8.x = x_1556;
        let x_1559 : f32 = u_xlat19.z;
        let x_1561 : f32 = u_xlat8.x;
        let x_1563 : f32 = u_xlat84;
        u_xlat84 = ((x_1559 * x_1561) + x_1563);
        let x_1566 : vec4<f32> = u_xlat15;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.z, x_1566.w);
        let x_1569 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec20;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1576.xy, x_1576.z);
        u_xlat8.x = x_1578;
        let x_1581 : f32 = u_xlat19.w;
        let x_1583 : f32 = u_xlat8.x;
        let x_1585 : f32 = u_xlat84;
        u_xlat84 = ((x_1581 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat16;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.x, x_1588.y);
        let x_1591 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec21;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat8.x = x_1600;
        let x_1603 : f32 = u_xlat20.x;
        let x_1605 : f32 = u_xlat8.x;
        let x_1607 : f32 = u_xlat84;
        u_xlat84 = ((x_1603 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat16;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.z, x_1610.w);
        let x_1613 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec22;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat8.x = x_1622;
        let x_1625 : f32 = u_xlat20.y;
        let x_1627 : f32 = u_xlat8.x;
        let x_1629 : f32 = u_xlat84;
        u_xlat84 = ((x_1625 * x_1627) + x_1629);
        let x_1632 : vec3<f32> = u_xlat34;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
        let x_1635 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec23;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat8.x = x_1644;
        let x_1647 : f32 = u_xlat20.z;
        let x_1649 : f32 = u_xlat8.x;
        let x_1651 : f32 = u_xlat84;
        u_xlat84 = ((x_1647 * x_1649) + x_1651);
        let x_1654 : vec4<f32> = u_xlat17;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.x, x_1654.y);
        let x_1657 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec24;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat8.x = x_1666;
        let x_1669 : f32 = u_xlat20.w;
        let x_1671 : f32 = u_xlat8.x;
        let x_1673 : f32 = u_xlat84;
        u_xlat84 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat11;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec25;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat8.x = x_1688;
        let x_1691 : f32 = u_xlat7.x;
        let x_1693 : f32 = u_xlat8.x;
        let x_1695 : f32 = u_xlat84;
        u_xlat84 = ((x_1691 * x_1693) + x_1695);
        let x_1698 : vec4<f32> = u_xlat11;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.z, x_1698.w);
        let x_1701 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec26;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat7.x = x_1710;
        let x_1713 : f32 = u_xlat7.y;
        let x_1715 : f32 = u_xlat7.x;
        let x_1717 : f32 = u_xlat84;
        u_xlat84 = ((x_1713 * x_1715) + x_1717);
        let x_1720 : vec2<f32> = u_xlat62;
        let x_1722 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec27;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat7.x = x_1731;
        let x_1734 : f32 = u_xlat7.z;
        let x_1736 : f32 = u_xlat7.x;
        let x_1738 : f32 = u_xlat84;
        u_xlat84 = ((x_1734 * x_1736) + x_1738);
        let x_1741 : vec2<f32> = u_xlat32;
        let x_1743 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec28;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat32.x = x_1752;
        let x_1755 : f32 = u_xlat7.w;
        let x_1757 : f32 = u_xlat32.x;
        let x_1759 : f32 = u_xlat84;
        u_xlat6.x = ((x_1755 * x_1757) + x_1759);
      }
    }
  } else {
    let x_1764 : vec4<f32> = u_xlat3;
    let x_1765 : vec2<f32> = vec2<f32>(x_1764.x, x_1764.y);
    let x_1767 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1765.x, x_1765.y, x_1767);
    let x_1774 : vec3<f32> = txVec29;
    let x_1776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1774.xy, x_1774.z);
    u_xlat6.x = x_1776;
  }
  let x_1779 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1779) + 1.0f);
  let x_1784 : f32 = u_xlat6.x;
  let x_1786 : f32 = x_162.x_MainLightShadowParams.x;
  let x_1789 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1784 * x_1786) + x_1789);
  let x_1794 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_1794);
  let x_1798 : f32 = u_xlat3.z;
  u_xlatb55 = (x_1798 >= 1.0f);
  let x_1800 : bool = u_xlatb55;
  let x_1801 : bool = u_xlatb29;
  u_xlatb29 = (x_1800 | x_1801);
  let x_1803 : bool = u_xlatb29;
  if (x_1803) {
    x_1805 = 1.0f;
  } else {
    let x_1810 : f32 = u_xlat3.x;
    x_1805 = x_1810;
  }
  let x_1811 : f32 = x_1805;
  u_xlat3.x = x_1811;
  let x_1813 : vec3<f32> = vs_TEXCOORD7;
  let x_1815 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1817 : vec3<f32> = (x_1813 + -(x_1815));
  let x_1818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec4<f32> = u_xlat6;
  let x_1822 : vec4<f32> = u_xlat6;
  u_xlat29.x = dot(vec3<f32>(x_1820.x, x_1820.y, x_1820.z), vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1828 : f32 = u_xlat29.x;
  let x_1830 : f32 = x_162.x_MainLightShadowParams.z;
  let x_1833 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1828 * x_1830) + x_1833);
  let x_1835 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1835, 0.0f, 1.0f);
  let x_1838 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1838) + 1.0f);
  let x_1842 : f32 = u_xlat55;
  let x_1844 : f32 = u_xlat6.x;
  let x_1847 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1842 * x_1844) + x_1847);
  let x_1857 : f32 = x_1855.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_1857 == -1.0f));
  let x_1859 : bool = u_xlatb55;
  if (x_1859) {
    let x_1862 : vec3<f32> = vs_TEXCOORD7;
    let x_1865 : vec4<f32> = x_1855.x_MainLightWorldToLight[1i];
    let x_1867 : vec2<f32> = (vec2<f32>(x_1862.y, x_1862.y) * vec2<f32>(x_1865.x, x_1865.y));
    let x_1868 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
    let x_1871 : vec4<f32> = x_1855.x_MainLightWorldToLight[0i];
    let x_1873 : vec3<f32> = vs_TEXCOORD7;
    let x_1876 : vec4<f32> = u_xlat6;
    let x_1878 : vec2<f32> = ((vec2<f32>(x_1871.x, x_1871.y) * vec2<f32>(x_1873.x, x_1873.x)) + vec2<f32>(x_1876.x, x_1876.y));
    let x_1879 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1878.x, x_1878.y, x_1879.z, x_1879.w);
    let x_1882 : vec4<f32> = x_1855.x_MainLightWorldToLight[2i];
    let x_1884 : vec3<f32> = vs_TEXCOORD7;
    let x_1887 : vec4<f32> = u_xlat6;
    let x_1889 : vec2<f32> = ((vec2<f32>(x_1882.x, x_1882.y) * vec2<f32>(x_1884.z, x_1884.z)) + vec2<f32>(x_1887.x, x_1887.y));
    let x_1890 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1889.x, x_1889.y, x_1890.z, x_1890.w);
    let x_1892 : vec4<f32> = u_xlat6;
    let x_1895 : vec4<f32> = x_1855.x_MainLightWorldToLight[3i];
    let x_1897 : vec2<f32> = (vec2<f32>(x_1892.x, x_1892.y) + vec2<f32>(x_1895.x, x_1895.y));
    let x_1898 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1897.x, x_1897.y, x_1898.z, x_1898.w);
    let x_1900 : vec4<f32> = u_xlat6;
    let x_1903 : vec2<f32> = ((vec2<f32>(x_1900.x, x_1900.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1904 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
    let x_1911 : vec4<f32> = u_xlat6;
    let x_1914 : f32 = x_29.x_GlobalMipBias.x;
    let x_1915 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1911.x, x_1911.y), x_1914);
    u_xlat6 = x_1915;
    let x_1920 : f32 = x_1855.x_MainLightCookieTextureFormat;
    let x_1922 : f32 = x_1855.x_MainLightCookieTextureFormat;
    let x_1924 : f32 = x_1855.x_MainLightCookieTextureFormat;
    let x_1926 : f32 = x_1855.x_MainLightCookieTextureFormat;
    let x_1927 : vec4<f32> = vec4<f32>(x_1920, x_1922, x_1924, x_1926);
    let x_1934 : vec4<bool> = (vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1927.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1934.x, x_1934.y);
    let x_1937 : bool = u_xlatb7.y;
    if (x_1937) {
      let x_1942 : f32 = u_xlat6.w;
      x_1938 = x_1942;
    } else {
      let x_1945 : f32 = u_xlat6.x;
      x_1938 = x_1945;
    }
    let x_1946 : f32 = x_1938;
    u_xlat55 = x_1946;
    let x_1948 : bool = u_xlatb7.x;
    if (x_1948) {
      let x_1952 : vec4<f32> = u_xlat6;
      x_1949 = vec3<f32>(x_1952.x, x_1952.y, x_1952.z);
    } else {
      let x_1955 : f32 = u_xlat55;
      x_1949 = vec3<f32>(x_1955, x_1955, x_1955);
    }
    let x_1957 : vec3<f32> = x_1949;
    let x_1958 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1964 : vec4<f32> = u_xlat6;
  let x_1967 : vec4<f32> = x_29.x_MainLightColor;
  let x_1969 : vec3<f32> = (vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
  let x_1972 : vec3<f32> = u_xlat27;
  let x_1974 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(-(x_1972), vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : f32 = u_xlat55;
  let x_1978 : f32 = u_xlat55;
  u_xlat55 = (x_1977 + x_1978);
  let x_1980 : vec4<f32> = u_xlat2;
  let x_1982 : f32 = u_xlat55;
  let x_1986 : vec3<f32> = u_xlat27;
  let x_1988 : vec3<f32> = ((vec3<f32>(x_1980.x, x_1980.y, x_1980.z) * -(vec3<f32>(x_1982, x_1982, x_1982))) + -(x_1986));
  let x_1989 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1991 : vec4<f32> = u_xlat2;
  let x_1993 : vec3<f32> = u_xlat27;
  u_xlat55 = dot(vec3<f32>(x_1991.x, x_1991.y, x_1991.z), x_1993);
  let x_1995 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1995, 0.0f, 1.0f);
  let x_1997 : f32 = u_xlat55;
  u_xlat55 = (-(x_1997) + 1.0f);
  let x_2000 : f32 = u_xlat55;
  let x_2001 : f32 = u_xlat55;
  u_xlat55 = (x_2000 * x_2001);
  let x_2003 : f32 = u_xlat55;
  let x_2004 : f32 = u_xlat55;
  u_xlat55 = (x_2003 * x_2004);
  let x_2006 : f32 = u_xlat1;
  u_xlat84 = ((-(x_2006) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2012 : f32 = u_xlat1;
  let x_2013 : f32 = u_xlat84;
  u_xlat1 = (x_2012 * x_2013);
  let x_2015 : f32 = u_xlat1;
  u_xlat1 = (x_2015 * 6.0f);
  let x_2026 : vec4<f32> = u_xlat7;
  let x_2028 : f32 = u_xlat1;
  let x_2029 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2026.x, x_2026.y, x_2026.z), x_2028);
  u_xlat7 = x_2029;
  let x_2031 : f32 = u_xlat7.w;
  u_xlat1 = (x_2031 + -1.0f);
  let x_2034 : f32 = x_391.unity_SpecCube0_HDR.w;
  let x_2035 : f32 = u_xlat1;
  u_xlat1 = ((x_2034 * x_2035) + 1.0f);
  let x_2038 : f32 = u_xlat1;
  u_xlat1 = max(x_2038, 0.0f);
  let x_2040 : f32 = u_xlat1;
  u_xlat1 = log2(x_2040);
  let x_2042 : f32 = u_xlat1;
  let x_2044 : f32 = x_391.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2042 * x_2044);
  let x_2046 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2046);
  let x_2048 : f32 = u_xlat1;
  let x_2050 : f32 = x_391.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2048 * x_2050);
  let x_2052 : vec4<f32> = u_xlat7;
  let x_2054 : f32 = u_xlat1;
  let x_2056 : vec3<f32> = (vec3<f32>(x_2052.x, x_2052.y, x_2052.z) * vec3<f32>(x_2054, x_2054, x_2054));
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : f32 = u_xlat80;
  let x_2061 : f32 = u_xlat80;
  let x_2065 : vec2<f32> = ((vec2<f32>(x_2059, x_2059) * vec2<f32>(x_2061, x_2061)) + vec2<f32>(-1.0f, 1.0f));
  let x_2066 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2065.x, x_2065.y, x_2066.z, x_2066.w);
  let x_2069 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_2069);
  let x_2071 : vec4<f32> = u_xlat0;
  let x_2074 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2071.x, x_2071.y, x_2071.z)) + vec3<f32>(x_2074, x_2074, x_2074));
  let x_2077 : f32 = u_xlat55;
  let x_2079 : vec3<f32> = u_xlat34;
  let x_2081 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2077, x_2077, x_2077) * x_2079) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : f32 = u_xlat1;
  let x_2086 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2084, x_2084, x_2084) * x_2086);
  let x_2088 : vec4<f32> = u_xlat7;
  let x_2090 : vec3<f32> = u_xlat34;
  let x_2091 : vec3<f32> = (vec3<f32>(x_2088.x, x_2088.y, x_2088.z) * x_2090);
  let x_2092 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
  let x_2094 : vec4<f32> = u_xlat4;
  let x_2096 : vec4<f32> = u_xlat5;
  let x_2099 : vec4<f32> = u_xlat7;
  let x_2101 : vec3<f32> = ((vec3<f32>(x_2094.x, x_2094.y, x_2094.z) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z)) + vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
  let x_2105 : f32 = u_xlat3.x;
  let x_2107 : f32 = x_391.unity_LightData.z;
  u_xlat78 = (x_2105 * x_2107);
  let x_2109 : vec4<f32> = u_xlat2;
  let x_2112 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_2109.x, x_2109.y, x_2109.z), vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2115, 0.0f, 1.0f);
  let x_2117 : f32 = u_xlat78;
  let x_2118 : f32 = u_xlat1;
  u_xlat78 = (x_2117 * x_2118);
  let x_2120 : f32 = u_xlat78;
  let x_2122 : vec4<f32> = u_xlat6;
  let x_2124 : vec3<f32> = (vec3<f32>(x_2120, x_2120, x_2120) * vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
  let x_2125 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : vec3<f32> = u_xlat27;
  let x_2129 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2131 : vec3<f32> = (x_2127 + vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2134 : vec4<f32> = u_xlat7;
  let x_2136 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2134.x, x_2134.y, x_2134.z), vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : f32 = u_xlat78;
  u_xlat78 = max(x_2139, 1.17549435e-38f);
  let x_2142 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2142);
  let x_2144 : f32 = u_xlat78;
  let x_2146 : vec4<f32> = u_xlat7;
  let x_2148 : vec3<f32> = (vec3<f32>(x_2144, x_2144, x_2144) * vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
  let x_2151 : vec4<f32> = u_xlat2;
  let x_2153 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2151.x, x_2151.y, x_2151.z), vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2156 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2156, 0.0f, 1.0f);
  let x_2159 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2161 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_2159.x, x_2159.y, x_2159.z), vec3<f32>(x_2161.x, x_2161.y, x_2161.z));
  let x_2164 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2164, 0.0f, 1.0f);
  let x_2166 : f32 = u_xlat78;
  let x_2167 : f32 = u_xlat78;
  u_xlat78 = (x_2166 * x_2167);
  let x_2169 : f32 = u_xlat78;
  let x_2171 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2169 * x_2171) + 1.00001001358032226562f);
  let x_2175 : f32 = u_xlat1;
  let x_2176 : f32 = u_xlat1;
  u_xlat1 = (x_2175 * x_2176);
  let x_2178 : f32 = u_xlat78;
  let x_2179 : f32 = u_xlat78;
  u_xlat78 = (x_2178 * x_2179);
  let x_2181 : f32 = u_xlat1;
  u_xlat1 = max(x_2181, 0.10000000149011611938f);
  let x_2184 : f32 = u_xlat78;
  let x_2185 : f32 = u_xlat1;
  u_xlat78 = (x_2184 * x_2185);
  let x_2187 : f32 = u_xlat82;
  let x_2188 : f32 = u_xlat78;
  u_xlat78 = (x_2187 * x_2188);
  let x_2190 : f32 = u_xlat83;
  let x_2191 : f32 = u_xlat78;
  u_xlat78 = (x_2190 / x_2191);
  let x_2193 : vec4<f32> = u_xlat0;
  let x_2195 : f32 = u_xlat78;
  let x_2198 : vec4<f32> = u_xlat5;
  let x_2200 : vec3<f32> = ((vec3<f32>(x_2193.x, x_2193.y, x_2193.z) * vec3<f32>(x_2195, x_2195, x_2195)) + vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
  let x_2201 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  let x_2204 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2206 : f32 = x_391.unity_LightData.y;
  u_xlat78 = min(x_2204, x_2206);
  let x_2209 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2209));
  let x_2213 : f32 = u_xlat29.x;
  let x_2216 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_2219 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2213 * x_2216) + x_2219);
  let x_2221 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2221, 0.0f, 1.0f);
  let x_2224 : f32 = x_1855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2226 : f32 = x_1855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2228 : f32 = x_1855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2230 : f32 = x_1855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2231 : vec4<f32> = vec4<f32>(x_2224, x_2226, x_2228, x_2230);
  let x_2237 : vec4<bool> = (vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2231.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2238 : vec2<bool> = vec2<bool>(x_2237.x, x_2237.y);
  let x_2239 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2238.x, x_2238.y, x_2239.z, x_2239.w);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2251 : u32 = u_xlatu_loop_1;
    let x_2252 : u32 = u_xlatu78;
    if ((x_2251 < x_2252)) {
    } else {
      break;
    }
    let x_2255 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2255 >> 2u);
    let x_2258 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2258 & 3u));
    let x_2261 : u32 = u_xlatu55;
    let x_2264 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_2261)];
    let x_2274 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2279 : vec4<u32> = indexable[x_2274];
    u_xlat55 = dot(x_2264, bitcast<vec4<f32>>(x_2279));
    let x_2283 : f32 = u_xlat55;
    u_xlati55 = i32(x_2283);
    let x_2285 : vec3<f32> = vs_TEXCOORD7;
    let x_2296 : i32 = u_xlati55;
    let x_2298 : vec4<f32> = x_2295.x_AdditionalLightsPosition[x_2296];
    let x_2301 : i32 = u_xlati55;
    let x_2303 : vec4<f32> = x_2295.x_AdditionalLightsPosition[x_2301];
    let x_2305 : vec3<f32> = ((-(x_2285) * vec3<f32>(x_2298.w, x_2298.w, x_2298.w)) + vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
    let x_2306 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
    let x_2308 : vec4<f32> = u_xlat9;
    let x_2310 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
    let x_2313 : f32 = u_xlat84;
    u_xlat84 = max(x_2313, 0.00006103515625f);
    let x_2317 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2317);
    let x_2319 : f32 = u_xlat85;
    let x_2321 : vec4<f32> = u_xlat9;
    let x_2323 : vec3<f32> = (vec3<f32>(x_2319, x_2319, x_2319) * vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
    let x_2324 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
    let x_2327 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2327);
    let x_2329 : f32 = u_xlat84;
    let x_2330 : i32 = u_xlati55;
    let x_2332 : f32 = x_2295.x_AdditionalLightsAttenuation[x_2330].x;
    u_xlat84 = (x_2329 * x_2332);
    let x_2334 : f32 = u_xlat84;
    let x_2336 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2334) * x_2336) + 1.0f);
    let x_2339 : f32 = u_xlat84;
    u_xlat84 = max(x_2339, 0.0f);
    let x_2341 : f32 = u_xlat84;
    let x_2342 : f32 = u_xlat84;
    u_xlat84 = (x_2341 * x_2342);
    let x_2344 : f32 = u_xlat84;
    let x_2345 : f32 = u_xlat87;
    u_xlat84 = (x_2344 * x_2345);
    let x_2347 : i32 = u_xlati55;
    let x_2349 : vec4<f32> = x_2295.x_AdditionalLightsSpotDir[x_2347];
    let x_2351 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2349.x, x_2349.y, x_2349.z), vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
    let x_2354 : f32 = u_xlat87;
    let x_2355 : i32 = u_xlati55;
    let x_2357 : f32 = x_2295.x_AdditionalLightsAttenuation[x_2355].z;
    let x_2359 : i32 = u_xlati55;
    let x_2361 : f32 = x_2295.x_AdditionalLightsAttenuation[x_2359].w;
    u_xlat87 = ((x_2354 * x_2357) + x_2361);
    let x_2363 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2363, 0.0f, 1.0f);
    let x_2365 : f32 = u_xlat87;
    let x_2366 : f32 = u_xlat87;
    u_xlat87 = (x_2365 * x_2366);
    let x_2368 : f32 = u_xlat84;
    let x_2369 : f32 = u_xlat87;
    u_xlat84 = (x_2368 * x_2369);
    let x_2373 : i32 = u_xlati55;
    let x_2375 : f32 = x_162.x_AdditionalShadowParams[x_2373].w;
    u_xlati87 = i32(x_2375);
    let x_2378 : i32 = u_xlati87;
    u_xlatb88 = (x_2378 >= 0i);
    let x_2380 : bool = u_xlatb88;
    if (x_2380) {
      let x_2384 : i32 = u_xlati55;
      let x_2386 : f32 = x_162.x_AdditionalShadowParams[x_2384].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2386, x_2386, x_2386, x_2386))));
      let x_2390 : bool = u_xlatb88;
      if (x_2390) {
        let x_2394 : vec4<f32> = u_xlat10;
        let x_2397 : vec4<f32> = u_xlat10;
        let x_2400 : vec4<bool> = (abs(vec4<f32>(x_2394.z, x_2394.z, x_2394.y, x_2394.z)) >= abs(vec4<f32>(x_2397.x, x_2397.y, x_2397.x, x_2397.x)));
        let x_2402 : vec3<bool> = vec3<bool>(x_2400.x, x_2400.y, x_2400.z);
        let x_2403 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
        let x_2406 : bool = u_xlatb11.y;
        let x_2408 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2406 & x_2408);
        let x_2410 : vec4<f32> = u_xlat10;
        let x_2413 : vec4<bool> = (-(vec4<f32>(x_2410.z, x_2410.y, x_2410.z, x_2410.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2414 : vec3<bool> = vec3<bool>(x_2413.x, x_2413.y, x_2413.w);
        let x_2415 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2414.x, x_2414.y, x_2415.z, x_2414.z);
        let x_2418 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2418);
        let x_2423 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2423);
        let x_2428 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2428);
        let x_2432 : bool = u_xlatb11.z;
        if (x_2432) {
          let x_2437 : f32 = u_xlat11.y;
          x_2433 = x_2437;
        } else {
          let x_2439 : f32 = u_xlat89;
          x_2433 = x_2439;
        }
        let x_2440 : f32 = x_2433;
        u_xlat37.x = x_2440;
        let x_2443 : bool = u_xlatb88;
        if (x_2443) {
          let x_2448 : f32 = u_xlat11.x;
          x_2444 = x_2448;
        } else {
          let x_2451 : f32 = u_xlat37.x;
          x_2444 = x_2451;
        }
        let x_2452 : f32 = x_2444;
        u_xlat88 = x_2452;
        let x_2453 : i32 = u_xlati55;
        let x_2455 : f32 = x_162.x_AdditionalShadowParams[x_2453].w;
        u_xlat11.x = trunc(x_2455);
        let x_2458 : f32 = u_xlat88;
        let x_2460 : f32 = u_xlat11.x;
        u_xlat88 = (x_2458 + x_2460);
        let x_2462 : f32 = u_xlat88;
        u_xlati87 = i32(x_2462);
      }
      let x_2464 : i32 = u_xlati87;
      u_xlati87 = (x_2464 << bitcast<u32>(2i));
      let x_2466 : vec3<f32> = vs_TEXCOORD7;
      let x_2469 : i32 = u_xlati87;
      let x_2472 : i32 = u_xlati87;
      let x_2476 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2469 + 1i) / 4i)][((x_2472 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2466.y, x_2466.y, x_2466.y, x_2466.y) * x_2476);
      let x_2478 : i32 = u_xlati87;
      let x_2480 : i32 = u_xlati87;
      let x_2483 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_2478 / 4i)][(x_2480 % 4i)];
      let x_2484 : vec3<f32> = vs_TEXCOORD7;
      let x_2487 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2483 * vec4<f32>(x_2484.x, x_2484.x, x_2484.x, x_2484.x)) + x_2487);
      let x_2489 : i32 = u_xlati87;
      let x_2492 : i32 = u_xlati87;
      let x_2496 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2489 + 2i) / 4i)][((x_2492 + 2i) % 4i)];
      let x_2497 : vec3<f32> = vs_TEXCOORD7;
      let x_2500 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2496 * vec4<f32>(x_2497.z, x_2497.z, x_2497.z, x_2497.z)) + x_2500);
      let x_2502 : vec4<f32> = u_xlat11;
      let x_2503 : i32 = u_xlati87;
      let x_2506 : i32 = u_xlati87;
      let x_2510 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2503 + 3i) / 4i)][((x_2506 + 3i) % 4i)];
      u_xlat11 = (x_2502 + x_2510);
      let x_2512 : vec4<f32> = u_xlat11;
      let x_2514 : vec4<f32> = u_xlat11;
      let x_2516 : vec3<f32> = (vec3<f32>(x_2512.x, x_2512.y, x_2512.z) / vec3<f32>(x_2514.w, x_2514.w, x_2514.w));
      let x_2517 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
      let x_2520 : i32 = u_xlati55;
      let x_2522 : f32 = x_162.x_AdditionalShadowParams[x_2520].y;
      u_xlatb87 = (0.0f < x_2522);
      let x_2524 : bool = u_xlatb87;
      if (x_2524) {
        let x_2527 : i32 = u_xlati55;
        let x_2529 : f32 = x_162.x_AdditionalShadowParams[x_2527].y;
        u_xlatb87 = (1.0f == x_2529);
        let x_2531 : bool = u_xlatb87;
        if (x_2531) {
          let x_2534 : vec4<f32> = u_xlat11;
          let x_2538 : vec4<f32> = x_162.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y) + x_2538);
          let x_2541 : vec4<f32> = u_xlat12;
          let x_2542 : vec2<f32> = vec2<f32>(x_2541.x, x_2541.y);
          let x_2544 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2542.x, x_2542.y, x_2544);
          let x_2552 : vec3<f32> = txVec30;
          let x_2554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2552.xy, x_2552.z);
          u_xlat13.x = x_2554;
          let x_2557 : vec4<f32> = u_xlat12;
          let x_2558 : vec2<f32> = vec2<f32>(x_2557.z, x_2557.w);
          let x_2560 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2558.x, x_2558.y, x_2560);
          let x_2567 : vec3<f32> = txVec31;
          let x_2569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2567.xy, x_2567.z);
          u_xlat13.y = x_2569;
          let x_2571 : vec4<f32> = u_xlat11;
          let x_2575 : vec4<f32> = x_162.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y) + x_2575);
          let x_2578 : vec4<f32> = u_xlat12;
          let x_2579 : vec2<f32> = vec2<f32>(x_2578.x, x_2578.y);
          let x_2581 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2579.x, x_2579.y, x_2581);
          let x_2588 : vec3<f32> = txVec32;
          let x_2590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2588.xy, x_2588.z);
          u_xlat13.z = x_2590;
          let x_2593 : vec4<f32> = u_xlat12;
          let x_2594 : vec2<f32> = vec2<f32>(x_2593.z, x_2593.w);
          let x_2596 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2594.x, x_2594.y, x_2596);
          let x_2603 : vec3<f32> = txVec33;
          let x_2605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2603.xy, x_2603.z);
          u_xlat13.w = x_2605;
          let x_2607 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2607, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2610 : i32 = u_xlati55;
          let x_2612 : f32 = x_162.x_AdditionalShadowParams[x_2610].y;
          u_xlatb88 = (2.0f == x_2612);
          let x_2614 : bool = u_xlatb88;
          if (x_2614) {
            let x_2617 : vec4<f32> = u_xlat11;
            let x_2621 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2624 : vec2<f32> = ((vec2<f32>(x_2617.x, x_2617.y) * vec2<f32>(x_2621.z, x_2621.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2625 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec4<f32> = u_xlat12;
            let x_2629 : vec2<f32> = floor(vec2<f32>(x_2627.x, x_2627.y));
            let x_2630 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
            let x_2633 : vec4<f32> = u_xlat11;
            let x_2636 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2639 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2633.x, x_2633.y) * vec2<f32>(x_2636.z, x_2636.w)) + -(vec2<f32>(x_2639.x, x_2639.y)));
            let x_2643 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2643.x, x_2643.x, x_2643.y, x_2643.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2646 : vec4<f32> = u_xlat13;
            let x_2648 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2646.x, x_2646.x, x_2646.z, x_2646.z) * vec4<f32>(x_2648.x, x_2648.x, x_2648.z, x_2648.z));
            let x_2651 : vec4<f32> = u_xlat14;
            let x_2653 : vec2<f32> = (vec2<f32>(x_2651.y, x_2651.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2654 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2653.x, x_2654.y, x_2653.y, x_2654.w);
            let x_2656 : vec4<f32> = u_xlat14;
            let x_2659 : vec2<f32> = u_xlat64;
            let x_2661 : vec2<f32> = ((vec2<f32>(x_2656.x, x_2656.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2659));
            let x_2662 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
            let x_2665 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2665) + vec2<f32>(1.0f, 1.0f));
            let x_2668 : vec2<f32> = u_xlat64;
            let x_2669 : vec2<f32> = min(x_2668, vec2<f32>(0.0f, 0.0f));
            let x_2670 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
            let x_2672 : vec4<f32> = u_xlat15;
            let x_2675 : vec4<f32> = u_xlat15;
            let x_2678 : vec2<f32> = u_xlat66;
            let x_2679 : vec2<f32> = ((-(vec2<f32>(x_2672.x, x_2672.y)) * vec2<f32>(x_2675.x, x_2675.y)) + x_2678);
            let x_2680 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2682, vec2<f32>(0.0f, 0.0f));
            let x_2684 : vec2<f32> = u_xlat64;
            let x_2686 : vec2<f32> = u_xlat64;
            let x_2688 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2684) * x_2686) + vec2<f32>(x_2688.y, x_2688.w));
            let x_2691 : vec4<f32> = u_xlat15;
            let x_2693 : vec2<f32> = (vec2<f32>(x_2691.x, x_2691.y) + vec2<f32>(1.0f, 1.0f));
            let x_2694 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
            let x_2696 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2696 + vec2<f32>(1.0f, 1.0f));
            let x_2698 : vec4<f32> = u_xlat14;
            let x_2700 : vec2<f32> = (vec2<f32>(x_2698.x, x_2698.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2701 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2700.x, x_2700.y, x_2701.z, x_2701.w);
            let x_2703 : vec2<f32> = u_xlat66;
            let x_2704 : vec2<f32> = (x_2703 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2705 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2704.x, x_2704.y, x_2705.z, x_2705.w);
            let x_2707 : vec4<f32> = u_xlat15;
            let x_2709 : vec2<f32> = (vec2<f32>(x_2707.x, x_2707.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2710 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2709.x, x_2709.y, x_2710.z, x_2710.w);
            let x_2712 : vec2<f32> = u_xlat64;
            let x_2713 : vec2<f32> = (x_2712 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2714 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2713.x, x_2713.y, x_2714.z, x_2714.w);
            let x_2716 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2716.y, x_2716.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2720 : f32 = u_xlat15.x;
            u_xlat16.z = x_2720;
            let x_2723 : f32 = u_xlat64.x;
            u_xlat16.w = x_2723;
            let x_2726 : f32 = u_xlat17.x;
            u_xlat14.z = x_2726;
            let x_2729 : f32 = u_xlat13.x;
            u_xlat14.w = x_2729;
            let x_2731 : vec4<f32> = u_xlat14;
            let x_2733 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2731.z, x_2731.w, x_2731.x, x_2731.z) + vec4<f32>(x_2733.z, x_2733.w, x_2733.x, x_2733.z));
            let x_2737 : f32 = u_xlat16.y;
            u_xlat15.z = x_2737;
            let x_2740 : f32 = u_xlat64.y;
            u_xlat15.w = x_2740;
            let x_2743 : f32 = u_xlat14.y;
            u_xlat17.z = x_2743;
            let x_2746 : f32 = u_xlat13.z;
            u_xlat17.w = x_2746;
            let x_2748 : vec4<f32> = u_xlat15;
            let x_2750 : vec4<f32> = u_xlat17;
            let x_2752 : vec3<f32> = (vec3<f32>(x_2748.z, x_2748.y, x_2748.w) + vec3<f32>(x_2750.z, x_2750.y, x_2750.w));
            let x_2753 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
            let x_2755 : vec4<f32> = u_xlat14;
            let x_2757 : vec4<f32> = u_xlat18;
            let x_2759 : vec3<f32> = (vec3<f32>(x_2755.x, x_2755.z, x_2755.w) / vec3<f32>(x_2757.z, x_2757.w, x_2757.y));
            let x_2760 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
            let x_2762 : vec4<f32> = u_xlat14;
            let x_2764 : vec3<f32> = (vec3<f32>(x_2762.x, x_2762.y, x_2762.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2765 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
            let x_2767 : vec4<f32> = u_xlat17;
            let x_2769 : vec4<f32> = u_xlat13;
            let x_2771 : vec3<f32> = (vec3<f32>(x_2767.z, x_2767.y, x_2767.w) / vec3<f32>(x_2769.x, x_2769.y, x_2769.z));
            let x_2772 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
            let x_2774 : vec4<f32> = u_xlat15;
            let x_2776 : vec3<f32> = (vec3<f32>(x_2774.x, x_2774.y, x_2774.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2777 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
            let x_2779 : vec4<f32> = u_xlat14;
            let x_2782 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2784 : vec3<f32> = (vec3<f32>(x_2779.y, x_2779.x, x_2779.z) * vec3<f32>(x_2782.x, x_2782.x, x_2782.x));
            let x_2785 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
            let x_2787 : vec4<f32> = u_xlat15;
            let x_2790 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2792 : vec3<f32> = (vec3<f32>(x_2787.x, x_2787.y, x_2787.z) * vec3<f32>(x_2790.y, x_2790.y, x_2790.y));
            let x_2793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
            let x_2796 : f32 = u_xlat15.x;
            u_xlat14.w = x_2796;
            let x_2798 : vec4<f32> = u_xlat12;
            let x_2801 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2804 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y) * vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y)) + vec4<f32>(x_2804.y, x_2804.w, x_2804.x, x_2804.w));
            let x_2807 : vec4<f32> = u_xlat12;
            let x_2810 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2813 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2807.x, x_2807.y) * vec2<f32>(x_2810.x, x_2810.y)) + vec2<f32>(x_2813.z, x_2813.w));
            let x_2817 : f32 = u_xlat14.y;
            u_xlat15.w = x_2817;
            let x_2819 : vec4<f32> = u_xlat15;
            let x_2820 : vec2<f32> = vec2<f32>(x_2819.y, x_2819.z);
            let x_2821 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2821.x, x_2820.x, x_2821.z, x_2820.y);
            let x_2823 : vec4<f32> = u_xlat12;
            let x_2826 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2829 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2823.x, x_2823.y, x_2823.x, x_2823.y) * vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.y)) + vec4<f32>(x_2829.x, x_2829.y, x_2829.z, x_2829.y));
            let x_2832 : vec4<f32> = u_xlat12;
            let x_2835 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2838 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2832.x, x_2832.y, x_2832.x, x_2832.y) * vec4<f32>(x_2835.x, x_2835.y, x_2835.x, x_2835.y)) + vec4<f32>(x_2838.w, x_2838.y, x_2838.w, x_2838.z));
            let x_2841 : vec4<f32> = u_xlat12;
            let x_2844 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2847 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2841.x, x_2841.y, x_2841.x, x_2841.y) * vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y)) + vec4<f32>(x_2847.x, x_2847.w, x_2847.z, x_2847.w));
            let x_2850 : vec4<f32> = u_xlat13;
            let x_2852 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2850.x, x_2850.x, x_2850.x, x_2850.y) * vec4<f32>(x_2852.z, x_2852.w, x_2852.y, x_2852.z));
            let x_2855 : vec4<f32> = u_xlat13;
            let x_2857 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2855.y, x_2855.y, x_2855.z, x_2855.z) * x_2857);
            let x_2860 : f32 = u_xlat13.z;
            let x_2862 : f32 = u_xlat18.y;
            u_xlat88 = (x_2860 * x_2862);
            let x_2865 : vec4<f32> = u_xlat16;
            let x_2866 : vec2<f32> = vec2<f32>(x_2865.x, x_2865.y);
            let x_2868 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
            let x_2875 : vec3<f32> = txVec34;
            let x_2877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2875.xy, x_2875.z);
            u_xlat89 = x_2877;
            let x_2879 : vec4<f32> = u_xlat16;
            let x_2880 : vec2<f32> = vec2<f32>(x_2879.z, x_2879.w);
            let x_2882 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
            let x_2889 : vec3<f32> = txVec35;
            let x_2891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2889.xy, x_2889.z);
            u_xlat12.x = x_2891;
            let x_2894 : f32 = u_xlat12.x;
            let x_2896 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2894 * x_2896);
            let x_2900 : f32 = u_xlat19.x;
            let x_2901 : f32 = u_xlat89;
            let x_2904 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2900 * x_2901) + x_2904);
            let x_2907 : vec2<f32> = u_xlat64;
            let x_2909 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
            let x_2916 : vec3<f32> = txVec36;
            let x_2918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
            u_xlat12.x = x_2918;
            let x_2921 : f32 = u_xlat19.z;
            let x_2923 : f32 = u_xlat12.x;
            let x_2925 : f32 = u_xlat89;
            u_xlat89 = ((x_2921 * x_2923) + x_2925);
            let x_2928 : vec4<f32> = u_xlat15;
            let x_2929 : vec2<f32> = vec2<f32>(x_2928.x, x_2928.y);
            let x_2931 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
            let x_2938 : vec3<f32> = txVec37;
            let x_2940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
            u_xlat12.x = x_2940;
            let x_2943 : f32 = u_xlat19.w;
            let x_2945 : f32 = u_xlat12.x;
            let x_2947 : f32 = u_xlat89;
            u_xlat89 = ((x_2943 * x_2945) + x_2947);
            let x_2950 : vec4<f32> = u_xlat17;
            let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
            let x_2953 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec38;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat12.x = x_2962;
            let x_2965 : f32 = u_xlat20.x;
            let x_2967 : f32 = u_xlat12.x;
            let x_2969 : f32 = u_xlat89;
            u_xlat89 = ((x_2965 * x_2967) + x_2969);
            let x_2972 : vec4<f32> = u_xlat17;
            let x_2973 : vec2<f32> = vec2<f32>(x_2972.z, x_2972.w);
            let x_2975 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2973.x, x_2973.y, x_2975);
            let x_2982 : vec3<f32> = txVec39;
            let x_2984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2982.xy, x_2982.z);
            u_xlat12.x = x_2984;
            let x_2987 : f32 = u_xlat20.y;
            let x_2989 : f32 = u_xlat12.x;
            let x_2991 : f32 = u_xlat89;
            u_xlat89 = ((x_2987 * x_2989) + x_2991);
            let x_2994 : vec4<f32> = u_xlat15;
            let x_2995 : vec2<f32> = vec2<f32>(x_2994.z, x_2994.w);
            let x_2997 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2995.x, x_2995.y, x_2997);
            let x_3004 : vec3<f32> = txVec40;
            let x_3006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3004.xy, x_3004.z);
            u_xlat12.x = x_3006;
            let x_3009 : f32 = u_xlat20.z;
            let x_3011 : f32 = u_xlat12.x;
            let x_3013 : f32 = u_xlat89;
            u_xlat89 = ((x_3009 * x_3011) + x_3013);
            let x_3016 : vec4<f32> = u_xlat14;
            let x_3017 : vec2<f32> = vec2<f32>(x_3016.x, x_3016.y);
            let x_3019 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec41;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat12.x = x_3028;
            let x_3031 : f32 = u_xlat20.w;
            let x_3033 : f32 = u_xlat12.x;
            let x_3035 : f32 = u_xlat89;
            u_xlat89 = ((x_3031 * x_3033) + x_3035);
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3039 : vec2<f32> = vec2<f32>(x_3038.z, x_3038.w);
            let x_3041 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
            let x_3048 : vec3<f32> = txVec42;
            let x_3050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
            u_xlat12.x = x_3050;
            let x_3052 : f32 = u_xlat88;
            let x_3054 : f32 = u_xlat12.x;
            let x_3056 : f32 = u_xlat89;
            u_xlat87 = ((x_3052 * x_3054) + x_3056);
          } else {
            let x_3059 : vec4<f32> = u_xlat11;
            let x_3062 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3065 : vec2<f32> = ((vec2<f32>(x_3059.x, x_3059.y) * vec2<f32>(x_3062.z, x_3062.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3066 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3065.x, x_3065.y, x_3066.z, x_3066.w);
            let x_3068 : vec4<f32> = u_xlat12;
            let x_3070 : vec2<f32> = floor(vec2<f32>(x_3068.x, x_3068.y));
            let x_3071 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3070.x, x_3070.y, x_3071.z, x_3071.w);
            let x_3073 : vec4<f32> = u_xlat11;
            let x_3076 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.z, x_3076.w)) + -(vec2<f32>(x_3079.x, x_3079.y)));
            let x_3083 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3083.x, x_3083.x, x_3083.y, x_3083.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3086 : vec4<f32> = u_xlat13;
            let x_3088 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3086.x, x_3086.x, x_3086.z, x_3086.z) * vec4<f32>(x_3088.x, x_3088.x, x_3088.z, x_3088.z));
            let x_3091 : vec4<f32> = u_xlat14;
            let x_3093 : vec2<f32> = (vec2<f32>(x_3091.y, x_3091.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3094 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3094.x, x_3093.x, x_3094.z, x_3093.y);
            let x_3096 : vec4<f32> = u_xlat14;
            let x_3099 : vec2<f32> = u_xlat64;
            let x_3101 : vec2<f32> = ((vec2<f32>(x_3096.x, x_3096.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3099));
            let x_3102 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3101.x, x_3102.y, x_3101.y, x_3102.w);
            let x_3104 : vec2<f32> = u_xlat64;
            let x_3106 : vec2<f32> = (-(x_3104) + vec2<f32>(1.0f, 1.0f));
            let x_3107 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3106.x, x_3106.y, x_3107.z, x_3107.w);
            let x_3109 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3109, vec2<f32>(0.0f, 0.0f));
            let x_3111 : vec2<f32> = u_xlat66;
            let x_3113 : vec2<f32> = u_xlat66;
            let x_3115 : vec4<f32> = u_xlat14;
            let x_3117 : vec2<f32> = ((-(x_3111) * x_3113) + vec2<f32>(x_3115.x, x_3115.y));
            let x_3118 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3117.x, x_3117.y, x_3118.z, x_3118.w);
            let x_3120 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3120, vec2<f32>(0.0f, 0.0f));
            let x_3123 : vec2<f32> = u_xlat66;
            let x_3125 : vec2<f32> = u_xlat66;
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3129 : vec2<f32> = ((-(x_3123) * x_3125) + vec2<f32>(x_3127.y, x_3127.w));
            let x_3130 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3129.x, x_3130.y, x_3129.y);
            let x_3132 : vec4<f32> = u_xlat14;
            let x_3135 : vec2<f32> = (vec2<f32>(x_3132.x, x_3132.y) + vec2<f32>(2.0f, 2.0f));
            let x_3136 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
            let x_3138 : vec3<f32> = u_xlat39;
            let x_3140 : vec2<f32> = (vec2<f32>(x_3138.x, x_3138.z) + vec2<f32>(2.0f, 2.0f));
            let x_3141 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3141.x, x_3140.x, x_3141.z, x_3140.y);
            let x_3144 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3144 * 0.08163200318813323975f);
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3150 : vec3<f32> = (vec3<f32>(x_3147.z, x_3147.x, x_3147.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3151 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3150.x, x_3150.y, x_3150.z, x_3151.w);
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3155 : vec2<f32> = (vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3156 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3155.x, x_3155.y, x_3156.z, x_3156.w);
            let x_3159 : f32 = u_xlat17.y;
            u_xlat16.x = x_3159;
            let x_3161 : vec2<f32> = u_xlat64;
            let x_3164 : vec2<f32> = ((vec2<f32>(x_3161.x, x_3161.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3165 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3165.x, x_3164.x, x_3165.z, x_3164.y);
            let x_3167 : vec2<f32> = u_xlat64;
            let x_3170 : vec2<f32> = ((vec2<f32>(x_3167.x, x_3167.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3171 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3170.x, x_3171.y, x_3170.y, x_3171.w);
            let x_3174 : f32 = u_xlat13.x;
            u_xlat14.y = x_3174;
            let x_3177 : f32 = u_xlat15.y;
            u_xlat14.w = x_3177;
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3180 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3179 + x_3180);
            let x_3182 : vec2<f32> = u_xlat64;
            let x_3185 : vec2<f32> = ((vec2<f32>(x_3182.y, x_3182.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3186 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3186.x, x_3185.x, x_3186.z, x_3185.y);
            let x_3188 : vec2<f32> = u_xlat64;
            let x_3191 : vec2<f32> = ((vec2<f32>(x_3188.y, x_3188.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3192 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3191.x, x_3192.y, x_3191.y, x_3192.w);
            let x_3195 : f32 = u_xlat13.y;
            u_xlat15.y = x_3195;
            let x_3197 : vec4<f32> = u_xlat15;
            let x_3198 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3197 + x_3198);
            let x_3200 : vec4<f32> = u_xlat14;
            let x_3201 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3200 / x_3201);
            let x_3203 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3203 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3205 : vec4<f32> = u_xlat15;
            let x_3206 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3205 / x_3206);
            let x_3208 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3208 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3210 : vec4<f32> = u_xlat14;
            let x_3213 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3210.w, x_3210.x, x_3210.y, x_3210.z) * vec4<f32>(x_3213.x, x_3213.x, x_3213.x, x_3213.x));
            let x_3216 : vec4<f32> = u_xlat15;
            let x_3219 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3216.x, x_3216.w, x_3216.y, x_3216.z) * vec4<f32>(x_3219.y, x_3219.y, x_3219.y, x_3219.y));
            let x_3222 : vec4<f32> = u_xlat14;
            let x_3223 : vec3<f32> = vec3<f32>(x_3222.y, x_3222.z, x_3222.w);
            let x_3224 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3223.x, x_3224.y, x_3223.y, x_3223.z);
            let x_3227 : f32 = u_xlat15.x;
            u_xlat17.y = x_3227;
            let x_3229 : vec4<f32> = u_xlat12;
            let x_3232 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3229.x, x_3229.y, x_3229.x, x_3229.y) * vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y)) + vec4<f32>(x_3235.x, x_3235.y, x_3235.z, x_3235.y));
            let x_3238 : vec4<f32> = u_xlat12;
            let x_3241 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3244 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3238.x, x_3238.y) * vec2<f32>(x_3241.x, x_3241.y)) + vec2<f32>(x_3244.w, x_3244.y));
            let x_3248 : f32 = u_xlat17.y;
            u_xlat14.y = x_3248;
            let x_3251 : f32 = u_xlat15.z;
            u_xlat17.y = x_3251;
            let x_3253 : vec4<f32> = u_xlat12;
            let x_3256 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3259 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3253.x, x_3253.y, x_3253.x, x_3253.y) * vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y)) + vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3259.y));
            let x_3262 : vec4<f32> = u_xlat12;
            let x_3265 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3268 : vec4<f32> = u_xlat17;
            let x_3270 : vec2<f32> = ((vec2<f32>(x_3262.x, x_3262.y) * vec2<f32>(x_3265.x, x_3265.y)) + vec2<f32>(x_3268.w, x_3268.y));
            let x_3271 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3274 : f32 = u_xlat17.y;
            u_xlat14.z = x_3274;
            let x_3277 : vec4<f32> = u_xlat12;
            let x_3280 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3283 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3277.x, x_3277.y, x_3277.x, x_3277.y) * vec4<f32>(x_3280.x, x_3280.y, x_3280.x, x_3280.y)) + vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.z));
            let x_3287 : f32 = u_xlat15.w;
            u_xlat17.y = x_3287;
            let x_3290 : vec4<f32> = u_xlat12;
            let x_3293 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3290.x, x_3290.y, x_3290.x, x_3290.y) * vec4<f32>(x_3293.x, x_3293.y, x_3293.x, x_3293.y)) + vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3296.y));
            let x_3300 : vec4<f32> = u_xlat12;
            let x_3303 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3306 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3300.x, x_3300.y) * vec2<f32>(x_3303.x, x_3303.y)) + vec2<f32>(x_3306.w, x_3306.y));
            let x_3310 : f32 = u_xlat17.y;
            u_xlat14.w = x_3310;
            let x_3313 : vec4<f32> = u_xlat12;
            let x_3316 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3319 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3313.x, x_3313.y) * vec2<f32>(x_3316.x, x_3316.y)) + vec2<f32>(x_3319.x, x_3319.w));
            let x_3322 : vec4<f32> = u_xlat17;
            let x_3323 : vec3<f32> = vec3<f32>(x_3322.x, x_3322.z, x_3322.w);
            let x_3324 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3323.x, x_3324.y, x_3323.y, x_3323.z);
            let x_3326 : vec4<f32> = u_xlat12;
            let x_3329 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3332 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3326.x, x_3326.y, x_3326.x, x_3326.y) * vec4<f32>(x_3329.x, x_3329.y, x_3329.x, x_3329.y)) + vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3332.y));
            let x_3336 : vec4<f32> = u_xlat12;
            let x_3339 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3342 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3336.x, x_3336.y) * vec2<f32>(x_3339.x, x_3339.y)) + vec2<f32>(x_3342.w, x_3342.y));
            let x_3346 : f32 = u_xlat14.x;
            u_xlat15.x = x_3346;
            let x_3348 : vec4<f32> = u_xlat12;
            let x_3351 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_3354 : vec4<f32> = u_xlat15;
            let x_3356 : vec2<f32> = ((vec2<f32>(x_3348.x, x_3348.y) * vec2<f32>(x_3351.x, x_3351.y)) + vec2<f32>(x_3354.x, x_3354.y));
            let x_3357 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3356.x, x_3356.y, x_3357.z, x_3357.w);
            let x_3360 : vec4<f32> = u_xlat13;
            let x_3362 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3360.x, x_3360.x, x_3360.x, x_3360.x) * x_3362);
            let x_3365 : vec4<f32> = u_xlat13;
            let x_3367 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3365.y, x_3365.y, x_3365.y, x_3365.y) * x_3367);
            let x_3370 : vec4<f32> = u_xlat13;
            let x_3372 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3370.z, x_3370.z, x_3370.z, x_3370.z) * x_3372);
            let x_3374 : vec4<f32> = u_xlat13;
            let x_3376 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3374.w, x_3374.w, x_3374.w, x_3374.w) * x_3376);
            let x_3379 : vec4<f32> = u_xlat18;
            let x_3380 : vec2<f32> = vec2<f32>(x_3379.x, x_3379.y);
            let x_3382 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec43;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat88 = x_3391;
            let x_3393 : vec4<f32> = u_xlat18;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.z, x_3393.w);
            let x_3396 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec44;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat89 = x_3405;
            let x_3406 : f32 = u_xlat89;
            let x_3408 : f32 = u_xlat23.y;
            u_xlat89 = (x_3406 * x_3408);
            let x_3411 : f32 = u_xlat23.x;
            let x_3412 : f32 = u_xlat88;
            let x_3414 : f32 = u_xlat89;
            u_xlat88 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec2<f32> = u_xlat64;
            let x_3419 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3417.x, x_3417.y, x_3419);
            let x_3426 : vec3<f32> = txVec45;
            let x_3428 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3426.xy, x_3426.z);
            u_xlat89 = x_3428;
            let x_3430 : f32 = u_xlat23.z;
            let x_3431 : f32 = u_xlat89;
            let x_3433 : f32 = u_xlat88;
            u_xlat88 = ((x_3430 * x_3431) + x_3433);
            let x_3436 : vec4<f32> = u_xlat21;
            let x_3437 : vec2<f32> = vec2<f32>(x_3436.x, x_3436.y);
            let x_3439 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3437.x, x_3437.y, x_3439);
            let x_3446 : vec3<f32> = txVec46;
            let x_3448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3446.xy, x_3446.z);
            u_xlat89 = x_3448;
            let x_3450 : f32 = u_xlat23.w;
            let x_3451 : f32 = u_xlat89;
            let x_3453 : f32 = u_xlat88;
            u_xlat88 = ((x_3450 * x_3451) + x_3453);
            let x_3456 : vec4<f32> = u_xlat19;
            let x_3457 : vec2<f32> = vec2<f32>(x_3456.x, x_3456.y);
            let x_3459 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3457.x, x_3457.y, x_3459);
            let x_3466 : vec3<f32> = txVec47;
            let x_3468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3466.xy, x_3466.z);
            u_xlat89 = x_3468;
            let x_3470 : f32 = u_xlat24.x;
            let x_3471 : f32 = u_xlat89;
            let x_3473 : f32 = u_xlat88;
            u_xlat88 = ((x_3470 * x_3471) + x_3473);
            let x_3476 : vec4<f32> = u_xlat19;
            let x_3477 : vec2<f32> = vec2<f32>(x_3476.z, x_3476.w);
            let x_3479 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3477.x, x_3477.y, x_3479);
            let x_3486 : vec3<f32> = txVec48;
            let x_3488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3486.xy, x_3486.z);
            u_xlat89 = x_3488;
            let x_3490 : f32 = u_xlat24.y;
            let x_3491 : f32 = u_xlat89;
            let x_3493 : f32 = u_xlat88;
            u_xlat88 = ((x_3490 * x_3491) + x_3493);
            let x_3496 : vec4<f32> = u_xlat20;
            let x_3497 : vec2<f32> = vec2<f32>(x_3496.x, x_3496.y);
            let x_3499 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3497.x, x_3497.y, x_3499);
            let x_3506 : vec3<f32> = txVec49;
            let x_3508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3506.xy, x_3506.z);
            u_xlat89 = x_3508;
            let x_3510 : f32 = u_xlat24.z;
            let x_3511 : f32 = u_xlat89;
            let x_3513 : f32 = u_xlat88;
            u_xlat88 = ((x_3510 * x_3511) + x_3513);
            let x_3516 : vec4<f32> = u_xlat21;
            let x_3517 : vec2<f32> = vec2<f32>(x_3516.z, x_3516.w);
            let x_3519 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec50;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat89 = x_3528;
            let x_3530 : f32 = u_xlat24.w;
            let x_3531 : f32 = u_xlat89;
            let x_3533 : f32 = u_xlat88;
            u_xlat88 = ((x_3530 * x_3531) + x_3533);
            let x_3536 : vec4<f32> = u_xlat22;
            let x_3537 : vec2<f32> = vec2<f32>(x_3536.x, x_3536.y);
            let x_3539 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3537.x, x_3537.y, x_3539);
            let x_3546 : vec3<f32> = txVec51;
            let x_3548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3546.xy, x_3546.z);
            u_xlat89 = x_3548;
            let x_3550 : f32 = u_xlat25.x;
            let x_3551 : f32 = u_xlat89;
            let x_3553 : f32 = u_xlat88;
            u_xlat88 = ((x_3550 * x_3551) + x_3553);
            let x_3556 : vec4<f32> = u_xlat22;
            let x_3557 : vec2<f32> = vec2<f32>(x_3556.z, x_3556.w);
            let x_3559 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3557.x, x_3557.y, x_3559);
            let x_3566 : vec3<f32> = txVec52;
            let x_3568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3566.xy, x_3566.z);
            u_xlat89 = x_3568;
            let x_3570 : f32 = u_xlat25.y;
            let x_3571 : f32 = u_xlat89;
            let x_3573 : f32 = u_xlat88;
            u_xlat88 = ((x_3570 * x_3571) + x_3573);
            let x_3576 : vec2<f32> = u_xlat40;
            let x_3578 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec53;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat89 = x_3587;
            let x_3589 : f32 = u_xlat25.z;
            let x_3590 : f32 = u_xlat89;
            let x_3592 : f32 = u_xlat88;
            u_xlat88 = ((x_3589 * x_3590) + x_3592);
            let x_3595 : vec2<f32> = u_xlat72;
            let x_3597 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3595.x, x_3595.y, x_3597);
            let x_3604 : vec3<f32> = txVec54;
            let x_3606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3604.xy, x_3604.z);
            u_xlat89 = x_3606;
            let x_3608 : f32 = u_xlat25.w;
            let x_3609 : f32 = u_xlat89;
            let x_3611 : f32 = u_xlat88;
            u_xlat88 = ((x_3608 * x_3609) + x_3611);
            let x_3614 : vec4<f32> = u_xlat17;
            let x_3615 : vec2<f32> = vec2<f32>(x_3614.x, x_3614.y);
            let x_3617 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3615.x, x_3615.y, x_3617);
            let x_3624 : vec3<f32> = txVec55;
            let x_3626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3624.xy, x_3624.z);
            u_xlat89 = x_3626;
            let x_3628 : f32 = u_xlat13.x;
            let x_3629 : f32 = u_xlat89;
            let x_3631 : f32 = u_xlat88;
            u_xlat88 = ((x_3628 * x_3629) + x_3631);
            let x_3634 : vec4<f32> = u_xlat17;
            let x_3635 : vec2<f32> = vec2<f32>(x_3634.z, x_3634.w);
            let x_3637 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3635.x, x_3635.y, x_3637);
            let x_3644 : vec3<f32> = txVec56;
            let x_3646 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3644.xy, x_3644.z);
            u_xlat89 = x_3646;
            let x_3648 : f32 = u_xlat13.y;
            let x_3649 : f32 = u_xlat89;
            let x_3651 : f32 = u_xlat88;
            u_xlat88 = ((x_3648 * x_3649) + x_3651);
            let x_3654 : vec2<f32> = u_xlat67;
            let x_3656 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec57;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat89 = x_3665;
            let x_3667 : f32 = u_xlat13.z;
            let x_3668 : f32 = u_xlat89;
            let x_3670 : f32 = u_xlat88;
            u_xlat88 = ((x_3667 * x_3668) + x_3670);
            let x_3673 : vec4<f32> = u_xlat12;
            let x_3674 : vec2<f32> = vec2<f32>(x_3673.x, x_3673.y);
            let x_3676 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3674.x, x_3674.y, x_3676);
            let x_3683 : vec3<f32> = txVec58;
            let x_3685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3683.xy, x_3683.z);
            u_xlat89 = x_3685;
            let x_3687 : f32 = u_xlat13.w;
            let x_3688 : f32 = u_xlat89;
            let x_3690 : f32 = u_xlat88;
            u_xlat87 = ((x_3687 * x_3688) + x_3690);
          }
        }
      } else {
        let x_3694 : vec4<f32> = u_xlat11;
        let x_3695 : vec2<f32> = vec2<f32>(x_3694.x, x_3694.y);
        let x_3697 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
        let x_3704 : vec3<f32> = txVec59;
        let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
        u_xlat87 = x_3706;
      }
      let x_3707 : i32 = u_xlati55;
      let x_3709 : f32 = x_162.x_AdditionalShadowParams[x_3707].x;
      u_xlat88 = (1.0f + -(x_3709));
      let x_3712 : f32 = u_xlat87;
      let x_3713 : i32 = u_xlati55;
      let x_3715 : f32 = x_162.x_AdditionalShadowParams[x_3713].x;
      let x_3717 : f32 = u_xlat88;
      u_xlat87 = ((x_3712 * x_3715) + x_3717);
      let x_3720 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3720);
      let x_3723 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3723 >= 1.0f);
      let x_3726 : bool = u_xlatb88;
      let x_3728 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3726 | x_3728);
      let x_3730 : bool = u_xlatb88;
      let x_3731 : f32 = u_xlat87;
      u_xlat87 = select(x_3731, 1.0f, x_3730);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3734 : f32 = u_xlat87;
    u_xlat88 = (-(x_3734) + 1.0f);
    let x_3737 : f32 = u_xlat1;
    let x_3738 : f32 = u_xlat88;
    let x_3740 : f32 = u_xlat87;
    u_xlat87 = ((x_3737 * x_3738) + x_3740);
    let x_3743 : i32 = u_xlati55;
    u_xlati88 = (1i << bitcast<u32>((x_3743 & 31i)));
    let x_3747 : i32 = u_xlati88;
    let x_3750 : f32 = x_1855.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3747) & bitcast<u32>(x_3750)));
    let x_3754 : i32 = u_xlati88;
    if ((x_3754 != 0i)) {
      let x_3758 : i32 = u_xlati55;
      let x_3760 : f32 = x_1855.x_AdditionalLightsLightTypes[x_3758].el;
      u_xlati88 = i32(x_3760);
      let x_3763 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3763 != 0i));
      let x_3767 : i32 = u_xlati55;
      u_xlati37 = (x_3767 << bitcast<u32>(2i));
      let x_3769 : i32 = u_xlati11;
      if ((x_3769 != 0i)) {
        let x_3773 : vec3<f32> = vs_TEXCOORD7;
        let x_3775 : i32 = u_xlati37;
        let x_3778 : i32 = u_xlati37;
        let x_3782 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3775 + 1i) / 4i)][((x_3778 + 1i) % 4i)];
        let x_3784 : vec3<f32> = (vec3<f32>(x_3773.y, x_3773.y, x_3773.y) * vec3<f32>(x_3782.x, x_3782.y, x_3782.w));
        let x_3785 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3784.x, x_3785.y, x_3784.y, x_3784.z);
        let x_3787 : i32 = u_xlati37;
        let x_3789 : i32 = u_xlati37;
        let x_3792 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[(x_3787 / 4i)][(x_3789 % 4i)];
        let x_3794 : vec3<f32> = vs_TEXCOORD7;
        let x_3797 : vec4<f32> = u_xlat11;
        let x_3799 : vec3<f32> = ((vec3<f32>(x_3792.x, x_3792.y, x_3792.w) * vec3<f32>(x_3794.x, x_3794.x, x_3794.x)) + vec3<f32>(x_3797.x, x_3797.z, x_3797.w));
        let x_3800 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3799.x, x_3800.y, x_3799.y, x_3799.z);
        let x_3802 : i32 = u_xlati37;
        let x_3805 : i32 = u_xlati37;
        let x_3809 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3802 + 2i) / 4i)][((x_3805 + 2i) % 4i)];
        let x_3811 : vec3<f32> = vs_TEXCOORD7;
        let x_3814 : vec4<f32> = u_xlat11;
        let x_3816 : vec3<f32> = ((vec3<f32>(x_3809.x, x_3809.y, x_3809.w) * vec3<f32>(x_3811.z, x_3811.z, x_3811.z)) + vec3<f32>(x_3814.x, x_3814.z, x_3814.w));
        let x_3817 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3816.x, x_3817.y, x_3816.y, x_3816.z);
        let x_3819 : vec4<f32> = u_xlat11;
        let x_3821 : i32 = u_xlati37;
        let x_3824 : i32 = u_xlati37;
        let x_3828 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3821 + 3i) / 4i)][((x_3824 + 3i) % 4i)];
        let x_3830 : vec3<f32> = (vec3<f32>(x_3819.x, x_3819.z, x_3819.w) + vec3<f32>(x_3828.x, x_3828.y, x_3828.w));
        let x_3831 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3830.x, x_3831.y, x_3830.y, x_3830.z);
        let x_3833 : vec4<f32> = u_xlat11;
        let x_3835 : vec4<f32> = u_xlat11;
        let x_3837 : vec2<f32> = (vec2<f32>(x_3833.x, x_3833.z) / vec2<f32>(x_3835.w, x_3835.w));
        let x_3838 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3837.x, x_3838.y, x_3837.y, x_3838.w);
        let x_3840 : vec4<f32> = u_xlat11;
        let x_3843 : vec2<f32> = ((vec2<f32>(x_3840.x, x_3840.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3844 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3843.x, x_3844.y, x_3843.y, x_3844.w);
        let x_3846 : vec4<f32> = u_xlat11;
        let x_3850 : vec2<f32> = clamp(vec2<f32>(x_3846.x, x_3846.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3851 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3850.x, x_3851.y, x_3850.y, x_3851.w);
        let x_3853 : i32 = u_xlati55;
        let x_3855 : vec4<f32> = x_1855.x_AdditionalLightsCookieAtlasUVRects[x_3853];
        let x_3857 : vec4<f32> = u_xlat11;
        let x_3860 : i32 = u_xlati55;
        let x_3862 : vec4<f32> = x_1855.x_AdditionalLightsCookieAtlasUVRects[x_3860];
        let x_3864 : vec2<f32> = ((vec2<f32>(x_3855.x, x_3855.y) * vec2<f32>(x_3857.x, x_3857.z)) + vec2<f32>(x_3862.z, x_3862.w));
        let x_3865 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3864.x, x_3865.y, x_3864.y, x_3865.w);
      } else {
        let x_3868 : i32 = u_xlati88;
        u_xlatb88 = (x_3868 == 1i);
        let x_3870 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3870);
        let x_3872 : i32 = u_xlati88;
        if ((x_3872 != 0i)) {
          let x_3876 : vec3<f32> = vs_TEXCOORD7;
          let x_3878 : i32 = u_xlati37;
          let x_3881 : i32 = u_xlati37;
          let x_3885 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3878 + 1i) / 4i)][((x_3881 + 1i) % 4i)];
          let x_3887 : vec2<f32> = (vec2<f32>(x_3876.y, x_3876.y) * vec2<f32>(x_3885.x, x_3885.y));
          let x_3888 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3887.x, x_3887.y, x_3888.z, x_3888.w);
          let x_3890 : i32 = u_xlati37;
          let x_3892 : i32 = u_xlati37;
          let x_3895 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[(x_3890 / 4i)][(x_3892 % 4i)];
          let x_3897 : vec3<f32> = vs_TEXCOORD7;
          let x_3900 : vec4<f32> = u_xlat12;
          let x_3902 : vec2<f32> = ((vec2<f32>(x_3895.x, x_3895.y) * vec2<f32>(x_3897.x, x_3897.x)) + vec2<f32>(x_3900.x, x_3900.y));
          let x_3903 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3902.x, x_3902.y, x_3903.z, x_3903.w);
          let x_3905 : i32 = u_xlati37;
          let x_3908 : i32 = u_xlati37;
          let x_3912 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3905 + 2i) / 4i)][((x_3908 + 2i) % 4i)];
          let x_3914 : vec3<f32> = vs_TEXCOORD7;
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3919 : vec2<f32> = ((vec2<f32>(x_3912.x, x_3912.y) * vec2<f32>(x_3914.z, x_3914.z)) + vec2<f32>(x_3917.x, x_3917.y));
          let x_3920 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3919.x, x_3919.y, x_3920.z, x_3920.w);
          let x_3922 : vec4<f32> = u_xlat12;
          let x_3924 : i32 = u_xlati37;
          let x_3927 : i32 = u_xlati37;
          let x_3931 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3924 + 3i) / 4i)][((x_3927 + 3i) % 4i)];
          let x_3933 : vec2<f32> = (vec2<f32>(x_3922.x, x_3922.y) + vec2<f32>(x_3931.x, x_3931.y));
          let x_3934 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3933.x, x_3933.y, x_3934.z, x_3934.w);
          let x_3936 : vec4<f32> = u_xlat12;
          let x_3939 : vec2<f32> = ((vec2<f32>(x_3936.x, x_3936.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3940 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3939.x, x_3939.y, x_3940.z, x_3940.w);
          let x_3942 : vec4<f32> = u_xlat12;
          let x_3944 : vec2<f32> = fract(vec2<f32>(x_3942.x, x_3942.y));
          let x_3945 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3944.x, x_3944.y, x_3945.z, x_3945.w);
          let x_3947 : i32 = u_xlati55;
          let x_3949 : vec4<f32> = x_1855.x_AdditionalLightsCookieAtlasUVRects[x_3947];
          let x_3951 : vec4<f32> = u_xlat12;
          let x_3954 : i32 = u_xlati55;
          let x_3956 : vec4<f32> = x_1855.x_AdditionalLightsCookieAtlasUVRects[x_3954];
          let x_3958 : vec2<f32> = ((vec2<f32>(x_3949.x, x_3949.y) * vec2<f32>(x_3951.x, x_3951.y)) + vec2<f32>(x_3956.z, x_3956.w));
          let x_3959 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3958.x, x_3959.y, x_3958.y, x_3959.w);
        } else {
          let x_3962 : vec3<f32> = vs_TEXCOORD7;
          let x_3964 : i32 = u_xlati37;
          let x_3967 : i32 = u_xlati37;
          let x_3971 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3964 + 1i) / 4i)][((x_3967 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3962.y, x_3962.y, x_3962.y, x_3962.y) * x_3971);
          let x_3973 : i32 = u_xlati37;
          let x_3975 : i32 = u_xlati37;
          let x_3978 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[(x_3973 / 4i)][(x_3975 % 4i)];
          let x_3979 : vec3<f32> = vs_TEXCOORD7;
          let x_3982 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3978 * vec4<f32>(x_3979.x, x_3979.x, x_3979.x, x_3979.x)) + x_3982);
          let x_3984 : i32 = u_xlati37;
          let x_3987 : i32 = u_xlati37;
          let x_3991 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3984 + 2i) / 4i)][((x_3987 + 2i) % 4i)];
          let x_3992 : vec3<f32> = vs_TEXCOORD7;
          let x_3995 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3991 * vec4<f32>(x_3992.z, x_3992.z, x_3992.z, x_3992.z)) + x_3995);
          let x_3997 : vec4<f32> = u_xlat12;
          let x_3998 : i32 = u_xlati37;
          let x_4001 : i32 = u_xlati37;
          let x_4005 : vec4<f32> = x_1855.x_AdditionalLightsWorldToLights[((x_3998 + 3i) / 4i)][((x_4001 + 3i) % 4i)];
          u_xlat12 = (x_3997 + x_4005);
          let x_4007 : vec4<f32> = u_xlat12;
          let x_4009 : vec4<f32> = u_xlat12;
          let x_4011 : vec3<f32> = (vec3<f32>(x_4007.x, x_4007.y, x_4007.z) / vec3<f32>(x_4009.w, x_4009.w, x_4009.w));
          let x_4012 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4011.x, x_4011.y, x_4011.z, x_4012.w);
          let x_4014 : vec4<f32> = u_xlat12;
          let x_4016 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_4014.x, x_4014.y, x_4014.z), vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
          let x_4019 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_4019);
          let x_4021 : f32 = u_xlat88;
          let x_4023 : vec4<f32> = u_xlat12;
          let x_4025 : vec3<f32> = (vec3<f32>(x_4021, x_4021, x_4021) * vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
          let x_4026 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4025.x, x_4025.y, x_4025.z, x_4026.w);
          let x_4028 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_4028.x, x_4028.y, x_4028.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4033 : f32 = u_xlat88;
          u_xlat88 = max(x_4033, 0.00000099999999747524f);
          let x_4036 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_4036);
          let x_4038 : f32 = u_xlat88;
          let x_4040 : vec4<f32> = u_xlat12;
          let x_4042 : vec3<f32> = (vec3<f32>(x_4038, x_4038, x_4038) * vec3<f32>(x_4040.z, x_4040.x, x_4040.y));
          let x_4043 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
          let x_4046 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4046);
          let x_4050 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4050, 0.0f, 1.0f);
          let x_4055 : vec4<f32> = u_xlat13;
          let x_4057 : vec4<bool> = (vec4<f32>(x_4055.y, x_4055.y, x_4055.z, x_4055.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4058 : vec2<bool> = vec2<bool>(x_4057.x, x_4057.z);
          let x_4059 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4058.x, x_4059.y, x_4058.y);
          let x_4062 : bool = u_xlatb37.x;
          if (x_4062) {
            let x_4067 : f32 = u_xlat13.x;
            x_4063 = x_4067;
          } else {
            let x_4070 : f32 = u_xlat13.x;
            x_4063 = -(x_4070);
          }
          let x_4072 : f32 = x_4063;
          u_xlat37.x = x_4072;
          let x_4075 : bool = u_xlatb37.z;
          if (x_4075) {
            let x_4080 : f32 = u_xlat13.x;
            x_4076 = x_4080;
          } else {
            let x_4083 : f32 = u_xlat13.x;
            x_4076 = -(x_4083);
          }
          let x_4085 : f32 = x_4076;
          u_xlat37.z = x_4085;
          let x_4087 : vec4<f32> = u_xlat12;
          let x_4089 : f32 = u_xlat88;
          let x_4092 : vec3<f32> = u_xlat37;
          let x_4094 : vec2<f32> = ((vec2<f32>(x_4087.x, x_4087.y) * vec2<f32>(x_4089, x_4089)) + vec2<f32>(x_4092.x, x_4092.z));
          let x_4095 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4094.x, x_4095.y, x_4094.y);
          let x_4097 : vec3<f32> = u_xlat37;
          let x_4100 : vec2<f32> = ((vec2<f32>(x_4097.x, x_4097.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4101 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4100.x, x_4101.y, x_4100.y);
          let x_4103 : vec3<f32> = u_xlat37;
          let x_4107 : vec2<f32> = clamp(vec2<f32>(x_4103.x, x_4103.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4108 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4107.x, x_4108.y, x_4107.y);
          let x_4110 : i32 = u_xlati55;
          let x_4112 : vec4<f32> = x_1855.x_AdditionalLightsCookieAtlasUVRects[x_4110];
          let x_4114 : vec3<f32> = u_xlat37;
          let x_4117 : i32 = u_xlati55;
          let x_4119 : vec4<f32> = x_1855.x_AdditionalLightsCookieAtlasUVRects[x_4117];
          let x_4121 : vec2<f32> = ((vec2<f32>(x_4112.x, x_4112.y) * vec2<f32>(x_4114.x, x_4114.z)) + vec2<f32>(x_4119.z, x_4119.w));
          let x_4122 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4121.x, x_4122.y, x_4121.y, x_4122.w);
        }
      }
      let x_4129 : vec4<f32> = u_xlat11;
      let x_4131 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4129.x, x_4129.z), 0.0f);
      u_xlat11 = x_4131;
      let x_4133 : bool = u_xlatb3.y;
      if (x_4133) {
        let x_4138 : f32 = u_xlat11.w;
        x_4134 = x_4138;
      } else {
        let x_4141 : f32 = u_xlat11.x;
        x_4134 = x_4141;
      }
      let x_4142 : f32 = x_4134;
      u_xlat88 = x_4142;
      let x_4144 : bool = u_xlatb3.x;
      if (x_4144) {
        let x_4148 : vec4<f32> = u_xlat11;
        x_4145 = vec3<f32>(x_4148.x, x_4148.y, x_4148.z);
      } else {
        let x_4151 : f32 = u_xlat88;
        x_4145 = vec3<f32>(x_4151, x_4151, x_4151);
      }
      let x_4153 : vec3<f32> = x_4145;
      let x_4154 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4160 : vec4<f32> = u_xlat11;
    let x_4162 : i32 = u_xlati55;
    let x_4164 : vec4<f32> = x_2295.x_AdditionalLightsColor[x_4162];
    let x_4166 : vec3<f32> = (vec3<f32>(x_4160.x, x_4160.y, x_4160.z) * vec3<f32>(x_4164.x, x_4164.y, x_4164.z));
    let x_4167 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4166.x, x_4166.y, x_4166.z, x_4167.w);
    let x_4169 : f32 = u_xlat84;
    let x_4170 : f32 = u_xlat87;
    u_xlat55 = (x_4169 * x_4170);
    let x_4172 : vec4<f32> = u_xlat2;
    let x_4174 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4172.x, x_4172.y, x_4172.z), vec3<f32>(x_4174.x, x_4174.y, x_4174.z));
    let x_4177 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4177, 0.0f, 1.0f);
    let x_4179 : f32 = u_xlat55;
    let x_4180 : f32 = u_xlat84;
    u_xlat55 = (x_4179 * x_4180);
    let x_4182 : f32 = u_xlat55;
    let x_4184 : vec4<f32> = u_xlat11;
    let x_4186 : vec3<f32> = (vec3<f32>(x_4182, x_4182, x_4182) * vec3<f32>(x_4184.x, x_4184.y, x_4184.z));
    let x_4187 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4186.x, x_4186.y, x_4186.z, x_4187.w);
    let x_4189 : vec4<f32> = u_xlat9;
    let x_4191 : f32 = u_xlat85;
    let x_4194 : vec3<f32> = u_xlat27;
    let x_4195 : vec3<f32> = ((vec3<f32>(x_4189.x, x_4189.y, x_4189.z) * vec3<f32>(x_4191, x_4191, x_4191)) + x_4194);
    let x_4196 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4195.x, x_4195.y, x_4195.z, x_4196.w);
    let x_4198 : vec4<f32> = u_xlat9;
    let x_4200 : vec4<f32> = u_xlat9;
    u_xlat55 = dot(vec3<f32>(x_4198.x, x_4198.y, x_4198.z), vec3<f32>(x_4200.x, x_4200.y, x_4200.z));
    let x_4203 : f32 = u_xlat55;
    u_xlat55 = max(x_4203, 1.17549435e-38f);
    let x_4205 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4205);
    let x_4207 : f32 = u_xlat55;
    let x_4209 : vec4<f32> = u_xlat9;
    let x_4211 : vec3<f32> = (vec3<f32>(x_4207, x_4207, x_4207) * vec3<f32>(x_4209.x, x_4209.y, x_4209.z));
    let x_4212 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4211.x, x_4211.y, x_4211.z, x_4212.w);
    let x_4214 : vec4<f32> = u_xlat2;
    let x_4216 : vec4<f32> = u_xlat9;
    u_xlat55 = dot(vec3<f32>(x_4214.x, x_4214.y, x_4214.z), vec3<f32>(x_4216.x, x_4216.y, x_4216.z));
    let x_4219 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4219, 0.0f, 1.0f);
    let x_4221 : vec4<f32> = u_xlat10;
    let x_4223 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4221.x, x_4221.y, x_4221.z), vec3<f32>(x_4223.x, x_4223.y, x_4223.z));
    let x_4226 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4226, 0.0f, 1.0f);
    let x_4228 : f32 = u_xlat55;
    let x_4229 : f32 = u_xlat55;
    u_xlat55 = (x_4228 * x_4229);
    let x_4231 : f32 = u_xlat55;
    let x_4233 : f32 = u_xlat8.x;
    u_xlat55 = ((x_4231 * x_4233) + 1.00001001358032226562f);
    let x_4236 : f32 = u_xlat84;
    let x_4237 : f32 = u_xlat84;
    u_xlat84 = (x_4236 * x_4237);
    let x_4239 : f32 = u_xlat55;
    let x_4240 : f32 = u_xlat55;
    u_xlat55 = (x_4239 * x_4240);
    let x_4242 : f32 = u_xlat84;
    u_xlat84 = max(x_4242, 0.10000000149011611938f);
    let x_4244 : f32 = u_xlat55;
    let x_4245 : f32 = u_xlat84;
    u_xlat55 = (x_4244 * x_4245);
    let x_4247 : f32 = u_xlat82;
    let x_4248 : f32 = u_xlat55;
    u_xlat55 = (x_4247 * x_4248);
    let x_4250 : f32 = u_xlat83;
    let x_4251 : f32 = u_xlat55;
    u_xlat55 = (x_4250 / x_4251);
    let x_4253 : vec4<f32> = u_xlat0;
    let x_4255 : f32 = u_xlat55;
    let x_4258 : vec4<f32> = u_xlat5;
    let x_4260 : vec3<f32> = ((vec3<f32>(x_4253.x, x_4253.y, x_4253.z) * vec3<f32>(x_4255, x_4255, x_4255)) + vec3<f32>(x_4258.x, x_4258.y, x_4258.z));
    let x_4261 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4260.x, x_4260.y, x_4260.z, x_4261.w);
    let x_4263 : vec4<f32> = u_xlat9;
    let x_4265 : vec4<f32> = u_xlat11;
    let x_4268 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4263.x, x_4263.y, x_4263.z) * vec3<f32>(x_4265.x, x_4265.y, x_4265.z)) + x_4268);

    continuing {
      let x_4270 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4270 + bitcast<u32>(1i));
    }
  }
  let x_4272 : vec4<f32> = u_xlat7;
  let x_4274 : vec4<f32> = u_xlat6;
  let x_4277 : vec4<f32> = u_xlat4;
  let x_4279 : vec3<f32> = ((vec3<f32>(x_4272.x, x_4272.y, x_4272.z) * vec3<f32>(x_4274.x, x_4274.y, x_4274.z)) + vec3<f32>(x_4277.x, x_4277.y, x_4277.z));
  let x_4280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4279.x, x_4279.y, x_4279.z, x_4280.w);
  let x_4282 : vec3<f32> = u_xlat34;
  let x_4283 : vec4<f32> = u_xlat0;
  let x_4285 : vec3<f32> = (x_4282 + vec3<f32>(x_4283.x, x_4283.y, x_4283.z));
  let x_4286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4285.x, x_4285.y, x_4285.z, x_4286.w);
  let x_4288 : f32 = u_xlat81;
  let x_4289 : f32 = u_xlat81;
  u_xlat78 = (x_4288 * -(x_4289));
  let x_4292 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4292);
  let x_4294 : vec4<f32> = u_xlat0;
  let x_4297 : vec4<f32> = x_29.unity_FogColor;
  let x_4300 : vec3<f32> = (vec3<f32>(x_4294.x, x_4294.y, x_4294.z) + -(vec3<f32>(x_4297.x, x_4297.y, x_4297.z)));
  let x_4301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4300.x, x_4300.y, x_4300.z, x_4301.w);
  let x_4305 : f32 = u_xlat78;
  let x_4307 : vec4<f32> = u_xlat0;
  let x_4311 : vec4<f32> = x_29.unity_FogColor;
  let x_4313 : vec3<f32> = ((vec3<f32>(x_4305, x_4305, x_4305) * vec3<f32>(x_4307.x, x_4307.y, x_4307.z)) + vec3<f32>(x_4311.x, x_4311.y, x_4311.z));
  let x_4314 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4313.x, x_4313.y, x_4313.z, x_4314.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


