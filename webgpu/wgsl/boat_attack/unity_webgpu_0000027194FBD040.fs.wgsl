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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

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

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(4) var<uniform> x_1706 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1899 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2159 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

var<private> u_xlatb83 : bool;

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
  var x_1655 : f32;
  var x_1789 : f32;
  var x_1800 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2297 : f32;
  var x_2307 : f32;
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
  var x_3893 : f32;
  var x_3906 : f32;
  var x_3964 : f32;
  var x_3975 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1 = x_48.x;
  let x_53 : vec4<f32> = vs_TEXCOORD3;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat27;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_71 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_71 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
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
  let x_115 : vec3<f32> = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_118.x, x_118.y, x_118.z), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec4<f32> = u_xlat3;
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = u_xlat4;
  let x_132 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_131, x_132);
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat2;
  let x_150 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_147 < x_150);
  let x_154 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(x_187.y, x_187.z, x_187.w));
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = max(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_198, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_206 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_206) + 4.0f);
  let x_213 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_213);
  let x_217 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_217) << bitcast<u32>(2i));
  let x_221 : vec3<f32> = vs_TEXCOORD7;
  let x_223 : i32 = u_xlati2;
  let x_226 : i32 = u_xlati2;
  let x_230 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_223 + 1i) / 4i)][((x_226 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_221.y, x_221.y, x_221.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : i32 = u_xlati2;
  let x_235 : i32 = u_xlati2;
  let x_238 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_233 / 4i)][(x_235 % 4i)];
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : i32 = u_xlati2;
  let x_248 : i32 = u_xlati2;
  let x_252 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD7;
  let x_257 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + x_257);
  let x_259 : vec3<f32> = u_xlat28;
  let x_260 : i32 = u_xlati2;
  let x_263 : i32 = u_xlati2;
  let x_267 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  let x_269 : vec3<f32> = (x_259 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_277 : vec4<f32> = vs_TEXCOORD0;
  let x_280 : f32 = x_28.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_277.z, x_277.w), x_280);
  u_xlat3 = x_281;
  let x_286 : vec4<f32> = vs_TEXCOORD0;
  let x_289 : f32 = x_28.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_286.z, x_286.w), x_289);
  u_xlat4 = vec3<f32>(x_290.x, x_290.y, x_290.z);
  let x_292 : vec4<f32> = u_xlat3;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec3<f32> = u_xlat27;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(x_300, vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : f32 = u_xlat80;
  u_xlat80 = (x_304 + 0.5f);
  let x_307 : f32 = u_xlat80;
  let x_309 : vec3<f32> = u_xlat4;
  let x_310 : vec3<f32> = (vec3<f32>(x_307, x_307, x_307) * x_309);
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : f32 = u_xlat3.w;
  u_xlat80 = max(x_314, 0.00009999999747378752f);
  let x_317 : vec4<f32> = u_xlat3;
  let x_319 : f32 = u_xlat80;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) / vec3<f32>(x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat1;
  u_xlat80 = ((-(x_324) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_330 : f32 = u_xlat80;
  u_xlat81 = (-(x_330) + 1.0f);
  let x_333 : vec4<f32> = u_xlat0;
  let x_335 : f32 = u_xlat80;
  u_xlat4 = (vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335, x_335, x_335));
  let x_338 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : f32 = u_xlat1;
  let x_347 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_356) + 1.0f);
  let x_359 : f32 = u_xlat1;
  let x_360 : f32 = u_xlat1;
  u_xlat80 = (x_359 * x_360);
  let x_362 : f32 = u_xlat80;
  u_xlat80 = max(x_362, 0.0078125f);
  let x_366 : f32 = u_xlat80;
  let x_367 : f32 = u_xlat80;
  u_xlat82 = (x_366 * x_367);
  let x_371 : f32 = u_xlat0.w;
  let x_372 : f32 = u_xlat81;
  u_xlat78 = (x_371 + x_372);
  let x_374 : f32 = u_xlat78;
  u_xlat78 = clamp(x_374, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat80;
  u_xlat81 = ((x_376 * 4.0f) + 2.0f);
  let x_382 : f32 = x_80.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_382);
  let x_384 : bool = u_xlatb5;
  if (x_384) {
    let x_388 : f32 = x_80.x_MainLightShadowParams.y;
    u_xlatb5 = (x_388 == 1.0f);
    let x_390 : bool = u_xlatb5;
    if (x_390) {
      let x_393 : vec4<f32> = u_xlat2;
      let x_397 : vec4<f32> = x_80.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_393.x, x_393.y, x_393.x, x_393.y) + x_397);
      let x_401 : vec4<f32> = u_xlat5;
      let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
      let x_404 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
      let x_417 : vec3<f32> = txVec0;
      let x_419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_417.xy, x_417.z);
      u_xlat6.x = x_419;
      let x_422 : vec4<f32> = u_xlat5;
      let x_423 : vec2<f32> = vec2<f32>(x_422.z, x_422.w);
      let x_425 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_423.x, x_423.y, x_425);
      let x_432 : vec3<f32> = txVec1;
      let x_434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_432.xy, x_432.z);
      u_xlat6.y = x_434;
      let x_436 : vec4<f32> = u_xlat2;
      let x_440 : vec4<f32> = x_80.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_436.x, x_436.y, x_436.x, x_436.y) + x_440);
      let x_443 : vec4<f32> = u_xlat5;
      let x_444 : vec2<f32> = vec2<f32>(x_443.x, x_443.y);
      let x_446 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_444.x, x_444.y, x_446);
      let x_453 : vec3<f32> = txVec2;
      let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_453.xy, x_453.z);
      u_xlat6.z = x_455;
      let x_458 : vec4<f32> = u_xlat5;
      let x_459 : vec2<f32> = vec2<f32>(x_458.z, x_458.w);
      let x_461 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_468 : vec3<f32> = txVec3;
      let x_470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_468.xy, x_468.z);
      u_xlat6.w = x_470;
      let x_472 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_472, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_480 : f32 = x_80.x_MainLightShadowParams.y;
      u_xlatb31 = (x_480 == 2.0f);
      let x_482 : bool = u_xlatb31;
      if (x_482) {
        let x_487 : vec4<f32> = u_xlat2;
        let x_491 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(x_491.z, x_491.w)) + vec2<f32>(0.5f, 0.5f));
        let x_496 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_496);
        let x_498 : vec4<f32> = u_xlat2;
        let x_501 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_504 : vec2<f32> = u_xlat31;
        let x_506 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_501.z, x_501.w)) + -(x_504));
        let x_507 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_510.x, x_510.x, x_510.y, x_510.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_515 : vec4<f32> = u_xlat7;
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_515.x, x_515.x, x_515.z, x_515.z) * vec4<f32>(x_517.x, x_517.x, x_517.z, x_517.z));
        let x_521 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_521.y, x_521.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_526 : vec4<f32> = u_xlat8;
        let x_529 : vec4<f32> = u_xlat6;
        let x_532 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_529.x, x_529.y)));
        let x_533 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_532.x, x_533.y, x_532.y, x_533.w);
        let x_535 : vec4<f32> = u_xlat6;
        let x_539 : vec2<f32> = (-(vec2<f32>(x_535.x, x_535.y)) + vec2<f32>(1.0f, 1.0f));
        let x_540 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_543 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_543.x, x_543.y), vec2<f32>(0.0f, 0.0f));
        let x_547 : vec2<f32> = u_xlat60;
        let x_549 : vec2<f32> = u_xlat60;
        let x_551 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_547) * x_549) + vec2<f32>(x_551.x, x_551.y));
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec2<f32> = max(vec2<f32>(x_554.x, x_554.y), vec2<f32>(0.0f, 0.0f));
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat6;
        let x_562 : vec4<f32> = u_xlat6;
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec2<f32> = ((-(vec2<f32>(x_559.x, x_559.y)) * vec2<f32>(x_562.x, x_562.y)) + vec2<f32>(x_565.y, x_565.w));
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_570 + vec2<f32>(1.0f, 1.0f));
        let x_572 : vec4<f32> = u_xlat6;
        let x_574 : vec2<f32> = (vec2<f32>(x_572.x, x_572.y) + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_578 : vec4<f32> = u_xlat7;
        let x_582 : vec2<f32> = (vec2<f32>(x_578.x, x_578.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_586 : vec4<f32> = u_xlat8;
        let x_588 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_589 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_591 : vec2<f32> = u_xlat60;
        let x_592 : vec2<f32> = (x_591 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_596 : vec4<f32> = u_xlat6;
        let x_598 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_599 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat7;
        let x_603 : vec2<f32> = (vec2<f32>(x_601.y, x_601.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_604 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_607 : f32 = u_xlat8.x;
        u_xlat9.z = x_607;
        let x_610 : f32 = u_xlat6.x;
        u_xlat9.w = x_610;
        let x_613 : f32 = u_xlat11.x;
        u_xlat10.z = x_613;
        let x_616 : f32 = u_xlat58.x;
        u_xlat10.w = x_616;
        let x_618 : vec4<f32> = u_xlat9;
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_618.z, x_618.w, x_618.x, x_618.z) + vec4<f32>(x_620.z, x_620.w, x_620.x, x_620.z));
        let x_624 : f32 = u_xlat9.y;
        u_xlat8.z = x_624;
        let x_627 : f32 = u_xlat6.y;
        u_xlat8.w = x_627;
        let x_630 : f32 = u_xlat10.y;
        u_xlat11.z = x_630;
        let x_633 : f32 = u_xlat58.y;
        u_xlat11.w = x_633;
        let x_635 : vec4<f32> = u_xlat8;
        let x_637 : vec4<f32> = u_xlat11;
        let x_639 : vec3<f32> = (vec3<f32>(x_635.z, x_635.y, x_635.w) + vec3<f32>(x_637.z, x_637.y, x_637.w));
        let x_640 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat10;
        let x_644 : vec4<f32> = u_xlat7;
        let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.z, x_642.w) / vec3<f32>(x_644.z, x_644.w, x_644.y));
        let x_647 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_654 : vec3<f32> = (vec3<f32>(x_649.x, x_649.y, x_649.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat11;
        let x_659 : vec4<f32> = u_xlat6;
        let x_661 : vec3<f32> = (vec3<f32>(x_657.z, x_657.y, x_657.w) / vec3<f32>(x_659.x, x_659.y, x_659.z));
        let x_662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat9;
        let x_666 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
        let x_669 : vec4<f32> = u_xlat8;
        let x_672 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_674 : vec3<f32> = (vec3<f32>(x_669.y, x_669.x, x_669.z) * vec3<f32>(x_672.x, x_672.x, x_672.x));
        let x_675 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat9;
        let x_680 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_682 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_680.y, x_680.y, x_680.y));
        let x_683 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_686 : f32 = u_xlat9.x;
        u_xlat8.w = x_686;
        let x_688 : vec2<f32> = u_xlat31;
        let x_691 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y) * vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y)) + vec4<f32>(x_694.y, x_694.w, x_694.x, x_694.w));
        let x_697 : vec2<f32> = u_xlat31;
        let x_699 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_702 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = ((x_697 * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.z, x_702.w));
        let x_705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : f32 = u_xlat8.y;
        u_xlat9.w = x_708;
        let x_710 : vec4<f32> = u_xlat9;
        let x_711 : vec2<f32> = vec2<f32>(x_710.y, x_710.z);
        let x_712 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_711.x, x_712.z, x_711.y);
        let x_715 : vec2<f32> = u_xlat31;
        let x_718 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_721 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y) * vec4<f32>(x_718.x, x_718.y, x_718.x, x_718.y)) + vec4<f32>(x_721.x, x_721.y, x_721.z, x_721.y));
        let x_724 : vec2<f32> = u_xlat31;
        let x_727 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y) * vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y)) + vec4<f32>(x_730.w, x_730.y, x_730.w, x_730.z));
        let x_733 : vec2<f32> = u_xlat31;
        let x_736 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_739 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y) * vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y)) + vec4<f32>(x_739.x, x_739.w, x_739.z, x_739.w));
        let x_743 : vec4<f32> = u_xlat6;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_743.x, x_743.x, x_743.x, x_743.y) * vec4<f32>(x_745.z, x_745.w, x_745.y, x_745.z));
        let x_749 : vec4<f32> = u_xlat6;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_749.y, x_749.y, x_749.z, x_749.z) * x_751);
        let x_754 : f32 = u_xlat6.z;
        let x_756 : f32 = u_xlat7.y;
        u_xlat31.x = (x_754 * x_756);
        let x_760 : vec4<f32> = u_xlat10;
        let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
        let x_763 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_771 : vec3<f32> = txVec4;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
        u_xlat57 = x_773;
        let x_775 : vec4<f32> = u_xlat10;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_786 : vec3<f32> = txVec5;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_786.xy, x_786.z);
        u_xlat83 = x_788;
        let x_789 : f32 = u_xlat83;
        let x_791 : f32 = u_xlat13.y;
        u_xlat83 = (x_789 * x_791);
        let x_794 : f32 = u_xlat13.x;
        let x_795 : f32 = u_xlat57;
        let x_797 : f32 = u_xlat83;
        u_xlat57 = ((x_794 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat11;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec6;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat83 = x_812;
        let x_814 : f32 = u_xlat13.z;
        let x_815 : f32 = u_xlat83;
        let x_817 : f32 = u_xlat57;
        u_xlat57 = ((x_814 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
        let x_823 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec7;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat83 = x_832;
        let x_834 : f32 = u_xlat13.w;
        let x_835 : f32 = u_xlat83;
        let x_837 : f32 = u_xlat57;
        u_xlat57 = ((x_834 * x_835) + x_837);
        let x_840 : vec4<f32> = u_xlat12;
        let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
        let x_843 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec8;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat83 = x_852;
        let x_854 : f32 = u_xlat14.x;
        let x_855 : f32 = u_xlat83;
        let x_857 : f32 = u_xlat57;
        u_xlat57 = ((x_854 * x_855) + x_857);
        let x_860 : vec4<f32> = u_xlat12;
        let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
        let x_863 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec9;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
        u_xlat83 = x_872;
        let x_874 : f32 = u_xlat14.y;
        let x_875 : f32 = u_xlat83;
        let x_877 : f32 = u_xlat57;
        u_xlat57 = ((x_874 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
        let x_883 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec10;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat83 = x_892;
        let x_894 : f32 = u_xlat14.z;
        let x_895 : f32 = u_xlat83;
        let x_897 : f32 = u_xlat57;
        u_xlat57 = ((x_894 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec11;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat83 = x_912;
        let x_914 : f32 = u_xlat14.w;
        let x_915 : f32 = u_xlat83;
        let x_917 : f32 = u_xlat57;
        u_xlat57 = ((x_914 * x_915) + x_917);
        let x_920 : vec4<f32> = u_xlat8;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec12;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat83 = x_932;
        let x_934 : f32 = u_xlat31.x;
        let x_935 : f32 = u_xlat83;
        let x_937 : f32 = u_xlat57;
        u_xlat5.x = ((x_934 * x_935) + x_937);
      } else {
        let x_941 : vec4<f32> = u_xlat2;
        let x_944 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_941.x, x_941.y) * vec2<f32>(x_944.z, x_944.w)) + vec2<f32>(0.5f, 0.5f));
        let x_948 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_948);
        let x_950 : vec4<f32> = u_xlat2;
        let x_953 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_956 : vec2<f32> = u_xlat31;
        let x_958 : vec2<f32> = ((vec2<f32>(x_950.x, x_950.y) * vec2<f32>(x_953.z, x_953.w)) + -(x_956));
        let x_959 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_961.x, x_961.x, x_961.y, x_961.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_964 : vec4<f32> = u_xlat7;
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_964.x, x_964.x, x_964.z, x_964.z) * vec4<f32>(x_966.x, x_966.x, x_966.z, x_966.z));
        let x_969 : vec4<f32> = u_xlat8;
        let x_973 : vec2<f32> = (vec2<f32>(x_969.y, x_969.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_974 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_974.x, x_973.x, x_974.z, x_973.y);
        let x_976 : vec4<f32> = u_xlat8;
        let x_979 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_976.x, x_976.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_979.x, x_979.y)));
        let x_983 : vec4<f32> = u_xlat6;
        let x_986 : vec2<f32> = (-(vec2<f32>(x_983.x, x_983.y)) + vec2<f32>(1.0f, 1.0f));
        let x_987 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_989 : vec4<f32> = u_xlat6;
        let x_991 : vec2<f32> = min(vec2<f32>(x_989.x, x_989.y), vec2<f32>(0.0f, 0.0f));
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat8;
        let x_997 : vec4<f32> = u_xlat8;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1002 : vec2<f32> = ((-(vec2<f32>(x_994.x, x_994.y)) * vec2<f32>(x_997.x, x_997.y)) + vec2<f32>(x_1000.x, x_1000.z));
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1002.x, x_1003.y, x_1002.y, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1007 : vec2<f32> = max(vec2<f32>(x_1005.x, x_1005.y), vec2<f32>(0.0f, 0.0f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1016 : vec4<f32> = u_xlat7;
        let x_1018 : vec2<f32> = ((-(vec2<f32>(x_1010.x, x_1010.y)) * vec2<f32>(x_1013.x, x_1013.y)) + vec2<f32>(x_1016.y, x_1016.w));
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1019.x, x_1018.x, x_1019.z, x_1018.y);
        let x_1021 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1021 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1025 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1025 * 0.08163200318813323975f);
        let x_1029 : vec2<f32> = u_xlat58;
        let x_1032 : vec2<f32> = (vec2<f32>(x_1029.y, x_1029.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1035.x, x_1035.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1039 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1039 * 0.08163200318813323975f);
        let x_1043 : f32 = u_xlat10.y;
        u_xlat8.x = x_1043;
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1053.x, x_1052.x, x_1053.z, x_1052.y);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1060 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1060.w);
        let x_1063 : f32 = u_xlat58.x;
        u_xlat7.y = x_1063;
        let x_1066 : f32 = u_xlat9.y;
        u_xlat7.w = x_1066;
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1068 + x_1069);
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1071.y, x_1071.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1077.y, x_1077.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1081.y, x_1080.y, x_1081.w);
        let x_1084 : f32 = u_xlat58.y;
        u_xlat9.y = x_1084;
        let x_1086 : vec4<f32> = u_xlat9;
        let x_1087 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1086 + x_1087);
        let x_1089 : vec4<f32> = u_xlat7;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1089 / x_1090);
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1092 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1099 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1098 / x_1099);
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1101 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1103.w, x_1103.x, x_1103.y, x_1103.z) * vec4<f32>(x_1106.x, x_1106.x, x_1106.x, x_1106.x));
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1112 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1109.x, x_1109.w, x_1109.y, x_1109.z) * vec4<f32>(x_1112.y, x_1112.y, x_1112.y, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1116 : vec3<f32> = vec3<f32>(x_1115.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
        let x_1120 : f32 = u_xlat9.x;
        u_xlat10.y = x_1120;
        let x_1122 : vec2<f32> = u_xlat31;
        let x_1125 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y) * vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y)) + vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.y));
        let x_1131 : vec2<f32> = u_xlat31;
        let x_1133 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat10;
        let x_1138 : vec2<f32> = ((x_1131 * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1136.w, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1142 : f32 = u_xlat10.y;
        u_xlat7.y = x_1142;
        let x_1145 : f32 = u_xlat9.z;
        u_xlat10.y = x_1145;
        let x_1147 : vec2<f32> = u_xlat31;
        let x_1150 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1157 : vec2<f32> = u_xlat31;
        let x_1159 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1157 * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.z = x_1166;
        let x_1168 : vec2<f32> = u_xlat31;
        let x_1171 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.z));
        let x_1178 : f32 = u_xlat9.w;
        u_xlat10.y = x_1178;
        let x_1181 : vec2<f32> = u_xlat31;
        let x_1184 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.y));
        let x_1191 : vec2<f32> = u_xlat31;
        let x_1193 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1191 * vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(x_1196.w, x_1196.y));
        let x_1200 : f32 = u_xlat10.y;
        u_xlat7.w = x_1200;
        let x_1203 : vec2<f32> = u_xlat31;
        let x_1205 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1210 : vec2<f32> = ((x_1203 * vec2<f32>(x_1205.x, x_1205.y)) + vec2<f32>(x_1208.x, x_1208.w));
        let x_1211 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat10;
        let x_1214 : vec3<f32> = vec3<f32>(x_1213.x, x_1213.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1214.x, x_1215.y, x_1214.y, x_1214.z);
        let x_1217 : vec2<f32> = u_xlat31;
        let x_1220 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y) * vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y)) + vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1223.y));
        let x_1227 : vec2<f32> = u_xlat31;
        let x_1229 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1227 * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.w, x_1232.y));
        let x_1236 : f32 = u_xlat7.x;
        u_xlat9.x = x_1236;
        let x_1238 : vec2<f32> = u_xlat31;
        let x_1240 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat31 = ((x_1238 * vec2<f32>(x_1240.x, x_1240.y)) + vec2<f32>(x_1243.x, x_1243.y));
        let x_1247 : vec4<f32> = u_xlat6;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1247.x, x_1247.x, x_1247.x, x_1247.x) * x_1249);
        let x_1252 : vec4<f32> = u_xlat6;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1252.y, x_1252.y, x_1252.y, x_1252.y) * x_1254);
        let x_1257 : vec4<f32> = u_xlat6;
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1257.z, x_1257.z, x_1257.z, x_1257.z) * x_1259);
        let x_1261 : vec4<f32> = u_xlat6;
        let x_1263 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1261.w, x_1261.w, x_1261.w, x_1261.w) * x_1263);
        let x_1266 : vec4<f32> = u_xlat11;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec13;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat83 = x_1278;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec14;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat7.x = x_1292;
        let x_1295 : f32 = u_xlat7.x;
        let x_1297 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1295 * x_1297);
        let x_1301 : f32 = u_xlat17.x;
        let x_1302 : f32 = u_xlat83;
        let x_1305 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1301 * x_1302) + x_1305);
        let x_1308 : vec4<f32> = u_xlat12;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec15;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat7.x = x_1320;
        let x_1323 : f32 = u_xlat17.z;
        let x_1325 : f32 = u_xlat7.x;
        let x_1327 : f32 = u_xlat83;
        u_xlat83 = ((x_1323 * x_1325) + x_1327);
        let x_1330 : vec4<f32> = u_xlat14;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.x, x_1330.y);
        let x_1333 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec16;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat7.x = x_1342;
        let x_1345 : f32 = u_xlat17.w;
        let x_1347 : f32 = u_xlat7.x;
        let x_1349 : f32 = u_xlat83;
        u_xlat83 = ((x_1345 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat13;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec17;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat7.x = x_1364;
        let x_1367 : f32 = u_xlat18.x;
        let x_1369 : f32 = u_xlat7.x;
        let x_1371 : f32 = u_xlat83;
        u_xlat83 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat13;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.z, x_1374.w);
        let x_1377 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec18;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat7.x = x_1386;
        let x_1389 : f32 = u_xlat18.y;
        let x_1391 : f32 = u_xlat7.x;
        let x_1393 : f32 = u_xlat83;
        u_xlat83 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec2<f32> = u_xlat64;
        let x_1398 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec19;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat7.x = x_1407;
        let x_1410 : f32 = u_xlat18.z;
        let x_1412 : f32 = u_xlat7.x;
        let x_1414 : f32 = u_xlat83;
        u_xlat83 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat14;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec20;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat7.x = x_1429;
        let x_1432 : f32 = u_xlat18.w;
        let x_1434 : f32 = u_xlat7.x;
        let x_1436 : f32 = u_xlat83;
        u_xlat83 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat15;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec21;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat7.x = x_1451;
        let x_1454 : f32 = u_xlat19.x;
        let x_1456 : f32 = u_xlat7.x;
        let x_1458 : f32 = u_xlat83;
        u_xlat83 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat15;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec22;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat7.x = x_1473;
        let x_1476 : f32 = u_xlat19.y;
        let x_1478 : f32 = u_xlat7.x;
        let x_1480 : f32 = u_xlat83;
        u_xlat83 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec2<f32> = u_xlat33;
        let x_1485 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec23;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat7.x = x_1494;
        let x_1497 : f32 = u_xlat19.z;
        let x_1499 : f32 = u_xlat7.x;
        let x_1501 : f32 = u_xlat83;
        u_xlat83 = ((x_1497 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat16;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec24;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat7.x = x_1516;
        let x_1519 : f32 = u_xlat19.w;
        let x_1521 : f32 = u_xlat7.x;
        let x_1523 : f32 = u_xlat83;
        u_xlat83 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec25;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat7.x = x_1538;
        let x_1541 : f32 = u_xlat6.x;
        let x_1543 : f32 = u_xlat7.x;
        let x_1545 : f32 = u_xlat83;
        u_xlat83 = ((x_1541 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat10;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec26;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat6.x = x_1560;
        let x_1563 : f32 = u_xlat6.y;
        let x_1565 : f32 = u_xlat6.x;
        let x_1567 : f32 = u_xlat83;
        u_xlat83 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat61;
        let x_1572 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec27;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat6.x = x_1581;
        let x_1584 : f32 = u_xlat6.z;
        let x_1586 : f32 = u_xlat6.x;
        let x_1588 : f32 = u_xlat83;
        u_xlat83 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec2<f32> = u_xlat31;
        let x_1593 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec28;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
        u_xlat31.x = x_1602;
        let x_1605 : f32 = u_xlat6.w;
        let x_1607 : f32 = u_xlat31.x;
        let x_1609 : f32 = u_xlat83;
        u_xlat5.x = ((x_1605 * x_1607) + x_1609);
      }
    }
  } else {
    let x_1614 : vec4<f32> = u_xlat2;
    let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
    let x_1617 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
    let x_1624 : vec3<f32> = txVec29;
    let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
    u_xlat5.x = x_1626;
  }
  let x_1629 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1629) + 1.0f);
  let x_1634 : f32 = u_xlat5.x;
  let x_1636 : f32 = x_80.x_MainLightShadowParams.x;
  let x_1639 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1634 * x_1636) + x_1639);
  let x_1644 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1644);
  let x_1648 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1648 >= 1.0f);
  let x_1650 : bool = u_xlatb54;
  let x_1651 : bool = u_xlatb28;
  u_xlatb28 = (x_1650 | x_1651);
  let x_1653 : bool = u_xlatb28;
  if (x_1653) {
    x_1655 = 1.0f;
  } else {
    let x_1660 : f32 = u_xlat2.x;
    x_1655 = x_1660;
  }
  let x_1661 : f32 = x_1655;
  u_xlat2.x = x_1661;
  let x_1663 : vec3<f32> = vs_TEXCOORD7;
  let x_1666 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1668 : vec3<f32> = (x_1663 + -(x_1666));
  let x_1669 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
  let x_1671 : vec4<f32> = u_xlat5;
  let x_1673 : vec4<f32> = u_xlat5;
  u_xlat28.x = dot(vec3<f32>(x_1671.x, x_1671.y, x_1671.z), vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1679 : f32 = u_xlat28.x;
  let x_1681 : f32 = x_80.x_MainLightShadowParams.z;
  let x_1684 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1679 * x_1681) + x_1684);
  let x_1686 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1686, 0.0f, 1.0f);
  let x_1689 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_1689) + 1.0f);
  let x_1693 : f32 = u_xlat54;
  let x_1695 : f32 = u_xlat5.x;
  let x_1698 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1693 * x_1695) + x_1698);
  let x_1708 : f32 = x_1706.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1708 == -1.0f));
  let x_1710 : bool = u_xlatb54;
  if (x_1710) {
    let x_1713 : vec3<f32> = vs_TEXCOORD7;
    let x_1716 : vec4<f32> = x_1706.x_MainLightWorldToLight[1i];
    let x_1718 : vec2<f32> = (vec2<f32>(x_1713.y, x_1713.y) * vec2<f32>(x_1716.x, x_1716.y));
    let x_1719 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
    let x_1722 : vec4<f32> = x_1706.x_MainLightWorldToLight[0i];
    let x_1724 : vec3<f32> = vs_TEXCOORD7;
    let x_1727 : vec4<f32> = u_xlat5;
    let x_1729 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(x_1724.x, x_1724.x)) + vec2<f32>(x_1727.x, x_1727.y));
    let x_1730 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1729.x, x_1729.y, x_1730.z, x_1730.w);
    let x_1733 : vec4<f32> = x_1706.x_MainLightWorldToLight[2i];
    let x_1735 : vec3<f32> = vs_TEXCOORD7;
    let x_1738 : vec4<f32> = u_xlat5;
    let x_1740 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1735.z, x_1735.z)) + vec2<f32>(x_1738.x, x_1738.y));
    let x_1741 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
    let x_1743 : vec4<f32> = u_xlat5;
    let x_1746 : vec4<f32> = x_1706.x_MainLightWorldToLight[3i];
    let x_1748 : vec2<f32> = (vec2<f32>(x_1743.x, x_1743.y) + vec2<f32>(x_1746.x, x_1746.y));
    let x_1749 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
    let x_1751 : vec4<f32> = u_xlat5;
    let x_1754 : vec2<f32> = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1755 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
    let x_1762 : vec4<f32> = u_xlat5;
    let x_1765 : f32 = x_28.x_GlobalMipBias.x;
    let x_1766 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1762.x, x_1762.y), x_1765);
    u_xlat5 = x_1766;
    let x_1771 : f32 = x_1706.x_MainLightCookieTextureFormat;
    let x_1773 : f32 = x_1706.x_MainLightCookieTextureFormat;
    let x_1775 : f32 = x_1706.x_MainLightCookieTextureFormat;
    let x_1777 : f32 = x_1706.x_MainLightCookieTextureFormat;
    let x_1778 : vec4<f32> = vec4<f32>(x_1771, x_1773, x_1775, x_1777);
    let x_1785 : vec4<bool> = (vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1778.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1785.x, x_1785.y);
    let x_1788 : bool = u_xlatb6.y;
    if (x_1788) {
      let x_1793 : f32 = u_xlat5.w;
      x_1789 = x_1793;
    } else {
      let x_1796 : f32 = u_xlat5.x;
      x_1789 = x_1796;
    }
    let x_1797 : f32 = x_1789;
    u_xlat54 = x_1797;
    let x_1799 : bool = u_xlatb6.x;
    if (x_1799) {
      let x_1803 : vec4<f32> = u_xlat5;
      x_1800 = vec3<f32>(x_1803.x, x_1803.y, x_1803.z);
    } else {
      let x_1806 : f32 = u_xlat54;
      x_1800 = vec3<f32>(x_1806, x_1806, x_1806);
    }
    let x_1808 : vec3<f32> = x_1800;
    let x_1809 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1815 : vec4<f32> = u_xlat5;
  let x_1818 : vec4<f32> = x_28.x_MainLightColor;
  let x_1820 : vec3<f32> = (vec3<f32>(x_1815.x, x_1815.y, x_1815.z) * vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1825 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1825;
  let x_1829 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1829;
  let x_1833 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1833;
  let x_1835 : vec4<f32> = u_xlat6;
  let x_1838 : vec3<f32> = u_xlat27;
  u_xlat54 = dot(-(vec3<f32>(x_1835.x, x_1835.y, x_1835.z)), x_1838);
  let x_1840 : f32 = u_xlat54;
  let x_1841 : f32 = u_xlat54;
  u_xlat54 = (x_1840 + x_1841);
  let x_1843 : vec3<f32> = u_xlat27;
  let x_1844 : f32 = u_xlat54;
  let x_1848 : vec4<f32> = u_xlat6;
  let x_1851 : vec3<f32> = ((x_1843 * -(vec3<f32>(x_1844, x_1844, x_1844))) + -(vec3<f32>(x_1848.x, x_1848.y, x_1848.z)));
  let x_1852 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
  let x_1854 : vec3<f32> = u_xlat27;
  let x_1855 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(x_1854, vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1858, 0.0f, 1.0f);
  let x_1860 : f32 = u_xlat54;
  u_xlat54 = (-(x_1860) + 1.0f);
  let x_1863 : f32 = u_xlat54;
  let x_1864 : f32 = u_xlat54;
  u_xlat54 = (x_1863 * x_1864);
  let x_1866 : f32 = u_xlat54;
  let x_1867 : f32 = u_xlat54;
  u_xlat54 = (x_1866 * x_1867);
  let x_1869 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1869) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1875 : f32 = u_xlat1;
  let x_1876 : f32 = u_xlat83;
  u_xlat1 = (x_1875 * x_1876);
  let x_1878 : f32 = u_xlat1;
  u_xlat1 = (x_1878 * 6.0f);
  let x_1889 : vec4<f32> = u_xlat7;
  let x_1891 : f32 = u_xlat1;
  let x_1892 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1889.x, x_1889.y, x_1889.z), x_1891);
  u_xlat7 = x_1892;
  let x_1894 : f32 = u_xlat7.w;
  u_xlat1 = (x_1894 + -1.0f);
  let x_1901 : f32 = x_1899.unity_SpecCube0_HDR.w;
  let x_1902 : f32 = u_xlat1;
  u_xlat1 = ((x_1901 * x_1902) + 1.0f);
  let x_1905 : f32 = u_xlat1;
  u_xlat1 = max(x_1905, 0.0f);
  let x_1907 : f32 = u_xlat1;
  u_xlat1 = log2(x_1907);
  let x_1909 : f32 = u_xlat1;
  let x_1911 : f32 = x_1899.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1909 * x_1911);
  let x_1913 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1913);
  let x_1915 : f32 = u_xlat1;
  let x_1917 : f32 = x_1899.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1915 * x_1917);
  let x_1919 : vec4<f32> = u_xlat7;
  let x_1921 : f32 = u_xlat1;
  let x_1923 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.y, x_1919.z) * vec3<f32>(x_1921, x_1921, x_1921));
  let x_1924 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : f32 = u_xlat80;
  let x_1928 : f32 = u_xlat80;
  let x_1932 : vec2<f32> = ((vec2<f32>(x_1926, x_1926) * vec2<f32>(x_1928, x_1928)) + vec2<f32>(-1.0f, 1.0f));
  let x_1933 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
  let x_1936 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1936);
  let x_1939 : vec4<f32> = u_xlat0;
  let x_1942 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1939.x, x_1939.y, x_1939.z)) + vec3<f32>(x_1942, x_1942, x_1942));
  let x_1945 : f32 = u_xlat54;
  let x_1947 : vec3<f32> = u_xlat34;
  let x_1949 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1945, x_1945, x_1945) * x_1947) + vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
  let x_1952 : f32 = u_xlat1;
  let x_1954 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1952, x_1952, x_1952) * x_1954);
  let x_1956 : vec4<f32> = u_xlat7;
  let x_1958 : vec3<f32> = u_xlat34;
  let x_1959 : vec3<f32> = (vec3<f32>(x_1956.x, x_1956.y, x_1956.z) * x_1958);
  let x_1960 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
  let x_1962 : vec4<f32> = u_xlat3;
  let x_1964 : vec3<f32> = u_xlat4;
  let x_1966 : vec4<f32> = u_xlat7;
  let x_1968 : vec3<f32> = ((vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * x_1964) + vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
  let x_1969 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
  let x_1972 : f32 = u_xlat2.x;
  let x_1974 : f32 = x_1899.unity_LightData.z;
  u_xlat78 = (x_1972 * x_1974);
  let x_1976 : vec3<f32> = u_xlat27;
  let x_1978 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1976, vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1981, 0.0f, 1.0f);
  let x_1983 : f32 = u_xlat78;
  let x_1984 : f32 = u_xlat1;
  u_xlat78 = (x_1983 * x_1984);
  let x_1986 : f32 = u_xlat78;
  let x_1988 : vec4<f32> = u_xlat5;
  let x_1990 : vec3<f32> = (vec3<f32>(x_1986, x_1986, x_1986) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1990.x, x_1991.y, x_1990.y, x_1990.z);
  let x_1993 : vec4<f32> = u_xlat6;
  let x_1996 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1993.x, x_1993.y, x_1993.z) + vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_1999 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat5;
  let x_2003 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : f32 = u_xlat78;
  u_xlat78 = max(x_2006, 1.17549435e-38f);
  let x_2009 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2009);
  let x_2011 : f32 = u_xlat78;
  let x_2013 : vec4<f32> = u_xlat5;
  let x_2015 : vec3<f32> = (vec3<f32>(x_2011, x_2011, x_2011) * vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
  let x_2016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : vec3<f32> = u_xlat27;
  let x_2019 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_2018, vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
  let x_2022 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2022, 0.0f, 1.0f);
  let x_2025 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2027 : vec4<f32> = u_xlat5;
  u_xlat1 = dot(vec3<f32>(x_2025.x, x_2025.y, x_2025.z), vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2030, 0.0f, 1.0f);
  let x_2032 : f32 = u_xlat78;
  let x_2033 : f32 = u_xlat78;
  u_xlat78 = (x_2032 * x_2033);
  let x_2035 : f32 = u_xlat78;
  let x_2037 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2035 * x_2037) + 1.00001001358032226562f);
  let x_2041 : f32 = u_xlat1;
  let x_2042 : f32 = u_xlat1;
  u_xlat1 = (x_2041 * x_2042);
  let x_2044 : f32 = u_xlat78;
  let x_2045 : f32 = u_xlat78;
  u_xlat78 = (x_2044 * x_2045);
  let x_2047 : f32 = u_xlat1;
  u_xlat1 = max(x_2047, 0.10000000149011611938f);
  let x_2050 : f32 = u_xlat78;
  let x_2051 : f32 = u_xlat1;
  u_xlat78 = (x_2050 * x_2051);
  let x_2053 : f32 = u_xlat81;
  let x_2054 : f32 = u_xlat78;
  u_xlat78 = (x_2053 * x_2054);
  let x_2056 : f32 = u_xlat82;
  let x_2057 : f32 = u_xlat78;
  u_xlat78 = (x_2056 / x_2057);
  let x_2059 : vec4<f32> = u_xlat0;
  let x_2061 : f32 = u_xlat78;
  let x_2064 : vec3<f32> = u_xlat4;
  let x_2065 : vec3<f32> = ((vec3<f32>(x_2059.x, x_2059.y, x_2059.z) * vec3<f32>(x_2061, x_2061, x_2061)) + x_2064);
  let x_2066 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
  let x_2069 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2071 : f32 = x_1899.unity_LightData.y;
  u_xlat78 = min(x_2069, x_2071);
  let x_2074 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2074));
  let x_2078 : f32 = u_xlat28.x;
  let x_2081 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_2084 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2078 * x_2081) + x_2084);
  let x_2086 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2086, 0.0f, 1.0f);
  let x_2090 : f32 = x_1706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2092 : f32 = x_1706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2094 : f32 = x_1706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2096 : f32 = x_1706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2097 : vec4<f32> = vec4<f32>(x_2090, x_2092, x_2094, x_2096);
  let x_2103 : vec4<bool> = (vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2097.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2103.x, x_2103.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2115 : u32 = u_xlatu_loop_1;
    let x_2116 : u32 = u_xlatu78;
    if ((x_2115 < x_2116)) {
    } else {
      break;
    }
    let x_2119 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2119 >> 2u);
    let x_2122 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2122 & 3u));
    let x_2125 : u32 = u_xlatu83;
    let x_2128 : vec4<f32> = x_1899.unity_LightIndices[bitcast<i32>(x_2125)];
    let x_2138 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2143 : vec4<u32> = indexable[x_2138];
    u_xlat83 = dot(x_2128, bitcast<vec4<f32>>(x_2143));
    let x_2147 : f32 = u_xlat83;
    u_xlati83 = i32(x_2147);
    let x_2149 : vec3<f32> = vs_TEXCOORD7;
    let x_2160 : i32 = u_xlati83;
    let x_2162 : vec4<f32> = x_2159.x_AdditionalLightsPosition[x_2160];
    let x_2165 : i32 = u_xlati83;
    let x_2167 : vec4<f32> = x_2159.x_AdditionalLightsPosition[x_2165];
    let x_2169 : vec3<f32> = ((-(x_2149) * vec3<f32>(x_2162.w, x_2162.w, x_2162.w)) + vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
    let x_2170 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
    let x_2173 : vec4<f32> = u_xlat9;
    let x_2175 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2173.x, x_2173.y, x_2173.z), vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
    let x_2178 : f32 = u_xlat84;
    u_xlat84 = max(x_2178, 0.00006103515625f);
    let x_2182 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2182);
    let x_2184 : f32 = u_xlat59;
    let x_2186 : vec4<f32> = u_xlat9;
    let x_2188 : vec3<f32> = (vec3<f32>(x_2184, x_2184, x_2184) * vec3<f32>(x_2186.x, x_2186.y, x_2186.z));
    let x_2189 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
    let x_2192 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2192);
    let x_2194 : f32 = u_xlat84;
    let x_2195 : i32 = u_xlati83;
    let x_2197 : f32 = x_2159.x_AdditionalLightsAttenuation[x_2195].x;
    u_xlat84 = (x_2194 * x_2197);
    let x_2199 : f32 = u_xlat84;
    let x_2201 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2199) * x_2201) + 1.0f);
    let x_2204 : f32 = u_xlat84;
    u_xlat84 = max(x_2204, 0.0f);
    let x_2206 : f32 = u_xlat84;
    let x_2207 : f32 = u_xlat84;
    u_xlat84 = (x_2206 * x_2207);
    let x_2209 : f32 = u_xlat84;
    let x_2210 : f32 = u_xlat85;
    u_xlat84 = (x_2209 * x_2210);
    let x_2212 : i32 = u_xlati83;
    let x_2214 : vec4<f32> = x_2159.x_AdditionalLightsSpotDir[x_2212];
    let x_2216 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2214.x, x_2214.y, x_2214.z), vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : f32 = u_xlat85;
    let x_2220 : i32 = u_xlati83;
    let x_2222 : f32 = x_2159.x_AdditionalLightsAttenuation[x_2220].z;
    let x_2224 : i32 = u_xlati83;
    let x_2226 : f32 = x_2159.x_AdditionalLightsAttenuation[x_2224].w;
    u_xlat85 = ((x_2219 * x_2222) + x_2226);
    let x_2228 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2228, 0.0f, 1.0f);
    let x_2230 : f32 = u_xlat85;
    let x_2231 : f32 = u_xlat85;
    u_xlat85 = (x_2230 * x_2231);
    let x_2233 : f32 = u_xlat84;
    let x_2234 : f32 = u_xlat85;
    u_xlat84 = (x_2233 * x_2234);
    let x_2238 : i32 = u_xlati83;
    let x_2240 : f32 = x_80.x_AdditionalShadowParams[x_2238].w;
    u_xlati85 = i32(x_2240);
    let x_2243 : i32 = u_xlati85;
    u_xlatb87 = (x_2243 >= 0i);
    let x_2245 : bool = u_xlatb87;
    if (x_2245) {
      let x_2249 : i32 = u_xlati83;
      let x_2251 : f32 = x_80.x_AdditionalShadowParams[x_2249].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2251, x_2251, x_2251, x_2251))));
      let x_2255 : bool = u_xlatb87;
      if (x_2255) {
        let x_2259 : vec4<f32> = u_xlat10;
        let x_2262 : vec4<f32> = u_xlat10;
        let x_2265 : vec4<bool> = (abs(vec4<f32>(x_2259.z, x_2259.z, x_2259.y, x_2259.z)) >= abs(vec4<f32>(x_2262.x, x_2262.y, x_2262.x, x_2262.x)));
        let x_2267 : vec3<bool> = vec3<bool>(x_2265.x, x_2265.y, x_2265.z);
        let x_2268 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
        let x_2271 : bool = u_xlatb11.y;
        let x_2273 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2271 & x_2273);
        let x_2275 : vec4<f32> = u_xlat10;
        let x_2278 : vec4<bool> = (-(vec4<f32>(x_2275.z, x_2275.y, x_2275.z, x_2275.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2279 : vec3<bool> = vec3<bool>(x_2278.x, x_2278.y, x_2278.w);
        let x_2280 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2279.x, x_2279.y, x_2280.z, x_2279.z);
        let x_2283 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2283);
        let x_2288 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2288);
        let x_2293 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2293);
        let x_2296 : bool = u_xlatb11.z;
        if (x_2296) {
          let x_2301 : f32 = u_xlat11.y;
          x_2297 = x_2301;
        } else {
          let x_2303 : f32 = u_xlat88;
          x_2297 = x_2303;
        }
        let x_2304 : f32 = x_2297;
        u_xlat88 = x_2304;
        let x_2306 : bool = u_xlatb87;
        if (x_2306) {
          let x_2311 : f32 = u_xlat11.x;
          x_2307 = x_2311;
        } else {
          let x_2313 : f32 = u_xlat88;
          x_2307 = x_2313;
        }
        let x_2314 : f32 = x_2307;
        u_xlat87 = x_2314;
        let x_2315 : i32 = u_xlati83;
        let x_2317 : f32 = x_80.x_AdditionalShadowParams[x_2315].w;
        u_xlat88 = trunc(x_2317);
        let x_2319 : f32 = u_xlat87;
        let x_2320 : f32 = u_xlat88;
        u_xlat87 = (x_2319 + x_2320);
        let x_2322 : f32 = u_xlat87;
        u_xlati85 = i32(x_2322);
      }
      let x_2324 : i32 = u_xlati85;
      u_xlati85 = (x_2324 << bitcast<u32>(2i));
      let x_2326 : vec3<f32> = vs_TEXCOORD7;
      let x_2329 : i32 = u_xlati85;
      let x_2332 : i32 = u_xlati85;
      let x_2336 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2329 + 1i) / 4i)][((x_2332 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2326.y, x_2326.y, x_2326.y, x_2326.y) * x_2336);
      let x_2338 : i32 = u_xlati85;
      let x_2340 : i32 = u_xlati85;
      let x_2343 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_2338 / 4i)][(x_2340 % 4i)];
      let x_2344 : vec3<f32> = vs_TEXCOORD7;
      let x_2347 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2343 * vec4<f32>(x_2344.x, x_2344.x, x_2344.x, x_2344.x)) + x_2347);
      let x_2349 : i32 = u_xlati85;
      let x_2352 : i32 = u_xlati85;
      let x_2356 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2349 + 2i) / 4i)][((x_2352 + 2i) % 4i)];
      let x_2357 : vec3<f32> = vs_TEXCOORD7;
      let x_2360 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2356 * vec4<f32>(x_2357.z, x_2357.z, x_2357.z, x_2357.z)) + x_2360);
      let x_2362 : vec4<f32> = u_xlat11;
      let x_2363 : i32 = u_xlati85;
      let x_2366 : i32 = u_xlati85;
      let x_2370 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2363 + 3i) / 4i)][((x_2366 + 3i) % 4i)];
      u_xlat11 = (x_2362 + x_2370);
      let x_2372 : vec4<f32> = u_xlat11;
      let x_2374 : vec4<f32> = u_xlat11;
      let x_2376 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) / vec3<f32>(x_2374.w, x_2374.w, x_2374.w));
      let x_2377 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
      let x_2380 : i32 = u_xlati83;
      let x_2382 : f32 = x_80.x_AdditionalShadowParams[x_2380].y;
      u_xlatb85 = (0.0f < x_2382);
      let x_2384 : bool = u_xlatb85;
      if (x_2384) {
        let x_2387 : i32 = u_xlati83;
        let x_2389 : f32 = x_80.x_AdditionalShadowParams[x_2387].y;
        u_xlatb85 = (1.0f == x_2389);
        let x_2391 : bool = u_xlatb85;
        if (x_2391) {
          let x_2394 : vec4<f32> = u_xlat11;
          let x_2398 : vec4<f32> = x_80.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2394.x, x_2394.y, x_2394.x, x_2394.y) + x_2398);
          let x_2401 : vec4<f32> = u_xlat12;
          let x_2402 : vec2<f32> = vec2<f32>(x_2401.x, x_2401.y);
          let x_2404 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
          let x_2412 : vec3<f32> = txVec30;
          let x_2414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
          u_xlat13.x = x_2414;
          let x_2417 : vec4<f32> = u_xlat12;
          let x_2418 : vec2<f32> = vec2<f32>(x_2417.z, x_2417.w);
          let x_2420 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
          let x_2427 : vec3<f32> = txVec31;
          let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
          u_xlat13.y = x_2429;
          let x_2431 : vec4<f32> = u_xlat11;
          let x_2435 : vec4<f32> = x_80.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2431.x, x_2431.y, x_2431.x, x_2431.y) + x_2435);
          let x_2438 : vec4<f32> = u_xlat12;
          let x_2439 : vec2<f32> = vec2<f32>(x_2438.x, x_2438.y);
          let x_2441 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2439.x, x_2439.y, x_2441);
          let x_2448 : vec3<f32> = txVec32;
          let x_2450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2448.xy, x_2448.z);
          u_xlat13.z = x_2450;
          let x_2453 : vec4<f32> = u_xlat12;
          let x_2454 : vec2<f32> = vec2<f32>(x_2453.z, x_2453.w);
          let x_2456 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2454.x, x_2454.y, x_2456);
          let x_2463 : vec3<f32> = txVec33;
          let x_2465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2463.xy, x_2463.z);
          u_xlat13.w = x_2465;
          let x_2467 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2467, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2470 : i32 = u_xlati83;
          let x_2472 : f32 = x_80.x_AdditionalShadowParams[x_2470].y;
          u_xlatb87 = (2.0f == x_2472);
          let x_2474 : bool = u_xlatb87;
          if (x_2474) {
            let x_2477 : vec4<f32> = u_xlat11;
            let x_2481 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2484 : vec2<f32> = ((vec2<f32>(x_2477.x, x_2477.y) * vec2<f32>(x_2481.z, x_2481.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2485 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
            let x_2487 : vec4<f32> = u_xlat12;
            let x_2489 : vec2<f32> = floor(vec2<f32>(x_2487.x, x_2487.y));
            let x_2490 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2492 : vec4<f32> = u_xlat11;
            let x_2495 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2498 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2492.x, x_2492.y) * vec2<f32>(x_2495.z, x_2495.w)) + -(vec2<f32>(x_2498.x, x_2498.y)));
            let x_2502 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2502.x, x_2502.x, x_2502.y, x_2502.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2505 : vec4<f32> = u_xlat13;
            let x_2507 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2505.x, x_2505.x, x_2505.z, x_2505.z) * vec4<f32>(x_2507.x, x_2507.x, x_2507.z, x_2507.z));
            let x_2510 : vec4<f32> = u_xlat14;
            let x_2512 : vec2<f32> = (vec2<f32>(x_2510.y, x_2510.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2513 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2512.x, x_2513.y, x_2512.y, x_2513.w);
            let x_2515 : vec4<f32> = u_xlat14;
            let x_2518 : vec2<f32> = u_xlat64;
            let x_2520 : vec2<f32> = ((vec2<f32>(x_2515.x, x_2515.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2518));
            let x_2521 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2520.x, x_2520.y, x_2521.z, x_2521.w);
            let x_2524 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2524) + vec2<f32>(1.0f, 1.0f));
            let x_2527 : vec2<f32> = u_xlat64;
            let x_2528 : vec2<f32> = min(x_2527, vec2<f32>(0.0f, 0.0f));
            let x_2529 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat15;
            let x_2534 : vec4<f32> = u_xlat15;
            let x_2537 : vec2<f32> = u_xlat66;
            let x_2538 : vec2<f32> = ((-(vec2<f32>(x_2531.x, x_2531.y)) * vec2<f32>(x_2534.x, x_2534.y)) + x_2537);
            let x_2539 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2538.x, x_2538.y, x_2539.z, x_2539.w);
            let x_2541 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2541, vec2<f32>(0.0f, 0.0f));
            let x_2543 : vec2<f32> = u_xlat64;
            let x_2545 : vec2<f32> = u_xlat64;
            let x_2547 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2543) * x_2545) + vec2<f32>(x_2547.y, x_2547.w));
            let x_2550 : vec4<f32> = u_xlat15;
            let x_2552 : vec2<f32> = (vec2<f32>(x_2550.x, x_2550.y) + vec2<f32>(1.0f, 1.0f));
            let x_2553 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
            let x_2555 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2555 + vec2<f32>(1.0f, 1.0f));
            let x_2557 : vec4<f32> = u_xlat14;
            let x_2559 : vec2<f32> = (vec2<f32>(x_2557.x, x_2557.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2560 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
            let x_2562 : vec2<f32> = u_xlat66;
            let x_2563 : vec2<f32> = (x_2562 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2564 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2563.x, x_2563.y, x_2564.z, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat15;
            let x_2568 : vec2<f32> = (vec2<f32>(x_2566.x, x_2566.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2569 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2568.x, x_2568.y, x_2569.z, x_2569.w);
            let x_2571 : vec2<f32> = u_xlat64;
            let x_2572 : vec2<f32> = (x_2571 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2573 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2572.x, x_2572.y, x_2573.z, x_2573.w);
            let x_2575 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2575.y, x_2575.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2579 : f32 = u_xlat15.x;
            u_xlat16.z = x_2579;
            let x_2582 : f32 = u_xlat64.x;
            u_xlat16.w = x_2582;
            let x_2585 : f32 = u_xlat17.x;
            u_xlat14.z = x_2585;
            let x_2588 : f32 = u_xlat13.x;
            u_xlat14.w = x_2588;
            let x_2590 : vec4<f32> = u_xlat14;
            let x_2592 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2590.z, x_2590.w, x_2590.x, x_2590.z) + vec4<f32>(x_2592.z, x_2592.w, x_2592.x, x_2592.z));
            let x_2596 : f32 = u_xlat16.y;
            u_xlat15.z = x_2596;
            let x_2599 : f32 = u_xlat64.y;
            u_xlat15.w = x_2599;
            let x_2602 : f32 = u_xlat14.y;
            u_xlat17.z = x_2602;
            let x_2605 : f32 = u_xlat13.z;
            u_xlat17.w = x_2605;
            let x_2607 : vec4<f32> = u_xlat15;
            let x_2609 : vec4<f32> = u_xlat17;
            let x_2611 : vec3<f32> = (vec3<f32>(x_2607.z, x_2607.y, x_2607.w) + vec3<f32>(x_2609.z, x_2609.y, x_2609.w));
            let x_2612 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
            let x_2614 : vec4<f32> = u_xlat14;
            let x_2616 : vec4<f32> = u_xlat18;
            let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.z, x_2614.w) / vec3<f32>(x_2616.z, x_2616.w, x_2616.y));
            let x_2619 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat14;
            let x_2623 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.y, x_2621.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2624 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
            let x_2626 : vec4<f32> = u_xlat17;
            let x_2628 : vec4<f32> = u_xlat13;
            let x_2630 : vec3<f32> = (vec3<f32>(x_2626.z, x_2626.y, x_2626.w) / vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
            let x_2631 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
            let x_2633 : vec4<f32> = u_xlat15;
            let x_2635 : vec3<f32> = (vec3<f32>(x_2633.x, x_2633.y, x_2633.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2636 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat14;
            let x_2641 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2643 : vec3<f32> = (vec3<f32>(x_2638.y, x_2638.x, x_2638.z) * vec3<f32>(x_2641.x, x_2641.x, x_2641.x));
            let x_2644 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
            let x_2646 : vec4<f32> = u_xlat15;
            let x_2649 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2651 : vec3<f32> = (vec3<f32>(x_2646.x, x_2646.y, x_2646.z) * vec3<f32>(x_2649.y, x_2649.y, x_2649.y));
            let x_2652 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
            let x_2655 : f32 = u_xlat15.x;
            u_xlat14.w = x_2655;
            let x_2657 : vec4<f32> = u_xlat12;
            let x_2660 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2663 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2657.x, x_2657.y, x_2657.x, x_2657.y) * vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y)) + vec4<f32>(x_2663.y, x_2663.w, x_2663.x, x_2663.w));
            let x_2666 : vec4<f32> = u_xlat12;
            let x_2669 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2672 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2666.x, x_2666.y) * vec2<f32>(x_2669.x, x_2669.y)) + vec2<f32>(x_2672.z, x_2672.w));
            let x_2676 : f32 = u_xlat14.y;
            u_xlat15.w = x_2676;
            let x_2678 : vec4<f32> = u_xlat15;
            let x_2679 : vec2<f32> = vec2<f32>(x_2678.y, x_2678.z);
            let x_2680 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2680.x, x_2679.x, x_2680.z, x_2679.y);
            let x_2682 : vec4<f32> = u_xlat12;
            let x_2685 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2688 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2682.x, x_2682.y, x_2682.x, x_2682.y) * vec4<f32>(x_2685.x, x_2685.y, x_2685.x, x_2685.y)) + vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2688.y));
            let x_2691 : vec4<f32> = u_xlat12;
            let x_2694 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2697 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2691.x, x_2691.y, x_2691.x, x_2691.y) * vec4<f32>(x_2694.x, x_2694.y, x_2694.x, x_2694.y)) + vec4<f32>(x_2697.w, x_2697.y, x_2697.w, x_2697.z));
            let x_2700 : vec4<f32> = u_xlat12;
            let x_2703 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2706 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) * vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y)) + vec4<f32>(x_2706.x, x_2706.w, x_2706.z, x_2706.w));
            let x_2709 : vec4<f32> = u_xlat13;
            let x_2711 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2709.x, x_2709.x, x_2709.x, x_2709.y) * vec4<f32>(x_2711.z, x_2711.w, x_2711.y, x_2711.z));
            let x_2715 : vec4<f32> = u_xlat13;
            let x_2717 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2715.y, x_2715.y, x_2715.z, x_2715.z) * x_2717);
            let x_2720 : f32 = u_xlat13.z;
            let x_2722 : f32 = u_xlat18.y;
            u_xlat87 = (x_2720 * x_2722);
            let x_2725 : vec4<f32> = u_xlat16;
            let x_2726 : vec2<f32> = vec2<f32>(x_2725.x, x_2725.y);
            let x_2728 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2726.x, x_2726.y, x_2728);
            let x_2735 : vec3<f32> = txVec34;
            let x_2737 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2735.xy, x_2735.z);
            u_xlat88 = x_2737;
            let x_2739 : vec4<f32> = u_xlat16;
            let x_2740 : vec2<f32> = vec2<f32>(x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
            let x_2750 : vec3<f32> = txVec35;
            let x_2752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
            u_xlat89 = x_2752;
            let x_2753 : f32 = u_xlat89;
            let x_2755 : f32 = u_xlat19.y;
            u_xlat89 = (x_2753 * x_2755);
            let x_2758 : f32 = u_xlat19.x;
            let x_2759 : f32 = u_xlat88;
            let x_2761 : f32 = u_xlat89;
            u_xlat88 = ((x_2758 * x_2759) + x_2761);
            let x_2764 : vec2<f32> = u_xlat64;
            let x_2766 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
            let x_2773 : vec3<f32> = txVec36;
            let x_2775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
            u_xlat89 = x_2775;
            let x_2777 : f32 = u_xlat19.z;
            let x_2778 : f32 = u_xlat89;
            let x_2780 : f32 = u_xlat88;
            u_xlat88 = ((x_2777 * x_2778) + x_2780);
            let x_2783 : vec4<f32> = u_xlat15;
            let x_2784 : vec2<f32> = vec2<f32>(x_2783.x, x_2783.y);
            let x_2786 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
            let x_2793 : vec3<f32> = txVec37;
            let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
            u_xlat89 = x_2795;
            let x_2797 : f32 = u_xlat19.w;
            let x_2798 : f32 = u_xlat89;
            let x_2800 : f32 = u_xlat88;
            u_xlat88 = ((x_2797 * x_2798) + x_2800);
            let x_2803 : vec4<f32> = u_xlat17;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.x, x_2803.y);
            let x_2806 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec38;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat89 = x_2815;
            let x_2817 : f32 = u_xlat20.x;
            let x_2818 : f32 = u_xlat89;
            let x_2820 : f32 = u_xlat88;
            u_xlat88 = ((x_2817 * x_2818) + x_2820);
            let x_2823 : vec4<f32> = u_xlat17;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.z, x_2823.w);
            let x_2826 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec39;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat89 = x_2835;
            let x_2837 : f32 = u_xlat20.y;
            let x_2838 : f32 = u_xlat89;
            let x_2840 : f32 = u_xlat88;
            u_xlat88 = ((x_2837 * x_2838) + x_2840);
            let x_2843 : vec4<f32> = u_xlat15;
            let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
            let x_2846 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
            let x_2853 : vec3<f32> = txVec40;
            let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
            u_xlat89 = x_2855;
            let x_2857 : f32 = u_xlat20.z;
            let x_2858 : f32 = u_xlat89;
            let x_2860 : f32 = u_xlat88;
            u_xlat88 = ((x_2857 * x_2858) + x_2860);
            let x_2863 : vec4<f32> = u_xlat14;
            let x_2864 : vec2<f32> = vec2<f32>(x_2863.x, x_2863.y);
            let x_2866 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2864.x, x_2864.y, x_2866);
            let x_2873 : vec3<f32> = txVec41;
            let x_2875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
            u_xlat89 = x_2875;
            let x_2877 : f32 = u_xlat20.w;
            let x_2878 : f32 = u_xlat89;
            let x_2880 : f32 = u_xlat88;
            u_xlat88 = ((x_2877 * x_2878) + x_2880);
            let x_2883 : vec4<f32> = u_xlat14;
            let x_2884 : vec2<f32> = vec2<f32>(x_2883.z, x_2883.w);
            let x_2886 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec42;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat89 = x_2895;
            let x_2896 : f32 = u_xlat87;
            let x_2897 : f32 = u_xlat89;
            let x_2899 : f32 = u_xlat88;
            u_xlat85 = ((x_2896 * x_2897) + x_2899);
          } else {
            let x_2902 : vec4<f32> = u_xlat11;
            let x_2905 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2908 : vec2<f32> = ((vec2<f32>(x_2902.x, x_2902.y) * vec2<f32>(x_2905.z, x_2905.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2909 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat12;
            let x_2913 : vec2<f32> = floor(vec2<f32>(x_2911.x, x_2911.y));
            let x_2914 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2916 : vec4<f32> = u_xlat11;
            let x_2919 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2922 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2916.x, x_2916.y) * vec2<f32>(x_2919.z, x_2919.w)) + -(vec2<f32>(x_2922.x, x_2922.y)));
            let x_2926 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2926.x, x_2926.x, x_2926.y, x_2926.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2929 : vec4<f32> = u_xlat13;
            let x_2931 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2929.x, x_2929.x, x_2929.z, x_2929.z) * vec4<f32>(x_2931.x, x_2931.x, x_2931.z, x_2931.z));
            let x_2934 : vec4<f32> = u_xlat14;
            let x_2936 : vec2<f32> = (vec2<f32>(x_2934.y, x_2934.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2937 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2937.x, x_2936.x, x_2937.z, x_2936.y);
            let x_2939 : vec4<f32> = u_xlat14;
            let x_2942 : vec2<f32> = u_xlat64;
            let x_2944 : vec2<f32> = ((vec2<f32>(x_2939.x, x_2939.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2942));
            let x_2945 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2944.x, x_2945.y, x_2944.y, x_2945.w);
            let x_2947 : vec2<f32> = u_xlat64;
            let x_2949 : vec2<f32> = (-(x_2947) + vec2<f32>(1.0f, 1.0f));
            let x_2950 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
            let x_2952 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2952, vec2<f32>(0.0f, 0.0f));
            let x_2954 : vec2<f32> = u_xlat66;
            let x_2956 : vec2<f32> = u_xlat66;
            let x_2958 : vec4<f32> = u_xlat14;
            let x_2960 : vec2<f32> = ((-(x_2954) * x_2956) + vec2<f32>(x_2958.x, x_2958.y));
            let x_2961 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2960.x, x_2960.y, x_2961.z, x_2961.w);
            let x_2963 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2963, vec2<f32>(0.0f, 0.0f));
            let x_2966 : vec2<f32> = u_xlat66;
            let x_2968 : vec2<f32> = u_xlat66;
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2972 : vec2<f32> = ((-(x_2966) * x_2968) + vec2<f32>(x_2970.y, x_2970.w));
            let x_2973 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2972.x, x_2973.y, x_2972.y);
            let x_2975 : vec4<f32> = u_xlat14;
            let x_2978 : vec2<f32> = (vec2<f32>(x_2975.x, x_2975.y) + vec2<f32>(2.0f, 2.0f));
            let x_2979 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
            let x_2981 : vec3<f32> = u_xlat39;
            let x_2983 : vec2<f32> = (vec2<f32>(x_2981.x, x_2981.z) + vec2<f32>(2.0f, 2.0f));
            let x_2984 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2984.x, x_2983.x, x_2984.z, x_2983.y);
            let x_2987 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2987 * 0.08163200318813323975f);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2993 : vec3<f32> = (vec3<f32>(x_2990.z, x_2990.x, x_2990.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2994 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
            let x_2996 : vec4<f32> = u_xlat14;
            let x_2998 : vec2<f32> = (vec2<f32>(x_2996.x, x_2996.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2999 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2998.x, x_2998.y, x_2999.z, x_2999.w);
            let x_3002 : f32 = u_xlat17.y;
            u_xlat16.x = x_3002;
            let x_3004 : vec2<f32> = u_xlat64;
            let x_3007 : vec2<f32> = ((vec2<f32>(x_3004.x, x_3004.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3008 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3008.x, x_3007.x, x_3008.z, x_3007.y);
            let x_3010 : vec2<f32> = u_xlat64;
            let x_3013 : vec2<f32> = ((vec2<f32>(x_3010.x, x_3010.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3014 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3013.x, x_3014.y, x_3013.y, x_3014.w);
            let x_3017 : f32 = u_xlat13.x;
            u_xlat14.y = x_3017;
            let x_3020 : f32 = u_xlat15.y;
            u_xlat14.w = x_3020;
            let x_3022 : vec4<f32> = u_xlat14;
            let x_3023 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3022 + x_3023);
            let x_3025 : vec2<f32> = u_xlat64;
            let x_3028 : vec2<f32> = ((vec2<f32>(x_3025.y, x_3025.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3029 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3029.x, x_3028.x, x_3029.z, x_3028.y);
            let x_3031 : vec2<f32> = u_xlat64;
            let x_3034 : vec2<f32> = ((vec2<f32>(x_3031.y, x_3031.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3035 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3034.x, x_3035.y, x_3034.y, x_3035.w);
            let x_3038 : f32 = u_xlat13.y;
            u_xlat15.y = x_3038;
            let x_3040 : vec4<f32> = u_xlat15;
            let x_3041 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3040 + x_3041);
            let x_3043 : vec4<f32> = u_xlat14;
            let x_3044 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3043 / x_3044);
            let x_3046 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3046 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3048 : vec4<f32> = u_xlat15;
            let x_3049 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3048 / x_3049);
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3051 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3053 : vec4<f32> = u_xlat14;
            let x_3056 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3053.w, x_3053.x, x_3053.y, x_3053.z) * vec4<f32>(x_3056.x, x_3056.x, x_3056.x, x_3056.x));
            let x_3059 : vec4<f32> = u_xlat15;
            let x_3062 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3059.x, x_3059.w, x_3059.y, x_3059.z) * vec4<f32>(x_3062.y, x_3062.y, x_3062.y, x_3062.y));
            let x_3065 : vec4<f32> = u_xlat14;
            let x_3066 : vec3<f32> = vec3<f32>(x_3065.y, x_3065.z, x_3065.w);
            let x_3067 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3066.x, x_3067.y, x_3066.y, x_3066.z);
            let x_3070 : f32 = u_xlat15.x;
            u_xlat17.y = x_3070;
            let x_3072 : vec4<f32> = u_xlat12;
            let x_3075 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y) * vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y)) + vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3078.y));
            let x_3081 : vec4<f32> = u_xlat12;
            let x_3084 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3087 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3081.x, x_3081.y) * vec2<f32>(x_3084.x, x_3084.y)) + vec2<f32>(x_3087.w, x_3087.y));
            let x_3091 : f32 = u_xlat17.y;
            u_xlat14.y = x_3091;
            let x_3094 : f32 = u_xlat15.z;
            u_xlat17.y = x_3094;
            let x_3096 : vec4<f32> = u_xlat12;
            let x_3099 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3102 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y) * vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y)) + vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3102.y));
            let x_3105 : vec4<f32> = u_xlat12;
            let x_3108 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3111 : vec4<f32> = u_xlat17;
            let x_3113 : vec2<f32> = ((vec2<f32>(x_3105.x, x_3105.y) * vec2<f32>(x_3108.x, x_3108.y)) + vec2<f32>(x_3111.w, x_3111.y));
            let x_3114 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3113.x, x_3113.y, x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat17.y;
            u_xlat14.z = x_3117;
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3123 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y) * vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.y)) + vec4<f32>(x_3126.x, x_3126.y, x_3126.x, x_3126.z));
            let x_3130 : f32 = u_xlat15.w;
            u_xlat17.y = x_3130;
            let x_3133 : vec4<f32> = u_xlat12;
            let x_3136 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3139 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y) * vec4<f32>(x_3136.x, x_3136.y, x_3136.x, x_3136.y)) + vec4<f32>(x_3139.x, x_3139.y, x_3139.z, x_3139.y));
            let x_3143 : vec4<f32> = u_xlat12;
            let x_3146 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3143.x, x_3143.y) * vec2<f32>(x_3146.x, x_3146.y)) + vec2<f32>(x_3149.w, x_3149.y));
            let x_3153 : f32 = u_xlat17.y;
            u_xlat14.w = x_3153;
            let x_3156 : vec4<f32> = u_xlat12;
            let x_3159 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3156.x, x_3156.y) * vec2<f32>(x_3159.x, x_3159.y)) + vec2<f32>(x_3162.x, x_3162.w));
            let x_3165 : vec4<f32> = u_xlat17;
            let x_3166 : vec3<f32> = vec3<f32>(x_3165.x, x_3165.z, x_3165.w);
            let x_3167 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3166.x, x_3167.y, x_3166.y, x_3166.z);
            let x_3169 : vec4<f32> = u_xlat12;
            let x_3172 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3175 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3169.x, x_3169.y, x_3169.x, x_3169.y) * vec4<f32>(x_3172.x, x_3172.y, x_3172.x, x_3172.y)) + vec4<f32>(x_3175.x, x_3175.y, x_3175.z, x_3175.y));
            let x_3179 : vec4<f32> = u_xlat12;
            let x_3182 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3185 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3179.x, x_3179.y) * vec2<f32>(x_3182.x, x_3182.y)) + vec2<f32>(x_3185.w, x_3185.y));
            let x_3189 : f32 = u_xlat14.x;
            u_xlat15.x = x_3189;
            let x_3191 : vec4<f32> = u_xlat12;
            let x_3194 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3197 : vec4<f32> = u_xlat15;
            let x_3199 : vec2<f32> = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3194.x, x_3194.y)) + vec2<f32>(x_3197.x, x_3197.y));
            let x_3200 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3199.x, x_3199.y, x_3200.z, x_3200.w);
            let x_3203 : vec4<f32> = u_xlat13;
            let x_3205 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3203.x, x_3203.x, x_3203.x, x_3203.x) * x_3205);
            let x_3208 : vec4<f32> = u_xlat13;
            let x_3210 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3208.y, x_3208.y, x_3208.y, x_3208.y) * x_3210);
            let x_3213 : vec4<f32> = u_xlat13;
            let x_3215 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3213.z, x_3213.z, x_3213.z, x_3213.z) * x_3215);
            let x_3217 : vec4<f32> = u_xlat13;
            let x_3219 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3217.w, x_3217.w, x_3217.w, x_3217.w) * x_3219);
            let x_3222 : vec4<f32> = u_xlat18;
            let x_3223 : vec2<f32> = vec2<f32>(x_3222.x, x_3222.y);
            let x_3225 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
            let x_3232 : vec3<f32> = txVec43;
            let x_3234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
            u_xlat87 = x_3234;
            let x_3236 : vec4<f32> = u_xlat18;
            let x_3237 : vec2<f32> = vec2<f32>(x_3236.z, x_3236.w);
            let x_3239 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3237.x, x_3237.y, x_3239);
            let x_3246 : vec3<f32> = txVec44;
            let x_3248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3246.xy, x_3246.z);
            u_xlat88 = x_3248;
            let x_3249 : f32 = u_xlat88;
            let x_3251 : f32 = u_xlat23.y;
            u_xlat88 = (x_3249 * x_3251);
            let x_3254 : f32 = u_xlat23.x;
            let x_3255 : f32 = u_xlat87;
            let x_3257 : f32 = u_xlat88;
            u_xlat87 = ((x_3254 * x_3255) + x_3257);
            let x_3260 : vec2<f32> = u_xlat64;
            let x_3262 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3260.x, x_3260.y, x_3262);
            let x_3269 : vec3<f32> = txVec45;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat88 = x_3271;
            let x_3273 : f32 = u_xlat23.z;
            let x_3274 : f32 = u_xlat88;
            let x_3276 : f32 = u_xlat87;
            u_xlat87 = ((x_3273 * x_3274) + x_3276);
            let x_3279 : vec4<f32> = u_xlat21;
            let x_3280 : vec2<f32> = vec2<f32>(x_3279.x, x_3279.y);
            let x_3282 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3289 : vec3<f32> = txVec46;
            let x_3291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3289.xy, x_3289.z);
            u_xlat88 = x_3291;
            let x_3293 : f32 = u_xlat23.w;
            let x_3294 : f32 = u_xlat88;
            let x_3296 : f32 = u_xlat87;
            u_xlat87 = ((x_3293 * x_3294) + x_3296);
            let x_3299 : vec4<f32> = u_xlat19;
            let x_3300 : vec2<f32> = vec2<f32>(x_3299.x, x_3299.y);
            let x_3302 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3300.x, x_3300.y, x_3302);
            let x_3309 : vec3<f32> = txVec47;
            let x_3311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3309.xy, x_3309.z);
            u_xlat88 = x_3311;
            let x_3313 : f32 = u_xlat24.x;
            let x_3314 : f32 = u_xlat88;
            let x_3316 : f32 = u_xlat87;
            u_xlat87 = ((x_3313 * x_3314) + x_3316);
            let x_3319 : vec4<f32> = u_xlat19;
            let x_3320 : vec2<f32> = vec2<f32>(x_3319.z, x_3319.w);
            let x_3322 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec48;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat88 = x_3331;
            let x_3333 : f32 = u_xlat24.y;
            let x_3334 : f32 = u_xlat88;
            let x_3336 : f32 = u_xlat87;
            u_xlat87 = ((x_3333 * x_3334) + x_3336);
            let x_3339 : vec4<f32> = u_xlat20;
            let x_3340 : vec2<f32> = vec2<f32>(x_3339.x, x_3339.y);
            let x_3342 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3340.x, x_3340.y, x_3342);
            let x_3349 : vec3<f32> = txVec49;
            let x_3351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3349.xy, x_3349.z);
            u_xlat88 = x_3351;
            let x_3353 : f32 = u_xlat24.z;
            let x_3354 : f32 = u_xlat88;
            let x_3356 : f32 = u_xlat87;
            u_xlat87 = ((x_3353 * x_3354) + x_3356);
            let x_3359 : vec4<f32> = u_xlat21;
            let x_3360 : vec2<f32> = vec2<f32>(x_3359.z, x_3359.w);
            let x_3362 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
            let x_3369 : vec3<f32> = txVec50;
            let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
            u_xlat88 = x_3371;
            let x_3373 : f32 = u_xlat24.w;
            let x_3374 : f32 = u_xlat88;
            let x_3376 : f32 = u_xlat87;
            u_xlat87 = ((x_3373 * x_3374) + x_3376);
            let x_3379 : vec4<f32> = u_xlat22;
            let x_3380 : vec2<f32> = vec2<f32>(x_3379.x, x_3379.y);
            let x_3382 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec51;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat88 = x_3391;
            let x_3393 : f32 = u_xlat25.x;
            let x_3394 : f32 = u_xlat88;
            let x_3396 : f32 = u_xlat87;
            u_xlat87 = ((x_3393 * x_3394) + x_3396);
            let x_3399 : vec4<f32> = u_xlat22;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.z, x_3399.w);
            let x_3402 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec52;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat88 = x_3411;
            let x_3413 : f32 = u_xlat25.y;
            let x_3414 : f32 = u_xlat88;
            let x_3416 : f32 = u_xlat87;
            u_xlat87 = ((x_3413 * x_3414) + x_3416);
            let x_3419 : vec2<f32> = u_xlat40;
            let x_3421 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3419.x, x_3419.y, x_3421);
            let x_3428 : vec3<f32> = txVec53;
            let x_3430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3428.xy, x_3428.z);
            u_xlat88 = x_3430;
            let x_3432 : f32 = u_xlat25.z;
            let x_3433 : f32 = u_xlat88;
            let x_3435 : f32 = u_xlat87;
            u_xlat87 = ((x_3432 * x_3433) + x_3435);
            let x_3438 : vec2<f32> = u_xlat72;
            let x_3440 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec54;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat88 = x_3449;
            let x_3451 : f32 = u_xlat25.w;
            let x_3452 : f32 = u_xlat88;
            let x_3454 : f32 = u_xlat87;
            u_xlat87 = ((x_3451 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat17;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.x, x_3457.y);
            let x_3460 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec55;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat88 = x_3469;
            let x_3471 : f32 = u_xlat13.x;
            let x_3472 : f32 = u_xlat88;
            let x_3474 : f32 = u_xlat87;
            u_xlat87 = ((x_3471 * x_3472) + x_3474);
            let x_3477 : vec4<f32> = u_xlat17;
            let x_3478 : vec2<f32> = vec2<f32>(x_3477.z, x_3477.w);
            let x_3480 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec56;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat88 = x_3489;
            let x_3491 : f32 = u_xlat13.y;
            let x_3492 : f32 = u_xlat88;
            let x_3494 : f32 = u_xlat87;
            u_xlat87 = ((x_3491 * x_3492) + x_3494);
            let x_3497 : vec2<f32> = u_xlat67;
            let x_3499 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3497.x, x_3497.y, x_3499);
            let x_3506 : vec3<f32> = txVec57;
            let x_3508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3506.xy, x_3506.z);
            u_xlat88 = x_3508;
            let x_3510 : f32 = u_xlat13.z;
            let x_3511 : f32 = u_xlat88;
            let x_3513 : f32 = u_xlat87;
            u_xlat87 = ((x_3510 * x_3511) + x_3513);
            let x_3516 : vec4<f32> = u_xlat12;
            let x_3517 : vec2<f32> = vec2<f32>(x_3516.x, x_3516.y);
            let x_3519 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec58;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat88 = x_3528;
            let x_3530 : f32 = u_xlat13.w;
            let x_3531 : f32 = u_xlat88;
            let x_3533 : f32 = u_xlat87;
            u_xlat85 = ((x_3530 * x_3531) + x_3533);
          }
        }
      } else {
        let x_3537 : vec4<f32> = u_xlat11;
        let x_3538 : vec2<f32> = vec2<f32>(x_3537.x, x_3537.y);
        let x_3540 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3538.x, x_3538.y, x_3540);
        let x_3547 : vec3<f32> = txVec59;
        let x_3549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3547.xy, x_3547.z);
        u_xlat85 = x_3549;
      }
      let x_3550 : i32 = u_xlati83;
      let x_3552 : f32 = x_80.x_AdditionalShadowParams[x_3550].x;
      u_xlat87 = (1.0f + -(x_3552));
      let x_3555 : f32 = u_xlat85;
      let x_3556 : i32 = u_xlati83;
      let x_3558 : f32 = x_80.x_AdditionalShadowParams[x_3556].x;
      let x_3560 : f32 = u_xlat87;
      u_xlat85 = ((x_3555 * x_3558) + x_3560);
      let x_3563 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3563);
      let x_3567 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3567 >= 1.0f);
      let x_3569 : bool = u_xlatb87;
      let x_3570 : bool = u_xlatb88;
      u_xlatb87 = (x_3569 | x_3570);
      let x_3572 : bool = u_xlatb87;
      let x_3573 : f32 = u_xlat85;
      u_xlat85 = select(x_3573, 1.0f, x_3572);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3576 : f32 = u_xlat85;
    u_xlat87 = (-(x_3576) + 1.0f);
    let x_3579 : f32 = u_xlat1;
    let x_3580 : f32 = u_xlat87;
    let x_3582 : f32 = u_xlat85;
    u_xlat85 = ((x_3579 * x_3580) + x_3582);
    let x_3585 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3585 & 31i)));
    let x_3589 : i32 = u_xlati87;
    let x_3592 : f32 = x_1706.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3589) & bitcast<u32>(x_3592)));
    let x_3596 : i32 = u_xlati87;
    if ((x_3596 != 0i)) {
      let x_3600 : i32 = u_xlati83;
      let x_3602 : f32 = x_1706.x_AdditionalLightsLightTypes[x_3600].el;
      u_xlati87 = i32(x_3602);
      let x_3605 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3605 != 0i));
      let x_3609 : i32 = u_xlati83;
      u_xlati11 = (x_3609 << bitcast<u32>(2i));
      let x_3611 : i32 = u_xlati88;
      if ((x_3611 != 0i)) {
        let x_3616 : vec3<f32> = vs_TEXCOORD7;
        let x_3618 : i32 = u_xlati11;
        let x_3621 : i32 = u_xlati11;
        let x_3625 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3618 + 1i) / 4i)][((x_3621 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3616.y, x_3616.y, x_3616.y) * vec3<f32>(x_3625.x, x_3625.y, x_3625.w));
        let x_3628 : i32 = u_xlati11;
        let x_3630 : i32 = u_xlati11;
        let x_3633 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[(x_3628 / 4i)][(x_3630 % 4i)];
        let x_3635 : vec3<f32> = vs_TEXCOORD7;
        let x_3638 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3633.x, x_3633.y, x_3633.w) * vec3<f32>(x_3635.x, x_3635.x, x_3635.x)) + x_3638);
        let x_3640 : i32 = u_xlati11;
        let x_3643 : i32 = u_xlati11;
        let x_3647 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3640 + 2i) / 4i)][((x_3643 + 2i) % 4i)];
        let x_3649 : vec3<f32> = vs_TEXCOORD7;
        let x_3652 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3647.x, x_3647.y, x_3647.w) * vec3<f32>(x_3649.z, x_3649.z, x_3649.z)) + x_3652);
        let x_3654 : vec3<f32> = u_xlat37;
        let x_3655 : i32 = u_xlati11;
        let x_3658 : i32 = u_xlati11;
        let x_3662 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3655 + 3i) / 4i)][((x_3658 + 3i) % 4i)];
        u_xlat37 = (x_3654 + vec3<f32>(x_3662.x, x_3662.y, x_3662.w));
        let x_3665 : vec3<f32> = u_xlat37;
        let x_3667 : vec3<f32> = u_xlat37;
        let x_3669 : vec2<f32> = (vec2<f32>(x_3665.x, x_3665.y) / vec2<f32>(x_3667.z, x_3667.z));
        let x_3670 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3669.x, x_3669.y, x_3670.z);
        let x_3672 : vec3<f32> = u_xlat37;
        let x_3675 : vec2<f32> = ((vec2<f32>(x_3672.x, x_3672.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3676 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3675.x, x_3675.y, x_3676.z);
        let x_3678 : vec3<f32> = u_xlat37;
        let x_3682 : vec2<f32> = clamp(vec2<f32>(x_3678.x, x_3678.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3683 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3682.x, x_3682.y, x_3683.z);
        let x_3685 : i32 = u_xlati83;
        let x_3687 : vec4<f32> = x_1706.x_AdditionalLightsCookieAtlasUVRects[x_3685];
        let x_3689 : vec3<f32> = u_xlat37;
        let x_3692 : i32 = u_xlati83;
        let x_3694 : vec4<f32> = x_1706.x_AdditionalLightsCookieAtlasUVRects[x_3692];
        let x_3696 : vec2<f32> = ((vec2<f32>(x_3687.x, x_3687.y) * vec2<f32>(x_3689.x, x_3689.y)) + vec2<f32>(x_3694.z, x_3694.w));
        let x_3697 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3696.x, x_3696.y, x_3697.z);
      } else {
        let x_3700 : i32 = u_xlati87;
        u_xlatb87 = (x_3700 == 1i);
        let x_3702 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3702);
        let x_3704 : i32 = u_xlati87;
        if ((x_3704 != 0i)) {
          let x_3708 : vec3<f32> = vs_TEXCOORD7;
          let x_3710 : i32 = u_xlati11;
          let x_3713 : i32 = u_xlati11;
          let x_3717 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3710 + 1i) / 4i)][((x_3713 + 1i) % 4i)];
          let x_3719 : vec2<f32> = (vec2<f32>(x_3708.y, x_3708.y) * vec2<f32>(x_3717.x, x_3717.y));
          let x_3720 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3719.x, x_3719.y, x_3720.z, x_3720.w);
          let x_3722 : i32 = u_xlati11;
          let x_3724 : i32 = u_xlati11;
          let x_3727 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[(x_3722 / 4i)][(x_3724 % 4i)];
          let x_3729 : vec3<f32> = vs_TEXCOORD7;
          let x_3732 : vec4<f32> = u_xlat12;
          let x_3734 : vec2<f32> = ((vec2<f32>(x_3727.x, x_3727.y) * vec2<f32>(x_3729.x, x_3729.x)) + vec2<f32>(x_3732.x, x_3732.y));
          let x_3735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3734.x, x_3734.y, x_3735.z, x_3735.w);
          let x_3737 : i32 = u_xlati11;
          let x_3740 : i32 = u_xlati11;
          let x_3744 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3737 + 2i) / 4i)][((x_3740 + 2i) % 4i)];
          let x_3746 : vec3<f32> = vs_TEXCOORD7;
          let x_3749 : vec4<f32> = u_xlat12;
          let x_3751 : vec2<f32> = ((vec2<f32>(x_3744.x, x_3744.y) * vec2<f32>(x_3746.z, x_3746.z)) + vec2<f32>(x_3749.x, x_3749.y));
          let x_3752 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3751.x, x_3751.y, x_3752.z, x_3752.w);
          let x_3754 : vec4<f32> = u_xlat12;
          let x_3756 : i32 = u_xlati11;
          let x_3759 : i32 = u_xlati11;
          let x_3763 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3756 + 3i) / 4i)][((x_3759 + 3i) % 4i)];
          let x_3765 : vec2<f32> = (vec2<f32>(x_3754.x, x_3754.y) + vec2<f32>(x_3763.x, x_3763.y));
          let x_3766 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3765.x, x_3765.y, x_3766.z, x_3766.w);
          let x_3768 : vec4<f32> = u_xlat12;
          let x_3771 : vec2<f32> = ((vec2<f32>(x_3768.x, x_3768.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3772 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3771.x, x_3771.y, x_3772.z, x_3772.w);
          let x_3774 : vec4<f32> = u_xlat12;
          let x_3776 : vec2<f32> = fract(vec2<f32>(x_3774.x, x_3774.y));
          let x_3777 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3776.x, x_3776.y, x_3777.z, x_3777.w);
          let x_3779 : i32 = u_xlati83;
          let x_3781 : vec4<f32> = x_1706.x_AdditionalLightsCookieAtlasUVRects[x_3779];
          let x_3783 : vec4<f32> = u_xlat12;
          let x_3786 : i32 = u_xlati83;
          let x_3788 : vec4<f32> = x_1706.x_AdditionalLightsCookieAtlasUVRects[x_3786];
          let x_3790 : vec2<f32> = ((vec2<f32>(x_3781.x, x_3781.y) * vec2<f32>(x_3783.x, x_3783.y)) + vec2<f32>(x_3788.z, x_3788.w));
          let x_3791 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3790.x, x_3790.y, x_3791.z);
        } else {
          let x_3794 : vec3<f32> = vs_TEXCOORD7;
          let x_3796 : i32 = u_xlati11;
          let x_3799 : i32 = u_xlati11;
          let x_3803 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3796 + 1i) / 4i)][((x_3799 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3794.y, x_3794.y, x_3794.y, x_3794.y) * x_3803);
          let x_3805 : i32 = u_xlati11;
          let x_3807 : i32 = u_xlati11;
          let x_3810 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[(x_3805 / 4i)][(x_3807 % 4i)];
          let x_3811 : vec3<f32> = vs_TEXCOORD7;
          let x_3814 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3810 * vec4<f32>(x_3811.x, x_3811.x, x_3811.x, x_3811.x)) + x_3814);
          let x_3816 : i32 = u_xlati11;
          let x_3819 : i32 = u_xlati11;
          let x_3823 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3816 + 2i) / 4i)][((x_3819 + 2i) % 4i)];
          let x_3824 : vec3<f32> = vs_TEXCOORD7;
          let x_3827 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3823 * vec4<f32>(x_3824.z, x_3824.z, x_3824.z, x_3824.z)) + x_3827);
          let x_3829 : vec4<f32> = u_xlat12;
          let x_3830 : i32 = u_xlati11;
          let x_3833 : i32 = u_xlati11;
          let x_3837 : vec4<f32> = x_1706.x_AdditionalLightsWorldToLights[((x_3830 + 3i) / 4i)][((x_3833 + 3i) % 4i)];
          u_xlat12 = (x_3829 + x_3837);
          let x_3839 : vec4<f32> = u_xlat12;
          let x_3841 : vec4<f32> = u_xlat12;
          let x_3843 : vec3<f32> = (vec3<f32>(x_3839.x, x_3839.y, x_3839.z) / vec3<f32>(x_3841.w, x_3841.w, x_3841.w));
          let x_3844 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3843.x, x_3843.y, x_3843.z, x_3844.w);
          let x_3846 : vec4<f32> = u_xlat12;
          let x_3848 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3846.x, x_3846.y, x_3846.z), vec3<f32>(x_3848.x, x_3848.y, x_3848.z));
          let x_3851 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3851);
          let x_3853 : f32 = u_xlat87;
          let x_3855 : vec4<f32> = u_xlat12;
          let x_3857 : vec3<f32> = (vec3<f32>(x_3853, x_3853, x_3853) * vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
          let x_3858 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3857.x, x_3857.y, x_3857.z, x_3858.w);
          let x_3860 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3860.x, x_3860.y, x_3860.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3865 : f32 = u_xlat87;
          u_xlat87 = max(x_3865, 0.00000099999999747524f);
          let x_3868 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3868);
          let x_3870 : f32 = u_xlat87;
          let x_3872 : vec4<f32> = u_xlat12;
          let x_3874 : vec3<f32> = (vec3<f32>(x_3870, x_3870, x_3870) * vec3<f32>(x_3872.z, x_3872.x, x_3872.y));
          let x_3875 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3874.x, x_3874.y, x_3874.z, x_3875.w);
          let x_3878 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3878);
          let x_3882 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3882, 0.0f, 1.0f);
          let x_3885 : vec4<f32> = u_xlat13;
          let x_3887 : vec4<bool> = (vec4<f32>(x_3885.y, x_3885.y, x_3885.y, x_3885.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3888 : vec2<bool> = vec2<bool>(x_3887.x, x_3887.w);
          let x_3889 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3888.x, x_3889.y, x_3889.z, x_3888.y);
          let x_3892 : bool = u_xlatb11.x;
          if (x_3892) {
            let x_3897 : f32 = u_xlat13.x;
            x_3893 = x_3897;
          } else {
            let x_3900 : f32 = u_xlat13.x;
            x_3893 = -(x_3900);
          }
          let x_3902 : f32 = x_3893;
          u_xlat11.x = x_3902;
          let x_3905 : bool = u_xlatb11.w;
          if (x_3905) {
            let x_3910 : f32 = u_xlat13.x;
            x_3906 = x_3910;
          } else {
            let x_3913 : f32 = u_xlat13.x;
            x_3906 = -(x_3913);
          }
          let x_3915 : f32 = x_3906;
          u_xlat11.w = x_3915;
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3919 : f32 = u_xlat87;
          let x_3922 : vec4<f32> = u_xlat11;
          let x_3924 : vec2<f32> = ((vec2<f32>(x_3917.x, x_3917.y) * vec2<f32>(x_3919, x_3919)) + vec2<f32>(x_3922.x, x_3922.w));
          let x_3925 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3924.x, x_3925.y, x_3925.z, x_3924.y);
          let x_3927 : vec4<f32> = u_xlat11;
          let x_3930 : vec2<f32> = ((vec2<f32>(x_3927.x, x_3927.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3931 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3930.x, x_3931.y, x_3931.z, x_3930.y);
          let x_3933 : vec4<f32> = u_xlat11;
          let x_3937 : vec2<f32> = clamp(vec2<f32>(x_3933.x, x_3933.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3938 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3937.x, x_3938.y, x_3938.z, x_3937.y);
          let x_3940 : i32 = u_xlati83;
          let x_3942 : vec4<f32> = x_1706.x_AdditionalLightsCookieAtlasUVRects[x_3940];
          let x_3944 : vec4<f32> = u_xlat11;
          let x_3947 : i32 = u_xlati83;
          let x_3949 : vec4<f32> = x_1706.x_AdditionalLightsCookieAtlasUVRects[x_3947];
          let x_3951 : vec2<f32> = ((vec2<f32>(x_3942.x, x_3942.y) * vec2<f32>(x_3944.x, x_3944.w)) + vec2<f32>(x_3949.z, x_3949.w));
          let x_3952 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3951.x, x_3951.y, x_3952.z);
        }
      }
      let x_3959 : vec3<f32> = u_xlat37;
      let x_3961 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3959.x, x_3959.y), 0.0f);
      u_xlat11 = x_3961;
      let x_3963 : bool = u_xlatb7.y;
      if (x_3963) {
        let x_3968 : f32 = u_xlat11.w;
        x_3964 = x_3968;
      } else {
        let x_3971 : f32 = u_xlat11.x;
        x_3964 = x_3971;
      }
      let x_3972 : f32 = x_3964;
      u_xlat87 = x_3972;
      let x_3974 : bool = u_xlatb7.x;
      if (x_3974) {
        let x_3978 : vec4<f32> = u_xlat11;
        x_3975 = vec3<f32>(x_3978.x, x_3978.y, x_3978.z);
      } else {
        let x_3981 : f32 = u_xlat87;
        x_3975 = vec3<f32>(x_3981, x_3981, x_3981);
      }
      let x_3983 : vec3<f32> = x_3975;
      let x_3984 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3983.x, x_3983.y, x_3983.z, x_3984.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3990 : vec4<f32> = u_xlat11;
    let x_3992 : i32 = u_xlati83;
    let x_3994 : vec4<f32> = x_2159.x_AdditionalLightsColor[x_3992];
    let x_3996 : vec3<f32> = (vec3<f32>(x_3990.x, x_3990.y, x_3990.z) * vec3<f32>(x_3994.x, x_3994.y, x_3994.z));
    let x_3997 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3996.x, x_3996.y, x_3996.z, x_3997.w);
    let x_3999 : f32 = u_xlat84;
    let x_4000 : f32 = u_xlat85;
    u_xlat83 = (x_3999 * x_4000);
    let x_4002 : vec3<f32> = u_xlat27;
    let x_4003 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4002, vec3<f32>(x_4003.x, x_4003.y, x_4003.z));
    let x_4006 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4006, 0.0f, 1.0f);
    let x_4008 : f32 = u_xlat83;
    let x_4009 : f32 = u_xlat84;
    u_xlat83 = (x_4008 * x_4009);
    let x_4011 : f32 = u_xlat83;
    let x_4013 : vec4<f32> = u_xlat11;
    let x_4015 : vec3<f32> = (vec3<f32>(x_4011, x_4011, x_4011) * vec3<f32>(x_4013.x, x_4013.y, x_4013.z));
    let x_4016 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4015.x, x_4015.y, x_4015.z, x_4016.w);
    let x_4018 : vec4<f32> = u_xlat9;
    let x_4020 : f32 = u_xlat59;
    let x_4023 : vec4<f32> = u_xlat6;
    let x_4025 : vec3<f32> = ((vec3<f32>(x_4018.x, x_4018.y, x_4018.z) * vec3<f32>(x_4020, x_4020, x_4020)) + vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
    let x_4026 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4025.x, x_4025.y, x_4025.z, x_4026.w);
    let x_4028 : vec4<f32> = u_xlat9;
    let x_4030 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4028.x, x_4028.y, x_4028.z), vec3<f32>(x_4030.x, x_4030.y, x_4030.z));
    let x_4033 : f32 = u_xlat83;
    u_xlat83 = max(x_4033, 1.17549435e-38f);
    let x_4035 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4035);
    let x_4037 : f32 = u_xlat83;
    let x_4039 : vec4<f32> = u_xlat9;
    let x_4041 : vec3<f32> = (vec3<f32>(x_4037, x_4037, x_4037) * vec3<f32>(x_4039.x, x_4039.y, x_4039.z));
    let x_4042 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4041.x, x_4041.y, x_4041.z, x_4042.w);
    let x_4044 : vec3<f32> = u_xlat27;
    let x_4045 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_4044, vec3<f32>(x_4045.x, x_4045.y, x_4045.z));
    let x_4048 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4048, 0.0f, 1.0f);
    let x_4050 : vec4<f32> = u_xlat10;
    let x_4052 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4050.x, x_4050.y, x_4050.z), vec3<f32>(x_4052.x, x_4052.y, x_4052.z));
    let x_4055 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4055, 0.0f, 1.0f);
    let x_4057 : f32 = u_xlat83;
    let x_4058 : f32 = u_xlat83;
    u_xlat83 = (x_4057 * x_4058);
    let x_4060 : f32 = u_xlat83;
    let x_4062 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4060 * x_4062) + 1.00001001358032226562f);
    let x_4065 : f32 = u_xlat84;
    let x_4066 : f32 = u_xlat84;
    u_xlat84 = (x_4065 * x_4066);
    let x_4068 : f32 = u_xlat83;
    let x_4069 : f32 = u_xlat83;
    u_xlat83 = (x_4068 * x_4069);
    let x_4071 : f32 = u_xlat84;
    u_xlat84 = max(x_4071, 0.10000000149011611938f);
    let x_4073 : f32 = u_xlat83;
    let x_4074 : f32 = u_xlat84;
    u_xlat83 = (x_4073 * x_4074);
    let x_4076 : f32 = u_xlat81;
    let x_4077 : f32 = u_xlat83;
    u_xlat83 = (x_4076 * x_4077);
    let x_4079 : f32 = u_xlat82;
    let x_4080 : f32 = u_xlat83;
    u_xlat83 = (x_4079 / x_4080);
    let x_4082 : vec4<f32> = u_xlat0;
    let x_4084 : f32 = u_xlat83;
    let x_4087 : vec3<f32> = u_xlat4;
    let x_4088 : vec3<f32> = ((vec3<f32>(x_4082.x, x_4082.y, x_4082.z) * vec3<f32>(x_4084, x_4084, x_4084)) + x_4087);
    let x_4089 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4088.x, x_4088.y, x_4088.z, x_4089.w);
    let x_4091 : vec4<f32> = u_xlat9;
    let x_4093 : vec4<f32> = u_xlat11;
    let x_4096 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4091.x, x_4091.y, x_4091.z) * vec3<f32>(x_4093.x, x_4093.y, x_4093.z)) + x_4096);

    continuing {
      let x_4098 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4098 + bitcast<u32>(1i));
    }
  }
  let x_4100 : vec4<f32> = u_xlat5;
  let x_4102 : vec4<f32> = u_xlat2;
  let x_4105 : vec4<f32> = u_xlat3;
  let x_4107 : vec3<f32> = ((vec3<f32>(x_4100.x, x_4100.y, x_4100.z) * vec3<f32>(x_4102.x, x_4102.z, x_4102.w)) + vec3<f32>(x_4105.x, x_4105.y, x_4105.z));
  let x_4108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4107.x, x_4107.y, x_4107.z, x_4108.w);
  let x_4112 : vec3<f32> = u_xlat34;
  let x_4113 : vec4<f32> = u_xlat0;
  let x_4115 : vec3<f32> = (x_4112 + vec3<f32>(x_4113.x, x_4113.y, x_4113.z));
  let x_4116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4115.x, x_4115.y, x_4115.z, x_4116.w);
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


