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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat81 : f32;

@group(1) @binding(2) var<uniform> x_367 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_1831 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2271 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_106 : vec3<f32>;
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
  var x_1781 : f32;
  var x_1914 : f32;
  var x_1925 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2409 : f32;
  var x_2420 : f32;
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
  var x_4039 : f32;
  var x_4052 : f32;
  var x_4110 : f32;
  var x_4121 : vec3<f32>;
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
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat53;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_91 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_91;
  let x_95 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_95;
  let x_100 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_100;
  let x_104 : bool = u_xlatb27;
  if (x_104) {
    let x_109 : vec4<f32> = u_xlat2;
    x_106 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  } else {
    let x_112 : vec4<f32> = u_xlat3;
    x_106 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  }
  let x_114 : vec3<f32> = x_106;
  u_xlat27 = x_114;
  let x_116 : vec3<f32> = vs_TEXCOORD3;
  let x_117 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_116, x_117);
  let x_121 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_121);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec3<f32> = vs_TEXCOORD3;
  let x_127 : vec3<f32> = (vec3<f32>(x_124.x, x_124.x, x_124.x) * x_126);
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec3<f32> = vs_TEXCOORD7;
  let x_141 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_144 : vec3<f32> = (x_130 + -(vec3<f32>(x_141.x, x_141.y, x_141.z)));
  let x_145 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_148 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_TEXCOORD7;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD7;
  let x_169 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  let x_172 : vec3<f32> = (x_167 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat3;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat4;
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat5;
  let x_189 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat6;
  let x_195 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_202 < x_205);
  let x_208 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_208);
  let x_213 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_225);
  let x_231 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_231);
  let x_235 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_235);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(x_240.y, x_240.z, x_240.w));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat3;
  let x_248 : vec3<f32> = max(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_249.x, x_248.x, x_248.y, x_248.z);
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_251, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_259 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_259) + 4.0f);
  let x_266 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_266);
  let x_270 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_270) << bitcast<u32>(2i));
  let x_274 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : i32 = u_xlati3;
  let x_279 : i32 = u_xlati3;
  let x_283 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_276 + 1i) / 4i)][((x_279 + 1i) % 4i)];
  u_xlat29 = (vec3<f32>(x_274.y, x_274.y, x_274.y) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : i32 = u_xlati3;
  let x_288 : i32 = u_xlati3;
  let x_291 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_286 / 4i)][(x_288 % 4i)];
  let x_293 : vec3<f32> = vs_TEXCOORD7;
  let x_296 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + x_296);
  let x_298 : i32 = u_xlati3;
  let x_301 : i32 = u_xlati3;
  let x_305 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_298 + 2i) / 4i)][((x_301 + 2i) % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD7;
  let x_310 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.z, x_307.z, x_307.z)) + x_310);
  let x_312 : vec3<f32> = u_xlat29;
  let x_313 : i32 = u_xlati3;
  let x_316 : i32 = u_xlati3;
  let x_320 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_313 + 3i) / 4i)][((x_316 + 3i) % 4i)];
  let x_322 : vec3<f32> = (x_312 + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_328 : f32 = vs_TEXCOORD7.y;
  let x_330 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat81 = (x_328 * x_330);
  let x_333 : f32 = x_29.unity_MatrixV[0i].z;
  let x_335 : f32 = vs_TEXCOORD7.x;
  let x_337 : f32 = u_xlat81;
  u_xlat81 = ((x_333 * x_335) + x_337);
  let x_340 : f32 = x_29.unity_MatrixV[2i].z;
  let x_342 : f32 = vs_TEXCOORD7.z;
  let x_344 : f32 = u_xlat81;
  u_xlat81 = ((x_340 * x_342) + x_344);
  let x_346 : f32 = u_xlat81;
  let x_348 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat81 = (x_346 + x_348);
  let x_350 : f32 = u_xlat81;
  let x_353 : f32 = x_29.x_ProjectionParams.y;
  u_xlat81 = (-(x_350) + -(x_353));
  let x_356 : f32 = u_xlat81;
  u_xlat81 = max(x_356, 0.0f);
  let x_358 : f32 = u_xlat81;
  let x_361 : f32 = x_29.unity_FogParams.x;
  u_xlat81 = (x_358 * x_361);
  u_xlat2.w = 1.0f;
  let x_370 : vec4<f32> = x_367.unity_SHAr;
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_367.unity_SHAg;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_367.unity_SHAb;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_386.y, x_386.z, x_386.z, x_386.x) * vec4<f32>(x_388.x, x_388.y, x_388.z, x_388.z));
  let x_393 : vec4<f32> = x_367.unity_SHBr;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_393, x_394);
  let x_399 : vec4<f32> = x_367.unity_SHBg;
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_399, x_400);
  let x_405 : vec4<f32> = x_367.unity_SHBb;
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_405, x_406);
  let x_411 : f32 = u_xlat2.y;
  let x_413 : f32 = u_xlat2.y;
  u_xlat80 = (x_411 * x_413);
  let x_416 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat2.x;
  let x_420 : f32 = u_xlat80;
  u_xlat80 = ((x_416 * x_418) + -(x_420));
  let x_425 : vec4<f32> = x_367.unity_SHC;
  let x_427 : f32 = u_xlat80;
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : vec3<f32> = max(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : f32 = u_xlat1;
  u_xlat80 = ((-(x_447) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_453 : f32 = u_xlat80;
  u_xlat82 = (-(x_453) + 1.0f);
  let x_456 : vec4<f32> = u_xlat0;
  let x_458 : f32 = u_xlat80;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_458, x_458, x_458));
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : f32 = u_xlat1;
  let x_472 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_472.x, x_472.y, x_472.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_481) + 1.0f);
  let x_484 : f32 = u_xlat1;
  let x_485 : f32 = u_xlat1;
  u_xlat80 = (x_484 * x_485);
  let x_487 : f32 = u_xlat80;
  u_xlat80 = max(x_487, 0.0078125f);
  let x_491 : f32 = u_xlat80;
  let x_492 : f32 = u_xlat80;
  u_xlat83 = (x_491 * x_492);
  let x_496 : f32 = u_xlat0.w;
  let x_497 : f32 = u_xlat82;
  u_xlat78 = (x_496 + x_497);
  let x_499 : f32 = u_xlat78;
  u_xlat78 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat80;
  u_xlat82 = ((x_501 * 4.0f) + 2.0f);
  let x_507 : f32 = x_138.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_507);
  let x_509 : bool = u_xlatb6;
  if (x_509) {
    let x_513 : f32 = x_138.x_MainLightShadowParams.y;
    u_xlatb6 = (x_513 == 1.0f);
    let x_515 : bool = u_xlatb6;
    if (x_515) {
      let x_518 : vec4<f32> = u_xlat3;
      let x_521 : vec4<f32> = x_138.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y) + x_521);
      let x_524 : vec4<f32> = u_xlat6;
      let x_525 : vec2<f32> = vec2<f32>(x_524.x, x_524.y);
      let x_527 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_525.x, x_525.y, x_527);
      let x_540 : vec3<f32> = txVec0;
      let x_542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_540.xy, x_540.z);
      u_xlat7.x = x_542;
      let x_545 : vec4<f32> = u_xlat6;
      let x_546 : vec2<f32> = vec2<f32>(x_545.z, x_545.w);
      let x_548 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec1;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.y = x_557;
      let x_559 : vec4<f32> = u_xlat3;
      let x_562 : vec4<f32> = x_138.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) + x_562);
      let x_565 : vec4<f32> = u_xlat6;
      let x_566 : vec2<f32> = vec2<f32>(x_565.x, x_565.y);
      let x_568 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec2;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat7.z = x_577;
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.z, x_580.w);
      let x_583 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec3;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.w = x_592;
      let x_594 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_594, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_602 : f32 = x_138.x_MainLightShadowParams.y;
      u_xlatb32 = (x_602 == 2.0f);
      let x_604 : bool = u_xlatb32;
      if (x_604) {
        let x_609 : vec4<f32> = u_xlat3;
        let x_612 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.z, x_612.w)) + vec2<f32>(0.5f, 0.5f));
        let x_618 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_618);
        let x_620 : vec4<f32> = u_xlat3;
        let x_623 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_626 : vec2<f32> = u_xlat32;
        let x_628 : vec2<f32> = ((vec2<f32>(x_620.x, x_620.y) * vec2<f32>(x_623.z, x_623.w)) + -(x_626));
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_632.x, x_632.x, x_632.y, x_632.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_637 : vec4<f32> = u_xlat8;
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_637.x, x_637.x, x_637.z, x_637.z) * vec4<f32>(x_639.x, x_639.x, x_639.z, x_639.z));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_643.y, x_643.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_648 : vec4<f32> = u_xlat9;
        let x_651 : vec4<f32> = u_xlat7;
        let x_654 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_651.x, x_651.y)));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_655.y, x_654.y, x_655.w);
        let x_657 : vec4<f32> = u_xlat7;
        let x_661 : vec2<f32> = (-(vec2<f32>(x_657.x, x_657.y)) + vec2<f32>(1.0f, 1.0f));
        let x_662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_665.x, x_665.y), vec2<f32>(0.0f, 0.0f));
        let x_669 : vec2<f32> = u_xlat61;
        let x_671 : vec2<f32> = u_xlat61;
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_669) * x_671) + vec2<f32>(x_673.x, x_673.y));
        let x_676 : vec4<f32> = u_xlat7;
        let x_678 : vec2<f32> = max(vec2<f32>(x_676.x, x_676.y), vec2<f32>(0.0f, 0.0f));
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        let x_684 : vec4<f32> = u_xlat7;
        let x_687 : vec4<f32> = u_xlat8;
        let x_689 : vec2<f32> = ((-(vec2<f32>(x_681.x, x_681.y)) * vec2<f32>(x_684.x, x_684.y)) + vec2<f32>(x_687.y, x_687.w));
        let x_690 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_692 + vec2<f32>(1.0f, 1.0f));
        let x_694 : vec4<f32> = u_xlat7;
        let x_696 : vec2<f32> = (vec2<f32>(x_694.x, x_694.y) + vec2<f32>(1.0f, 1.0f));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
        let x_700 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = (vec2<f32>(x_700.x, x_700.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_705 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : vec4<f32> = u_xlat9;
        let x_710 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_711 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
        let x_713 : vec2<f32> = u_xlat61;
        let x_714 : vec2<f32> = (x_713 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_718 : vec4<f32> = u_xlat7;
        let x_720 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_721 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat8;
        let x_725 : vec2<f32> = (vec2<f32>(x_723.y, x_723.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_726 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_729 : f32 = u_xlat9.x;
        u_xlat10.z = x_729;
        let x_732 : f32 = u_xlat7.x;
        u_xlat10.w = x_732;
        let x_735 : f32 = u_xlat12.x;
        u_xlat11.z = x_735;
        let x_738 : f32 = u_xlat59.x;
        u_xlat11.w = x_738;
        let x_740 : vec4<f32> = u_xlat10;
        let x_742 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_740.z, x_740.w, x_740.x, x_740.z) + vec4<f32>(x_742.z, x_742.w, x_742.x, x_742.z));
        let x_746 : f32 = u_xlat10.y;
        u_xlat9.z = x_746;
        let x_749 : f32 = u_xlat7.y;
        u_xlat9.w = x_749;
        let x_752 : f32 = u_xlat11.y;
        u_xlat12.z = x_752;
        let x_755 : f32 = u_xlat59.y;
        u_xlat12.w = x_755;
        let x_757 : vec4<f32> = u_xlat9;
        let x_759 : vec4<f32> = u_xlat12;
        let x_761 : vec3<f32> = (vec3<f32>(x_757.z, x_757.y, x_757.w) + vec3<f32>(x_759.z, x_759.y, x_759.w));
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat11;
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : vec3<f32> = (vec3<f32>(x_764.x, x_764.z, x_764.w) / vec3<f32>(x_766.z, x_766.w, x_766.y));
        let x_769 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat9;
        let x_777 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_778 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat12;
        let x_782 : vec4<f32> = u_xlat7;
        let x_784 : vec3<f32> = (vec3<f32>(x_780.z, x_780.y, x_780.w) / vec3<f32>(x_782.x, x_782.y, x_782.z));
        let x_785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat10;
        let x_789 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_790 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
        let x_792 : vec4<f32> = u_xlat9;
        let x_795 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_797 : vec3<f32> = (vec3<f32>(x_792.y, x_792.x, x_792.z) * vec3<f32>(x_795.x, x_795.x, x_795.x));
        let x_798 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat10;
        let x_803 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_805 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_803.y, x_803.y, x_803.y));
        let x_806 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
        let x_809 : f32 = u_xlat10.x;
        u_xlat9.w = x_809;
        let x_811 : vec2<f32> = u_xlat32;
        let x_814 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.y, x_817.w, x_817.x, x_817.w));
        let x_820 : vec2<f32> = u_xlat32;
        let x_822 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_825 : vec4<f32> = u_xlat9;
        let x_827 : vec2<f32> = ((x_820 * vec2<f32>(x_822.x, x_822.y)) + vec2<f32>(x_825.z, x_825.w));
        let x_828 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_831 : f32 = u_xlat9.y;
        u_xlat10.w = x_831;
        let x_833 : vec4<f32> = u_xlat10;
        let x_834 : vec2<f32> = vec2<f32>(x_833.y, x_833.z);
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_835.x, x_834.x, x_835.z, x_834.y);
        let x_838 : vec2<f32> = u_xlat32;
        let x_841 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_844 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y) * vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y)) + vec4<f32>(x_844.x, x_844.y, x_844.z, x_844.y));
        let x_847 : vec2<f32> = u_xlat32;
        let x_850 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_853 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.y) * vec4<f32>(x_850.x, x_850.y, x_850.x, x_850.y)) + vec4<f32>(x_853.w, x_853.y, x_853.w, x_853.z));
        let x_856 : vec2<f32> = u_xlat32;
        let x_859 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y) * vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y)) + vec4<f32>(x_862.x, x_862.w, x_862.z, x_862.w));
        let x_866 : vec4<f32> = u_xlat7;
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_866.x, x_866.x, x_866.x, x_866.y) * vec4<f32>(x_868.z, x_868.w, x_868.y, x_868.z));
        let x_872 : vec4<f32> = u_xlat7;
        let x_874 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_872.y, x_872.y, x_872.z, x_872.z) * x_874);
        let x_877 : f32 = u_xlat7.z;
        let x_879 : f32 = u_xlat8.y;
        u_xlat32.x = (x_877 * x_879);
        let x_883 : vec4<f32> = u_xlat11;
        let x_884 : vec2<f32> = vec2<f32>(x_883.x, x_883.y);
        let x_886 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_884.x, x_884.y, x_886);
        let x_894 : vec3<f32> = txVec4;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
        u_xlat58 = x_896;
        let x_898 : vec4<f32> = u_xlat11;
        let x_899 : vec2<f32> = vec2<f32>(x_898.z, x_898.w);
        let x_901 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_909 : vec3<f32> = txVec5;
        let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_909.xy, x_909.z);
        u_xlat84 = x_911;
        let x_912 : f32 = u_xlat84;
        let x_914 : f32 = u_xlat14.y;
        u_xlat84 = (x_912 * x_914);
        let x_917 : f32 = u_xlat14.x;
        let x_918 : f32 = u_xlat58;
        let x_920 : f32 = u_xlat84;
        u_xlat58 = ((x_917 * x_918) + x_920);
        let x_923 : vec4<f32> = u_xlat12;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_933 : vec3<f32> = txVec6;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_933.xy, x_933.z);
        u_xlat84 = x_935;
        let x_937 : f32 = u_xlat14.z;
        let x_938 : f32 = u_xlat84;
        let x_940 : f32 = u_xlat58;
        u_xlat58 = ((x_937 * x_938) + x_940);
        let x_943 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
        let x_946 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_953 : vec3<f32> = txVec7;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
        u_xlat84 = x_955;
        let x_957 : f32 = u_xlat14.w;
        let x_958 : f32 = u_xlat84;
        let x_960 : f32 = u_xlat58;
        u_xlat58 = ((x_957 * x_958) + x_960);
        let x_963 : vec4<f32> = u_xlat13;
        let x_964 : vec2<f32> = vec2<f32>(x_963.x, x_963.y);
        let x_966 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec8;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
        u_xlat84 = x_975;
        let x_977 : f32 = u_xlat15.x;
        let x_978 : f32 = u_xlat84;
        let x_980 : f32 = u_xlat58;
        u_xlat58 = ((x_977 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat13;
        let x_984 : vec2<f32> = vec2<f32>(x_983.z, x_983.w);
        let x_986 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec9;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_993.xy, x_993.z);
        u_xlat84 = x_995;
        let x_997 : f32 = u_xlat15.y;
        let x_998 : f32 = u_xlat84;
        let x_1000 : f32 = u_xlat58;
        u_xlat58 = ((x_997 * x_998) + x_1000);
        let x_1003 : vec4<f32> = u_xlat10;
        let x_1004 : vec2<f32> = vec2<f32>(x_1003.z, x_1003.w);
        let x_1006 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
        let x_1013 : vec3<f32> = txVec10;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
        u_xlat84 = x_1015;
        let x_1017 : f32 = u_xlat15.z;
        let x_1018 : f32 = u_xlat84;
        let x_1020 : f32 = u_xlat58;
        u_xlat58 = ((x_1017 * x_1018) + x_1020);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
        let x_1026 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1033 : vec3<f32> = txVec11;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
        u_xlat84 = x_1035;
        let x_1037 : f32 = u_xlat15.w;
        let x_1038 : f32 = u_xlat84;
        let x_1040 : f32 = u_xlat58;
        u_xlat58 = ((x_1037 * x_1038) + x_1040);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
        let x_1046 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec12;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
        u_xlat84 = x_1055;
        let x_1057 : f32 = u_xlat32.x;
        let x_1058 : f32 = u_xlat84;
        let x_1060 : f32 = u_xlat58;
        u_xlat6.x = ((x_1057 * x_1058) + x_1060);
      } else {
        let x_1064 : vec4<f32> = u_xlat3;
        let x_1067 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.z, x_1067.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1071 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1071);
        let x_1073 : vec4<f32> = u_xlat3;
        let x_1076 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1079 : vec2<f32> = u_xlat32;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.z, x_1076.w)) + -(x_1079));
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1084.x, x_1084.x, x_1084.y, x_1084.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1087.x, x_1087.x, x_1087.z, x_1087.z) * vec4<f32>(x_1089.x, x_1089.x, x_1089.z, x_1089.z));
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1092.y, x_1092.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1097.x, x_1096.x, x_1097.z, x_1096.y);
        let x_1099 : vec4<f32> = u_xlat9;
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1099.x, x_1099.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1102.x, x_1102.y)));
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1109 : vec2<f32> = (-(vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1114 : vec2<f32> = min(vec2<f32>(x_1112.x, x_1112.y), vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1120 : vec4<f32> = u_xlat9;
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = ((-(vec2<f32>(x_1117.x, x_1117.y)) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.x, x_1123.z));
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = max(vec2<f32>(x_1128.x, x_1128.y), vec2<f32>(0.0f, 0.0f));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1141 : vec2<f32> = ((-(vec2<f32>(x_1133.x, x_1133.y)) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.y, x_1139.w));
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1144 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1148 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1148 * 0.08163200318813323975f);
        let x_1152 : vec2<f32> = u_xlat59;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1152.y, x_1152.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1158.x, x_1158.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1162 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1162 * 0.08163200318813323975f);
        let x_1166 : f32 = u_xlat11.y;
        u_xlat9.x = x_1166;
        let x_1168 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1183.w);
        let x_1186 : f32 = u_xlat59.x;
        u_xlat8.y = x_1186;
        let x_1189 : f32 = u_xlat10.y;
        u_xlat8.w = x_1189;
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1191 + x_1192);
        let x_1194 : vec4<f32> = u_xlat7;
        let x_1197 : vec2<f32> = ((vec2<f32>(x_1194.y, x_1194.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1198.x, x_1197.x, x_1198.z, x_1197.y);
        let x_1200 : vec4<f32> = u_xlat7;
        let x_1203 : vec2<f32> = ((vec2<f32>(x_1200.y, x_1200.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1204.w);
        let x_1207 : f32 = u_xlat59.y;
        u_xlat10.y = x_1207;
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1209 + x_1210);
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1212 / x_1213);
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1215 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1221 / x_1222);
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1224 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1229 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1226.w, x_1226.x, x_1226.y, x_1226.z) * vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x));
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1235 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1232.x, x_1232.w, x_1232.y, x_1232.z) * vec4<f32>(x_1235.y, x_1235.y, x_1235.y, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1239 : vec3<f32> = vec3<f32>(x_1238.y, x_1238.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1239.x, x_1240.y, x_1239.y, x_1239.z);
        let x_1243 : f32 = u_xlat10.x;
        u_xlat11.y = x_1243;
        let x_1245 : vec2<f32> = u_xlat32;
        let x_1248 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1254 : vec2<f32> = u_xlat32;
        let x_1256 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1261 : vec2<f32> = ((x_1254 * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        let x_1265 : f32 = u_xlat11.y;
        u_xlat8.y = x_1265;
        let x_1268 : f32 = u_xlat10.z;
        u_xlat11.y = x_1268;
        let x_1270 : vec2<f32> = u_xlat32;
        let x_1273 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y) * vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.y)) + vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1276.y));
        let x_1280 : vec2<f32> = u_xlat32;
        let x_1282 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1280 * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.w, x_1285.y));
        let x_1289 : f32 = u_xlat11.y;
        u_xlat8.z = x_1289;
        let x_1291 : vec2<f32> = u_xlat32;
        let x_1294 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.z));
        let x_1301 : f32 = u_xlat10.w;
        u_xlat11.y = x_1301;
        let x_1304 : vec2<f32> = u_xlat32;
        let x_1307 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1314 : vec2<f32> = u_xlat32;
        let x_1316 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1321 : vec2<f32> = ((x_1314 * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1322 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1321.x, x_1321.y, x_1322.z);
        let x_1325 : f32 = u_xlat11.y;
        u_xlat8.w = x_1325;
        let x_1328 : vec2<f32> = u_xlat32;
        let x_1330 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1335 : vec2<f32> = ((x_1328 * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.x, x_1333.w));
        let x_1336 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat11;
        let x_1339 : vec3<f32> = vec3<f32>(x_1338.x, x_1338.z, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1339.z);
        let x_1342 : vec2<f32> = u_xlat32;
        let x_1345 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y) * vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y)) + vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1348.y));
        let x_1352 : vec2<f32> = u_xlat32;
        let x_1354 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1352 * vec2<f32>(x_1354.x, x_1354.y)) + vec2<f32>(x_1357.w, x_1357.y));
        let x_1361 : f32 = u_xlat8.x;
        u_xlat10.x = x_1361;
        let x_1363 : vec2<f32> = u_xlat32;
        let x_1365 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1363 * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.x, x_1368.y));
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1372.x, x_1372.x, x_1372.x, x_1372.x) * x_1374);
        let x_1377 : vec4<f32> = u_xlat7;
        let x_1379 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1377.y, x_1377.y, x_1377.y, x_1377.y) * x_1379);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1382.z, x_1382.z, x_1382.z, x_1382.z) * x_1384);
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1386.w, x_1386.w, x_1386.w, x_1386.w) * x_1388);
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec13;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat84 = x_1403;
        let x_1405 : vec4<f32> = u_xlat12;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.z, x_1405.w);
        let x_1408 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec14;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat8.x = x_1417;
        let x_1420 : f32 = u_xlat8.x;
        let x_1422 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1420 * x_1422);
        let x_1426 : f32 = u_xlat18.x;
        let x_1427 : f32 = u_xlat84;
        let x_1430 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1426 * x_1427) + x_1430);
        let x_1433 : vec4<f32> = u_xlat13;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec15;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat8.x = x_1445;
        let x_1448 : f32 = u_xlat18.z;
        let x_1450 : f32 = u_xlat8.x;
        let x_1452 : f32 = u_xlat84;
        u_xlat84 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat15;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec16;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat8.x = x_1467;
        let x_1470 : f32 = u_xlat18.w;
        let x_1472 : f32 = u_xlat8.x;
        let x_1474 : f32 = u_xlat84;
        u_xlat84 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat14;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec17;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat8.x = x_1489;
        let x_1492 : f32 = u_xlat19.x;
        let x_1494 : f32 = u_xlat8.x;
        let x_1496 : f32 = u_xlat84;
        u_xlat84 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec4<f32> = u_xlat14;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.z, x_1499.w);
        let x_1502 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec18;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat8.x = x_1511;
        let x_1514 : f32 = u_xlat19.y;
        let x_1516 : f32 = u_xlat8.x;
        let x_1518 : f32 = u_xlat84;
        u_xlat84 = ((x_1514 * x_1516) + x_1518);
        let x_1521 : vec2<f32> = u_xlat65;
        let x_1523 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec19;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1530.xy, x_1530.z);
        u_xlat8.x = x_1532;
        let x_1535 : f32 = u_xlat19.z;
        let x_1537 : f32 = u_xlat8.x;
        let x_1539 : f32 = u_xlat84;
        u_xlat84 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat15;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec20;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat8.x = x_1554;
        let x_1557 : f32 = u_xlat19.w;
        let x_1559 : f32 = u_xlat8.x;
        let x_1561 : f32 = u_xlat84;
        u_xlat84 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat16;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec21;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat8.x = x_1576;
        let x_1579 : f32 = u_xlat20.x;
        let x_1581 : f32 = u_xlat8.x;
        let x_1583 : f32 = u_xlat84;
        u_xlat84 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat16;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec22;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat8.x = x_1598;
        let x_1601 : f32 = u_xlat20.y;
        let x_1603 : f32 = u_xlat8.x;
        let x_1605 : f32 = u_xlat84;
        u_xlat84 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec3<f32> = u_xlat34;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
        let x_1611 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec23;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat8.x = x_1620;
        let x_1623 : f32 = u_xlat20.z;
        let x_1625 : f32 = u_xlat8.x;
        let x_1627 : f32 = u_xlat84;
        u_xlat84 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec4<f32> = u_xlat17;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec24;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat8.x = x_1642;
        let x_1645 : f32 = u_xlat20.w;
        let x_1647 : f32 = u_xlat8.x;
        let x_1649 : f32 = u_xlat84;
        u_xlat84 = ((x_1645 * x_1647) + x_1649);
        let x_1652 : vec4<f32> = u_xlat11;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
        let x_1655 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec25;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat8.x = x_1664;
        let x_1667 : f32 = u_xlat7.x;
        let x_1669 : f32 = u_xlat8.x;
        let x_1671 : f32 = u_xlat84;
        u_xlat84 = ((x_1667 * x_1669) + x_1671);
        let x_1674 : vec4<f32> = u_xlat11;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.z, x_1674.w);
        let x_1677 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec26;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat7.x = x_1686;
        let x_1689 : f32 = u_xlat7.y;
        let x_1691 : f32 = u_xlat7.x;
        let x_1693 : f32 = u_xlat84;
        u_xlat84 = ((x_1689 * x_1691) + x_1693);
        let x_1696 : vec2<f32> = u_xlat62;
        let x_1698 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec27;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1705.xy, x_1705.z);
        u_xlat7.x = x_1707;
        let x_1710 : f32 = u_xlat7.z;
        let x_1712 : f32 = u_xlat7.x;
        let x_1714 : f32 = u_xlat84;
        u_xlat84 = ((x_1710 * x_1712) + x_1714);
        let x_1717 : vec2<f32> = u_xlat32;
        let x_1719 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec28;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat32.x = x_1728;
        let x_1731 : f32 = u_xlat7.w;
        let x_1733 : f32 = u_xlat32.x;
        let x_1735 : f32 = u_xlat84;
        u_xlat6.x = ((x_1731 * x_1733) + x_1735);
      }
    }
  } else {
    let x_1740 : vec4<f32> = u_xlat3;
    let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
    let x_1743 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
    let x_1750 : vec3<f32> = txVec29;
    let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
    u_xlat6.x = x_1752;
  }
  let x_1755 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1755) + 1.0f);
  let x_1760 : f32 = u_xlat6.x;
  let x_1762 : f32 = x_138.x_MainLightShadowParams.x;
  let x_1765 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1760 * x_1762) + x_1765);
  let x_1770 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_1770);
  let x_1774 : f32 = u_xlat3.z;
  u_xlatb55 = (x_1774 >= 1.0f);
  let x_1776 : bool = u_xlatb55;
  let x_1777 : bool = u_xlatb29;
  u_xlatb29 = (x_1776 | x_1777);
  let x_1779 : bool = u_xlatb29;
  if (x_1779) {
    x_1781 = 1.0f;
  } else {
    let x_1786 : f32 = u_xlat3.x;
    x_1781 = x_1786;
  }
  let x_1787 : f32 = x_1781;
  u_xlat3.x = x_1787;
  let x_1789 : vec3<f32> = vs_TEXCOORD7;
  let x_1791 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1793 : vec3<f32> = (x_1789 + -(x_1791));
  let x_1794 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
  let x_1796 : vec4<f32> = u_xlat6;
  let x_1798 : vec4<f32> = u_xlat6;
  u_xlat29.x = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1804 : f32 = u_xlat29.x;
  let x_1806 : f32 = x_138.x_MainLightShadowParams.z;
  let x_1809 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1804 * x_1806) + x_1809);
  let x_1811 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1811, 0.0f, 1.0f);
  let x_1814 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1814) + 1.0f);
  let x_1818 : f32 = u_xlat55;
  let x_1820 : f32 = u_xlat6.x;
  let x_1823 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1818 * x_1820) + x_1823);
  let x_1833 : f32 = x_1831.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_1833 == -1.0f));
  let x_1835 : bool = u_xlatb55;
  if (x_1835) {
    let x_1838 : vec3<f32> = vs_TEXCOORD7;
    let x_1841 : vec4<f32> = x_1831.x_MainLightWorldToLight[1i];
    let x_1843 : vec2<f32> = (vec2<f32>(x_1838.y, x_1838.y) * vec2<f32>(x_1841.x, x_1841.y));
    let x_1844 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1843.x, x_1843.y, x_1844.z, x_1844.w);
    let x_1847 : vec4<f32> = x_1831.x_MainLightWorldToLight[0i];
    let x_1849 : vec3<f32> = vs_TEXCOORD7;
    let x_1852 : vec4<f32> = u_xlat6;
    let x_1854 : vec2<f32> = ((vec2<f32>(x_1847.x, x_1847.y) * vec2<f32>(x_1849.x, x_1849.x)) + vec2<f32>(x_1852.x, x_1852.y));
    let x_1855 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
    let x_1858 : vec4<f32> = x_1831.x_MainLightWorldToLight[2i];
    let x_1860 : vec3<f32> = vs_TEXCOORD7;
    let x_1863 : vec4<f32> = u_xlat6;
    let x_1865 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1860.z, x_1860.z)) + vec2<f32>(x_1863.x, x_1863.y));
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1866.z, x_1866.w);
    let x_1868 : vec4<f32> = u_xlat6;
    let x_1871 : vec4<f32> = x_1831.x_MainLightWorldToLight[3i];
    let x_1873 : vec2<f32> = (vec2<f32>(x_1868.x, x_1868.y) + vec2<f32>(x_1871.x, x_1871.y));
    let x_1874 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
    let x_1876 : vec4<f32> = u_xlat6;
    let x_1879 : vec2<f32> = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1880 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1879.x, x_1879.y, x_1880.z, x_1880.w);
    let x_1887 : vec4<f32> = u_xlat6;
    let x_1890 : f32 = x_29.x_GlobalMipBias.x;
    let x_1891 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1887.x, x_1887.y), x_1890);
    u_xlat6 = x_1891;
    let x_1896 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1898 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1900 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1902 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1903 : vec4<f32> = vec4<f32>(x_1896, x_1898, x_1900, x_1902);
    let x_1910 : vec4<bool> = (vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1903.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1910.x, x_1910.y);
    let x_1913 : bool = u_xlatb7.y;
    if (x_1913) {
      let x_1918 : f32 = u_xlat6.w;
      x_1914 = x_1918;
    } else {
      let x_1921 : f32 = u_xlat6.x;
      x_1914 = x_1921;
    }
    let x_1922 : f32 = x_1914;
    u_xlat55 = x_1922;
    let x_1924 : bool = u_xlatb7.x;
    if (x_1924) {
      let x_1928 : vec4<f32> = u_xlat6;
      x_1925 = vec3<f32>(x_1928.x, x_1928.y, x_1928.z);
    } else {
      let x_1931 : f32 = u_xlat55;
      x_1925 = vec3<f32>(x_1931, x_1931, x_1931);
    }
    let x_1933 : vec3<f32> = x_1925;
    let x_1934 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1940 : vec4<f32> = u_xlat6;
  let x_1943 : vec4<f32> = x_29.x_MainLightColor;
  let x_1945 : vec3<f32> = (vec3<f32>(x_1940.x, x_1940.y, x_1940.z) * vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1946 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  let x_1948 : vec3<f32> = u_xlat27;
  let x_1950 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(-(x_1948), vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : f32 = u_xlat55;
  let x_1954 : f32 = u_xlat55;
  u_xlat55 = (x_1953 + x_1954);
  let x_1956 : vec4<f32> = u_xlat2;
  let x_1958 : f32 = u_xlat55;
  let x_1962 : vec3<f32> = u_xlat27;
  let x_1964 : vec3<f32> = ((vec3<f32>(x_1956.x, x_1956.y, x_1956.z) * -(vec3<f32>(x_1958, x_1958, x_1958))) + -(x_1962));
  let x_1965 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1967 : vec4<f32> = u_xlat2;
  let x_1969 : vec3<f32> = u_xlat27;
  u_xlat55 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), x_1969);
  let x_1971 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1971, 0.0f, 1.0f);
  let x_1973 : f32 = u_xlat55;
  u_xlat55 = (-(x_1973) + 1.0f);
  let x_1976 : f32 = u_xlat55;
  let x_1977 : f32 = u_xlat55;
  u_xlat55 = (x_1976 * x_1977);
  let x_1979 : f32 = u_xlat55;
  let x_1980 : f32 = u_xlat55;
  u_xlat55 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1982) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1988 : f32 = u_xlat1;
  let x_1989 : f32 = u_xlat84;
  u_xlat1 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat1;
  u_xlat1 = (x_1991 * 6.0f);
  let x_2002 : vec4<f32> = u_xlat7;
  let x_2004 : f32 = u_xlat1;
  let x_2005 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2002.x, x_2002.y, x_2002.z), x_2004);
  u_xlat7 = x_2005;
  let x_2007 : f32 = u_xlat7.w;
  u_xlat1 = (x_2007 + -1.0f);
  let x_2010 : f32 = x_367.unity_SpecCube0_HDR.w;
  let x_2011 : f32 = u_xlat1;
  u_xlat1 = ((x_2010 * x_2011) + 1.0f);
  let x_2014 : f32 = u_xlat1;
  u_xlat1 = max(x_2014, 0.0f);
  let x_2016 : f32 = u_xlat1;
  u_xlat1 = log2(x_2016);
  let x_2018 : f32 = u_xlat1;
  let x_2020 : f32 = x_367.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2018 * x_2020);
  let x_2022 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2022);
  let x_2024 : f32 = u_xlat1;
  let x_2026 : f32 = x_367.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2024 * x_2026);
  let x_2028 : vec4<f32> = u_xlat7;
  let x_2030 : f32 = u_xlat1;
  let x_2032 : vec3<f32> = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) * vec3<f32>(x_2030, x_2030, x_2030));
  let x_2033 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
  let x_2035 : f32 = u_xlat80;
  let x_2037 : f32 = u_xlat80;
  let x_2041 : vec2<f32> = ((vec2<f32>(x_2035, x_2035) * vec2<f32>(x_2037, x_2037)) + vec2<f32>(-1.0f, 1.0f));
  let x_2042 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2041.x, x_2041.y, x_2042.z, x_2042.w);
  let x_2045 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_2045);
  let x_2047 : vec4<f32> = u_xlat0;
  let x_2050 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2047.x, x_2047.y, x_2047.z)) + vec3<f32>(x_2050, x_2050, x_2050));
  let x_2053 : f32 = u_xlat55;
  let x_2055 : vec3<f32> = u_xlat34;
  let x_2057 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2053, x_2053, x_2053) * x_2055) + vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2060 : f32 = u_xlat1;
  let x_2062 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2060, x_2060, x_2060) * x_2062);
  let x_2064 : vec4<f32> = u_xlat7;
  let x_2066 : vec3<f32> = u_xlat34;
  let x_2067 : vec3<f32> = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) * x_2066);
  let x_2068 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  let x_2070 : vec4<f32> = u_xlat4;
  let x_2072 : vec4<f32> = u_xlat5;
  let x_2075 : vec4<f32> = u_xlat7;
  let x_2077 : vec3<f32> = ((vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * vec3<f32>(x_2072.x, x_2072.y, x_2072.z)) + vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2078 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
  let x_2081 : f32 = u_xlat3.x;
  let x_2083 : f32 = x_367.unity_LightData.z;
  u_xlat78 = (x_2081 * x_2083);
  let x_2085 : vec4<f32> = u_xlat2;
  let x_2088 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2091, 0.0f, 1.0f);
  let x_2093 : f32 = u_xlat78;
  let x_2094 : f32 = u_xlat1;
  u_xlat78 = (x_2093 * x_2094);
  let x_2096 : f32 = u_xlat78;
  let x_2098 : vec4<f32> = u_xlat6;
  let x_2100 : vec3<f32> = (vec3<f32>(x_2096, x_2096, x_2096) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : vec3<f32> = u_xlat27;
  let x_2105 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2107 : vec3<f32> = (x_2103 + vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  let x_2110 : vec4<f32> = u_xlat7;
  let x_2112 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2110.x, x_2110.y, x_2110.z), vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : f32 = u_xlat78;
  u_xlat78 = max(x_2115, 1.17549435e-38f);
  let x_2118 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2118);
  let x_2120 : f32 = u_xlat78;
  let x_2122 : vec4<f32> = u_xlat7;
  let x_2124 : vec3<f32> = (vec3<f32>(x_2120, x_2120, x_2120) * vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
  let x_2125 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : vec4<f32> = u_xlat2;
  let x_2129 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2127.x, x_2127.y, x_2127.z), vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2132, 0.0f, 1.0f);
  let x_2135 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2137 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_2135.x, x_2135.y, x_2135.z), vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
  let x_2140 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2140, 0.0f, 1.0f);
  let x_2142 : f32 = u_xlat78;
  let x_2143 : f32 = u_xlat78;
  u_xlat78 = (x_2142 * x_2143);
  let x_2145 : f32 = u_xlat78;
  let x_2147 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2145 * x_2147) + 1.00001001358032226562f);
  let x_2151 : f32 = u_xlat1;
  let x_2152 : f32 = u_xlat1;
  u_xlat1 = (x_2151 * x_2152);
  let x_2154 : f32 = u_xlat78;
  let x_2155 : f32 = u_xlat78;
  u_xlat78 = (x_2154 * x_2155);
  let x_2157 : f32 = u_xlat1;
  u_xlat1 = max(x_2157, 0.10000000149011611938f);
  let x_2160 : f32 = u_xlat78;
  let x_2161 : f32 = u_xlat1;
  u_xlat78 = (x_2160 * x_2161);
  let x_2163 : f32 = u_xlat82;
  let x_2164 : f32 = u_xlat78;
  u_xlat78 = (x_2163 * x_2164);
  let x_2166 : f32 = u_xlat83;
  let x_2167 : f32 = u_xlat78;
  u_xlat78 = (x_2166 / x_2167);
  let x_2169 : vec4<f32> = u_xlat0;
  let x_2171 : f32 = u_xlat78;
  let x_2174 : vec4<f32> = u_xlat5;
  let x_2176 : vec3<f32> = ((vec3<f32>(x_2169.x, x_2169.y, x_2169.z) * vec3<f32>(x_2171, x_2171, x_2171)) + vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2180 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2182 : f32 = x_367.unity_LightData.y;
  u_xlat78 = min(x_2180, x_2182);
  let x_2185 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2185));
  let x_2189 : f32 = u_xlat29.x;
  let x_2192 : f32 = x_138.x_AdditionalShadowFadeParams.x;
  let x_2195 : f32 = x_138.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2189 * x_2192) + x_2195);
  let x_2197 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2197, 0.0f, 1.0f);
  let x_2200 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2202 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2204 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2206 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2207 : vec4<f32> = vec4<f32>(x_2200, x_2202, x_2204, x_2206);
  let x_2213 : vec4<bool> = (vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2207.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2214 : vec2<bool> = vec2<bool>(x_2213.x, x_2213.y);
  let x_2215 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2227 : u32 = u_xlatu_loop_1;
    let x_2228 : u32 = u_xlatu78;
    if ((x_2227 < x_2228)) {
    } else {
      break;
    }
    let x_2231 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2231 >> 2u);
    let x_2234 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2234 & 3u));
    let x_2237 : u32 = u_xlatu55;
    let x_2240 : vec4<f32> = x_367.unity_LightIndices[bitcast<i32>(x_2237)];
    let x_2250 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2255 : vec4<u32> = indexable[x_2250];
    u_xlat55 = dot(x_2240, bitcast<vec4<f32>>(x_2255));
    let x_2259 : f32 = u_xlat55;
    u_xlati55 = i32(x_2259);
    let x_2261 : vec3<f32> = vs_TEXCOORD7;
    let x_2272 : i32 = u_xlati55;
    let x_2274 : vec4<f32> = x_2271.x_AdditionalLightsPosition[x_2272];
    let x_2277 : i32 = u_xlati55;
    let x_2279 : vec4<f32> = x_2271.x_AdditionalLightsPosition[x_2277];
    let x_2281 : vec3<f32> = ((-(x_2261) * vec3<f32>(x_2274.w, x_2274.w, x_2274.w)) + vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
    let x_2282 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
    let x_2284 : vec4<f32> = u_xlat9;
    let x_2286 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2284.x, x_2284.y, x_2284.z), vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
    let x_2289 : f32 = u_xlat84;
    u_xlat84 = max(x_2289, 0.00006103515625f);
    let x_2293 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2293);
    let x_2295 : f32 = u_xlat85;
    let x_2297 : vec4<f32> = u_xlat9;
    let x_2299 : vec3<f32> = (vec3<f32>(x_2295, x_2295, x_2295) * vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
    let x_2300 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
    let x_2303 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2303);
    let x_2305 : f32 = u_xlat84;
    let x_2306 : i32 = u_xlati55;
    let x_2308 : f32 = x_2271.x_AdditionalLightsAttenuation[x_2306].x;
    u_xlat84 = (x_2305 * x_2308);
    let x_2310 : f32 = u_xlat84;
    let x_2312 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2310) * x_2312) + 1.0f);
    let x_2315 : f32 = u_xlat84;
    u_xlat84 = max(x_2315, 0.0f);
    let x_2317 : f32 = u_xlat84;
    let x_2318 : f32 = u_xlat84;
    u_xlat84 = (x_2317 * x_2318);
    let x_2320 : f32 = u_xlat84;
    let x_2321 : f32 = u_xlat87;
    u_xlat84 = (x_2320 * x_2321);
    let x_2323 : i32 = u_xlati55;
    let x_2325 : vec4<f32> = x_2271.x_AdditionalLightsSpotDir[x_2323];
    let x_2327 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2325.x, x_2325.y, x_2325.z), vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : f32 = u_xlat87;
    let x_2331 : i32 = u_xlati55;
    let x_2333 : f32 = x_2271.x_AdditionalLightsAttenuation[x_2331].z;
    let x_2335 : i32 = u_xlati55;
    let x_2337 : f32 = x_2271.x_AdditionalLightsAttenuation[x_2335].w;
    u_xlat87 = ((x_2330 * x_2333) + x_2337);
    let x_2339 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2339, 0.0f, 1.0f);
    let x_2341 : f32 = u_xlat87;
    let x_2342 : f32 = u_xlat87;
    u_xlat87 = (x_2341 * x_2342);
    let x_2344 : f32 = u_xlat84;
    let x_2345 : f32 = u_xlat87;
    u_xlat84 = (x_2344 * x_2345);
    let x_2349 : i32 = u_xlati55;
    let x_2351 : f32 = x_138.x_AdditionalShadowParams[x_2349].w;
    u_xlati87 = i32(x_2351);
    let x_2354 : i32 = u_xlati87;
    u_xlatb88 = (x_2354 >= 0i);
    let x_2356 : bool = u_xlatb88;
    if (x_2356) {
      let x_2360 : i32 = u_xlati55;
      let x_2362 : f32 = x_138.x_AdditionalShadowParams[x_2360].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2362, x_2362, x_2362, x_2362))));
      let x_2366 : bool = u_xlatb88;
      if (x_2366) {
        let x_2370 : vec4<f32> = u_xlat10;
        let x_2373 : vec4<f32> = u_xlat10;
        let x_2376 : vec4<bool> = (abs(vec4<f32>(x_2370.z, x_2370.z, x_2370.y, x_2370.z)) >= abs(vec4<f32>(x_2373.x, x_2373.y, x_2373.x, x_2373.x)));
        let x_2378 : vec3<bool> = vec3<bool>(x_2376.x, x_2376.y, x_2376.z);
        let x_2379 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
        let x_2382 : bool = u_xlatb11.y;
        let x_2384 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2382 & x_2384);
        let x_2386 : vec4<f32> = u_xlat10;
        let x_2389 : vec4<bool> = (-(vec4<f32>(x_2386.z, x_2386.y, x_2386.z, x_2386.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2390 : vec3<bool> = vec3<bool>(x_2389.x, x_2389.y, x_2389.w);
        let x_2391 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2390.x, x_2390.y, x_2391.z, x_2390.z);
        let x_2394 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2394);
        let x_2399 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2399);
        let x_2404 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2404);
        let x_2408 : bool = u_xlatb11.z;
        if (x_2408) {
          let x_2413 : f32 = u_xlat11.y;
          x_2409 = x_2413;
        } else {
          let x_2415 : f32 = u_xlat89;
          x_2409 = x_2415;
        }
        let x_2416 : f32 = x_2409;
        u_xlat37.x = x_2416;
        let x_2419 : bool = u_xlatb88;
        if (x_2419) {
          let x_2424 : f32 = u_xlat11.x;
          x_2420 = x_2424;
        } else {
          let x_2427 : f32 = u_xlat37.x;
          x_2420 = x_2427;
        }
        let x_2428 : f32 = x_2420;
        u_xlat88 = x_2428;
        let x_2429 : i32 = u_xlati55;
        let x_2431 : f32 = x_138.x_AdditionalShadowParams[x_2429].w;
        u_xlat11.x = trunc(x_2431);
        let x_2434 : f32 = u_xlat88;
        let x_2436 : f32 = u_xlat11.x;
        u_xlat88 = (x_2434 + x_2436);
        let x_2438 : f32 = u_xlat88;
        u_xlati87 = i32(x_2438);
      }
      let x_2440 : i32 = u_xlati87;
      u_xlati87 = (x_2440 << bitcast<u32>(2i));
      let x_2442 : vec3<f32> = vs_TEXCOORD7;
      let x_2445 : i32 = u_xlati87;
      let x_2448 : i32 = u_xlati87;
      let x_2452 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_2445 + 1i) / 4i)][((x_2448 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2442.y, x_2442.y, x_2442.y, x_2442.y) * x_2452);
      let x_2454 : i32 = u_xlati87;
      let x_2456 : i32 = u_xlati87;
      let x_2459 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[(x_2454 / 4i)][(x_2456 % 4i)];
      let x_2460 : vec3<f32> = vs_TEXCOORD7;
      let x_2463 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2459 * vec4<f32>(x_2460.x, x_2460.x, x_2460.x, x_2460.x)) + x_2463);
      let x_2465 : i32 = u_xlati87;
      let x_2468 : i32 = u_xlati87;
      let x_2472 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_2465 + 2i) / 4i)][((x_2468 + 2i) % 4i)];
      let x_2473 : vec3<f32> = vs_TEXCOORD7;
      let x_2476 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2472 * vec4<f32>(x_2473.z, x_2473.z, x_2473.z, x_2473.z)) + x_2476);
      let x_2478 : vec4<f32> = u_xlat11;
      let x_2479 : i32 = u_xlati87;
      let x_2482 : i32 = u_xlati87;
      let x_2486 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_2479 + 3i) / 4i)][((x_2482 + 3i) % 4i)];
      u_xlat11 = (x_2478 + x_2486);
      let x_2488 : vec4<f32> = u_xlat11;
      let x_2490 : vec4<f32> = u_xlat11;
      let x_2492 : vec3<f32> = (vec3<f32>(x_2488.x, x_2488.y, x_2488.z) / vec3<f32>(x_2490.w, x_2490.w, x_2490.w));
      let x_2493 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
      let x_2496 : i32 = u_xlati55;
      let x_2498 : f32 = x_138.x_AdditionalShadowParams[x_2496].y;
      u_xlatb87 = (0.0f < x_2498);
      let x_2500 : bool = u_xlatb87;
      if (x_2500) {
        let x_2503 : i32 = u_xlati55;
        let x_2505 : f32 = x_138.x_AdditionalShadowParams[x_2503].y;
        u_xlatb87 = (1.0f == x_2505);
        let x_2507 : bool = u_xlatb87;
        if (x_2507) {
          let x_2510 : vec4<f32> = u_xlat11;
          let x_2514 : vec4<f32> = x_138.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2510.x, x_2510.y, x_2510.x, x_2510.y) + x_2514);
          let x_2517 : vec4<f32> = u_xlat12;
          let x_2518 : vec2<f32> = vec2<f32>(x_2517.x, x_2517.y);
          let x_2520 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
          let x_2528 : vec3<f32> = txVec30;
          let x_2530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2528.xy, x_2528.z);
          u_xlat13.x = x_2530;
          let x_2533 : vec4<f32> = u_xlat12;
          let x_2534 : vec2<f32> = vec2<f32>(x_2533.z, x_2533.w);
          let x_2536 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2534.x, x_2534.y, x_2536);
          let x_2543 : vec3<f32> = txVec31;
          let x_2545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
          u_xlat13.y = x_2545;
          let x_2547 : vec4<f32> = u_xlat11;
          let x_2551 : vec4<f32> = x_138.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2547.x, x_2547.y, x_2547.x, x_2547.y) + x_2551);
          let x_2554 : vec4<f32> = u_xlat12;
          let x_2555 : vec2<f32> = vec2<f32>(x_2554.x, x_2554.y);
          let x_2557 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
          let x_2564 : vec3<f32> = txVec32;
          let x_2566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
          u_xlat13.z = x_2566;
          let x_2569 : vec4<f32> = u_xlat12;
          let x_2570 : vec2<f32> = vec2<f32>(x_2569.z, x_2569.w);
          let x_2572 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
          let x_2579 : vec3<f32> = txVec33;
          let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
          u_xlat13.w = x_2581;
          let x_2583 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2583, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2586 : i32 = u_xlati55;
          let x_2588 : f32 = x_138.x_AdditionalShadowParams[x_2586].y;
          u_xlatb88 = (2.0f == x_2588);
          let x_2590 : bool = u_xlatb88;
          if (x_2590) {
            let x_2593 : vec4<f32> = u_xlat11;
            let x_2597 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2600 : vec2<f32> = ((vec2<f32>(x_2593.x, x_2593.y) * vec2<f32>(x_2597.z, x_2597.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2601 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec4<f32> = u_xlat12;
            let x_2605 : vec2<f32> = floor(vec2<f32>(x_2603.x, x_2603.y));
            let x_2606 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2605.x, x_2605.y, x_2606.z, x_2606.w);
            let x_2609 : vec4<f32> = u_xlat11;
            let x_2612 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2615 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2609.x, x_2609.y) * vec2<f32>(x_2612.z, x_2612.w)) + -(vec2<f32>(x_2615.x, x_2615.y)));
            let x_2619 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2619.x, x_2619.x, x_2619.y, x_2619.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2622 : vec4<f32> = u_xlat13;
            let x_2624 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2622.x, x_2622.x, x_2622.z, x_2622.z) * vec4<f32>(x_2624.x, x_2624.x, x_2624.z, x_2624.z));
            let x_2627 : vec4<f32> = u_xlat14;
            let x_2629 : vec2<f32> = (vec2<f32>(x_2627.y, x_2627.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2630 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2629.x, x_2630.y, x_2629.y, x_2630.w);
            let x_2632 : vec4<f32> = u_xlat14;
            let x_2635 : vec2<f32> = u_xlat64;
            let x_2637 : vec2<f32> = ((vec2<f32>(x_2632.x, x_2632.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2635));
            let x_2638 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
            let x_2641 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2641) + vec2<f32>(1.0f, 1.0f));
            let x_2644 : vec2<f32> = u_xlat64;
            let x_2645 : vec2<f32> = min(x_2644, vec2<f32>(0.0f, 0.0f));
            let x_2646 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
            let x_2648 : vec4<f32> = u_xlat15;
            let x_2651 : vec4<f32> = u_xlat15;
            let x_2654 : vec2<f32> = u_xlat66;
            let x_2655 : vec2<f32> = ((-(vec2<f32>(x_2648.x, x_2648.y)) * vec2<f32>(x_2651.x, x_2651.y)) + x_2654);
            let x_2656 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2658 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2658, vec2<f32>(0.0f, 0.0f));
            let x_2660 : vec2<f32> = u_xlat64;
            let x_2662 : vec2<f32> = u_xlat64;
            let x_2664 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2660) * x_2662) + vec2<f32>(x_2664.y, x_2664.w));
            let x_2667 : vec4<f32> = u_xlat15;
            let x_2669 : vec2<f32> = (vec2<f32>(x_2667.x, x_2667.y) + vec2<f32>(1.0f, 1.0f));
            let x_2670 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
            let x_2672 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2672 + vec2<f32>(1.0f, 1.0f));
            let x_2674 : vec4<f32> = u_xlat14;
            let x_2676 : vec2<f32> = (vec2<f32>(x_2674.x, x_2674.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2677 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
            let x_2679 : vec2<f32> = u_xlat66;
            let x_2680 : vec2<f32> = (x_2679 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2681 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat15;
            let x_2685 : vec2<f32> = (vec2<f32>(x_2683.x, x_2683.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2686 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2685.x, x_2685.y, x_2686.z, x_2686.w);
            let x_2688 : vec2<f32> = u_xlat64;
            let x_2689 : vec2<f32> = (x_2688 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2690 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2689.x, x_2689.y, x_2690.z, x_2690.w);
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2692.y, x_2692.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2696 : f32 = u_xlat15.x;
            u_xlat16.z = x_2696;
            let x_2699 : f32 = u_xlat64.x;
            u_xlat16.w = x_2699;
            let x_2702 : f32 = u_xlat17.x;
            u_xlat14.z = x_2702;
            let x_2705 : f32 = u_xlat13.x;
            u_xlat14.w = x_2705;
            let x_2707 : vec4<f32> = u_xlat14;
            let x_2709 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2707.z, x_2707.w, x_2707.x, x_2707.z) + vec4<f32>(x_2709.z, x_2709.w, x_2709.x, x_2709.z));
            let x_2713 : f32 = u_xlat16.y;
            u_xlat15.z = x_2713;
            let x_2716 : f32 = u_xlat64.y;
            u_xlat15.w = x_2716;
            let x_2719 : f32 = u_xlat14.y;
            u_xlat17.z = x_2719;
            let x_2722 : f32 = u_xlat13.z;
            u_xlat17.w = x_2722;
            let x_2724 : vec4<f32> = u_xlat15;
            let x_2726 : vec4<f32> = u_xlat17;
            let x_2728 : vec3<f32> = (vec3<f32>(x_2724.z, x_2724.y, x_2724.w) + vec3<f32>(x_2726.z, x_2726.y, x_2726.w));
            let x_2729 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
            let x_2731 : vec4<f32> = u_xlat14;
            let x_2733 : vec4<f32> = u_xlat18;
            let x_2735 : vec3<f32> = (vec3<f32>(x_2731.x, x_2731.z, x_2731.w) / vec3<f32>(x_2733.z, x_2733.w, x_2733.y));
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
            let x_2738 : vec4<f32> = u_xlat14;
            let x_2740 : vec3<f32> = (vec3<f32>(x_2738.x, x_2738.y, x_2738.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2741 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2741.w);
            let x_2743 : vec4<f32> = u_xlat17;
            let x_2745 : vec4<f32> = u_xlat13;
            let x_2747 : vec3<f32> = (vec3<f32>(x_2743.z, x_2743.y, x_2743.w) / vec3<f32>(x_2745.x, x_2745.y, x_2745.z));
            let x_2748 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2748.w);
            let x_2750 : vec4<f32> = u_xlat15;
            let x_2752 : vec3<f32> = (vec3<f32>(x_2750.x, x_2750.y, x_2750.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2753 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
            let x_2755 : vec4<f32> = u_xlat14;
            let x_2758 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2760 : vec3<f32> = (vec3<f32>(x_2755.y, x_2755.x, x_2755.z) * vec3<f32>(x_2758.x, x_2758.x, x_2758.x));
            let x_2761 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat15;
            let x_2766 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2768 : vec3<f32> = (vec3<f32>(x_2763.x, x_2763.y, x_2763.z) * vec3<f32>(x_2766.y, x_2766.y, x_2766.y));
            let x_2769 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2769.w);
            let x_2772 : f32 = u_xlat15.x;
            u_xlat14.w = x_2772;
            let x_2774 : vec4<f32> = u_xlat12;
            let x_2777 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2780 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.y, x_2780.w, x_2780.x, x_2780.w));
            let x_2783 : vec4<f32> = u_xlat12;
            let x_2786 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2783.x, x_2783.y) * vec2<f32>(x_2786.x, x_2786.y)) + vec2<f32>(x_2789.z, x_2789.w));
            let x_2793 : f32 = u_xlat14.y;
            u_xlat15.w = x_2793;
            let x_2795 : vec4<f32> = u_xlat15;
            let x_2796 : vec2<f32> = vec2<f32>(x_2795.y, x_2795.z);
            let x_2797 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2797.x, x_2796.x, x_2797.z, x_2796.y);
            let x_2799 : vec4<f32> = u_xlat12;
            let x_2802 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2805 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y) * vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y)) + vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2805.y));
            let x_2808 : vec4<f32> = u_xlat12;
            let x_2811 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2814 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2808.x, x_2808.y, x_2808.x, x_2808.y) * vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y)) + vec4<f32>(x_2814.w, x_2814.y, x_2814.w, x_2814.z));
            let x_2817 : vec4<f32> = u_xlat12;
            let x_2820 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2823 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2817.x, x_2817.y, x_2817.x, x_2817.y) * vec4<f32>(x_2820.x, x_2820.y, x_2820.x, x_2820.y)) + vec4<f32>(x_2823.x, x_2823.w, x_2823.z, x_2823.w));
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2828 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2826.x, x_2826.x, x_2826.x, x_2826.y) * vec4<f32>(x_2828.z, x_2828.w, x_2828.y, x_2828.z));
            let x_2831 : vec4<f32> = u_xlat13;
            let x_2833 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2831.y, x_2831.y, x_2831.z, x_2831.z) * x_2833);
            let x_2836 : f32 = u_xlat13.z;
            let x_2838 : f32 = u_xlat18.y;
            u_xlat88 = (x_2836 * x_2838);
            let x_2841 : vec4<f32> = u_xlat16;
            let x_2842 : vec2<f32> = vec2<f32>(x_2841.x, x_2841.y);
            let x_2844 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2842.x, x_2842.y, x_2844);
            let x_2851 : vec3<f32> = txVec34;
            let x_2853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2851.xy, x_2851.z);
            u_xlat89 = x_2853;
            let x_2855 : vec4<f32> = u_xlat16;
            let x_2856 : vec2<f32> = vec2<f32>(x_2855.z, x_2855.w);
            let x_2858 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2856.x, x_2856.y, x_2858);
            let x_2865 : vec3<f32> = txVec35;
            let x_2867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2865.xy, x_2865.z);
            u_xlat12.x = x_2867;
            let x_2870 : f32 = u_xlat12.x;
            let x_2872 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2870 * x_2872);
            let x_2876 : f32 = u_xlat19.x;
            let x_2877 : f32 = u_xlat89;
            let x_2880 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2876 * x_2877) + x_2880);
            let x_2883 : vec2<f32> = u_xlat64;
            let x_2885 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2883.x, x_2883.y, x_2885);
            let x_2892 : vec3<f32> = txVec36;
            let x_2894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2892.xy, x_2892.z);
            u_xlat12.x = x_2894;
            let x_2897 : f32 = u_xlat19.z;
            let x_2899 : f32 = u_xlat12.x;
            let x_2901 : f32 = u_xlat89;
            u_xlat89 = ((x_2897 * x_2899) + x_2901);
            let x_2904 : vec4<f32> = u_xlat15;
            let x_2905 : vec2<f32> = vec2<f32>(x_2904.x, x_2904.y);
            let x_2907 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2905.x, x_2905.y, x_2907);
            let x_2914 : vec3<f32> = txVec37;
            let x_2916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2914.xy, x_2914.z);
            u_xlat12.x = x_2916;
            let x_2919 : f32 = u_xlat19.w;
            let x_2921 : f32 = u_xlat12.x;
            let x_2923 : f32 = u_xlat89;
            u_xlat89 = ((x_2919 * x_2921) + x_2923);
            let x_2926 : vec4<f32> = u_xlat17;
            let x_2927 : vec2<f32> = vec2<f32>(x_2926.x, x_2926.y);
            let x_2929 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
            let x_2936 : vec3<f32> = txVec38;
            let x_2938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
            u_xlat12.x = x_2938;
            let x_2941 : f32 = u_xlat20.x;
            let x_2943 : f32 = u_xlat12.x;
            let x_2945 : f32 = u_xlat89;
            u_xlat89 = ((x_2941 * x_2943) + x_2945);
            let x_2948 : vec4<f32> = u_xlat17;
            let x_2949 : vec2<f32> = vec2<f32>(x_2948.z, x_2948.w);
            let x_2951 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2949.x, x_2949.y, x_2951);
            let x_2958 : vec3<f32> = txVec39;
            let x_2960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2958.xy, x_2958.z);
            u_xlat12.x = x_2960;
            let x_2963 : f32 = u_xlat20.y;
            let x_2965 : f32 = u_xlat12.x;
            let x_2967 : f32 = u_xlat89;
            u_xlat89 = ((x_2963 * x_2965) + x_2967);
            let x_2970 : vec4<f32> = u_xlat15;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.z, x_2970.w);
            let x_2973 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec40;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat12.x = x_2982;
            let x_2985 : f32 = u_xlat20.z;
            let x_2987 : f32 = u_xlat12.x;
            let x_2989 : f32 = u_xlat89;
            u_xlat89 = ((x_2985 * x_2987) + x_2989);
            let x_2992 : vec4<f32> = u_xlat14;
            let x_2993 : vec2<f32> = vec2<f32>(x_2992.x, x_2992.y);
            let x_2995 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2993.x, x_2993.y, x_2995);
            let x_3002 : vec3<f32> = txVec41;
            let x_3004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3002.xy, x_3002.z);
            u_xlat12.x = x_3004;
            let x_3007 : f32 = u_xlat20.w;
            let x_3009 : f32 = u_xlat12.x;
            let x_3011 : f32 = u_xlat89;
            u_xlat89 = ((x_3007 * x_3009) + x_3011);
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3015 : vec2<f32> = vec2<f32>(x_3014.z, x_3014.w);
            let x_3017 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
            let x_3024 : vec3<f32> = txVec42;
            let x_3026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
            u_xlat12.x = x_3026;
            let x_3028 : f32 = u_xlat88;
            let x_3030 : f32 = u_xlat12.x;
            let x_3032 : f32 = u_xlat89;
            u_xlat87 = ((x_3028 * x_3030) + x_3032);
          } else {
            let x_3035 : vec4<f32> = u_xlat11;
            let x_3038 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3041 : vec2<f32> = ((vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(x_3038.z, x_3038.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3042 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3041.x, x_3041.y, x_3042.z, x_3042.w);
            let x_3044 : vec4<f32> = u_xlat12;
            let x_3046 : vec2<f32> = floor(vec2<f32>(x_3044.x, x_3044.y));
            let x_3047 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3046.x, x_3046.y, x_3047.z, x_3047.w);
            let x_3049 : vec4<f32> = u_xlat11;
            let x_3052 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(x_3052.z, x_3052.w)) + -(vec2<f32>(x_3055.x, x_3055.y)));
            let x_3059 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3059.x, x_3059.x, x_3059.y, x_3059.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3062 : vec4<f32> = u_xlat13;
            let x_3064 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3062.x, x_3062.x, x_3062.z, x_3062.z) * vec4<f32>(x_3064.x, x_3064.x, x_3064.z, x_3064.z));
            let x_3067 : vec4<f32> = u_xlat14;
            let x_3069 : vec2<f32> = (vec2<f32>(x_3067.y, x_3067.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3070 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3070.x, x_3069.x, x_3070.z, x_3069.y);
            let x_3072 : vec4<f32> = u_xlat14;
            let x_3075 : vec2<f32> = u_xlat64;
            let x_3077 : vec2<f32> = ((vec2<f32>(x_3072.x, x_3072.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3075));
            let x_3078 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3077.x, x_3078.y, x_3077.y, x_3078.w);
            let x_3080 : vec2<f32> = u_xlat64;
            let x_3082 : vec2<f32> = (-(x_3080) + vec2<f32>(1.0f, 1.0f));
            let x_3083 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3082.x, x_3082.y, x_3083.z, x_3083.w);
            let x_3085 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3085, vec2<f32>(0.0f, 0.0f));
            let x_3087 : vec2<f32> = u_xlat66;
            let x_3089 : vec2<f32> = u_xlat66;
            let x_3091 : vec4<f32> = u_xlat14;
            let x_3093 : vec2<f32> = ((-(x_3087) * x_3089) + vec2<f32>(x_3091.x, x_3091.y));
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3096 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3096, vec2<f32>(0.0f, 0.0f));
            let x_3099 : vec2<f32> = u_xlat66;
            let x_3101 : vec2<f32> = u_xlat66;
            let x_3103 : vec4<f32> = u_xlat13;
            let x_3105 : vec2<f32> = ((-(x_3099) * x_3101) + vec2<f32>(x_3103.y, x_3103.w));
            let x_3106 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3105.x, x_3106.y, x_3105.y);
            let x_3108 : vec4<f32> = u_xlat14;
            let x_3111 : vec2<f32> = (vec2<f32>(x_3108.x, x_3108.y) + vec2<f32>(2.0f, 2.0f));
            let x_3112 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3111.x, x_3111.y, x_3112.z, x_3112.w);
            let x_3114 : vec3<f32> = u_xlat39;
            let x_3116 : vec2<f32> = (vec2<f32>(x_3114.x, x_3114.z) + vec2<f32>(2.0f, 2.0f));
            let x_3117 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3117.x, x_3116.x, x_3117.z, x_3116.y);
            let x_3120 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3120 * 0.08163200318813323975f);
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3126 : vec3<f32> = (vec3<f32>(x_3123.z, x_3123.x, x_3123.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3127 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3127.w);
            let x_3129 : vec4<f32> = u_xlat14;
            let x_3131 : vec2<f32> = (vec2<f32>(x_3129.x, x_3129.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3132 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3131.x, x_3131.y, x_3132.z, x_3132.w);
            let x_3135 : f32 = u_xlat17.y;
            u_xlat16.x = x_3135;
            let x_3137 : vec2<f32> = u_xlat64;
            let x_3140 : vec2<f32> = ((vec2<f32>(x_3137.x, x_3137.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3141 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3141.x, x_3140.x, x_3141.z, x_3140.y);
            let x_3143 : vec2<f32> = u_xlat64;
            let x_3146 : vec2<f32> = ((vec2<f32>(x_3143.x, x_3143.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3147 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3146.x, x_3147.y, x_3146.y, x_3147.w);
            let x_3150 : f32 = u_xlat13.x;
            u_xlat14.y = x_3150;
            let x_3153 : f32 = u_xlat15.y;
            u_xlat14.w = x_3153;
            let x_3155 : vec4<f32> = u_xlat14;
            let x_3156 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3155 + x_3156);
            let x_3158 : vec2<f32> = u_xlat64;
            let x_3161 : vec2<f32> = ((vec2<f32>(x_3158.y, x_3158.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3162 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3162.x, x_3161.x, x_3162.z, x_3161.y);
            let x_3164 : vec2<f32> = u_xlat64;
            let x_3167 : vec2<f32> = ((vec2<f32>(x_3164.y, x_3164.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3168 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3167.x, x_3168.y, x_3167.y, x_3168.w);
            let x_3171 : f32 = u_xlat13.y;
            u_xlat15.y = x_3171;
            let x_3173 : vec4<f32> = u_xlat15;
            let x_3174 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3173 + x_3174);
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3177 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3176 / x_3177);
            let x_3179 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3179 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3181 : vec4<f32> = u_xlat15;
            let x_3182 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3181 / x_3182);
            let x_3184 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3184 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3186 : vec4<f32> = u_xlat14;
            let x_3189 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3186.w, x_3186.x, x_3186.y, x_3186.z) * vec4<f32>(x_3189.x, x_3189.x, x_3189.x, x_3189.x));
            let x_3192 : vec4<f32> = u_xlat15;
            let x_3195 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3192.x, x_3192.w, x_3192.y, x_3192.z) * vec4<f32>(x_3195.y, x_3195.y, x_3195.y, x_3195.y));
            let x_3198 : vec4<f32> = u_xlat14;
            let x_3199 : vec3<f32> = vec3<f32>(x_3198.y, x_3198.z, x_3198.w);
            let x_3200 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3199.x, x_3200.y, x_3199.y, x_3199.z);
            let x_3203 : f32 = u_xlat15.x;
            u_xlat17.y = x_3203;
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3208 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3211 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3205.x, x_3205.y, x_3205.x, x_3205.y) * vec4<f32>(x_3208.x, x_3208.y, x_3208.x, x_3208.y)) + vec4<f32>(x_3211.x, x_3211.y, x_3211.z, x_3211.y));
            let x_3214 : vec4<f32> = u_xlat12;
            let x_3217 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3220 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3214.x, x_3214.y) * vec2<f32>(x_3217.x, x_3217.y)) + vec2<f32>(x_3220.w, x_3220.y));
            let x_3224 : f32 = u_xlat17.y;
            u_xlat14.y = x_3224;
            let x_3227 : f32 = u_xlat15.z;
            u_xlat17.y = x_3227;
            let x_3229 : vec4<f32> = u_xlat12;
            let x_3232 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3229.x, x_3229.y, x_3229.x, x_3229.y) * vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y)) + vec4<f32>(x_3235.x, x_3235.y, x_3235.z, x_3235.y));
            let x_3238 : vec4<f32> = u_xlat12;
            let x_3241 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3244 : vec4<f32> = u_xlat17;
            let x_3246 : vec2<f32> = ((vec2<f32>(x_3238.x, x_3238.y) * vec2<f32>(x_3241.x, x_3241.y)) + vec2<f32>(x_3244.w, x_3244.y));
            let x_3247 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3246.x, x_3246.y, x_3247.z, x_3247.w);
            let x_3250 : f32 = u_xlat17.y;
            u_xlat14.z = x_3250;
            let x_3253 : vec4<f32> = u_xlat12;
            let x_3256 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3259 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3253.x, x_3253.y, x_3253.x, x_3253.y) * vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y)) + vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.z));
            let x_3263 : f32 = u_xlat15.w;
            u_xlat17.y = x_3263;
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3266.x, x_3266.y, x_3266.x, x_3266.y) * vec4<f32>(x_3269.x, x_3269.y, x_3269.x, x_3269.y)) + vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3272.y));
            let x_3276 : vec4<f32> = u_xlat12;
            let x_3279 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3282 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3276.x, x_3276.y) * vec2<f32>(x_3279.x, x_3279.y)) + vec2<f32>(x_3282.w, x_3282.y));
            let x_3286 : f32 = u_xlat17.y;
            u_xlat14.w = x_3286;
            let x_3289 : vec4<f32> = u_xlat12;
            let x_3292 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3295 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3289.x, x_3289.y) * vec2<f32>(x_3292.x, x_3292.y)) + vec2<f32>(x_3295.x, x_3295.w));
            let x_3298 : vec4<f32> = u_xlat17;
            let x_3299 : vec3<f32> = vec3<f32>(x_3298.x, x_3298.z, x_3298.w);
            let x_3300 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3299.x, x_3300.y, x_3299.y, x_3299.z);
            let x_3302 : vec4<f32> = u_xlat12;
            let x_3305 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3302.x, x_3302.y, x_3302.x, x_3302.y) * vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y)) + vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3308.y));
            let x_3312 : vec4<f32> = u_xlat12;
            let x_3315 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3318 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(x_3315.x, x_3315.y)) + vec2<f32>(x_3318.w, x_3318.y));
            let x_3322 : f32 = u_xlat14.x;
            u_xlat15.x = x_3322;
            let x_3324 : vec4<f32> = u_xlat12;
            let x_3327 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3330 : vec4<f32> = u_xlat15;
            let x_3332 : vec2<f32> = ((vec2<f32>(x_3324.x, x_3324.y) * vec2<f32>(x_3327.x, x_3327.y)) + vec2<f32>(x_3330.x, x_3330.y));
            let x_3333 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3332.x, x_3332.y, x_3333.z, x_3333.w);
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3338 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3336.x, x_3336.x, x_3336.x, x_3336.x) * x_3338);
            let x_3341 : vec4<f32> = u_xlat13;
            let x_3343 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3341.y, x_3341.y, x_3341.y, x_3341.y) * x_3343);
            let x_3346 : vec4<f32> = u_xlat13;
            let x_3348 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3346.z, x_3346.z, x_3346.z, x_3346.z) * x_3348);
            let x_3350 : vec4<f32> = u_xlat13;
            let x_3352 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3350.w, x_3350.w, x_3350.w, x_3350.w) * x_3352);
            let x_3355 : vec4<f32> = u_xlat18;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.x, x_3355.y);
            let x_3358 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec43;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat88 = x_3367;
            let x_3369 : vec4<f32> = u_xlat18;
            let x_3370 : vec2<f32> = vec2<f32>(x_3369.z, x_3369.w);
            let x_3372 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3370.x, x_3370.y, x_3372);
            let x_3379 : vec3<f32> = txVec44;
            let x_3381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3379.xy, x_3379.z);
            u_xlat89 = x_3381;
            let x_3382 : f32 = u_xlat89;
            let x_3384 : f32 = u_xlat23.y;
            u_xlat89 = (x_3382 * x_3384);
            let x_3387 : f32 = u_xlat23.x;
            let x_3388 : f32 = u_xlat88;
            let x_3390 : f32 = u_xlat89;
            u_xlat88 = ((x_3387 * x_3388) + x_3390);
            let x_3393 : vec2<f32> = u_xlat64;
            let x_3395 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec45;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat89 = x_3404;
            let x_3406 : f32 = u_xlat23.z;
            let x_3407 : f32 = u_xlat89;
            let x_3409 : f32 = u_xlat88;
            u_xlat88 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec4<f32> = u_xlat21;
            let x_3413 : vec2<f32> = vec2<f32>(x_3412.x, x_3412.y);
            let x_3415 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3413.x, x_3413.y, x_3415);
            let x_3422 : vec3<f32> = txVec46;
            let x_3424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3422.xy, x_3422.z);
            u_xlat89 = x_3424;
            let x_3426 : f32 = u_xlat23.w;
            let x_3427 : f32 = u_xlat89;
            let x_3429 : f32 = u_xlat88;
            u_xlat88 = ((x_3426 * x_3427) + x_3429);
            let x_3432 : vec4<f32> = u_xlat19;
            let x_3433 : vec2<f32> = vec2<f32>(x_3432.x, x_3432.y);
            let x_3435 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3433.x, x_3433.y, x_3435);
            let x_3442 : vec3<f32> = txVec47;
            let x_3444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3442.xy, x_3442.z);
            u_xlat89 = x_3444;
            let x_3446 : f32 = u_xlat24.x;
            let x_3447 : f32 = u_xlat89;
            let x_3449 : f32 = u_xlat88;
            u_xlat88 = ((x_3446 * x_3447) + x_3449);
            let x_3452 : vec4<f32> = u_xlat19;
            let x_3453 : vec2<f32> = vec2<f32>(x_3452.z, x_3452.w);
            let x_3455 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3453.x, x_3453.y, x_3455);
            let x_3462 : vec3<f32> = txVec48;
            let x_3464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3462.xy, x_3462.z);
            u_xlat89 = x_3464;
            let x_3466 : f32 = u_xlat24.y;
            let x_3467 : f32 = u_xlat89;
            let x_3469 : f32 = u_xlat88;
            u_xlat88 = ((x_3466 * x_3467) + x_3469);
            let x_3472 : vec4<f32> = u_xlat20;
            let x_3473 : vec2<f32> = vec2<f32>(x_3472.x, x_3472.y);
            let x_3475 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3473.x, x_3473.y, x_3475);
            let x_3482 : vec3<f32> = txVec49;
            let x_3484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3482.xy, x_3482.z);
            u_xlat89 = x_3484;
            let x_3486 : f32 = u_xlat24.z;
            let x_3487 : f32 = u_xlat89;
            let x_3489 : f32 = u_xlat88;
            u_xlat88 = ((x_3486 * x_3487) + x_3489);
            let x_3492 : vec4<f32> = u_xlat21;
            let x_3493 : vec2<f32> = vec2<f32>(x_3492.z, x_3492.w);
            let x_3495 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3493.x, x_3493.y, x_3495);
            let x_3502 : vec3<f32> = txVec50;
            let x_3504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3502.xy, x_3502.z);
            u_xlat89 = x_3504;
            let x_3506 : f32 = u_xlat24.w;
            let x_3507 : f32 = u_xlat89;
            let x_3509 : f32 = u_xlat88;
            u_xlat88 = ((x_3506 * x_3507) + x_3509);
            let x_3512 : vec4<f32> = u_xlat22;
            let x_3513 : vec2<f32> = vec2<f32>(x_3512.x, x_3512.y);
            let x_3515 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3513.x, x_3513.y, x_3515);
            let x_3522 : vec3<f32> = txVec51;
            let x_3524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3522.xy, x_3522.z);
            u_xlat89 = x_3524;
            let x_3526 : f32 = u_xlat25.x;
            let x_3527 : f32 = u_xlat89;
            let x_3529 : f32 = u_xlat88;
            u_xlat88 = ((x_3526 * x_3527) + x_3529);
            let x_3532 : vec4<f32> = u_xlat22;
            let x_3533 : vec2<f32> = vec2<f32>(x_3532.z, x_3532.w);
            let x_3535 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3533.x, x_3533.y, x_3535);
            let x_3542 : vec3<f32> = txVec52;
            let x_3544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3542.xy, x_3542.z);
            u_xlat89 = x_3544;
            let x_3546 : f32 = u_xlat25.y;
            let x_3547 : f32 = u_xlat89;
            let x_3549 : f32 = u_xlat88;
            u_xlat88 = ((x_3546 * x_3547) + x_3549);
            let x_3552 : vec2<f32> = u_xlat40;
            let x_3554 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3552.x, x_3552.y, x_3554);
            let x_3561 : vec3<f32> = txVec53;
            let x_3563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3561.xy, x_3561.z);
            u_xlat89 = x_3563;
            let x_3565 : f32 = u_xlat25.z;
            let x_3566 : f32 = u_xlat89;
            let x_3568 : f32 = u_xlat88;
            u_xlat88 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec2<f32> = u_xlat72;
            let x_3573 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec54;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat89 = x_3582;
            let x_3584 : f32 = u_xlat25.w;
            let x_3585 : f32 = u_xlat89;
            let x_3587 : f32 = u_xlat88;
            u_xlat88 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec4<f32> = u_xlat17;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.x, x_3590.y);
            let x_3593 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec55;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat89 = x_3602;
            let x_3604 : f32 = u_xlat13.x;
            let x_3605 : f32 = u_xlat89;
            let x_3607 : f32 = u_xlat88;
            u_xlat88 = ((x_3604 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat17;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.z, x_3610.w);
            let x_3613 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec56;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat89 = x_3622;
            let x_3624 : f32 = u_xlat13.y;
            let x_3625 : f32 = u_xlat89;
            let x_3627 : f32 = u_xlat88;
            u_xlat88 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec2<f32> = u_xlat67;
            let x_3632 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3630.x, x_3630.y, x_3632);
            let x_3639 : vec3<f32> = txVec57;
            let x_3641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3639.xy, x_3639.z);
            u_xlat89 = x_3641;
            let x_3643 : f32 = u_xlat13.z;
            let x_3644 : f32 = u_xlat89;
            let x_3646 : f32 = u_xlat88;
            u_xlat88 = ((x_3643 * x_3644) + x_3646);
            let x_3649 : vec4<f32> = u_xlat12;
            let x_3650 : vec2<f32> = vec2<f32>(x_3649.x, x_3649.y);
            let x_3652 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3650.x, x_3650.y, x_3652);
            let x_3659 : vec3<f32> = txVec58;
            let x_3661 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3659.xy, x_3659.z);
            u_xlat89 = x_3661;
            let x_3663 : f32 = u_xlat13.w;
            let x_3664 : f32 = u_xlat89;
            let x_3666 : f32 = u_xlat88;
            u_xlat87 = ((x_3663 * x_3664) + x_3666);
          }
        }
      } else {
        let x_3670 : vec4<f32> = u_xlat11;
        let x_3671 : vec2<f32> = vec2<f32>(x_3670.x, x_3670.y);
        let x_3673 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
        let x_3680 : vec3<f32> = txVec59;
        let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
        u_xlat87 = x_3682;
      }
      let x_3683 : i32 = u_xlati55;
      let x_3685 : f32 = x_138.x_AdditionalShadowParams[x_3683].x;
      u_xlat88 = (1.0f + -(x_3685));
      let x_3688 : f32 = u_xlat87;
      let x_3689 : i32 = u_xlati55;
      let x_3691 : f32 = x_138.x_AdditionalShadowParams[x_3689].x;
      let x_3693 : f32 = u_xlat88;
      u_xlat87 = ((x_3688 * x_3691) + x_3693);
      let x_3696 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3696);
      let x_3699 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3699 >= 1.0f);
      let x_3702 : bool = u_xlatb88;
      let x_3704 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3702 | x_3704);
      let x_3706 : bool = u_xlatb88;
      let x_3707 : f32 = u_xlat87;
      u_xlat87 = select(x_3707, 1.0f, x_3706);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3710 : f32 = u_xlat87;
    u_xlat88 = (-(x_3710) + 1.0f);
    let x_3713 : f32 = u_xlat1;
    let x_3714 : f32 = u_xlat88;
    let x_3716 : f32 = u_xlat87;
    u_xlat87 = ((x_3713 * x_3714) + x_3716);
    let x_3719 : i32 = u_xlati55;
    u_xlati88 = (1i << bitcast<u32>((x_3719 & 31i)));
    let x_3723 : i32 = u_xlati88;
    let x_3726 : f32 = x_1831.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3723) & bitcast<u32>(x_3726)));
    let x_3730 : i32 = u_xlati88;
    if ((x_3730 != 0i)) {
      let x_3734 : i32 = u_xlati55;
      let x_3736 : f32 = x_1831.x_AdditionalLightsLightTypes[x_3734].el;
      u_xlati88 = i32(x_3736);
      let x_3739 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3739 != 0i));
      let x_3743 : i32 = u_xlati55;
      u_xlati37 = (x_3743 << bitcast<u32>(2i));
      let x_3745 : i32 = u_xlati11;
      if ((x_3745 != 0i)) {
        let x_3749 : vec3<f32> = vs_TEXCOORD7;
        let x_3751 : i32 = u_xlati37;
        let x_3754 : i32 = u_xlati37;
        let x_3758 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3751 + 1i) / 4i)][((x_3754 + 1i) % 4i)];
        let x_3760 : vec3<f32> = (vec3<f32>(x_3749.y, x_3749.y, x_3749.y) * vec3<f32>(x_3758.x, x_3758.y, x_3758.w));
        let x_3761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3760.x, x_3761.y, x_3760.y, x_3760.z);
        let x_3763 : i32 = u_xlati37;
        let x_3765 : i32 = u_xlati37;
        let x_3768 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[(x_3763 / 4i)][(x_3765 % 4i)];
        let x_3770 : vec3<f32> = vs_TEXCOORD7;
        let x_3773 : vec4<f32> = u_xlat11;
        let x_3775 : vec3<f32> = ((vec3<f32>(x_3768.x, x_3768.y, x_3768.w) * vec3<f32>(x_3770.x, x_3770.x, x_3770.x)) + vec3<f32>(x_3773.x, x_3773.z, x_3773.w));
        let x_3776 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3775.x, x_3776.y, x_3775.y, x_3775.z);
        let x_3778 : i32 = u_xlati37;
        let x_3781 : i32 = u_xlati37;
        let x_3785 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3778 + 2i) / 4i)][((x_3781 + 2i) % 4i)];
        let x_3787 : vec3<f32> = vs_TEXCOORD7;
        let x_3790 : vec4<f32> = u_xlat11;
        let x_3792 : vec3<f32> = ((vec3<f32>(x_3785.x, x_3785.y, x_3785.w) * vec3<f32>(x_3787.z, x_3787.z, x_3787.z)) + vec3<f32>(x_3790.x, x_3790.z, x_3790.w));
        let x_3793 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3792.x, x_3793.y, x_3792.y, x_3792.z);
        let x_3795 : vec4<f32> = u_xlat11;
        let x_3797 : i32 = u_xlati37;
        let x_3800 : i32 = u_xlati37;
        let x_3804 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3797 + 3i) / 4i)][((x_3800 + 3i) % 4i)];
        let x_3806 : vec3<f32> = (vec3<f32>(x_3795.x, x_3795.z, x_3795.w) + vec3<f32>(x_3804.x, x_3804.y, x_3804.w));
        let x_3807 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3806.x, x_3807.y, x_3806.y, x_3806.z);
        let x_3809 : vec4<f32> = u_xlat11;
        let x_3811 : vec4<f32> = u_xlat11;
        let x_3813 : vec2<f32> = (vec2<f32>(x_3809.x, x_3809.z) / vec2<f32>(x_3811.w, x_3811.w));
        let x_3814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3813.x, x_3814.y, x_3813.y, x_3814.w);
        let x_3816 : vec4<f32> = u_xlat11;
        let x_3819 : vec2<f32> = ((vec2<f32>(x_3816.x, x_3816.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3820 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3819.x, x_3820.y, x_3819.y, x_3820.w);
        let x_3822 : vec4<f32> = u_xlat11;
        let x_3826 : vec2<f32> = clamp(vec2<f32>(x_3822.x, x_3822.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3827 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3826.x, x_3827.y, x_3826.y, x_3827.w);
        let x_3829 : i32 = u_xlati55;
        let x_3831 : vec4<f32> = x_1831.x_AdditionalLightsCookieAtlasUVRects[x_3829];
        let x_3833 : vec4<f32> = u_xlat11;
        let x_3836 : i32 = u_xlati55;
        let x_3838 : vec4<f32> = x_1831.x_AdditionalLightsCookieAtlasUVRects[x_3836];
        let x_3840 : vec2<f32> = ((vec2<f32>(x_3831.x, x_3831.y) * vec2<f32>(x_3833.x, x_3833.z)) + vec2<f32>(x_3838.z, x_3838.w));
        let x_3841 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3840.x, x_3841.y, x_3840.y, x_3841.w);
      } else {
        let x_3844 : i32 = u_xlati88;
        u_xlatb88 = (x_3844 == 1i);
        let x_3846 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3846);
        let x_3848 : i32 = u_xlati88;
        if ((x_3848 != 0i)) {
          let x_3852 : vec3<f32> = vs_TEXCOORD7;
          let x_3854 : i32 = u_xlati37;
          let x_3857 : i32 = u_xlati37;
          let x_3861 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3854 + 1i) / 4i)][((x_3857 + 1i) % 4i)];
          let x_3863 : vec2<f32> = (vec2<f32>(x_3852.y, x_3852.y) * vec2<f32>(x_3861.x, x_3861.y));
          let x_3864 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3863.x, x_3863.y, x_3864.z, x_3864.w);
          let x_3866 : i32 = u_xlati37;
          let x_3868 : i32 = u_xlati37;
          let x_3871 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[(x_3866 / 4i)][(x_3868 % 4i)];
          let x_3873 : vec3<f32> = vs_TEXCOORD7;
          let x_3876 : vec4<f32> = u_xlat12;
          let x_3878 : vec2<f32> = ((vec2<f32>(x_3871.x, x_3871.y) * vec2<f32>(x_3873.x, x_3873.x)) + vec2<f32>(x_3876.x, x_3876.y));
          let x_3879 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3878.x, x_3878.y, x_3879.z, x_3879.w);
          let x_3881 : i32 = u_xlati37;
          let x_3884 : i32 = u_xlati37;
          let x_3888 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3881 + 2i) / 4i)][((x_3884 + 2i) % 4i)];
          let x_3890 : vec3<f32> = vs_TEXCOORD7;
          let x_3893 : vec4<f32> = u_xlat12;
          let x_3895 : vec2<f32> = ((vec2<f32>(x_3888.x, x_3888.y) * vec2<f32>(x_3890.z, x_3890.z)) + vec2<f32>(x_3893.x, x_3893.y));
          let x_3896 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3895.x, x_3895.y, x_3896.z, x_3896.w);
          let x_3898 : vec4<f32> = u_xlat12;
          let x_3900 : i32 = u_xlati37;
          let x_3903 : i32 = u_xlati37;
          let x_3907 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3900 + 3i) / 4i)][((x_3903 + 3i) % 4i)];
          let x_3909 : vec2<f32> = (vec2<f32>(x_3898.x, x_3898.y) + vec2<f32>(x_3907.x, x_3907.y));
          let x_3910 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3909.x, x_3909.y, x_3910.z, x_3910.w);
          let x_3912 : vec4<f32> = u_xlat12;
          let x_3915 : vec2<f32> = ((vec2<f32>(x_3912.x, x_3912.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3915.x, x_3915.y, x_3916.z, x_3916.w);
          let x_3918 : vec4<f32> = u_xlat12;
          let x_3920 : vec2<f32> = fract(vec2<f32>(x_3918.x, x_3918.y));
          let x_3921 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3920.x, x_3920.y, x_3921.z, x_3921.w);
          let x_3923 : i32 = u_xlati55;
          let x_3925 : vec4<f32> = x_1831.x_AdditionalLightsCookieAtlasUVRects[x_3923];
          let x_3927 : vec4<f32> = u_xlat12;
          let x_3930 : i32 = u_xlati55;
          let x_3932 : vec4<f32> = x_1831.x_AdditionalLightsCookieAtlasUVRects[x_3930];
          let x_3934 : vec2<f32> = ((vec2<f32>(x_3925.x, x_3925.y) * vec2<f32>(x_3927.x, x_3927.y)) + vec2<f32>(x_3932.z, x_3932.w));
          let x_3935 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3934.x, x_3935.y, x_3934.y, x_3935.w);
        } else {
          let x_3938 : vec3<f32> = vs_TEXCOORD7;
          let x_3940 : i32 = u_xlati37;
          let x_3943 : i32 = u_xlati37;
          let x_3947 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3940 + 1i) / 4i)][((x_3943 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3938.y, x_3938.y, x_3938.y, x_3938.y) * x_3947);
          let x_3949 : i32 = u_xlati37;
          let x_3951 : i32 = u_xlati37;
          let x_3954 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[(x_3949 / 4i)][(x_3951 % 4i)];
          let x_3955 : vec3<f32> = vs_TEXCOORD7;
          let x_3958 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3954 * vec4<f32>(x_3955.x, x_3955.x, x_3955.x, x_3955.x)) + x_3958);
          let x_3960 : i32 = u_xlati37;
          let x_3963 : i32 = u_xlati37;
          let x_3967 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3960 + 2i) / 4i)][((x_3963 + 2i) % 4i)];
          let x_3968 : vec3<f32> = vs_TEXCOORD7;
          let x_3971 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3967 * vec4<f32>(x_3968.z, x_3968.z, x_3968.z, x_3968.z)) + x_3971);
          let x_3973 : vec4<f32> = u_xlat12;
          let x_3974 : i32 = u_xlati37;
          let x_3977 : i32 = u_xlati37;
          let x_3981 : vec4<f32> = x_1831.x_AdditionalLightsWorldToLights[((x_3974 + 3i) / 4i)][((x_3977 + 3i) % 4i)];
          u_xlat12 = (x_3973 + x_3981);
          let x_3983 : vec4<f32> = u_xlat12;
          let x_3985 : vec4<f32> = u_xlat12;
          let x_3987 : vec3<f32> = (vec3<f32>(x_3983.x, x_3983.y, x_3983.z) / vec3<f32>(x_3985.w, x_3985.w, x_3985.w));
          let x_3988 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3987.x, x_3987.y, x_3987.z, x_3988.w);
          let x_3990 : vec4<f32> = u_xlat12;
          let x_3992 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3990.x, x_3990.y, x_3990.z), vec3<f32>(x_3992.x, x_3992.y, x_3992.z));
          let x_3995 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3995);
          let x_3997 : f32 = u_xlat88;
          let x_3999 : vec4<f32> = u_xlat12;
          let x_4001 : vec3<f32> = (vec3<f32>(x_3997, x_3997, x_3997) * vec3<f32>(x_3999.x, x_3999.y, x_3999.z));
          let x_4002 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4001.x, x_4001.y, x_4001.z, x_4002.w);
          let x_4004 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_4004.x, x_4004.y, x_4004.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4009 : f32 = u_xlat88;
          u_xlat88 = max(x_4009, 0.00000099999999747524f);
          let x_4012 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_4012);
          let x_4014 : f32 = u_xlat88;
          let x_4016 : vec4<f32> = u_xlat12;
          let x_4018 : vec3<f32> = (vec3<f32>(x_4014, x_4014, x_4014) * vec3<f32>(x_4016.z, x_4016.x, x_4016.y));
          let x_4019 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
          let x_4022 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4022);
          let x_4026 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4026, 0.0f, 1.0f);
          let x_4031 : vec4<f32> = u_xlat13;
          let x_4033 : vec4<bool> = (vec4<f32>(x_4031.y, x_4031.y, x_4031.z, x_4031.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4034 : vec2<bool> = vec2<bool>(x_4033.x, x_4033.z);
          let x_4035 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4034.x, x_4035.y, x_4034.y);
          let x_4038 : bool = u_xlatb37.x;
          if (x_4038) {
            let x_4043 : f32 = u_xlat13.x;
            x_4039 = x_4043;
          } else {
            let x_4046 : f32 = u_xlat13.x;
            x_4039 = -(x_4046);
          }
          let x_4048 : f32 = x_4039;
          u_xlat37.x = x_4048;
          let x_4051 : bool = u_xlatb37.z;
          if (x_4051) {
            let x_4056 : f32 = u_xlat13.x;
            x_4052 = x_4056;
          } else {
            let x_4059 : f32 = u_xlat13.x;
            x_4052 = -(x_4059);
          }
          let x_4061 : f32 = x_4052;
          u_xlat37.z = x_4061;
          let x_4063 : vec4<f32> = u_xlat12;
          let x_4065 : f32 = u_xlat88;
          let x_4068 : vec3<f32> = u_xlat37;
          let x_4070 : vec2<f32> = ((vec2<f32>(x_4063.x, x_4063.y) * vec2<f32>(x_4065, x_4065)) + vec2<f32>(x_4068.x, x_4068.z));
          let x_4071 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4070.x, x_4071.y, x_4070.y);
          let x_4073 : vec3<f32> = u_xlat37;
          let x_4076 : vec2<f32> = ((vec2<f32>(x_4073.x, x_4073.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4077 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4076.x, x_4077.y, x_4076.y);
          let x_4079 : vec3<f32> = u_xlat37;
          let x_4083 : vec2<f32> = clamp(vec2<f32>(x_4079.x, x_4079.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4084 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4083.x, x_4084.y, x_4083.y);
          let x_4086 : i32 = u_xlati55;
          let x_4088 : vec4<f32> = x_1831.x_AdditionalLightsCookieAtlasUVRects[x_4086];
          let x_4090 : vec3<f32> = u_xlat37;
          let x_4093 : i32 = u_xlati55;
          let x_4095 : vec4<f32> = x_1831.x_AdditionalLightsCookieAtlasUVRects[x_4093];
          let x_4097 : vec2<f32> = ((vec2<f32>(x_4088.x, x_4088.y) * vec2<f32>(x_4090.x, x_4090.z)) + vec2<f32>(x_4095.z, x_4095.w));
          let x_4098 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4097.x, x_4098.y, x_4097.y, x_4098.w);
        }
      }
      let x_4105 : vec4<f32> = u_xlat11;
      let x_4107 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4105.x, x_4105.z), 0.0f);
      u_xlat11 = x_4107;
      let x_4109 : bool = u_xlatb3.y;
      if (x_4109) {
        let x_4114 : f32 = u_xlat11.w;
        x_4110 = x_4114;
      } else {
        let x_4117 : f32 = u_xlat11.x;
        x_4110 = x_4117;
      }
      let x_4118 : f32 = x_4110;
      u_xlat88 = x_4118;
      let x_4120 : bool = u_xlatb3.x;
      if (x_4120) {
        let x_4124 : vec4<f32> = u_xlat11;
        x_4121 = vec3<f32>(x_4124.x, x_4124.y, x_4124.z);
      } else {
        let x_4127 : f32 = u_xlat88;
        x_4121 = vec3<f32>(x_4127, x_4127, x_4127);
      }
      let x_4129 : vec3<f32> = x_4121;
      let x_4130 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4129.x, x_4129.y, x_4129.z, x_4130.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4136 : vec4<f32> = u_xlat11;
    let x_4138 : i32 = u_xlati55;
    let x_4140 : vec4<f32> = x_2271.x_AdditionalLightsColor[x_4138];
    let x_4142 : vec3<f32> = (vec3<f32>(x_4136.x, x_4136.y, x_4136.z) * vec3<f32>(x_4140.x, x_4140.y, x_4140.z));
    let x_4143 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4142.x, x_4142.y, x_4142.z, x_4143.w);
    let x_4145 : f32 = u_xlat84;
    let x_4146 : f32 = u_xlat87;
    u_xlat55 = (x_4145 * x_4146);
    let x_4148 : vec4<f32> = u_xlat2;
    let x_4150 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4148.x, x_4148.y, x_4148.z), vec3<f32>(x_4150.x, x_4150.y, x_4150.z));
    let x_4153 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4153, 0.0f, 1.0f);
    let x_4155 : f32 = u_xlat55;
    let x_4156 : f32 = u_xlat84;
    u_xlat55 = (x_4155 * x_4156);
    let x_4158 : f32 = u_xlat55;
    let x_4160 : vec4<f32> = u_xlat11;
    let x_4162 : vec3<f32> = (vec3<f32>(x_4158, x_4158, x_4158) * vec3<f32>(x_4160.x, x_4160.y, x_4160.z));
    let x_4163 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4162.x, x_4162.y, x_4162.z, x_4163.w);
    let x_4165 : vec4<f32> = u_xlat9;
    let x_4167 : f32 = u_xlat85;
    let x_4170 : vec3<f32> = u_xlat27;
    let x_4171 : vec3<f32> = ((vec3<f32>(x_4165.x, x_4165.y, x_4165.z) * vec3<f32>(x_4167, x_4167, x_4167)) + x_4170);
    let x_4172 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4171.x, x_4171.y, x_4171.z, x_4172.w);
    let x_4174 : vec4<f32> = u_xlat9;
    let x_4176 : vec4<f32> = u_xlat9;
    u_xlat55 = dot(vec3<f32>(x_4174.x, x_4174.y, x_4174.z), vec3<f32>(x_4176.x, x_4176.y, x_4176.z));
    let x_4179 : f32 = u_xlat55;
    u_xlat55 = max(x_4179, 1.17549435e-38f);
    let x_4181 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4181);
    let x_4183 : f32 = u_xlat55;
    let x_4185 : vec4<f32> = u_xlat9;
    let x_4187 : vec3<f32> = (vec3<f32>(x_4183, x_4183, x_4183) * vec3<f32>(x_4185.x, x_4185.y, x_4185.z));
    let x_4188 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4187.x, x_4187.y, x_4187.z, x_4188.w);
    let x_4190 : vec4<f32> = u_xlat2;
    let x_4192 : vec4<f32> = u_xlat9;
    u_xlat55 = dot(vec3<f32>(x_4190.x, x_4190.y, x_4190.z), vec3<f32>(x_4192.x, x_4192.y, x_4192.z));
    let x_4195 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4195, 0.0f, 1.0f);
    let x_4197 : vec4<f32> = u_xlat10;
    let x_4199 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4197.x, x_4197.y, x_4197.z), vec3<f32>(x_4199.x, x_4199.y, x_4199.z));
    let x_4202 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4202, 0.0f, 1.0f);
    let x_4204 : f32 = u_xlat55;
    let x_4205 : f32 = u_xlat55;
    u_xlat55 = (x_4204 * x_4205);
    let x_4207 : f32 = u_xlat55;
    let x_4209 : f32 = u_xlat8.x;
    u_xlat55 = ((x_4207 * x_4209) + 1.00001001358032226562f);
    let x_4212 : f32 = u_xlat84;
    let x_4213 : f32 = u_xlat84;
    u_xlat84 = (x_4212 * x_4213);
    let x_4215 : f32 = u_xlat55;
    let x_4216 : f32 = u_xlat55;
    u_xlat55 = (x_4215 * x_4216);
    let x_4218 : f32 = u_xlat84;
    u_xlat84 = max(x_4218, 0.10000000149011611938f);
    let x_4220 : f32 = u_xlat55;
    let x_4221 : f32 = u_xlat84;
    u_xlat55 = (x_4220 * x_4221);
    let x_4223 : f32 = u_xlat82;
    let x_4224 : f32 = u_xlat55;
    u_xlat55 = (x_4223 * x_4224);
    let x_4226 : f32 = u_xlat83;
    let x_4227 : f32 = u_xlat55;
    u_xlat55 = (x_4226 / x_4227);
    let x_4229 : vec4<f32> = u_xlat0;
    let x_4231 : f32 = u_xlat55;
    let x_4234 : vec4<f32> = u_xlat5;
    let x_4236 : vec3<f32> = ((vec3<f32>(x_4229.x, x_4229.y, x_4229.z) * vec3<f32>(x_4231, x_4231, x_4231)) + vec3<f32>(x_4234.x, x_4234.y, x_4234.z));
    let x_4237 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4236.x, x_4236.y, x_4236.z, x_4237.w);
    let x_4239 : vec4<f32> = u_xlat9;
    let x_4241 : vec4<f32> = u_xlat11;
    let x_4244 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4239.x, x_4239.y, x_4239.z) * vec3<f32>(x_4241.x, x_4241.y, x_4241.z)) + x_4244);

    continuing {
      let x_4246 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4246 + bitcast<u32>(1i));
    }
  }
  let x_4248 : vec4<f32> = u_xlat7;
  let x_4250 : vec4<f32> = u_xlat6;
  let x_4253 : vec4<f32> = u_xlat4;
  let x_4255 : vec3<f32> = ((vec3<f32>(x_4248.x, x_4248.y, x_4248.z) * vec3<f32>(x_4250.x, x_4250.y, x_4250.z)) + vec3<f32>(x_4253.x, x_4253.y, x_4253.z));
  let x_4256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4255.x, x_4255.y, x_4255.z, x_4256.w);
  let x_4258 : vec3<f32> = u_xlat34;
  let x_4259 : vec4<f32> = u_xlat0;
  let x_4261 : vec3<f32> = (x_4258 + vec3<f32>(x_4259.x, x_4259.y, x_4259.z));
  let x_4262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4261.x, x_4261.y, x_4261.z, x_4262.w);
  let x_4264 : f32 = u_xlat81;
  let x_4265 : f32 = u_xlat81;
  u_xlat78 = (x_4264 * -(x_4265));
  let x_4268 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4268);
  let x_4270 : vec4<f32> = u_xlat0;
  let x_4273 : vec4<f32> = x_29.unity_FogColor;
  let x_4276 : vec3<f32> = (vec3<f32>(x_4270.x, x_4270.y, x_4270.z) + -(vec3<f32>(x_4273.x, x_4273.y, x_4273.z)));
  let x_4277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4276.x, x_4276.y, x_4276.z, x_4277.w);
  let x_4281 : f32 = u_xlat78;
  let x_4283 : vec4<f32> = u_xlat0;
  let x_4287 : vec4<f32> = x_29.unity_FogColor;
  let x_4289 : vec3<f32> = ((vec3<f32>(x_4281, x_4281, x_4281) * vec3<f32>(x_4283.x, x_4283.y, x_4283.z)) + vec3<f32>(x_4287.x, x_4287.y, x_4287.z));
  let x_4290 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4289.x, x_4289.y, x_4289.z, x_4290.w);
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


