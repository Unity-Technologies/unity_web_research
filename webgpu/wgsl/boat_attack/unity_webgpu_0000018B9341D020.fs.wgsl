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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_80 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat80 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : vec3<f32>;

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

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(4) var<uniform> x_1775 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1960 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2220 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu54 : u32;

var<private> u_xlatb81 : bool;

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
  var x_1728 : f32;
  var x_1855 : f32;
  var x_1866 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2357 : f32;
  var x_2368 : f32;
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
  var x_3987 : f32;
  var x_4000 : f32;
  var x_4058 : f32;
  var x_4069 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_61);
  let x_64 : vec3<f32> = u_xlat27;
  let x_66 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_64.x, x_64.x, x_64.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_72 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_72 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres1;
  let x_97 : vec3<f32> = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_109 : vec3<f32> = vs_TEXCOORD7;
  let x_112 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec4<f32> = u_xlat3;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_129 : vec3<f32> = u_xlat4;
  let x_130 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_129, x_130);
  let x_134 : vec3<f32> = u_xlat5;
  let x_135 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_134, x_135);
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_143 < x_146);
  let x_150 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_150);
  let x_156 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_156);
  let x_160 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_168);
  let x_174 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_174);
  let x_178 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_178);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(x_183.y, x_183.z, x_183.w));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = max(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_209);
  let x_213 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_217 : vec3<f32> = vs_TEXCOORD7;
  let x_219 : i32 = u_xlati2;
  let x_222 : i32 = u_xlati2;
  let x_226 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_219 + 1i) / 4i)][((x_222 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_234 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_229 / 4i)][(x_231 % 4i)];
  let x_236 : vec3<f32> = vs_TEXCOORD7;
  let x_239 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + x_239);
  let x_241 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_248 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_241 + 2i) / 4i)][((x_244 + 2i) % 4i)];
  let x_250 : vec3<f32> = vs_TEXCOORD7;
  let x_253 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
  let x_255 : vec3<f32> = u_xlat28;
  let x_256 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_263 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_256 + 3i) / 4i)][((x_259 + 3i) % 4i)];
  let x_265 : vec3<f32> = (x_255 + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_271 : f32 = vs_TEXCOORD7.y;
  let x_274 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat80 = (x_271 * x_274);
  let x_277 : f32 = x_29.unity_MatrixV[0i].z;
  let x_279 : f32 = vs_TEXCOORD7.x;
  let x_281 : f32 = u_xlat80;
  u_xlat80 = ((x_277 * x_279) + x_281);
  let x_284 : f32 = x_29.unity_MatrixV[2i].z;
  let x_286 : f32 = vs_TEXCOORD7.z;
  let x_288 : f32 = u_xlat80;
  u_xlat80 = ((x_284 * x_286) + x_288);
  let x_290 : f32 = u_xlat80;
  let x_292 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat80 = (x_290 + x_292);
  let x_294 : f32 = u_xlat80;
  let x_297 : f32 = x_29.x_ProjectionParams.y;
  u_xlat80 = (-(x_294) + -(x_297));
  let x_300 : f32 = u_xlat80;
  u_xlat80 = max(x_300, 0.0f);
  let x_302 : f32 = u_xlat80;
  let x_305 : f32 = x_29.unity_FogParams.x;
  u_xlat80 = (x_302 * x_305);
  let x_312 : vec4<f32> = vs_TEXCOORD0;
  let x_315 : f32 = x_29.x_GlobalMipBias.x;
  let x_316 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_312.z, x_312.w), x_315);
  u_xlat3 = x_316;
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  let x_324 : f32 = x_29.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_321.z, x_321.w), x_324);
  u_xlat4 = vec3<f32>(x_325.x, x_325.y, x_325.z);
  let x_327 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat27;
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_334, vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_340 : f32 = u_xlat3.x;
  u_xlat3.x = (x_340 + 0.5f);
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_344.x, x_344.x, x_344.x) * x_346);
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_352 : f32 = u_xlat3.w;
  u_xlat81 = max(x_352, 0.00009999999747378752f);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : f32 = u_xlat81;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) / vec3<f32>(x_357, x_357, x_357));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : f32 = u_xlat1;
  u_xlat81 = ((-(x_362) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_367 : f32 = u_xlat81;
  u_xlat4.x = (-(x_367) + 1.0f);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : f32 = u_xlat81;
  u_xlat30 = (vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374, x_374, x_374));
  let x_377 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  let x_386 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat1;
  let x_399 : f32 = u_xlat1;
  u_xlat81 = (x_398 * x_399);
  let x_401 : f32 = u_xlat81;
  u_xlat81 = max(x_401, 0.0078125f);
  let x_404 : f32 = u_xlat81;
  let x_405 : f32 = u_xlat81;
  u_xlat5.x = (x_404 * x_405);
  let x_410 : f32 = u_xlat0.w;
  let x_412 : f32 = u_xlat4.x;
  u_xlat78 = (x_410 + x_412);
  let x_414 : f32 = u_xlat78;
  u_xlat78 = clamp(x_414, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat81;
  u_xlat4.x = ((x_416 * 4.0f) + 2.0f);
  let x_424 : f32 = x_80.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_424);
  let x_428 : bool = u_xlatb31.x;
  if (x_428) {
    let x_432 : f32 = x_80.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_432 == 1.0f);
    let x_436 : bool = u_xlatb31.x;
    if (x_436) {
      let x_440 : vec4<f32> = u_xlat2;
      let x_443 : vec4<f32> = x_80.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_440.x, x_440.y, x_440.x, x_440.y) + x_443);
      let x_447 : vec4<f32> = u_xlat6;
      let x_448 : vec2<f32> = vec2<f32>(x_447.x, x_447.y);
      let x_450 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_448.x, x_448.y, x_450);
      let x_463 : vec3<f32> = txVec0;
      let x_465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_463.xy, x_463.z);
      u_xlat7.x = x_465;
      let x_468 : vec4<f32> = u_xlat6;
      let x_469 : vec2<f32> = vec2<f32>(x_468.z, x_468.w);
      let x_471 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_469.x, x_469.y, x_471);
      let x_478 : vec3<f32> = txVec1;
      let x_480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_478.xy, x_478.z);
      u_xlat7.y = x_480;
      let x_482 : vec4<f32> = u_xlat2;
      let x_486 : vec4<f32> = x_80.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_482.x, x_482.y, x_482.x, x_482.y) + x_486);
      let x_489 : vec4<f32> = u_xlat6;
      let x_490 : vec2<f32> = vec2<f32>(x_489.x, x_489.y);
      let x_492 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_490.x, x_490.y, x_492);
      let x_499 : vec3<f32> = txVec2;
      let x_501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_499.xy, x_499.z);
      u_xlat7.z = x_501;
      let x_504 : vec4<f32> = u_xlat6;
      let x_505 : vec2<f32> = vec2<f32>(x_504.z, x_504.w);
      let x_507 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_514 : vec3<f32> = txVec3;
      let x_516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_514.xy, x_514.z);
      u_xlat7.w = x_516;
      let x_519 : vec4<f32> = u_xlat7;
      u_xlat31.x = dot(x_519, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_527 : f32 = x_80.x_MainLightShadowParams.y;
      u_xlatb57 = (x_527 == 2.0f);
      let x_529 : bool = u_xlatb57;
      if (x_529) {
        let x_534 : vec4<f32> = u_xlat2;
        let x_538 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_538.z, x_538.w)) + vec2<f32>(0.5f, 0.5f));
        let x_543 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_543);
        let x_545 : vec4<f32> = u_xlat2;
        let x_548 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_551 : vec2<f32> = u_xlat57;
        let x_553 : vec2<f32> = ((vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_548.z, x_548.w)) + -(x_551));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_556.x, x_556.x, x_556.y, x_556.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_561 : vec4<f32> = u_xlat7;
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_561.x, x_561.x, x_561.z, x_561.z) * vec4<f32>(x_563.x, x_563.x, x_563.z, x_563.z));
        let x_567 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_567.y, x_567.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_572 : vec4<f32> = u_xlat8;
        let x_575 : vec4<f32> = u_xlat6;
        let x_578 : vec2<f32> = ((vec2<f32>(x_572.x, x_572.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_575.x, x_575.y)));
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_578.x, x_579.y, x_578.y, x_579.w);
        let x_581 : vec4<f32> = u_xlat6;
        let x_585 : vec2<f32> = (-(vec2<f32>(x_581.x, x_581.y)) + vec2<f32>(1.0f, 1.0f));
        let x_586 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_589 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_589.x, x_589.y), vec2<f32>(0.0f, 0.0f));
        let x_593 : vec2<f32> = u_xlat60;
        let x_595 : vec2<f32> = u_xlat60;
        let x_597 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_593) * x_595) + vec2<f32>(x_597.x, x_597.y));
        let x_600 : vec4<f32> = u_xlat6;
        let x_602 : vec2<f32> = max(vec2<f32>(x_600.x, x_600.y), vec2<f32>(0.0f, 0.0f));
        let x_603 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat6;
        let x_608 : vec4<f32> = u_xlat6;
        let x_611 : vec4<f32> = u_xlat7;
        let x_613 : vec2<f32> = ((-(vec2<f32>(x_605.x, x_605.y)) * vec2<f32>(x_608.x, x_608.y)) + vec2<f32>(x_611.y, x_611.w));
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_616 + vec2<f32>(1.0f, 1.0f));
        let x_618 : vec4<f32> = u_xlat6;
        let x_620 : vec2<f32> = (vec2<f32>(x_618.x, x_618.y) + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_624 : vec4<f32> = u_xlat7;
        let x_628 : vec2<f32> = (vec2<f32>(x_624.x, x_624.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_629 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_632 : vec4<f32> = u_xlat8;
        let x_634 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_635 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
        let x_637 : vec2<f32> = u_xlat60;
        let x_638 : vec2<f32> = (x_637 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_642 : vec4<f32> = u_xlat6;
        let x_644 : vec2<f32> = (vec2<f32>(x_642.x, x_642.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_645 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat7;
        let x_649 : vec2<f32> = (vec2<f32>(x_647.y, x_647.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_650 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_653 : f32 = u_xlat8.x;
        u_xlat9.z = x_653;
        let x_656 : f32 = u_xlat6.x;
        u_xlat9.w = x_656;
        let x_659 : f32 = u_xlat11.x;
        u_xlat10.z = x_659;
        let x_662 : f32 = u_xlat58.x;
        u_xlat10.w = x_662;
        let x_664 : vec4<f32> = u_xlat9;
        let x_666 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_664.z, x_664.w, x_664.x, x_664.z) + vec4<f32>(x_666.z, x_666.w, x_666.x, x_666.z));
        let x_670 : f32 = u_xlat9.y;
        u_xlat8.z = x_670;
        let x_673 : f32 = u_xlat6.y;
        u_xlat8.w = x_673;
        let x_676 : f32 = u_xlat10.y;
        u_xlat11.z = x_676;
        let x_679 : f32 = u_xlat58.y;
        u_xlat11.w = x_679;
        let x_681 : vec4<f32> = u_xlat8;
        let x_683 : vec4<f32> = u_xlat11;
        let x_685 : vec3<f32> = (vec3<f32>(x_681.z, x_681.y, x_681.w) + vec3<f32>(x_683.z, x_683.y, x_683.w));
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat10;
        let x_690 : vec4<f32> = u_xlat7;
        let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.z, x_688.w) / vec3<f32>(x_690.z, x_690.w, x_690.y));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_700 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat11;
        let x_705 : vec4<f32> = u_xlat6;
        let x_707 : vec3<f32> = (vec3<f32>(x_703.z, x_703.y, x_703.w) / vec3<f32>(x_705.x, x_705.y, x_705.z));
        let x_708 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat9;
        let x_712 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat8;
        let x_718 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_720 : vec3<f32> = (vec3<f32>(x_715.y, x_715.x, x_715.z) * vec3<f32>(x_718.x, x_718.x, x_718.x));
        let x_721 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat9;
        let x_726 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_728 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_726.y, x_726.y, x_726.y));
        let x_729 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_732 : f32 = u_xlat9.x;
        u_xlat8.w = x_732;
        let x_734 : vec2<f32> = u_xlat57;
        let x_737 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_740 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y) * vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y)) + vec4<f32>(x_740.y, x_740.w, x_740.x, x_740.w));
        let x_743 : vec2<f32> = u_xlat57;
        let x_745 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat8;
        let x_750 : vec2<f32> = ((x_743 * vec2<f32>(x_745.x, x_745.y)) + vec2<f32>(x_748.z, x_748.w));
        let x_751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_754 : f32 = u_xlat8.y;
        u_xlat9.w = x_754;
        let x_756 : vec4<f32> = u_xlat9;
        let x_757 : vec2<f32> = vec2<f32>(x_756.y, x_756.z);
        let x_758 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_757.x, x_758.z, x_757.y);
        let x_761 : vec2<f32> = u_xlat57;
        let x_764 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y) * vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y)) + vec4<f32>(x_767.x, x_767.y, x_767.z, x_767.y));
        let x_770 : vec2<f32> = u_xlat57;
        let x_773 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.w, x_776.y, x_776.w, x_776.z));
        let x_779 : vec2<f32> = u_xlat57;
        let x_782 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.x, x_785.w, x_785.z, x_785.w));
        let x_789 : vec4<f32> = u_xlat6;
        let x_791 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_789.x, x_789.x, x_789.x, x_789.y) * vec4<f32>(x_791.z, x_791.w, x_791.y, x_791.z));
        let x_795 : vec4<f32> = u_xlat6;
        let x_797 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_795.y, x_795.y, x_795.z, x_795.z) * x_797);
        let x_800 : f32 = u_xlat6.z;
        let x_802 : f32 = u_xlat7.y;
        u_xlat57.x = (x_800 * x_802);
        let x_806 : vec4<f32> = u_xlat10;
        let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
        let x_809 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_807.x, x_807.y, x_809);
        let x_817 : vec3<f32> = txVec4;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat83 = x_819;
        let x_821 : vec4<f32> = u_xlat10;
        let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
        let x_824 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec5;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat6.x = x_833;
        let x_836 : f32 = u_xlat6.x;
        let x_838 : f32 = u_xlat13.y;
        u_xlat6.x = (x_836 * x_838);
        let x_842 : f32 = u_xlat13.x;
        let x_843 : f32 = u_xlat83;
        let x_846 : f32 = u_xlat6.x;
        u_xlat83 = ((x_842 * x_843) + x_846);
        let x_849 : vec4<f32> = u_xlat11;
        let x_850 : vec2<f32> = vec2<f32>(x_849.x, x_849.y);
        let x_852 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_850.x, x_850.y, x_852);
        let x_859 : vec3<f32> = txVec6;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_859.xy, x_859.z);
        u_xlat6.x = x_861;
        let x_864 : f32 = u_xlat13.z;
        let x_866 : f32 = u_xlat6.x;
        let x_868 : f32 = u_xlat83;
        u_xlat83 = ((x_864 * x_866) + x_868);
        let x_871 : vec4<f32> = u_xlat9;
        let x_872 : vec2<f32> = vec2<f32>(x_871.x, x_871.y);
        let x_874 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_881 : vec3<f32> = txVec7;
        let x_883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_881.xy, x_881.z);
        u_xlat6.x = x_883;
        let x_886 : f32 = u_xlat13.w;
        let x_888 : f32 = u_xlat6.x;
        let x_890 : f32 = u_xlat83;
        u_xlat83 = ((x_886 * x_888) + x_890);
        let x_893 : vec4<f32> = u_xlat12;
        let x_894 : vec2<f32> = vec2<f32>(x_893.x, x_893.y);
        let x_896 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_894.x, x_894.y, x_896);
        let x_903 : vec3<f32> = txVec8;
        let x_905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_903.xy, x_903.z);
        u_xlat6.x = x_905;
        let x_908 : f32 = u_xlat14.x;
        let x_910 : f32 = u_xlat6.x;
        let x_912 : f32 = u_xlat83;
        u_xlat83 = ((x_908 * x_910) + x_912);
        let x_915 : vec4<f32> = u_xlat12;
        let x_916 : vec2<f32> = vec2<f32>(x_915.z, x_915.w);
        let x_918 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_916.x, x_916.y, x_918);
        let x_925 : vec3<f32> = txVec9;
        let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_925.xy, x_925.z);
        u_xlat6.x = x_927;
        let x_930 : f32 = u_xlat14.y;
        let x_932 : f32 = u_xlat6.x;
        let x_934 : f32 = u_xlat83;
        u_xlat83 = ((x_930 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat9;
        let x_938 : vec2<f32> = vec2<f32>(x_937.z, x_937.w);
        let x_940 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec10;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_947.xy, x_947.z);
        u_xlat6.x = x_949;
        let x_952 : f32 = u_xlat14.z;
        let x_954 : f32 = u_xlat6.x;
        let x_956 : f32 = u_xlat83;
        u_xlat83 = ((x_952 * x_954) + x_956);
        let x_959 : vec4<f32> = u_xlat8;
        let x_960 : vec2<f32> = vec2<f32>(x_959.x, x_959.y);
        let x_962 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_960.x, x_960.y, x_962);
        let x_969 : vec3<f32> = txVec11;
        let x_971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_969.xy, x_969.z);
        u_xlat6.x = x_971;
        let x_974 : f32 = u_xlat14.w;
        let x_976 : f32 = u_xlat6.x;
        let x_978 : f32 = u_xlat83;
        u_xlat83 = ((x_974 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat8;
        let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
        let x_984 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec12;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat6.x = x_993;
        let x_996 : f32 = u_xlat57.x;
        let x_998 : f32 = u_xlat6.x;
        let x_1000 : f32 = u_xlat83;
        u_xlat31.x = ((x_996 * x_998) + x_1000);
      } else {
        let x_1004 : vec4<f32> = u_xlat2;
        let x_1007 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_1011);
        let x_1013 : vec4<f32> = u_xlat2;
        let x_1016 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1019 : vec2<f32> = u_xlat57;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.z, x_1016.w)) + -(x_1019));
        let x_1022 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1042.x, x_1042.y)));
        let x_1046 : vec4<f32> = u_xlat6;
        let x_1049 : vec2<f32> = (-(vec2<f32>(x_1046.x, x_1046.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat6;
        let x_1054 : vec2<f32> = min(vec2<f32>(x_1052.x, x_1052.y), vec2<f32>(0.0f, 0.0f));
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1065 : vec2<f32> = ((-(vec2<f32>(x_1057.x, x_1057.y)) * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.x, x_1063.z));
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat6;
        let x_1070 : vec2<f32> = max(vec2<f32>(x_1068.x, x_1068.y), vec2<f32>(0.0f, 0.0f));
        let x_1071 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1081 : vec2<f32> = ((-(vec2<f32>(x_1073.x, x_1073.y)) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.y, x_1079.w));
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1082.x, x_1081.x, x_1082.z, x_1081.y);
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1084 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1088 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1088 * 0.08163200318813323975f);
        let x_1092 : vec2<f32> = u_xlat58;
        let x_1095 : vec2<f32> = (vec2<f32>(x_1092.y, x_1092.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1096 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1098.x, x_1098.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1102 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1102 * 0.08163200318813323975f);
        let x_1106 : f32 = u_xlat10.y;
        u_xlat8.x = x_1106;
        let x_1108 : vec4<f32> = u_xlat6;
        let x_1115 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1115.x, x_1116.z, x_1115.y);
        let x_1118 : vec4<f32> = u_xlat6;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1122.x, x_1123.y, x_1122.y, x_1123.w);
        let x_1126 : f32 = u_xlat58.x;
        u_xlat7.y = x_1126;
        let x_1129 : f32 = u_xlat9.y;
        u_xlat7.w = x_1129;
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1131 + x_1132);
        let x_1134 : vec4<f32> = u_xlat6;
        let x_1137 : vec2<f32> = ((vec2<f32>(x_1134.y, x_1134.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1138.x, x_1137.x, x_1138.z, x_1137.y);
        let x_1140 : vec4<f32> = u_xlat6;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1144.y, x_1143.y, x_1144.w);
        let x_1147 : f32 = u_xlat58.y;
        u_xlat9.y = x_1147;
        let x_1149 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1149 + x_1150);
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1152 / x_1153);
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1155 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1161 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1161 / x_1162);
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1164 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1169 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1166.w, x_1166.x, x_1166.y, x_1166.z) * vec4<f32>(x_1169.x, x_1169.x, x_1169.x, x_1169.x));
        let x_1172 : vec4<f32> = u_xlat9;
        let x_1175 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1172.x, x_1172.w, x_1172.y, x_1172.z) * vec4<f32>(x_1175.y, x_1175.y, x_1175.y, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1179 : vec3<f32> = vec3<f32>(x_1178.y, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1179.z);
        let x_1183 : f32 = u_xlat9.x;
        u_xlat10.y = x_1183;
        let x_1185 : vec2<f32> = u_xlat57;
        let x_1188 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y) * vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y)) + vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1191.y));
        let x_1194 : vec2<f32> = u_xlat57;
        let x_1196 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = ((x_1194 * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.w, x_1199.y));
        let x_1202 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1205 : f32 = u_xlat10.y;
        u_xlat7.y = x_1205;
        let x_1208 : f32 = u_xlat9.z;
        u_xlat10.y = x_1208;
        let x_1210 : vec2<f32> = u_xlat57;
        let x_1213 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y) * vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y)) + vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1216.y));
        let x_1220 : vec2<f32> = u_xlat57;
        let x_1222 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1220 * vec2<f32>(x_1222.x, x_1222.y)) + vec2<f32>(x_1225.w, x_1225.y));
        let x_1229 : f32 = u_xlat10.y;
        u_xlat7.z = x_1229;
        let x_1231 : vec2<f32> = u_xlat57;
        let x_1234 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.z));
        let x_1241 : f32 = u_xlat9.w;
        u_xlat10.y = x_1241;
        let x_1244 : vec2<f32> = u_xlat57;
        let x_1247 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec2<f32> = u_xlat57;
        let x_1256 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1254 * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat10.y;
        u_xlat7.w = x_1263;
        let x_1266 : vec2<f32> = u_xlat57;
        let x_1268 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat7;
        let x_1273 : vec2<f32> = ((x_1266 * vec2<f32>(x_1268.x, x_1268.y)) + vec2<f32>(x_1271.x, x_1271.w));
        let x_1274 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat10;
        let x_1277 : vec3<f32> = vec3<f32>(x_1276.x, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1277.x, x_1278.y, x_1277.y, x_1277.z);
        let x_1280 : vec2<f32> = u_xlat57;
        let x_1283 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1290 : vec2<f32> = u_xlat57;
        let x_1292 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1290 * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
        let x_1299 : f32 = u_xlat7.x;
        u_xlat9.x = x_1299;
        let x_1301 : vec2<f32> = u_xlat57;
        let x_1303 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1301 * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1306.x, x_1306.y));
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1310.x, x_1310.x, x_1310.x, x_1310.x) * x_1312);
        let x_1315 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1315.y, x_1315.y, x_1315.y, x_1315.y) * x_1317);
        let x_1320 : vec4<f32> = u_xlat6;
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1320.z, x_1320.z, x_1320.z, x_1320.z) * x_1322);
        let x_1324 : vec4<f32> = u_xlat6;
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1324.w, x_1324.w, x_1324.w, x_1324.w) * x_1326);
        let x_1329 : vec4<f32> = u_xlat11;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec13;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat7.x = x_1341;
        let x_1344 : vec4<f32> = u_xlat11;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1355 : vec3<f32> = txVec14;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat85 = x_1357;
        let x_1358 : f32 = u_xlat85;
        let x_1360 : f32 = u_xlat17.y;
        u_xlat85 = (x_1358 * x_1360);
        let x_1363 : f32 = u_xlat17.x;
        let x_1365 : f32 = u_xlat7.x;
        let x_1367 : f32 = u_xlat85;
        u_xlat7.x = ((x_1363 * x_1365) + x_1367);
        let x_1371 : vec4<f32> = u_xlat12;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec15;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat85 = x_1383;
        let x_1385 : f32 = u_xlat17.z;
        let x_1386 : f32 = u_xlat85;
        let x_1389 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1385 * x_1386) + x_1389);
        let x_1393 : vec4<f32> = u_xlat14;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec16;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat85 = x_1405;
        let x_1407 : f32 = u_xlat17.w;
        let x_1408 : f32 = u_xlat85;
        let x_1411 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1407 * x_1408) + x_1411);
        let x_1415 : vec4<f32> = u_xlat13;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
        let x_1418 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec17;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat85 = x_1427;
        let x_1429 : f32 = u_xlat18.x;
        let x_1430 : f32 = u_xlat85;
        let x_1433 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1429 * x_1430) + x_1433);
        let x_1437 : vec4<f32> = u_xlat13;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec18;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat85 = x_1449;
        let x_1451 : f32 = u_xlat18.y;
        let x_1452 : f32 = u_xlat85;
        let x_1455 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1451 * x_1452) + x_1455);
        let x_1459 : vec2<f32> = u_xlat64;
        let x_1461 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec19;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat85 = x_1470;
        let x_1472 : f32 = u_xlat18.z;
        let x_1473 : f32 = u_xlat85;
        let x_1476 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1472 * x_1473) + x_1476);
        let x_1480 : vec4<f32> = u_xlat14;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.z, x_1480.w);
        let x_1483 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec20;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat85 = x_1492;
        let x_1494 : f32 = u_xlat18.w;
        let x_1495 : f32 = u_xlat85;
        let x_1498 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1494 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat15;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec21;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat85 = x_1514;
        let x_1516 : f32 = u_xlat19.x;
        let x_1517 : f32 = u_xlat85;
        let x_1520 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1516 * x_1517) + x_1520);
        let x_1524 : vec4<f32> = u_xlat15;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec22;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat85 = x_1536;
        let x_1538 : f32 = u_xlat19.y;
        let x_1539 : f32 = u_xlat85;
        let x_1542 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1538 * x_1539) + x_1542);
        let x_1546 : vec2<f32> = u_xlat33;
        let x_1548 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec23;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat33.x = x_1557;
        let x_1560 : f32 = u_xlat19.z;
        let x_1562 : f32 = u_xlat33.x;
        let x_1565 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1560 * x_1562) + x_1565);
        let x_1569 : vec4<f32> = u_xlat16;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
        let x_1572 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec24;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat33.x = x_1581;
        let x_1584 : f32 = u_xlat19.w;
        let x_1586 : f32 = u_xlat33.x;
        let x_1589 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1584 * x_1586) + x_1589);
        let x_1593 : vec4<f32> = u_xlat10;
        let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
        let x_1596 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec25;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat33.x = x_1605;
        let x_1608 : f32 = u_xlat6.x;
        let x_1610 : f32 = u_xlat33.x;
        let x_1613 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1608 * x_1610) + x_1613);
        let x_1617 : vec4<f32> = u_xlat10;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.z, x_1617.w);
        let x_1620 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec26;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat7.x = x_1629;
        let x_1632 : f32 = u_xlat6.y;
        let x_1634 : f32 = u_xlat7.x;
        let x_1637 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1632 * x_1634) + x_1637);
        let x_1641 : vec2<f32> = u_xlat61;
        let x_1643 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1651 : vec3<f32> = txVec27;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1651.xy, x_1651.z);
        u_xlat32 = x_1653;
        let x_1655 : f32 = u_xlat6.z;
        let x_1656 : f32 = u_xlat32;
        let x_1659 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1655 * x_1656) + x_1659);
        let x_1663 : vec2<f32> = u_xlat57;
        let x_1665 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec28;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat57.x = x_1674;
        let x_1677 : f32 = u_xlat6.w;
        let x_1679 : f32 = u_xlat57.x;
        let x_1682 : f32 = u_xlat6.x;
        u_xlat31.x = ((x_1677 * x_1679) + x_1682);
      }
    }
  } else {
    let x_1687 : vec4<f32> = u_xlat2;
    let x_1688 : vec2<f32> = vec2<f32>(x_1687.x, x_1687.y);
    let x_1690 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
    let x_1697 : vec3<f32> = txVec29;
    let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1697.xy, x_1697.z);
    u_xlat31.x = x_1699;
  }
  let x_1702 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1702) + 1.0f);
  let x_1707 : f32 = u_xlat31.x;
  let x_1709 : f32 = x_80.x_MainLightShadowParams.x;
  let x_1712 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1707 * x_1709) + x_1712);
  let x_1717 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1717);
  let x_1721 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1721 >= 1.0f);
  let x_1723 : bool = u_xlatb54;
  let x_1724 : bool = u_xlatb28;
  u_xlatb28 = (x_1723 | x_1724);
  let x_1726 : bool = u_xlatb28;
  if (x_1726) {
    x_1728 = 1.0f;
  } else {
    let x_1733 : f32 = u_xlat2.x;
    x_1728 = x_1733;
  }
  let x_1734 : f32 = x_1728;
  u_xlat2.x = x_1734;
  let x_1736 : vec3<f32> = vs_TEXCOORD7;
  let x_1739 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1736 + -(x_1739));
  let x_1742 : vec3<f32> = u_xlat31;
  let x_1743 : vec3<f32> = u_xlat31;
  u_xlat28.x = dot(x_1742, x_1743);
  let x_1748 : f32 = u_xlat28.x;
  let x_1750 : f32 = x_80.x_MainLightShadowParams.z;
  let x_1753 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1748 * x_1750) + x_1753);
  let x_1755 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1755, 0.0f, 1.0f);
  let x_1758 : f32 = u_xlat2.x;
  u_xlat31.x = (-(x_1758) + 1.0f);
  let x_1762 : f32 = u_xlat54;
  let x_1764 : f32 = u_xlat31.x;
  let x_1767 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1762 * x_1764) + x_1767);
  let x_1777 : f32 = x_1775.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1777 == -1.0f));
  let x_1779 : bool = u_xlatb54;
  if (x_1779) {
    let x_1782 : vec3<f32> = vs_TEXCOORD7;
    let x_1785 : vec4<f32> = x_1775.x_MainLightWorldToLight[1i];
    let x_1787 : vec2<f32> = (vec2<f32>(x_1782.y, x_1782.y) * vec2<f32>(x_1785.x, x_1785.y));
    let x_1788 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1787.x, x_1787.y, x_1788.z);
    let x_1791 : vec4<f32> = x_1775.x_MainLightWorldToLight[0i];
    let x_1793 : vec3<f32> = vs_TEXCOORD7;
    let x_1796 : vec3<f32> = u_xlat31;
    let x_1798 : vec2<f32> = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(x_1793.x, x_1793.x)) + vec2<f32>(x_1796.x, x_1796.y));
    let x_1799 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1798.x, x_1798.y, x_1799.z);
    let x_1802 : vec4<f32> = x_1775.x_MainLightWorldToLight[2i];
    let x_1804 : vec3<f32> = vs_TEXCOORD7;
    let x_1807 : vec3<f32> = u_xlat31;
    let x_1809 : vec2<f32> = ((vec2<f32>(x_1802.x, x_1802.y) * vec2<f32>(x_1804.z, x_1804.z)) + vec2<f32>(x_1807.x, x_1807.y));
    let x_1810 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1809.x, x_1809.y, x_1810.z);
    let x_1812 : vec3<f32> = u_xlat31;
    let x_1815 : vec4<f32> = x_1775.x_MainLightWorldToLight[3i];
    let x_1817 : vec2<f32> = (vec2<f32>(x_1812.x, x_1812.y) + vec2<f32>(x_1815.x, x_1815.y));
    let x_1818 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1817.x, x_1817.y, x_1818.z);
    let x_1820 : vec3<f32> = u_xlat31;
    let x_1823 : vec2<f32> = ((vec2<f32>(x_1820.x, x_1820.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1824 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1823.x, x_1823.y, x_1824.z);
    let x_1831 : vec3<f32> = u_xlat31;
    let x_1834 : f32 = x_29.x_GlobalMipBias.x;
    let x_1835 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1831.x, x_1831.y), x_1834);
    u_xlat6 = x_1835;
    let x_1837 : f32 = x_1775.x_MainLightCookieTextureFormat;
    let x_1839 : f32 = x_1775.x_MainLightCookieTextureFormat;
    let x_1841 : f32 = x_1775.x_MainLightCookieTextureFormat;
    let x_1843 : f32 = x_1775.x_MainLightCookieTextureFormat;
    let x_1844 : vec4<f32> = vec4<f32>(x_1837, x_1839, x_1841, x_1843);
    let x_1851 : vec4<bool> = (vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1844.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_1851.x, x_1851.y);
    let x_1854 : bool = u_xlatb31.y;
    if (x_1854) {
      let x_1859 : f32 = u_xlat6.w;
      x_1855 = x_1859;
    } else {
      let x_1862 : f32 = u_xlat6.x;
      x_1855 = x_1862;
    }
    let x_1863 : f32 = x_1855;
    u_xlat54 = x_1863;
    let x_1865 : bool = u_xlatb31.x;
    if (x_1865) {
      let x_1869 : vec4<f32> = u_xlat6;
      x_1866 = vec3<f32>(x_1869.x, x_1869.y, x_1869.z);
    } else {
      let x_1872 : f32 = u_xlat54;
      x_1866 = vec3<f32>(x_1872, x_1872, x_1872);
    }
    let x_1874 : vec3<f32> = x_1866;
    u_xlat31 = x_1874;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_1879 : vec3<f32> = u_xlat31;
  let x_1881 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat31 = (x_1879 * vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
  let x_1885 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1885;
  let x_1889 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1889;
  let x_1893 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1893;
  let x_1895 : vec4<f32> = u_xlat6;
  let x_1898 : vec3<f32> = u_xlat27;
  u_xlat54 = dot(-(vec3<f32>(x_1895.x, x_1895.y, x_1895.z)), x_1898);
  let x_1900 : f32 = u_xlat54;
  let x_1901 : f32 = u_xlat54;
  u_xlat54 = (x_1900 + x_1901);
  let x_1903 : vec3<f32> = u_xlat27;
  let x_1904 : f32 = u_xlat54;
  let x_1908 : vec4<f32> = u_xlat6;
  let x_1911 : vec3<f32> = ((x_1903 * -(vec3<f32>(x_1904, x_1904, x_1904))) + -(vec3<f32>(x_1908.x, x_1908.y, x_1908.z)));
  let x_1912 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1914 : vec3<f32> = u_xlat27;
  let x_1915 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(x_1914, vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
  let x_1918 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1918, 0.0f, 1.0f);
  let x_1920 : f32 = u_xlat54;
  u_xlat54 = (-(x_1920) + 1.0f);
  let x_1923 : f32 = u_xlat54;
  let x_1924 : f32 = u_xlat54;
  u_xlat54 = (x_1923 * x_1924);
  let x_1926 : f32 = u_xlat54;
  let x_1927 : f32 = u_xlat54;
  u_xlat54 = (x_1926 * x_1927);
  let x_1930 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1930) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1936 : f32 = u_xlat1;
  let x_1937 : f32 = u_xlat84;
  u_xlat1 = (x_1936 * x_1937);
  let x_1939 : f32 = u_xlat1;
  u_xlat1 = (x_1939 * 6.0f);
  let x_1950 : vec4<f32> = u_xlat7;
  let x_1952 : f32 = u_xlat1;
  let x_1953 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1950.x, x_1950.y, x_1950.z), x_1952);
  u_xlat7 = x_1953;
  let x_1955 : f32 = u_xlat7.w;
  u_xlat1 = (x_1955 + -1.0f);
  let x_1962 : f32 = x_1960.unity_SpecCube0_HDR.w;
  let x_1963 : f32 = u_xlat1;
  u_xlat1 = ((x_1962 * x_1963) + 1.0f);
  let x_1966 : f32 = u_xlat1;
  u_xlat1 = max(x_1966, 0.0f);
  let x_1968 : f32 = u_xlat1;
  u_xlat1 = log2(x_1968);
  let x_1970 : f32 = u_xlat1;
  let x_1972 : f32 = x_1960.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1970 * x_1972);
  let x_1974 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1974);
  let x_1976 : f32 = u_xlat1;
  let x_1978 : f32 = x_1960.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1976 * x_1978);
  let x_1980 : vec4<f32> = u_xlat7;
  let x_1982 : f32 = u_xlat1;
  let x_1984 : vec3<f32> = (vec3<f32>(x_1980.x, x_1980.y, x_1980.z) * vec3<f32>(x_1982, x_1982, x_1982));
  let x_1985 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1987 : f32 = u_xlat81;
  let x_1989 : f32 = u_xlat81;
  let x_1993 : vec2<f32> = ((vec2<f32>(x_1987, x_1987) * vec2<f32>(x_1989, x_1989)) + vec2<f32>(-1.0f, 1.0f));
  let x_1994 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1993.x, x_1993.y, x_1994.z, x_1994.w);
  let x_1997 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1997);
  let x_2000 : vec4<f32> = u_xlat0;
  let x_2003 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2000.x, x_2000.y, x_2000.z)) + vec3<f32>(x_2003, x_2003, x_2003));
  let x_2006 : f32 = u_xlat54;
  let x_2008 : vec3<f32> = u_xlat34;
  let x_2010 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2006, x_2006, x_2006) * x_2008) + vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : f32 = u_xlat1;
  let x_2015 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2013, x_2013, x_2013) * x_2015);
  let x_2017 : vec4<f32> = u_xlat7;
  let x_2019 : vec3<f32> = u_xlat34;
  let x_2020 : vec3<f32> = (vec3<f32>(x_2017.x, x_2017.y, x_2017.z) * x_2019);
  let x_2021 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
  let x_2023 : vec4<f32> = u_xlat3;
  let x_2025 : vec3<f32> = u_xlat30;
  let x_2027 : vec4<f32> = u_xlat7;
  let x_2029 : vec3<f32> = ((vec3<f32>(x_2023.x, x_2023.y, x_2023.z) * x_2025) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2033 : f32 = u_xlat2.x;
  let x_2035 : f32 = x_1960.unity_LightData.z;
  u_xlat78 = (x_2033 * x_2035);
  let x_2037 : vec3<f32> = u_xlat27;
  let x_2039 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_2037, vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
  let x_2042 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2042, 0.0f, 1.0f);
  let x_2044 : f32 = u_xlat78;
  let x_2045 : f32 = u_xlat1;
  u_xlat78 = (x_2044 * x_2045);
  let x_2047 : f32 = u_xlat78;
  let x_2049 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2047, x_2047, x_2047) * x_2049);
  let x_2051 : vec4<f32> = u_xlat6;
  let x_2054 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2056 : vec3<f32> = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) + vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : vec4<f32> = u_xlat7;
  let x_2061 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2059.x, x_2059.y, x_2059.z), vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : f32 = u_xlat78;
  u_xlat78 = max(x_2064, 1.17549435e-38f);
  let x_2067 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2067);
  let x_2069 : f32 = u_xlat78;
  let x_2071 : vec4<f32> = u_xlat7;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec3<f32> = u_xlat27;
  let x_2077 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_2076, vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
  let x_2080 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2080, 0.0f, 1.0f);
  let x_2083 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2085 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2088, 0.0f, 1.0f);
  let x_2090 : f32 = u_xlat78;
  let x_2091 : f32 = u_xlat78;
  u_xlat78 = (x_2090 * x_2091);
  let x_2093 : f32 = u_xlat78;
  let x_2095 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2093 * x_2095) + 1.00001001358032226562f);
  let x_2099 : f32 = u_xlat1;
  let x_2100 : f32 = u_xlat1;
  u_xlat1 = (x_2099 * x_2100);
  let x_2102 : f32 = u_xlat78;
  let x_2103 : f32 = u_xlat78;
  u_xlat78 = (x_2102 * x_2103);
  let x_2105 : f32 = u_xlat1;
  u_xlat1 = max(x_2105, 0.10000000149011611938f);
  let x_2108 : f32 = u_xlat78;
  let x_2109 : f32 = u_xlat1;
  u_xlat78 = (x_2108 * x_2109);
  let x_2112 : f32 = u_xlat4.x;
  let x_2113 : f32 = u_xlat78;
  u_xlat78 = (x_2112 * x_2113);
  let x_2116 : f32 = u_xlat5.x;
  let x_2117 : f32 = u_xlat78;
  u_xlat78 = (x_2116 / x_2117);
  let x_2119 : vec4<f32> = u_xlat0;
  let x_2121 : f32 = u_xlat78;
  let x_2124 : vec3<f32> = u_xlat30;
  let x_2125 : vec3<f32> = ((vec3<f32>(x_2119.x, x_2119.y, x_2119.z) * vec3<f32>(x_2121, x_2121, x_2121)) + x_2124);
  let x_2126 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2129 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2131 : f32 = x_1960.unity_LightData.y;
  u_xlat78 = min(x_2129, x_2131);
  let x_2134 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2134));
  let x_2138 : f32 = u_xlat28.x;
  let x_2141 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_2144 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2138 * x_2141) + x_2144);
  let x_2146 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2146, 0.0f, 1.0f);
  let x_2149 : f32 = x_1775.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2151 : f32 = x_1775.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2153 : f32 = x_1775.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2155 : f32 = x_1775.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2156 : vec4<f32> = vec4<f32>(x_2149, x_2151, x_2153, x_2155);
  let x_2162 : vec4<bool> = (vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2156.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2163 : vec2<bool> = vec2<bool>(x_2162.x, x_2162.y);
  let x_2164 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2163.x, x_2163.y, x_2164.z, x_2164.w);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2176 : u32 = u_xlatu_loop_1;
    let x_2177 : u32 = u_xlatu78;
    if ((x_2176 < x_2177)) {
    } else {
      break;
    }
    let x_2180 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2180 >> 2u);
    let x_2183 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2183 & 3u));
    let x_2186 : u32 = u_xlatu81;
    let x_2189 : vec4<f32> = x_1960.unity_LightIndices[bitcast<i32>(x_2186)];
    let x_2199 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2204 : vec4<u32> = indexable[x_2199];
    u_xlat81 = dot(x_2189, bitcast<vec4<f32>>(x_2204));
    let x_2208 : f32 = u_xlat81;
    u_xlati81 = i32(x_2208);
    let x_2210 : vec3<f32> = vs_TEXCOORD7;
    let x_2221 : i32 = u_xlati81;
    let x_2223 : vec4<f32> = x_2220.x_AdditionalLightsPosition[x_2221];
    let x_2226 : i32 = u_xlati81;
    let x_2228 : vec4<f32> = x_2220.x_AdditionalLightsPosition[x_2226];
    let x_2230 : vec3<f32> = ((-(x_2210) * vec3<f32>(x_2223.w, x_2223.w, x_2223.w)) + vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
    let x_2231 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
    let x_2233 : vec4<f32> = u_xlat9;
    let x_2235 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2233.x, x_2233.y, x_2233.z), vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
    let x_2238 : f32 = u_xlat84;
    u_xlat84 = max(x_2238, 0.00006103515625f);
    let x_2241 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2241);
    let x_2243 : f32 = u_xlat85;
    let x_2245 : vec4<f32> = u_xlat9;
    let x_2247 : vec3<f32> = (vec3<f32>(x_2243, x_2243, x_2243) * vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
    let x_2251 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2251);
    let x_2253 : f32 = u_xlat84;
    let x_2254 : i32 = u_xlati81;
    let x_2256 : f32 = x_2220.x_AdditionalLightsAttenuation[x_2254].x;
    u_xlat84 = (x_2253 * x_2256);
    let x_2258 : f32 = u_xlat84;
    let x_2260 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2258) * x_2260) + 1.0f);
    let x_2263 : f32 = u_xlat84;
    u_xlat84 = max(x_2263, 0.0f);
    let x_2265 : f32 = u_xlat84;
    let x_2266 : f32 = u_xlat84;
    u_xlat84 = (x_2265 * x_2266);
    let x_2268 : f32 = u_xlat84;
    let x_2269 : f32 = u_xlat87;
    u_xlat84 = (x_2268 * x_2269);
    let x_2271 : i32 = u_xlati81;
    let x_2273 : vec4<f32> = x_2220.x_AdditionalLightsSpotDir[x_2271];
    let x_2275 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
    let x_2278 : f32 = u_xlat87;
    let x_2279 : i32 = u_xlati81;
    let x_2281 : f32 = x_2220.x_AdditionalLightsAttenuation[x_2279].z;
    let x_2283 : i32 = u_xlati81;
    let x_2285 : f32 = x_2220.x_AdditionalLightsAttenuation[x_2283].w;
    u_xlat87 = ((x_2278 * x_2281) + x_2285);
    let x_2287 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2287, 0.0f, 1.0f);
    let x_2289 : f32 = u_xlat87;
    let x_2290 : f32 = u_xlat87;
    u_xlat87 = (x_2289 * x_2290);
    let x_2292 : f32 = u_xlat84;
    let x_2293 : f32 = u_xlat87;
    u_xlat84 = (x_2292 * x_2293);
    let x_2297 : i32 = u_xlati81;
    let x_2299 : f32 = x_80.x_AdditionalShadowParams[x_2297].w;
    u_xlati87 = i32(x_2299);
    let x_2302 : i32 = u_xlati87;
    u_xlatb88 = (x_2302 >= 0i);
    let x_2304 : bool = u_xlatb88;
    if (x_2304) {
      let x_2308 : i32 = u_xlati81;
      let x_2310 : f32 = x_80.x_AdditionalShadowParams[x_2308].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2310, x_2310, x_2310, x_2310))));
      let x_2314 : bool = u_xlatb88;
      if (x_2314) {
        let x_2318 : vec4<f32> = u_xlat10;
        let x_2321 : vec4<f32> = u_xlat10;
        let x_2324 : vec4<bool> = (abs(vec4<f32>(x_2318.z, x_2318.z, x_2318.y, x_2318.z)) >= abs(vec4<f32>(x_2321.x, x_2321.y, x_2321.x, x_2321.x)));
        let x_2326 : vec3<bool> = vec3<bool>(x_2324.x, x_2324.y, x_2324.z);
        let x_2327 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
        let x_2330 : bool = u_xlatb11.y;
        let x_2332 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2330 & x_2332);
        let x_2334 : vec4<f32> = u_xlat10;
        let x_2337 : vec4<bool> = (-(vec4<f32>(x_2334.z, x_2334.y, x_2334.z, x_2334.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2338 : vec3<bool> = vec3<bool>(x_2337.x, x_2337.y, x_2337.w);
        let x_2339 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2338.x, x_2338.y, x_2339.z, x_2338.z);
        let x_2342 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2342);
        let x_2347 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2347);
        let x_2352 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2352);
        let x_2356 : bool = u_xlatb11.z;
        if (x_2356) {
          let x_2361 : f32 = u_xlat11.y;
          x_2357 = x_2361;
        } else {
          let x_2363 : f32 = u_xlat89;
          x_2357 = x_2363;
        }
        let x_2364 : f32 = x_2357;
        u_xlat37.x = x_2364;
        let x_2367 : bool = u_xlatb88;
        if (x_2367) {
          let x_2372 : f32 = u_xlat11.x;
          x_2368 = x_2372;
        } else {
          let x_2375 : f32 = u_xlat37.x;
          x_2368 = x_2375;
        }
        let x_2376 : f32 = x_2368;
        u_xlat88 = x_2376;
        let x_2377 : i32 = u_xlati81;
        let x_2379 : f32 = x_80.x_AdditionalShadowParams[x_2377].w;
        u_xlat11.x = trunc(x_2379);
        let x_2382 : f32 = u_xlat88;
        let x_2384 : f32 = u_xlat11.x;
        u_xlat88 = (x_2382 + x_2384);
        let x_2386 : f32 = u_xlat88;
        u_xlati87 = i32(x_2386);
      }
      let x_2388 : i32 = u_xlati87;
      u_xlati87 = (x_2388 << bitcast<u32>(2i));
      let x_2390 : vec3<f32> = vs_TEXCOORD7;
      let x_2393 : i32 = u_xlati87;
      let x_2396 : i32 = u_xlati87;
      let x_2400 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2393 + 1i) / 4i)][((x_2396 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2390.y, x_2390.y, x_2390.y, x_2390.y) * x_2400);
      let x_2402 : i32 = u_xlati87;
      let x_2404 : i32 = u_xlati87;
      let x_2407 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_2402 / 4i)][(x_2404 % 4i)];
      let x_2408 : vec3<f32> = vs_TEXCOORD7;
      let x_2411 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2407 * vec4<f32>(x_2408.x, x_2408.x, x_2408.x, x_2408.x)) + x_2411);
      let x_2413 : i32 = u_xlati87;
      let x_2416 : i32 = u_xlati87;
      let x_2420 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2413 + 2i) / 4i)][((x_2416 + 2i) % 4i)];
      let x_2421 : vec3<f32> = vs_TEXCOORD7;
      let x_2424 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2420 * vec4<f32>(x_2421.z, x_2421.z, x_2421.z, x_2421.z)) + x_2424);
      let x_2426 : vec4<f32> = u_xlat11;
      let x_2427 : i32 = u_xlati87;
      let x_2430 : i32 = u_xlati87;
      let x_2434 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2427 + 3i) / 4i)][((x_2430 + 3i) % 4i)];
      u_xlat11 = (x_2426 + x_2434);
      let x_2436 : vec4<f32> = u_xlat11;
      let x_2438 : vec4<f32> = u_xlat11;
      let x_2440 : vec3<f32> = (vec3<f32>(x_2436.x, x_2436.y, x_2436.z) / vec3<f32>(x_2438.w, x_2438.w, x_2438.w));
      let x_2441 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
      let x_2444 : i32 = u_xlati81;
      let x_2446 : f32 = x_80.x_AdditionalShadowParams[x_2444].y;
      u_xlatb87 = (0.0f < x_2446);
      let x_2448 : bool = u_xlatb87;
      if (x_2448) {
        let x_2451 : i32 = u_xlati81;
        let x_2453 : f32 = x_80.x_AdditionalShadowParams[x_2451].y;
        u_xlatb87 = (1.0f == x_2453);
        let x_2455 : bool = u_xlatb87;
        if (x_2455) {
          let x_2458 : vec4<f32> = u_xlat11;
          let x_2462 : vec4<f32> = x_80.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2458.x, x_2458.y, x_2458.x, x_2458.y) + x_2462);
          let x_2465 : vec4<f32> = u_xlat12;
          let x_2466 : vec2<f32> = vec2<f32>(x_2465.x, x_2465.y);
          let x_2468 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2466.x, x_2466.y, x_2468);
          let x_2476 : vec3<f32> = txVec30;
          let x_2478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2476.xy, x_2476.z);
          u_xlat13.x = x_2478;
          let x_2481 : vec4<f32> = u_xlat12;
          let x_2482 : vec2<f32> = vec2<f32>(x_2481.z, x_2481.w);
          let x_2484 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2482.x, x_2482.y, x_2484);
          let x_2491 : vec3<f32> = txVec31;
          let x_2493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2491.xy, x_2491.z);
          u_xlat13.y = x_2493;
          let x_2495 : vec4<f32> = u_xlat11;
          let x_2499 : vec4<f32> = x_80.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2495.x, x_2495.y, x_2495.x, x_2495.y) + x_2499);
          let x_2502 : vec4<f32> = u_xlat12;
          let x_2503 : vec2<f32> = vec2<f32>(x_2502.x, x_2502.y);
          let x_2505 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2503.x, x_2503.y, x_2505);
          let x_2512 : vec3<f32> = txVec32;
          let x_2514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2512.xy, x_2512.z);
          u_xlat13.z = x_2514;
          let x_2517 : vec4<f32> = u_xlat12;
          let x_2518 : vec2<f32> = vec2<f32>(x_2517.z, x_2517.w);
          let x_2520 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
          let x_2527 : vec3<f32> = txVec33;
          let x_2529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
          u_xlat13.w = x_2529;
          let x_2531 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2531, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2534 : i32 = u_xlati81;
          let x_2536 : f32 = x_80.x_AdditionalShadowParams[x_2534].y;
          u_xlatb88 = (2.0f == x_2536);
          let x_2538 : bool = u_xlatb88;
          if (x_2538) {
            let x_2541 : vec4<f32> = u_xlat11;
            let x_2545 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2548 : vec2<f32> = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(x_2545.z, x_2545.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2549 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2548.x, x_2548.y, x_2549.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat12;
            let x_2553 : vec2<f32> = floor(vec2<f32>(x_2551.x, x_2551.y));
            let x_2554 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2553.x, x_2553.y, x_2554.z, x_2554.w);
            let x_2556 : vec4<f32> = u_xlat11;
            let x_2559 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2562 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2559.z, x_2559.w)) + -(vec2<f32>(x_2562.x, x_2562.y)));
            let x_2566 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2566.x, x_2566.x, x_2566.y, x_2566.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2569 : vec4<f32> = u_xlat13;
            let x_2571 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2569.x, x_2569.x, x_2569.z, x_2569.z) * vec4<f32>(x_2571.x, x_2571.x, x_2571.z, x_2571.z));
            let x_2574 : vec4<f32> = u_xlat14;
            let x_2576 : vec2<f32> = (vec2<f32>(x_2574.y, x_2574.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2577 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2576.x, x_2577.y, x_2576.y, x_2577.w);
            let x_2579 : vec4<f32> = u_xlat14;
            let x_2582 : vec2<f32> = u_xlat64;
            let x_2584 : vec2<f32> = ((vec2<f32>(x_2579.x, x_2579.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2582));
            let x_2585 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2584.x, x_2584.y, x_2585.z, x_2585.w);
            let x_2588 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2588) + vec2<f32>(1.0f, 1.0f));
            let x_2591 : vec2<f32> = u_xlat64;
            let x_2592 : vec2<f32> = min(x_2591, vec2<f32>(0.0f, 0.0f));
            let x_2593 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
            let x_2595 : vec4<f32> = u_xlat15;
            let x_2598 : vec4<f32> = u_xlat15;
            let x_2601 : vec2<f32> = u_xlat66;
            let x_2602 : vec2<f32> = ((-(vec2<f32>(x_2595.x, x_2595.y)) * vec2<f32>(x_2598.x, x_2598.y)) + x_2601);
            let x_2603 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2605 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2605, vec2<f32>(0.0f, 0.0f));
            let x_2607 : vec2<f32> = u_xlat64;
            let x_2609 : vec2<f32> = u_xlat64;
            let x_2611 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2607) * x_2609) + vec2<f32>(x_2611.y, x_2611.w));
            let x_2614 : vec4<f32> = u_xlat15;
            let x_2616 : vec2<f32> = (vec2<f32>(x_2614.x, x_2614.y) + vec2<f32>(1.0f, 1.0f));
            let x_2617 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2616.x, x_2616.y, x_2617.z, x_2617.w);
            let x_2619 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2619 + vec2<f32>(1.0f, 1.0f));
            let x_2621 : vec4<f32> = u_xlat14;
            let x_2623 : vec2<f32> = (vec2<f32>(x_2621.x, x_2621.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2624 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
            let x_2626 : vec2<f32> = u_xlat66;
            let x_2627 : vec2<f32> = (x_2626 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2628 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2630 : vec4<f32> = u_xlat15;
            let x_2632 : vec2<f32> = (vec2<f32>(x_2630.x, x_2630.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2633 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
            let x_2635 : vec2<f32> = u_xlat64;
            let x_2636 : vec2<f32> = (x_2635 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2637 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
            let x_2639 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2639.y, x_2639.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2643 : f32 = u_xlat15.x;
            u_xlat16.z = x_2643;
            let x_2646 : f32 = u_xlat64.x;
            u_xlat16.w = x_2646;
            let x_2649 : f32 = u_xlat17.x;
            u_xlat14.z = x_2649;
            let x_2652 : f32 = u_xlat13.x;
            u_xlat14.w = x_2652;
            let x_2654 : vec4<f32> = u_xlat14;
            let x_2656 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2654.z, x_2654.w, x_2654.x, x_2654.z) + vec4<f32>(x_2656.z, x_2656.w, x_2656.x, x_2656.z));
            let x_2660 : f32 = u_xlat16.y;
            u_xlat15.z = x_2660;
            let x_2663 : f32 = u_xlat64.y;
            u_xlat15.w = x_2663;
            let x_2666 : f32 = u_xlat14.y;
            u_xlat17.z = x_2666;
            let x_2669 : f32 = u_xlat13.z;
            u_xlat17.w = x_2669;
            let x_2671 : vec4<f32> = u_xlat15;
            let x_2673 : vec4<f32> = u_xlat17;
            let x_2675 : vec3<f32> = (vec3<f32>(x_2671.z, x_2671.y, x_2671.w) + vec3<f32>(x_2673.z, x_2673.y, x_2673.w));
            let x_2676 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
            let x_2678 : vec4<f32> = u_xlat14;
            let x_2680 : vec4<f32> = u_xlat18;
            let x_2682 : vec3<f32> = (vec3<f32>(x_2678.x, x_2678.z, x_2678.w) / vec3<f32>(x_2680.z, x_2680.w, x_2680.y));
            let x_2683 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
            let x_2685 : vec4<f32> = u_xlat14;
            let x_2687 : vec3<f32> = (vec3<f32>(x_2685.x, x_2685.y, x_2685.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2688 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
            let x_2690 : vec4<f32> = u_xlat17;
            let x_2692 : vec4<f32> = u_xlat13;
            let x_2694 : vec3<f32> = (vec3<f32>(x_2690.z, x_2690.y, x_2690.w) / vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
            let x_2695 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2694.x, x_2694.y, x_2694.z, x_2695.w);
            let x_2697 : vec4<f32> = u_xlat15;
            let x_2699 : vec3<f32> = (vec3<f32>(x_2697.x, x_2697.y, x_2697.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2700 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
            let x_2702 : vec4<f32> = u_xlat14;
            let x_2705 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2707 : vec3<f32> = (vec3<f32>(x_2702.y, x_2702.x, x_2702.z) * vec3<f32>(x_2705.x, x_2705.x, x_2705.x));
            let x_2708 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
            let x_2710 : vec4<f32> = u_xlat15;
            let x_2713 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2715 : vec3<f32> = (vec3<f32>(x_2710.x, x_2710.y, x_2710.z) * vec3<f32>(x_2713.y, x_2713.y, x_2713.y));
            let x_2716 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
            let x_2719 : f32 = u_xlat15.x;
            u_xlat14.w = x_2719;
            let x_2721 : vec4<f32> = u_xlat12;
            let x_2724 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.y, x_2727.w, x_2727.x, x_2727.w));
            let x_2730 : vec4<f32> = u_xlat12;
            let x_2733 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(x_2736.z, x_2736.w));
            let x_2740 : f32 = u_xlat14.y;
            u_xlat15.w = x_2740;
            let x_2742 : vec4<f32> = u_xlat15;
            let x_2743 : vec2<f32> = vec2<f32>(x_2742.y, x_2742.z);
            let x_2744 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2744.x, x_2743.x, x_2744.z, x_2743.y);
            let x_2746 : vec4<f32> = u_xlat12;
            let x_2749 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2752 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y) * vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y)) + vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2752.y));
            let x_2755 : vec4<f32> = u_xlat12;
            let x_2758 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2761 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2755.x, x_2755.y, x_2755.x, x_2755.y) * vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y)) + vec4<f32>(x_2761.w, x_2761.y, x_2761.w, x_2761.z));
            let x_2764 : vec4<f32> = u_xlat12;
            let x_2767 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2770 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2764.x, x_2764.y, x_2764.x, x_2764.y) * vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y)) + vec4<f32>(x_2770.x, x_2770.w, x_2770.z, x_2770.w));
            let x_2773 : vec4<f32> = u_xlat13;
            let x_2775 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2773.x, x_2773.x, x_2773.x, x_2773.y) * vec4<f32>(x_2775.z, x_2775.w, x_2775.y, x_2775.z));
            let x_2779 : vec4<f32> = u_xlat13;
            let x_2781 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2779.y, x_2779.y, x_2779.z, x_2779.z) * x_2781);
            let x_2784 : f32 = u_xlat13.z;
            let x_2786 : f32 = u_xlat18.y;
            u_xlat88 = (x_2784 * x_2786);
            let x_2789 : vec4<f32> = u_xlat16;
            let x_2790 : vec2<f32> = vec2<f32>(x_2789.x, x_2789.y);
            let x_2792 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2790.x, x_2790.y, x_2792);
            let x_2799 : vec3<f32> = txVec34;
            let x_2801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2799.xy, x_2799.z);
            u_xlat89 = x_2801;
            let x_2803 : vec4<f32> = u_xlat16;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.z, x_2803.w);
            let x_2806 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec35;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat12.x = x_2815;
            let x_2818 : f32 = u_xlat12.x;
            let x_2820 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2818 * x_2820);
            let x_2824 : f32 = u_xlat19.x;
            let x_2825 : f32 = u_xlat89;
            let x_2828 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2824 * x_2825) + x_2828);
            let x_2831 : vec2<f32> = u_xlat64;
            let x_2833 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2831.x, x_2831.y, x_2833);
            let x_2840 : vec3<f32> = txVec36;
            let x_2842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2840.xy, x_2840.z);
            u_xlat12.x = x_2842;
            let x_2845 : f32 = u_xlat19.z;
            let x_2847 : f32 = u_xlat12.x;
            let x_2849 : f32 = u_xlat89;
            u_xlat89 = ((x_2845 * x_2847) + x_2849);
            let x_2852 : vec4<f32> = u_xlat15;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.x, x_2852.y);
            let x_2855 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec37;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat12.x = x_2864;
            let x_2867 : f32 = u_xlat19.w;
            let x_2869 : f32 = u_xlat12.x;
            let x_2871 : f32 = u_xlat89;
            u_xlat89 = ((x_2867 * x_2869) + x_2871);
            let x_2874 : vec4<f32> = u_xlat17;
            let x_2875 : vec2<f32> = vec2<f32>(x_2874.x, x_2874.y);
            let x_2877 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2875.x, x_2875.y, x_2877);
            let x_2884 : vec3<f32> = txVec38;
            let x_2886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2884.xy, x_2884.z);
            u_xlat12.x = x_2886;
            let x_2889 : f32 = u_xlat20.x;
            let x_2891 : f32 = u_xlat12.x;
            let x_2893 : f32 = u_xlat89;
            u_xlat89 = ((x_2889 * x_2891) + x_2893);
            let x_2896 : vec4<f32> = u_xlat17;
            let x_2897 : vec2<f32> = vec2<f32>(x_2896.z, x_2896.w);
            let x_2899 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2897.x, x_2897.y, x_2899);
            let x_2906 : vec3<f32> = txVec39;
            let x_2908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2906.xy, x_2906.z);
            u_xlat12.x = x_2908;
            let x_2911 : f32 = u_xlat20.y;
            let x_2913 : f32 = u_xlat12.x;
            let x_2915 : f32 = u_xlat89;
            u_xlat89 = ((x_2911 * x_2913) + x_2915);
            let x_2918 : vec4<f32> = u_xlat15;
            let x_2919 : vec2<f32> = vec2<f32>(x_2918.z, x_2918.w);
            let x_2921 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2919.x, x_2919.y, x_2921);
            let x_2928 : vec3<f32> = txVec40;
            let x_2930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2928.xy, x_2928.z);
            u_xlat12.x = x_2930;
            let x_2933 : f32 = u_xlat20.z;
            let x_2935 : f32 = u_xlat12.x;
            let x_2937 : f32 = u_xlat89;
            u_xlat89 = ((x_2933 * x_2935) + x_2937);
            let x_2940 : vec4<f32> = u_xlat14;
            let x_2941 : vec2<f32> = vec2<f32>(x_2940.x, x_2940.y);
            let x_2943 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2941.x, x_2941.y, x_2943);
            let x_2950 : vec3<f32> = txVec41;
            let x_2952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2950.xy, x_2950.z);
            u_xlat12.x = x_2952;
            let x_2955 : f32 = u_xlat20.w;
            let x_2957 : f32 = u_xlat12.x;
            let x_2959 : f32 = u_xlat89;
            u_xlat89 = ((x_2955 * x_2957) + x_2959);
            let x_2962 : vec4<f32> = u_xlat14;
            let x_2963 : vec2<f32> = vec2<f32>(x_2962.z, x_2962.w);
            let x_2965 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
            let x_2972 : vec3<f32> = txVec42;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat12.x = x_2974;
            let x_2976 : f32 = u_xlat88;
            let x_2978 : f32 = u_xlat12.x;
            let x_2980 : f32 = u_xlat89;
            u_xlat87 = ((x_2976 * x_2978) + x_2980);
          } else {
            let x_2983 : vec4<f32> = u_xlat11;
            let x_2986 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2989 : vec2<f32> = ((vec2<f32>(x_2983.x, x_2983.y) * vec2<f32>(x_2986.z, x_2986.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2990 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2989.x, x_2989.y, x_2990.z, x_2990.w);
            let x_2992 : vec4<f32> = u_xlat12;
            let x_2994 : vec2<f32> = floor(vec2<f32>(x_2992.x, x_2992.y));
            let x_2995 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2994.x, x_2994.y, x_2995.z, x_2995.w);
            let x_2997 : vec4<f32> = u_xlat11;
            let x_3000 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3003 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(x_3000.z, x_3000.w)) + -(vec2<f32>(x_3003.x, x_3003.y)));
            let x_3007 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3007.x, x_3007.x, x_3007.y, x_3007.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3010 : vec4<f32> = u_xlat13;
            let x_3012 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3010.x, x_3010.x, x_3010.z, x_3010.z) * vec4<f32>(x_3012.x, x_3012.x, x_3012.z, x_3012.z));
            let x_3015 : vec4<f32> = u_xlat14;
            let x_3017 : vec2<f32> = (vec2<f32>(x_3015.y, x_3015.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3018 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3018.x, x_3017.x, x_3018.z, x_3017.y);
            let x_3020 : vec4<f32> = u_xlat14;
            let x_3023 : vec2<f32> = u_xlat64;
            let x_3025 : vec2<f32> = ((vec2<f32>(x_3020.x, x_3020.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3023));
            let x_3026 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3025.x, x_3026.y, x_3025.y, x_3026.w);
            let x_3028 : vec2<f32> = u_xlat64;
            let x_3030 : vec2<f32> = (-(x_3028) + vec2<f32>(1.0f, 1.0f));
            let x_3031 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3033 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3033, vec2<f32>(0.0f, 0.0f));
            let x_3035 : vec2<f32> = u_xlat66;
            let x_3037 : vec2<f32> = u_xlat66;
            let x_3039 : vec4<f32> = u_xlat14;
            let x_3041 : vec2<f32> = ((-(x_3035) * x_3037) + vec2<f32>(x_3039.x, x_3039.y));
            let x_3042 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3041.x, x_3041.y, x_3042.z, x_3042.w);
            let x_3044 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3044, vec2<f32>(0.0f, 0.0f));
            let x_3047 : vec2<f32> = u_xlat66;
            let x_3049 : vec2<f32> = u_xlat66;
            let x_3051 : vec4<f32> = u_xlat13;
            let x_3053 : vec2<f32> = ((-(x_3047) * x_3049) + vec2<f32>(x_3051.y, x_3051.w));
            let x_3054 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3053.x, x_3054.y, x_3053.y);
            let x_3056 : vec4<f32> = u_xlat14;
            let x_3059 : vec2<f32> = (vec2<f32>(x_3056.x, x_3056.y) + vec2<f32>(2.0f, 2.0f));
            let x_3060 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3059.x, x_3059.y, x_3060.z, x_3060.w);
            let x_3062 : vec3<f32> = u_xlat39;
            let x_3064 : vec2<f32> = (vec2<f32>(x_3062.x, x_3062.z) + vec2<f32>(2.0f, 2.0f));
            let x_3065 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3065.x, x_3064.x, x_3065.z, x_3064.y);
            let x_3068 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3068 * 0.08163200318813323975f);
            let x_3071 : vec4<f32> = u_xlat13;
            let x_3074 : vec3<f32> = (vec3<f32>(x_3071.z, x_3071.x, x_3071.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3075 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3074.x, x_3074.y, x_3074.z, x_3075.w);
            let x_3077 : vec4<f32> = u_xlat14;
            let x_3079 : vec2<f32> = (vec2<f32>(x_3077.x, x_3077.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3080 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3079.x, x_3079.y, x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat17.y;
            u_xlat16.x = x_3083;
            let x_3085 : vec2<f32> = u_xlat64;
            let x_3088 : vec2<f32> = ((vec2<f32>(x_3085.x, x_3085.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3089 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3089.x, x_3088.x, x_3089.z, x_3088.y);
            let x_3091 : vec2<f32> = u_xlat64;
            let x_3094 : vec2<f32> = ((vec2<f32>(x_3091.x, x_3091.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3095 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3094.x, x_3095.y, x_3094.y, x_3095.w);
            let x_3098 : f32 = u_xlat13.x;
            u_xlat14.y = x_3098;
            let x_3101 : f32 = u_xlat15.y;
            u_xlat14.w = x_3101;
            let x_3103 : vec4<f32> = u_xlat14;
            let x_3104 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3103 + x_3104);
            let x_3106 : vec2<f32> = u_xlat64;
            let x_3109 : vec2<f32> = ((vec2<f32>(x_3106.y, x_3106.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3110 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3110.x, x_3109.x, x_3110.z, x_3109.y);
            let x_3112 : vec2<f32> = u_xlat64;
            let x_3115 : vec2<f32> = ((vec2<f32>(x_3112.y, x_3112.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3116 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3115.x, x_3116.y, x_3115.y, x_3116.w);
            let x_3119 : f32 = u_xlat13.y;
            u_xlat15.y = x_3119;
            let x_3121 : vec4<f32> = u_xlat15;
            let x_3122 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3121 + x_3122);
            let x_3124 : vec4<f32> = u_xlat14;
            let x_3125 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3124 / x_3125);
            let x_3127 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3127 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3129 : vec4<f32> = u_xlat15;
            let x_3130 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3129 / x_3130);
            let x_3132 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3132 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3134 : vec4<f32> = u_xlat14;
            let x_3137 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3134.w, x_3134.x, x_3134.y, x_3134.z) * vec4<f32>(x_3137.x, x_3137.x, x_3137.x, x_3137.x));
            let x_3140 : vec4<f32> = u_xlat15;
            let x_3143 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3140.x, x_3140.w, x_3140.y, x_3140.z) * vec4<f32>(x_3143.y, x_3143.y, x_3143.y, x_3143.y));
            let x_3146 : vec4<f32> = u_xlat14;
            let x_3147 : vec3<f32> = vec3<f32>(x_3146.y, x_3146.z, x_3146.w);
            let x_3148 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3147.x, x_3148.y, x_3147.y, x_3147.z);
            let x_3151 : f32 = u_xlat15.x;
            u_xlat17.y = x_3151;
            let x_3153 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y) * vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y)) + vec4<f32>(x_3159.x, x_3159.y, x_3159.z, x_3159.y));
            let x_3162 : vec4<f32> = u_xlat12;
            let x_3165 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3168 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3162.x, x_3162.y) * vec2<f32>(x_3165.x, x_3165.y)) + vec2<f32>(x_3168.w, x_3168.y));
            let x_3172 : f32 = u_xlat17.y;
            u_xlat14.y = x_3172;
            let x_3175 : f32 = u_xlat15.z;
            u_xlat17.y = x_3175;
            let x_3177 : vec4<f32> = u_xlat12;
            let x_3180 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3183 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3177.x, x_3177.y, x_3177.x, x_3177.y) * vec4<f32>(x_3180.x, x_3180.y, x_3180.x, x_3180.y)) + vec4<f32>(x_3183.x, x_3183.y, x_3183.z, x_3183.y));
            let x_3186 : vec4<f32> = u_xlat12;
            let x_3189 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3192 : vec4<f32> = u_xlat17;
            let x_3194 : vec2<f32> = ((vec2<f32>(x_3186.x, x_3186.y) * vec2<f32>(x_3189.x, x_3189.y)) + vec2<f32>(x_3192.w, x_3192.y));
            let x_3195 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3194.x, x_3194.y, x_3195.z, x_3195.w);
            let x_3198 : f32 = u_xlat17.y;
            u_xlat14.z = x_3198;
            let x_3201 : vec4<f32> = u_xlat12;
            let x_3204 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3207 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3201.x, x_3201.y, x_3201.x, x_3201.y) * vec4<f32>(x_3204.x, x_3204.y, x_3204.x, x_3204.y)) + vec4<f32>(x_3207.x, x_3207.y, x_3207.x, x_3207.z));
            let x_3211 : f32 = u_xlat15.w;
            u_xlat17.y = x_3211;
            let x_3214 : vec4<f32> = u_xlat12;
            let x_3217 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3220 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3214.x, x_3214.y, x_3214.x, x_3214.y) * vec4<f32>(x_3217.x, x_3217.y, x_3217.x, x_3217.y)) + vec4<f32>(x_3220.x, x_3220.y, x_3220.z, x_3220.y));
            let x_3224 : vec4<f32> = u_xlat12;
            let x_3227 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3230 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3224.x, x_3224.y) * vec2<f32>(x_3227.x, x_3227.y)) + vec2<f32>(x_3230.w, x_3230.y));
            let x_3234 : f32 = u_xlat17.y;
            u_xlat14.w = x_3234;
            let x_3237 : vec4<f32> = u_xlat12;
            let x_3240 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3243 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3237.x, x_3237.y) * vec2<f32>(x_3240.x, x_3240.y)) + vec2<f32>(x_3243.x, x_3243.w));
            let x_3246 : vec4<f32> = u_xlat17;
            let x_3247 : vec3<f32> = vec3<f32>(x_3246.x, x_3246.z, x_3246.w);
            let x_3248 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3247.x, x_3248.y, x_3247.y, x_3247.z);
            let x_3250 : vec4<f32> = u_xlat12;
            let x_3253 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3256 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y) * vec4<f32>(x_3253.x, x_3253.y, x_3253.x, x_3253.y)) + vec4<f32>(x_3256.x, x_3256.y, x_3256.z, x_3256.y));
            let x_3260 : vec4<f32> = u_xlat12;
            let x_3263 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3266 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3260.x, x_3260.y) * vec2<f32>(x_3263.x, x_3263.y)) + vec2<f32>(x_3266.w, x_3266.y));
            let x_3270 : f32 = u_xlat14.x;
            u_xlat15.x = x_3270;
            let x_3272 : vec4<f32> = u_xlat12;
            let x_3275 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat15;
            let x_3280 : vec2<f32> = ((vec2<f32>(x_3272.x, x_3272.y) * vec2<f32>(x_3275.x, x_3275.y)) + vec2<f32>(x_3278.x, x_3278.y));
            let x_3281 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3280.x, x_3280.y, x_3281.z, x_3281.w);
            let x_3284 : vec4<f32> = u_xlat13;
            let x_3286 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3284.x, x_3284.x, x_3284.x, x_3284.x) * x_3286);
            let x_3289 : vec4<f32> = u_xlat13;
            let x_3291 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3289.y, x_3289.y, x_3289.y, x_3289.y) * x_3291);
            let x_3294 : vec4<f32> = u_xlat13;
            let x_3296 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3294.z, x_3294.z, x_3294.z, x_3294.z) * x_3296);
            let x_3298 : vec4<f32> = u_xlat13;
            let x_3300 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3298.w, x_3298.w, x_3298.w, x_3298.w) * x_3300);
            let x_3303 : vec4<f32> = u_xlat18;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.x, x_3303.y);
            let x_3306 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec43;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat88 = x_3315;
            let x_3317 : vec4<f32> = u_xlat18;
            let x_3318 : vec2<f32> = vec2<f32>(x_3317.z, x_3317.w);
            let x_3320 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec44;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat89 = x_3329;
            let x_3330 : f32 = u_xlat89;
            let x_3332 : f32 = u_xlat23.y;
            u_xlat89 = (x_3330 * x_3332);
            let x_3335 : f32 = u_xlat23.x;
            let x_3336 : f32 = u_xlat88;
            let x_3338 : f32 = u_xlat89;
            u_xlat88 = ((x_3335 * x_3336) + x_3338);
            let x_3341 : vec2<f32> = u_xlat64;
            let x_3343 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec45;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat89 = x_3352;
            let x_3354 : f32 = u_xlat23.z;
            let x_3355 : f32 = u_xlat89;
            let x_3357 : f32 = u_xlat88;
            u_xlat88 = ((x_3354 * x_3355) + x_3357);
            let x_3360 : vec4<f32> = u_xlat21;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.x, x_3360.y);
            let x_3363 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec46;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat89 = x_3372;
            let x_3374 : f32 = u_xlat23.w;
            let x_3375 : f32 = u_xlat89;
            let x_3377 : f32 = u_xlat88;
            u_xlat88 = ((x_3374 * x_3375) + x_3377);
            let x_3380 : vec4<f32> = u_xlat19;
            let x_3381 : vec2<f32> = vec2<f32>(x_3380.x, x_3380.y);
            let x_3383 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3381.x, x_3381.y, x_3383);
            let x_3390 : vec3<f32> = txVec47;
            let x_3392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3390.xy, x_3390.z);
            u_xlat89 = x_3392;
            let x_3394 : f32 = u_xlat24.x;
            let x_3395 : f32 = u_xlat89;
            let x_3397 : f32 = u_xlat88;
            u_xlat88 = ((x_3394 * x_3395) + x_3397);
            let x_3400 : vec4<f32> = u_xlat19;
            let x_3401 : vec2<f32> = vec2<f32>(x_3400.z, x_3400.w);
            let x_3403 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec48;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat89 = x_3412;
            let x_3414 : f32 = u_xlat24.y;
            let x_3415 : f32 = u_xlat89;
            let x_3417 : f32 = u_xlat88;
            u_xlat88 = ((x_3414 * x_3415) + x_3417);
            let x_3420 : vec4<f32> = u_xlat20;
            let x_3421 : vec2<f32> = vec2<f32>(x_3420.x, x_3420.y);
            let x_3423 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec49;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat89 = x_3432;
            let x_3434 : f32 = u_xlat24.z;
            let x_3435 : f32 = u_xlat89;
            let x_3437 : f32 = u_xlat88;
            u_xlat88 = ((x_3434 * x_3435) + x_3437);
            let x_3440 : vec4<f32> = u_xlat21;
            let x_3441 : vec2<f32> = vec2<f32>(x_3440.z, x_3440.w);
            let x_3443 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec50;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat89 = x_3452;
            let x_3454 : f32 = u_xlat24.w;
            let x_3455 : f32 = u_xlat89;
            let x_3457 : f32 = u_xlat88;
            u_xlat88 = ((x_3454 * x_3455) + x_3457);
            let x_3460 : vec4<f32> = u_xlat22;
            let x_3461 : vec2<f32> = vec2<f32>(x_3460.x, x_3460.y);
            let x_3463 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec51;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat89 = x_3472;
            let x_3474 : f32 = u_xlat25.x;
            let x_3475 : f32 = u_xlat89;
            let x_3477 : f32 = u_xlat88;
            u_xlat88 = ((x_3474 * x_3475) + x_3477);
            let x_3480 : vec4<f32> = u_xlat22;
            let x_3481 : vec2<f32> = vec2<f32>(x_3480.z, x_3480.w);
            let x_3483 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3481.x, x_3481.y, x_3483);
            let x_3490 : vec3<f32> = txVec52;
            let x_3492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3490.xy, x_3490.z);
            u_xlat89 = x_3492;
            let x_3494 : f32 = u_xlat25.y;
            let x_3495 : f32 = u_xlat89;
            let x_3497 : f32 = u_xlat88;
            u_xlat88 = ((x_3494 * x_3495) + x_3497);
            let x_3500 : vec2<f32> = u_xlat40;
            let x_3502 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3500.x, x_3500.y, x_3502);
            let x_3509 : vec3<f32> = txVec53;
            let x_3511 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3509.xy, x_3509.z);
            u_xlat89 = x_3511;
            let x_3513 : f32 = u_xlat25.z;
            let x_3514 : f32 = u_xlat89;
            let x_3516 : f32 = u_xlat88;
            u_xlat88 = ((x_3513 * x_3514) + x_3516);
            let x_3519 : vec2<f32> = u_xlat72;
            let x_3521 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3519.x, x_3519.y, x_3521);
            let x_3528 : vec3<f32> = txVec54;
            let x_3530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3528.xy, x_3528.z);
            u_xlat89 = x_3530;
            let x_3532 : f32 = u_xlat25.w;
            let x_3533 : f32 = u_xlat89;
            let x_3535 : f32 = u_xlat88;
            u_xlat88 = ((x_3532 * x_3533) + x_3535);
            let x_3538 : vec4<f32> = u_xlat17;
            let x_3539 : vec2<f32> = vec2<f32>(x_3538.x, x_3538.y);
            let x_3541 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3539.x, x_3539.y, x_3541);
            let x_3548 : vec3<f32> = txVec55;
            let x_3550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3548.xy, x_3548.z);
            u_xlat89 = x_3550;
            let x_3552 : f32 = u_xlat13.x;
            let x_3553 : f32 = u_xlat89;
            let x_3555 : f32 = u_xlat88;
            u_xlat88 = ((x_3552 * x_3553) + x_3555);
            let x_3558 : vec4<f32> = u_xlat17;
            let x_3559 : vec2<f32> = vec2<f32>(x_3558.z, x_3558.w);
            let x_3561 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3568 : vec3<f32> = txVec56;
            let x_3570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3568.xy, x_3568.z);
            u_xlat89 = x_3570;
            let x_3572 : f32 = u_xlat13.y;
            let x_3573 : f32 = u_xlat89;
            let x_3575 : f32 = u_xlat88;
            u_xlat88 = ((x_3572 * x_3573) + x_3575);
            let x_3578 : vec2<f32> = u_xlat67;
            let x_3580 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3578.x, x_3578.y, x_3580);
            let x_3587 : vec3<f32> = txVec57;
            let x_3589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3587.xy, x_3587.z);
            u_xlat89 = x_3589;
            let x_3591 : f32 = u_xlat13.z;
            let x_3592 : f32 = u_xlat89;
            let x_3594 : f32 = u_xlat88;
            u_xlat88 = ((x_3591 * x_3592) + x_3594);
            let x_3597 : vec4<f32> = u_xlat12;
            let x_3598 : vec2<f32> = vec2<f32>(x_3597.x, x_3597.y);
            let x_3600 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3598.x, x_3598.y, x_3600);
            let x_3607 : vec3<f32> = txVec58;
            let x_3609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3607.xy, x_3607.z);
            u_xlat89 = x_3609;
            let x_3611 : f32 = u_xlat13.w;
            let x_3612 : f32 = u_xlat89;
            let x_3614 : f32 = u_xlat88;
            u_xlat87 = ((x_3611 * x_3612) + x_3614);
          }
        }
      } else {
        let x_3618 : vec4<f32> = u_xlat11;
        let x_3619 : vec2<f32> = vec2<f32>(x_3618.x, x_3618.y);
        let x_3621 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3619.x, x_3619.y, x_3621);
        let x_3628 : vec3<f32> = txVec59;
        let x_3630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3628.xy, x_3628.z);
        u_xlat87 = x_3630;
      }
      let x_3631 : i32 = u_xlati81;
      let x_3633 : f32 = x_80.x_AdditionalShadowParams[x_3631].x;
      u_xlat88 = (1.0f + -(x_3633));
      let x_3636 : f32 = u_xlat87;
      let x_3637 : i32 = u_xlati81;
      let x_3639 : f32 = x_80.x_AdditionalShadowParams[x_3637].x;
      let x_3641 : f32 = u_xlat88;
      u_xlat87 = ((x_3636 * x_3639) + x_3641);
      let x_3644 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3644);
      let x_3647 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3647 >= 1.0f);
      let x_3650 : bool = u_xlatb88;
      let x_3652 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3650 | x_3652);
      let x_3654 : bool = u_xlatb88;
      let x_3655 : f32 = u_xlat87;
      u_xlat87 = select(x_3655, 1.0f, x_3654);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3658 : f32 = u_xlat87;
    u_xlat88 = (-(x_3658) + 1.0f);
    let x_3661 : f32 = u_xlat1;
    let x_3662 : f32 = u_xlat88;
    let x_3664 : f32 = u_xlat87;
    u_xlat87 = ((x_3661 * x_3662) + x_3664);
    let x_3667 : i32 = u_xlati81;
    u_xlati88 = (1i << bitcast<u32>((x_3667 & 31i)));
    let x_3671 : i32 = u_xlati88;
    let x_3674 : f32 = x_1775.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3671) & bitcast<u32>(x_3674)));
    let x_3678 : i32 = u_xlati88;
    if ((x_3678 != 0i)) {
      let x_3682 : i32 = u_xlati81;
      let x_3684 : f32 = x_1775.x_AdditionalLightsLightTypes[x_3682].el;
      u_xlati88 = i32(x_3684);
      let x_3687 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3687 != 0i));
      let x_3691 : i32 = u_xlati81;
      u_xlati37 = (x_3691 << bitcast<u32>(2i));
      let x_3693 : i32 = u_xlati11;
      if ((x_3693 != 0i)) {
        let x_3697 : vec3<f32> = vs_TEXCOORD7;
        let x_3699 : i32 = u_xlati37;
        let x_3702 : i32 = u_xlati37;
        let x_3706 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3699 + 1i) / 4i)][((x_3702 + 1i) % 4i)];
        let x_3708 : vec3<f32> = (vec3<f32>(x_3697.y, x_3697.y, x_3697.y) * vec3<f32>(x_3706.x, x_3706.y, x_3706.w));
        let x_3709 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3708.x, x_3709.y, x_3708.y, x_3708.z);
        let x_3711 : i32 = u_xlati37;
        let x_3713 : i32 = u_xlati37;
        let x_3716 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[(x_3711 / 4i)][(x_3713 % 4i)];
        let x_3718 : vec3<f32> = vs_TEXCOORD7;
        let x_3721 : vec4<f32> = u_xlat11;
        let x_3723 : vec3<f32> = ((vec3<f32>(x_3716.x, x_3716.y, x_3716.w) * vec3<f32>(x_3718.x, x_3718.x, x_3718.x)) + vec3<f32>(x_3721.x, x_3721.z, x_3721.w));
        let x_3724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3723.x, x_3724.y, x_3723.y, x_3723.z);
        let x_3726 : i32 = u_xlati37;
        let x_3729 : i32 = u_xlati37;
        let x_3733 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3726 + 2i) / 4i)][((x_3729 + 2i) % 4i)];
        let x_3735 : vec3<f32> = vs_TEXCOORD7;
        let x_3738 : vec4<f32> = u_xlat11;
        let x_3740 : vec3<f32> = ((vec3<f32>(x_3733.x, x_3733.y, x_3733.w) * vec3<f32>(x_3735.z, x_3735.z, x_3735.z)) + vec3<f32>(x_3738.x, x_3738.z, x_3738.w));
        let x_3741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3740.x, x_3741.y, x_3740.y, x_3740.z);
        let x_3743 : vec4<f32> = u_xlat11;
        let x_3745 : i32 = u_xlati37;
        let x_3748 : i32 = u_xlati37;
        let x_3752 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3745 + 3i) / 4i)][((x_3748 + 3i) % 4i)];
        let x_3754 : vec3<f32> = (vec3<f32>(x_3743.x, x_3743.z, x_3743.w) + vec3<f32>(x_3752.x, x_3752.y, x_3752.w));
        let x_3755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3754.x, x_3755.y, x_3754.y, x_3754.z);
        let x_3757 : vec4<f32> = u_xlat11;
        let x_3759 : vec4<f32> = u_xlat11;
        let x_3761 : vec2<f32> = (vec2<f32>(x_3757.x, x_3757.z) / vec2<f32>(x_3759.w, x_3759.w));
        let x_3762 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3761.x, x_3762.y, x_3761.y, x_3762.w);
        let x_3764 : vec4<f32> = u_xlat11;
        let x_3767 : vec2<f32> = ((vec2<f32>(x_3764.x, x_3764.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3768 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3767.x, x_3768.y, x_3767.y, x_3768.w);
        let x_3770 : vec4<f32> = u_xlat11;
        let x_3774 : vec2<f32> = clamp(vec2<f32>(x_3770.x, x_3770.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3774.x, x_3775.y, x_3774.y, x_3775.w);
        let x_3777 : i32 = u_xlati81;
        let x_3779 : vec4<f32> = x_1775.x_AdditionalLightsCookieAtlasUVRects[x_3777];
        let x_3781 : vec4<f32> = u_xlat11;
        let x_3784 : i32 = u_xlati81;
        let x_3786 : vec4<f32> = x_1775.x_AdditionalLightsCookieAtlasUVRects[x_3784];
        let x_3788 : vec2<f32> = ((vec2<f32>(x_3779.x, x_3779.y) * vec2<f32>(x_3781.x, x_3781.z)) + vec2<f32>(x_3786.z, x_3786.w));
        let x_3789 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3788.x, x_3789.y, x_3788.y, x_3789.w);
      } else {
        let x_3792 : i32 = u_xlati88;
        u_xlatb88 = (x_3792 == 1i);
        let x_3794 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3794);
        let x_3796 : i32 = u_xlati88;
        if ((x_3796 != 0i)) {
          let x_3800 : vec3<f32> = vs_TEXCOORD7;
          let x_3802 : i32 = u_xlati37;
          let x_3805 : i32 = u_xlati37;
          let x_3809 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3802 + 1i) / 4i)][((x_3805 + 1i) % 4i)];
          let x_3811 : vec2<f32> = (vec2<f32>(x_3800.y, x_3800.y) * vec2<f32>(x_3809.x, x_3809.y));
          let x_3812 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3811.x, x_3811.y, x_3812.z, x_3812.w);
          let x_3814 : i32 = u_xlati37;
          let x_3816 : i32 = u_xlati37;
          let x_3819 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[(x_3814 / 4i)][(x_3816 % 4i)];
          let x_3821 : vec3<f32> = vs_TEXCOORD7;
          let x_3824 : vec4<f32> = u_xlat12;
          let x_3826 : vec2<f32> = ((vec2<f32>(x_3819.x, x_3819.y) * vec2<f32>(x_3821.x, x_3821.x)) + vec2<f32>(x_3824.x, x_3824.y));
          let x_3827 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3826.x, x_3826.y, x_3827.z, x_3827.w);
          let x_3829 : i32 = u_xlati37;
          let x_3832 : i32 = u_xlati37;
          let x_3836 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3829 + 2i) / 4i)][((x_3832 + 2i) % 4i)];
          let x_3838 : vec3<f32> = vs_TEXCOORD7;
          let x_3841 : vec4<f32> = u_xlat12;
          let x_3843 : vec2<f32> = ((vec2<f32>(x_3836.x, x_3836.y) * vec2<f32>(x_3838.z, x_3838.z)) + vec2<f32>(x_3841.x, x_3841.y));
          let x_3844 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3843.x, x_3843.y, x_3844.z, x_3844.w);
          let x_3846 : vec4<f32> = u_xlat12;
          let x_3848 : i32 = u_xlati37;
          let x_3851 : i32 = u_xlati37;
          let x_3855 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3848 + 3i) / 4i)][((x_3851 + 3i) % 4i)];
          let x_3857 : vec2<f32> = (vec2<f32>(x_3846.x, x_3846.y) + vec2<f32>(x_3855.x, x_3855.y));
          let x_3858 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3857.x, x_3857.y, x_3858.z, x_3858.w);
          let x_3860 : vec4<f32> = u_xlat12;
          let x_3863 : vec2<f32> = ((vec2<f32>(x_3860.x, x_3860.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3864 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3863.x, x_3863.y, x_3864.z, x_3864.w);
          let x_3866 : vec4<f32> = u_xlat12;
          let x_3868 : vec2<f32> = fract(vec2<f32>(x_3866.x, x_3866.y));
          let x_3869 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3868.x, x_3868.y, x_3869.z, x_3869.w);
          let x_3871 : i32 = u_xlati81;
          let x_3873 : vec4<f32> = x_1775.x_AdditionalLightsCookieAtlasUVRects[x_3871];
          let x_3875 : vec4<f32> = u_xlat12;
          let x_3878 : i32 = u_xlati81;
          let x_3880 : vec4<f32> = x_1775.x_AdditionalLightsCookieAtlasUVRects[x_3878];
          let x_3882 : vec2<f32> = ((vec2<f32>(x_3873.x, x_3873.y) * vec2<f32>(x_3875.x, x_3875.y)) + vec2<f32>(x_3880.z, x_3880.w));
          let x_3883 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3882.x, x_3883.y, x_3882.y, x_3883.w);
        } else {
          let x_3886 : vec3<f32> = vs_TEXCOORD7;
          let x_3888 : i32 = u_xlati37;
          let x_3891 : i32 = u_xlati37;
          let x_3895 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3888 + 1i) / 4i)][((x_3891 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3886.y, x_3886.y, x_3886.y, x_3886.y) * x_3895);
          let x_3897 : i32 = u_xlati37;
          let x_3899 : i32 = u_xlati37;
          let x_3902 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[(x_3897 / 4i)][(x_3899 % 4i)];
          let x_3903 : vec3<f32> = vs_TEXCOORD7;
          let x_3906 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3902 * vec4<f32>(x_3903.x, x_3903.x, x_3903.x, x_3903.x)) + x_3906);
          let x_3908 : i32 = u_xlati37;
          let x_3911 : i32 = u_xlati37;
          let x_3915 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3908 + 2i) / 4i)][((x_3911 + 2i) % 4i)];
          let x_3916 : vec3<f32> = vs_TEXCOORD7;
          let x_3919 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3915 * vec4<f32>(x_3916.z, x_3916.z, x_3916.z, x_3916.z)) + x_3919);
          let x_3921 : vec4<f32> = u_xlat12;
          let x_3922 : i32 = u_xlati37;
          let x_3925 : i32 = u_xlati37;
          let x_3929 : vec4<f32> = x_1775.x_AdditionalLightsWorldToLights[((x_3922 + 3i) / 4i)][((x_3925 + 3i) % 4i)];
          u_xlat12 = (x_3921 + x_3929);
          let x_3931 : vec4<f32> = u_xlat12;
          let x_3933 : vec4<f32> = u_xlat12;
          let x_3935 : vec3<f32> = (vec3<f32>(x_3931.x, x_3931.y, x_3931.z) / vec3<f32>(x_3933.w, x_3933.w, x_3933.w));
          let x_3936 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3935.x, x_3935.y, x_3935.z, x_3936.w);
          let x_3938 : vec4<f32> = u_xlat12;
          let x_3940 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3938.x, x_3938.y, x_3938.z), vec3<f32>(x_3940.x, x_3940.y, x_3940.z));
          let x_3943 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3943);
          let x_3945 : f32 = u_xlat88;
          let x_3947 : vec4<f32> = u_xlat12;
          let x_3949 : vec3<f32> = (vec3<f32>(x_3945, x_3945, x_3945) * vec3<f32>(x_3947.x, x_3947.y, x_3947.z));
          let x_3950 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3949.x, x_3949.y, x_3949.z, x_3950.w);
          let x_3952 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3952.x, x_3952.y, x_3952.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3957 : f32 = u_xlat88;
          u_xlat88 = max(x_3957, 0.00000099999999747524f);
          let x_3960 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3960);
          let x_3962 : f32 = u_xlat88;
          let x_3964 : vec4<f32> = u_xlat12;
          let x_3966 : vec3<f32> = (vec3<f32>(x_3962, x_3962, x_3962) * vec3<f32>(x_3964.z, x_3964.x, x_3964.y));
          let x_3967 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3966.x, x_3966.y, x_3966.z, x_3967.w);
          let x_3970 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3970);
          let x_3974 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3974, 0.0f, 1.0f);
          let x_3979 : vec4<f32> = u_xlat13;
          let x_3981 : vec4<bool> = (vec4<f32>(x_3979.y, x_3979.y, x_3979.z, x_3979.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3982 : vec2<bool> = vec2<bool>(x_3981.x, x_3981.z);
          let x_3983 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3982.x, x_3983.y, x_3982.y);
          let x_3986 : bool = u_xlatb37.x;
          if (x_3986) {
            let x_3991 : f32 = u_xlat13.x;
            x_3987 = x_3991;
          } else {
            let x_3994 : f32 = u_xlat13.x;
            x_3987 = -(x_3994);
          }
          let x_3996 : f32 = x_3987;
          u_xlat37.x = x_3996;
          let x_3999 : bool = u_xlatb37.z;
          if (x_3999) {
            let x_4004 : f32 = u_xlat13.x;
            x_4000 = x_4004;
          } else {
            let x_4007 : f32 = u_xlat13.x;
            x_4000 = -(x_4007);
          }
          let x_4009 : f32 = x_4000;
          u_xlat37.z = x_4009;
          let x_4011 : vec4<f32> = u_xlat12;
          let x_4013 : f32 = u_xlat88;
          let x_4016 : vec3<f32> = u_xlat37;
          let x_4018 : vec2<f32> = ((vec2<f32>(x_4011.x, x_4011.y) * vec2<f32>(x_4013, x_4013)) + vec2<f32>(x_4016.x, x_4016.z));
          let x_4019 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4018.x, x_4019.y, x_4018.y);
          let x_4021 : vec3<f32> = u_xlat37;
          let x_4024 : vec2<f32> = ((vec2<f32>(x_4021.x, x_4021.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4025 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4024.x, x_4025.y, x_4024.y);
          let x_4027 : vec3<f32> = u_xlat37;
          let x_4031 : vec2<f32> = clamp(vec2<f32>(x_4027.x, x_4027.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4032 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4031.x, x_4032.y, x_4031.y);
          let x_4034 : i32 = u_xlati81;
          let x_4036 : vec4<f32> = x_1775.x_AdditionalLightsCookieAtlasUVRects[x_4034];
          let x_4038 : vec3<f32> = u_xlat37;
          let x_4041 : i32 = u_xlati81;
          let x_4043 : vec4<f32> = x_1775.x_AdditionalLightsCookieAtlasUVRects[x_4041];
          let x_4045 : vec2<f32> = ((vec2<f32>(x_4036.x, x_4036.y) * vec2<f32>(x_4038.x, x_4038.z)) + vec2<f32>(x_4043.z, x_4043.w));
          let x_4046 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4045.x, x_4046.y, x_4045.y, x_4046.w);
        }
      }
      let x_4053 : vec4<f32> = u_xlat11;
      let x_4055 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4053.x, x_4053.z), 0.0f);
      u_xlat11 = x_4055;
      let x_4057 : bool = u_xlatb2.y;
      if (x_4057) {
        let x_4062 : f32 = u_xlat11.w;
        x_4058 = x_4062;
      } else {
        let x_4065 : f32 = u_xlat11.x;
        x_4058 = x_4065;
      }
      let x_4066 : f32 = x_4058;
      u_xlat88 = x_4066;
      let x_4068 : bool = u_xlatb2.x;
      if (x_4068) {
        let x_4072 : vec4<f32> = u_xlat11;
        x_4069 = vec3<f32>(x_4072.x, x_4072.y, x_4072.z);
      } else {
        let x_4075 : f32 = u_xlat88;
        x_4069 = vec3<f32>(x_4075, x_4075, x_4075);
      }
      let x_4077 : vec3<f32> = x_4069;
      let x_4078 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4077.x, x_4077.y, x_4077.z, x_4078.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4084 : vec4<f32> = u_xlat11;
    let x_4086 : i32 = u_xlati81;
    let x_4088 : vec4<f32> = x_2220.x_AdditionalLightsColor[x_4086];
    let x_4090 : vec3<f32> = (vec3<f32>(x_4084.x, x_4084.y, x_4084.z) * vec3<f32>(x_4088.x, x_4088.y, x_4088.z));
    let x_4091 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
    let x_4093 : f32 = u_xlat84;
    let x_4094 : f32 = u_xlat87;
    u_xlat81 = (x_4093 * x_4094);
    let x_4096 : vec3<f32> = u_xlat27;
    let x_4097 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4096, vec3<f32>(x_4097.x, x_4097.y, x_4097.z));
    let x_4100 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4100, 0.0f, 1.0f);
    let x_4102 : f32 = u_xlat81;
    let x_4103 : f32 = u_xlat84;
    u_xlat81 = (x_4102 * x_4103);
    let x_4105 : f32 = u_xlat81;
    let x_4107 : vec4<f32> = u_xlat11;
    let x_4109 : vec3<f32> = (vec3<f32>(x_4105, x_4105, x_4105) * vec3<f32>(x_4107.x, x_4107.y, x_4107.z));
    let x_4110 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4109.x, x_4109.y, x_4109.z, x_4110.w);
    let x_4112 : vec4<f32> = u_xlat9;
    let x_4114 : f32 = u_xlat85;
    let x_4117 : vec4<f32> = u_xlat6;
    let x_4119 : vec3<f32> = ((vec3<f32>(x_4112.x, x_4112.y, x_4112.z) * vec3<f32>(x_4114, x_4114, x_4114)) + vec3<f32>(x_4117.x, x_4117.y, x_4117.z));
    let x_4120 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4119.x, x_4119.y, x_4119.z, x_4120.w);
    let x_4122 : vec4<f32> = u_xlat9;
    let x_4124 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4122.x, x_4122.y, x_4122.z), vec3<f32>(x_4124.x, x_4124.y, x_4124.z));
    let x_4127 : f32 = u_xlat81;
    u_xlat81 = max(x_4127, 1.17549435e-38f);
    let x_4129 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4129);
    let x_4131 : f32 = u_xlat81;
    let x_4133 : vec4<f32> = u_xlat9;
    let x_4135 : vec3<f32> = (vec3<f32>(x_4131, x_4131, x_4131) * vec3<f32>(x_4133.x, x_4133.y, x_4133.z));
    let x_4136 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4135.x, x_4135.y, x_4135.z, x_4136.w);
    let x_4138 : vec3<f32> = u_xlat27;
    let x_4139 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(x_4138, vec3<f32>(x_4139.x, x_4139.y, x_4139.z));
    let x_4142 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4142, 0.0f, 1.0f);
    let x_4144 : vec4<f32> = u_xlat10;
    let x_4146 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4144.x, x_4144.y, x_4144.z), vec3<f32>(x_4146.x, x_4146.y, x_4146.z));
    let x_4149 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4149, 0.0f, 1.0f);
    let x_4151 : f32 = u_xlat81;
    let x_4152 : f32 = u_xlat81;
    u_xlat81 = (x_4151 * x_4152);
    let x_4154 : f32 = u_xlat81;
    let x_4156 : f32 = u_xlat8.x;
    u_xlat81 = ((x_4154 * x_4156) + 1.00001001358032226562f);
    let x_4159 : f32 = u_xlat84;
    let x_4160 : f32 = u_xlat84;
    u_xlat84 = (x_4159 * x_4160);
    let x_4162 : f32 = u_xlat81;
    let x_4163 : f32 = u_xlat81;
    u_xlat81 = (x_4162 * x_4163);
    let x_4165 : f32 = u_xlat84;
    u_xlat84 = max(x_4165, 0.10000000149011611938f);
    let x_4167 : f32 = u_xlat81;
    let x_4168 : f32 = u_xlat84;
    u_xlat81 = (x_4167 * x_4168);
    let x_4171 : f32 = u_xlat4.x;
    let x_4172 : f32 = u_xlat81;
    u_xlat81 = (x_4171 * x_4172);
    let x_4175 : f32 = u_xlat5.x;
    let x_4176 : f32 = u_xlat81;
    u_xlat81 = (x_4175 / x_4176);
    let x_4178 : vec4<f32> = u_xlat0;
    let x_4180 : f32 = u_xlat81;
    let x_4183 : vec3<f32> = u_xlat30;
    let x_4184 : vec3<f32> = ((vec3<f32>(x_4178.x, x_4178.y, x_4178.z) * vec3<f32>(x_4180, x_4180, x_4180)) + x_4183);
    let x_4185 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4184.x, x_4184.y, x_4184.z, x_4185.w);
    let x_4187 : vec4<f32> = u_xlat9;
    let x_4189 : vec4<f32> = u_xlat11;
    let x_4192 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4187.x, x_4187.y, x_4187.z) * vec3<f32>(x_4189.x, x_4189.y, x_4189.z)) + x_4192);

    continuing {
      let x_4194 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4194 + bitcast<u32>(1i));
    }
  }
  let x_4196 : vec4<f32> = u_xlat7;
  let x_4198 : vec3<f32> = u_xlat31;
  let x_4200 : vec4<f32> = u_xlat3;
  let x_4202 : vec3<f32> = ((vec3<f32>(x_4196.x, x_4196.y, x_4196.z) * x_4198) + vec3<f32>(x_4200.x, x_4200.y, x_4200.z));
  let x_4203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4202.x, x_4202.y, x_4202.z, x_4203.w);
  let x_4205 : vec3<f32> = u_xlat34;
  let x_4206 : vec4<f32> = u_xlat0;
  let x_4208 : vec3<f32> = (x_4205 + vec3<f32>(x_4206.x, x_4206.y, x_4206.z));
  let x_4209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4208.x, x_4208.y, x_4208.z, x_4209.w);
  let x_4211 : f32 = u_xlat80;
  let x_4212 : f32 = u_xlat80;
  u_xlat78 = (x_4211 * -(x_4212));
  let x_4215 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4215);
  let x_4217 : vec4<f32> = u_xlat0;
  let x_4220 : vec4<f32> = x_29.unity_FogColor;
  let x_4223 : vec3<f32> = (vec3<f32>(x_4217.x, x_4217.y, x_4217.z) + -(vec3<f32>(x_4220.x, x_4220.y, x_4220.z)));
  let x_4224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4223.x, x_4223.y, x_4223.z, x_4224.w);
  let x_4228 : f32 = u_xlat78;
  let x_4230 : vec4<f32> = u_xlat0;
  let x_4234 : vec4<f32> = x_29.unity_FogColor;
  let x_4236 : vec3<f32> = ((vec3<f32>(x_4228, x_4228, x_4228) * vec3<f32>(x_4230.x, x_4230.y, x_4230.z)) + vec3<f32>(x_4234.x, x_4234.y, x_4234.z));
  let x_4237 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4236.x, x_4236.y, x_4236.z, x_4237.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


