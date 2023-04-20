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

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_83 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu27 : u32;

var<private> u_xlati27 : i32;

@group(1) @binding(2) var<uniform> x_320 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb53 : bool;

var<private> u_xlatb79 : bool;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

@group(1) @binding(4) var<uniform> x_1810 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2266 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

var<private> u_xlatb84 : bool;

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
  var x_1764 : f32;
  var x_1890 : f32;
  var x_1901 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2404 : f32;
  var x_2415 : f32;
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
  var x_4034 : f32;
  var x_4047 : f32;
  var x_4105 : f32;
  var x_4116 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_29.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  let x_57 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_62 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_62);
  let x_66 : vec3<f32> = u_xlat27;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.x, x_66.x) * vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_75 : vec3<f32> = vs_TEXCOORD7;
  let x_87 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres0;
  u_xlat27 = (x_75 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_92 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_92 + -(vec3<f32>(x_95.x, x_95.y, x_95.z)));
  let x_100 : vec3<f32> = vs_TEXCOORD7;
  let x_103 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres2;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres3;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = u_xlat27;
  let x_121 : vec3<f32> = u_xlat27;
  u_xlat6.x = dot(x_120, x_121);
  let x_124 : vec3<f32> = u_xlat3;
  let x_125 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_124, x_125);
  let x_129 : vec4<f32> = u_xlat4;
  let x_131 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_129.x, x_129.y, x_129.z), vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat6;
  let x_150 : vec4<f32> = x_83.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_147 < x_150);
  let x_154 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.x;
  u_xlat27.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb3.y;
  u_xlat27.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb3.z;
  u_xlat27.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec3<f32> = u_xlat27;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat27 = (x_185 + vec3<f32>(x_186.y, x_186.z, x_186.w));
  let x_189 : vec3<f32> = u_xlat27;
  let x_191 : vec3<f32> = max(x_189, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat27.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat27.x;
  u_xlatu27 = u32(x_209);
  let x_213 : u32 = u_xlatu27;
  u_xlati27 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_216 : vec3<f32> = vs_TEXCOORD7;
  let x_218 : i32 = u_xlati27;
  let x_221 : i32 = u_xlati27;
  let x_225 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : i32 = u_xlati27;
  let x_230 : i32 = u_xlati27;
  let x_233 : vec4<f32> = x_83.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD7;
  let x_238 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : i32 = u_xlati27;
  let x_243 : i32 = u_xlati27;
  let x_247 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_240 + 2i) / 4i)][((x_243 + 2i) % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD7;
  let x_252 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat3;
  let x_255 : i32 = u_xlati27;
  let x_258 : i32 = u_xlati27;
  let x_262 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_255 + 3i) / 4i)][((x_258 + 3i) % 4i)];
  u_xlat27 = (x_254 + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_267 : f32 = vs_TEXCOORD7.y;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_267 * x_270);
  let x_274 : f32 = x_29.unity_MatrixV[0i].z;
  let x_276 : f32 = vs_TEXCOORD7.x;
  let x_279 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_274 * x_276) + x_279);
  let x_283 : f32 = x_29.unity_MatrixV[2i].z;
  let x_285 : f32 = vs_TEXCOORD7.z;
  let x_288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_283 * x_285) + x_288);
  let x_292 : f32 = u_xlat3.x;
  let x_294 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_292 + x_294);
  let x_298 : f32 = u_xlat3.x;
  let x_301 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_298) + -(x_301));
  let x_306 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_306, 0.0f);
  let x_310 : f32 = u_xlat3.x;
  let x_313 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_310 * x_313);
  u_xlat2.w = 1.0f;
  let x_323 : vec4<f32> = x_320.unity_SHAr;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_323, x_324);
  let x_329 : vec4<f32> = x_320.unity_SHAg;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_320.unity_SHAb;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_335, x_336);
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_339.y, x_339.z, x_339.z, x_339.x) * vec4<f32>(x_341.x, x_341.y, x_341.z, x_341.z));
  let x_346 : vec4<f32> = x_320.unity_SHBr;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_320.unity_SHBg;
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_352, x_353);
  let x_358 : vec4<f32> = x_320.unity_SHBb;
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_358, x_359);
  let x_364 : f32 = u_xlat2.y;
  let x_366 : f32 = u_xlat2.y;
  u_xlat80 = (x_364 * x_366);
  let x_369 : f32 = u_xlat2.x;
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat80;
  u_xlat80 = ((x_369 * x_371) + -(x_373));
  let x_379 : vec4<f32> = x_320.unity_SHC;
  let x_381 : f32 = u_xlat80;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat29 = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381, x_381, x_381)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec3<f32> = u_xlat29;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat29 = (x_387 + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_391, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_394 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_394) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_399 : f32 = u_xlat80;
  u_xlat4.x = (-(x_399) + 1.0f);
  let x_404 : vec4<f32> = u_xlat0;
  let x_406 : f32 = u_xlat80;
  u_xlat30 = (vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406, x_406, x_406));
  let x_409 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.x, x_416.x) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_427) + 1.0f);
  let x_432 : f32 = u_xlat1.x;
  let x_434 : f32 = u_xlat1.x;
  u_xlat80 = (x_432 * x_434);
  let x_436 : f32 = u_xlat80;
  u_xlat80 = max(x_436, 0.0078125f);
  let x_439 : f32 = u_xlat80;
  let x_440 : f32 = u_xlat80;
  u_xlat5.x = (x_439 * x_440);
  let x_445 : f32 = u_xlat0.w;
  let x_447 : f32 = u_xlat4.x;
  u_xlat78 = (x_445 + x_447);
  let x_449 : f32 = u_xlat78;
  u_xlat78 = clamp(x_449, 0.0f, 1.0f);
  let x_451 : f32 = u_xlat80;
  u_xlat4.x = ((x_451 * 4.0f) + 2.0f);
  let x_459 : f32 = x_83.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_459);
  let x_463 : bool = u_xlatb31.x;
  if (x_463) {
    let x_467 : f32 = x_83.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_467 == 1.0f);
    let x_471 : bool = u_xlatb31.x;
    if (x_471) {
      let x_474 : vec3<f32> = u_xlat27;
      let x_477 : vec4<f32> = x_83.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) + x_477);
      let x_481 : vec4<f32> = u_xlat6;
      let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
      let x_484 : f32 = u_xlat27.z;
      txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_497 : vec3<f32> = txVec0;
      let x_499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_497.xy, x_497.z);
      u_xlat7.x = x_499;
      let x_502 : vec4<f32> = u_xlat6;
      let x_503 : vec2<f32> = vec2<f32>(x_502.z, x_502.w);
      let x_505 : f32 = u_xlat27.z;
      txVec1 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_512 : vec3<f32> = txVec1;
      let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_512.xy, x_512.z);
      u_xlat7.y = x_514;
      let x_516 : vec3<f32> = u_xlat27;
      let x_520 : vec4<f32> = x_83.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_516.x, x_516.y, x_516.x, x_516.y) + x_520);
      let x_523 : vec4<f32> = u_xlat6;
      let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
      let x_526 : f32 = u_xlat27.z;
      txVec2 = vec3<f32>(x_524.x, x_524.y, x_526);
      let x_533 : vec3<f32> = txVec2;
      let x_535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_533.xy, x_533.z);
      u_xlat7.z = x_535;
      let x_538 : vec4<f32> = u_xlat6;
      let x_539 : vec2<f32> = vec2<f32>(x_538.z, x_538.w);
      let x_541 : f32 = u_xlat27.z;
      txVec3 = vec3<f32>(x_539.x, x_539.y, x_541);
      let x_548 : vec3<f32> = txVec3;
      let x_550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_548.xy, x_548.z);
      u_xlat7.w = x_550;
      let x_553 : vec4<f32> = u_xlat7;
      u_xlat31.x = dot(x_553, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_561 : f32 = x_83.x_MainLightShadowParams.y;
      u_xlatb57 = (x_561 == 2.0f);
      let x_563 : bool = u_xlatb57;
      if (x_563) {
        let x_568 : vec3<f32> = u_xlat27;
        let x_572 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_572.z, x_572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_578 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_578);
        let x_580 : vec3<f32> = u_xlat27;
        let x_583 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_586 : vec2<f32> = u_xlat57;
        let x_588 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_583.z, x_583.w)) + -(x_586));
        let x_589 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_591.x, x_591.x, x_591.y, x_591.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_596 : vec4<f32> = u_xlat7;
        let x_598 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_596.x, x_596.x, x_596.z, x_596.z) * vec4<f32>(x_598.x, x_598.x, x_598.z, x_598.z));
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_602.y, x_602.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_607 : vec4<f32> = u_xlat8;
        let x_610 : vec4<f32> = u_xlat6;
        let x_613 : vec2<f32> = ((vec2<f32>(x_607.x, x_607.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_610.x, x_610.y)));
        let x_614 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_613.x, x_614.y, x_613.y, x_614.w);
        let x_616 : vec4<f32> = u_xlat6;
        let x_620 : vec2<f32> = (-(vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_624 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_624.x, x_624.y), vec2<f32>(0.0f, 0.0f));
        let x_628 : vec2<f32> = u_xlat60;
        let x_630 : vec2<f32> = u_xlat60;
        let x_632 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_628) * x_630) + vec2<f32>(x_632.x, x_632.y));
        let x_635 : vec4<f32> = u_xlat6;
        let x_637 : vec2<f32> = max(vec2<f32>(x_635.x, x_635.y), vec2<f32>(0.0f, 0.0f));
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = u_xlat6;
        let x_646 : vec4<f32> = u_xlat7;
        let x_648 : vec2<f32> = ((-(vec2<f32>(x_640.x, x_640.y)) * vec2<f32>(x_643.x, x_643.y)) + vec2<f32>(x_646.y, x_646.w));
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_651 + vec2<f32>(1.0f, 1.0f));
        let x_653 : vec4<f32> = u_xlat6;
        let x_655 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) + vec2<f32>(1.0f, 1.0f));
        let x_656 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_659 : vec4<f32> = u_xlat7;
        let x_663 : vec2<f32> = (vec2<f32>(x_659.x, x_659.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_664 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_667 : vec4<f32> = u_xlat8;
        let x_669 : vec2<f32> = (vec2<f32>(x_667.x, x_667.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_672 : vec2<f32> = u_xlat60;
        let x_673 : vec2<f32> = (x_672 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec4<f32> = u_xlat6;
        let x_679 : vec2<f32> = (vec2<f32>(x_677.x, x_677.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_680 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat7;
        let x_684 : vec2<f32> = (vec2<f32>(x_682.y, x_682.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_688 : f32 = u_xlat8.x;
        u_xlat9.z = x_688;
        let x_691 : f32 = u_xlat6.x;
        u_xlat9.w = x_691;
        let x_694 : f32 = u_xlat11.x;
        u_xlat10.z = x_694;
        let x_697 : f32 = u_xlat58.x;
        u_xlat10.w = x_697;
        let x_699 : vec4<f32> = u_xlat9;
        let x_701 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_699.z, x_699.w, x_699.x, x_699.z) + vec4<f32>(x_701.z, x_701.w, x_701.x, x_701.z));
        let x_705 : f32 = u_xlat9.y;
        u_xlat8.z = x_705;
        let x_708 : f32 = u_xlat6.y;
        u_xlat8.w = x_708;
        let x_711 : f32 = u_xlat10.y;
        u_xlat11.z = x_711;
        let x_714 : f32 = u_xlat58.y;
        u_xlat11.w = x_714;
        let x_716 : vec4<f32> = u_xlat8;
        let x_718 : vec4<f32> = u_xlat11;
        let x_720 : vec3<f32> = (vec3<f32>(x_716.z, x_716.y, x_716.w) + vec3<f32>(x_718.z, x_718.y, x_718.w));
        let x_721 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat10;
        let x_725 : vec4<f32> = u_xlat7;
        let x_727 : vec3<f32> = (vec3<f32>(x_723.x, x_723.z, x_723.w) / vec3<f32>(x_725.z, x_725.w, x_725.y));
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat8;
        let x_736 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_737 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat11;
        let x_741 : vec4<f32> = u_xlat6;
        let x_743 : vec3<f32> = (vec3<f32>(x_739.z, x_739.y, x_739.w) / vec3<f32>(x_741.x, x_741.y, x_741.z));
        let x_744 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_748 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_749 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
        let x_751 : vec4<f32> = u_xlat8;
        let x_754 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_756 : vec3<f32> = (vec3<f32>(x_751.y, x_751.x, x_751.z) * vec3<f32>(x_754.x, x_754.x, x_754.x));
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_762 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_764 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(x_762.y, x_762.y, x_762.y));
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_768 : f32 = u_xlat9.x;
        u_xlat8.w = x_768;
        let x_770 : vec2<f32> = u_xlat57;
        let x_773 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.y, x_776.w, x_776.x, x_776.w));
        let x_779 : vec2<f32> = u_xlat57;
        let x_781 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_784 : vec4<f32> = u_xlat8;
        let x_786 : vec2<f32> = ((x_779 * vec2<f32>(x_781.x, x_781.y)) + vec2<f32>(x_784.z, x_784.w));
        let x_787 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
        let x_790 : f32 = u_xlat8.y;
        u_xlat9.w = x_790;
        let x_792 : vec4<f32> = u_xlat9;
        let x_793 : vec2<f32> = vec2<f32>(x_792.y, x_792.z);
        let x_794 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_794.x, x_793.x, x_794.z, x_793.y);
        let x_797 : vec2<f32> = u_xlat57;
        let x_800 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y) * vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y)) + vec4<f32>(x_803.x, x_803.y, x_803.z, x_803.y));
        let x_806 : vec2<f32> = u_xlat57;
        let x_809 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_812 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y) * vec4<f32>(x_809.x, x_809.y, x_809.x, x_809.y)) + vec4<f32>(x_812.w, x_812.y, x_812.w, x_812.z));
        let x_815 : vec2<f32> = u_xlat57;
        let x_818 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_821 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_815.x, x_815.y, x_815.x, x_815.y) * vec4<f32>(x_818.x, x_818.y, x_818.x, x_818.y)) + vec4<f32>(x_821.x, x_821.w, x_821.z, x_821.w));
        let x_825 : vec4<f32> = u_xlat6;
        let x_827 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_825.x, x_825.x, x_825.x, x_825.y) * vec4<f32>(x_827.z, x_827.w, x_827.y, x_827.z));
        let x_831 : vec4<f32> = u_xlat6;
        let x_833 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_831.y, x_831.y, x_831.z, x_831.z) * x_833);
        let x_836 : f32 = u_xlat6.z;
        let x_838 : f32 = u_xlat7.y;
        u_xlat57.x = (x_836 * x_838);
        let x_842 : vec4<f32> = u_xlat10;
        let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
        let x_845 : f32 = u_xlat27.z;
        txVec4 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_853 : vec3<f32> = txVec4;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat83 = x_855;
        let x_857 : vec4<f32> = u_xlat10;
        let x_858 : vec2<f32> = vec2<f32>(x_857.z, x_857.w);
        let x_860 : f32 = u_xlat27.z;
        txVec5 = vec3<f32>(x_858.x, x_858.y, x_860);
        let x_867 : vec3<f32> = txVec5;
        let x_869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_867.xy, x_867.z);
        u_xlat6.x = x_869;
        let x_872 : f32 = u_xlat6.x;
        let x_874 : f32 = u_xlat13.y;
        u_xlat6.x = (x_872 * x_874);
        let x_878 : f32 = u_xlat13.x;
        let x_879 : f32 = u_xlat83;
        let x_882 : f32 = u_xlat6.x;
        u_xlat83 = ((x_878 * x_879) + x_882);
        let x_885 : vec4<f32> = u_xlat11;
        let x_886 : vec2<f32> = vec2<f32>(x_885.x, x_885.y);
        let x_888 : f32 = u_xlat27.z;
        txVec6 = vec3<f32>(x_886.x, x_886.y, x_888);
        let x_895 : vec3<f32> = txVec6;
        let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_895.xy, x_895.z);
        u_xlat6.x = x_897;
        let x_900 : f32 = u_xlat13.z;
        let x_902 : f32 = u_xlat6.x;
        let x_904 : f32 = u_xlat83;
        u_xlat83 = ((x_900 * x_902) + x_904);
        let x_907 : vec4<f32> = u_xlat9;
        let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
        let x_910 : f32 = u_xlat27.z;
        txVec7 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec7;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_917.xy, x_917.z);
        u_xlat6.x = x_919;
        let x_922 : f32 = u_xlat13.w;
        let x_924 : f32 = u_xlat6.x;
        let x_926 : f32 = u_xlat83;
        u_xlat83 = ((x_922 * x_924) + x_926);
        let x_929 : vec4<f32> = u_xlat12;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = u_xlat27.z;
        txVec8 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec8;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
        u_xlat6.x = x_941;
        let x_944 : f32 = u_xlat14.x;
        let x_946 : f32 = u_xlat6.x;
        let x_948 : f32 = u_xlat83;
        u_xlat83 = ((x_944 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat12;
        let x_952 : vec2<f32> = vec2<f32>(x_951.z, x_951.w);
        let x_954 : f32 = u_xlat27.z;
        txVec9 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec9;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_961.xy, x_961.z);
        u_xlat6.x = x_963;
        let x_966 : f32 = u_xlat14.y;
        let x_968 : f32 = u_xlat6.x;
        let x_970 : f32 = u_xlat83;
        u_xlat83 = ((x_966 * x_968) + x_970);
        let x_973 : vec4<f32> = u_xlat9;
        let x_974 : vec2<f32> = vec2<f32>(x_973.z, x_973.w);
        let x_976 : f32 = u_xlat27.z;
        txVec10 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec10;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
        u_xlat6.x = x_985;
        let x_988 : f32 = u_xlat14.z;
        let x_990 : f32 = u_xlat6.x;
        let x_992 : f32 = u_xlat83;
        u_xlat83 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat8;
        let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
        let x_998 : f32 = u_xlat27.z;
        txVec11 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec11;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
        u_xlat6.x = x_1007;
        let x_1010 : f32 = u_xlat14.w;
        let x_1012 : f32 = u_xlat6.x;
        let x_1014 : f32 = u_xlat83;
        u_xlat83 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
        let x_1020 : f32 = u_xlat27.z;
        txVec12 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec12;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1027.xy, x_1027.z);
        u_xlat6.x = x_1029;
        let x_1032 : f32 = u_xlat57.x;
        let x_1034 : f32 = u_xlat6.x;
        let x_1036 : f32 = u_xlat83;
        u_xlat31.x = ((x_1032 * x_1034) + x_1036);
      } else {
        let x_1040 : vec3<f32> = u_xlat27;
        let x_1043 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1043.z, x_1043.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1047 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_1047);
        let x_1049 : vec3<f32> = u_xlat27;
        let x_1052 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1055 : vec2<f32> = u_xlat57;
        let x_1057 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + -(x_1055));
        let x_1058 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.y, x_1060.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1063.x, x_1063.x, x_1063.z, x_1063.z) * vec4<f32>(x_1065.x, x_1065.x, x_1065.z, x_1065.z));
        let x_1068 : vec4<f32> = u_xlat8;
        let x_1072 : vec2<f32> = (vec2<f32>(x_1068.y, x_1068.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1073 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1073.x, x_1072.x, x_1073.z, x_1072.y);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1075.x, x_1075.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1078.x, x_1078.y)));
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1085 : vec2<f32> = (-(vec2<f32>(x_1082.x, x_1082.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat6;
        let x_1090 : vec2<f32> = min(vec2<f32>(x_1088.x, x_1088.y), vec2<f32>(0.0f, 0.0f));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat8;
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = ((-(vec2<f32>(x_1093.x, x_1093.y)) * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.x, x_1099.z));
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1101.x, x_1102.y, x_1101.y, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat6;
        let x_1106 : vec2<f32> = max(vec2<f32>(x_1104.x, x_1104.y), vec2<f32>(0.0f, 0.0f));
        let x_1107 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat8;
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1117 : vec2<f32> = ((-(vec2<f32>(x_1109.x, x_1109.y)) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.y, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1118.x, x_1117.x, x_1118.z, x_1117.y);
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1120 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1124 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1124 * 0.08163200318813323975f);
        let x_1128 : vec2<f32> = u_xlat58;
        let x_1131 : vec2<f32> = (vec2<f32>(x_1128.y, x_1128.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1134.x, x_1134.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1138 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1138 * 0.08163200318813323975f);
        let x_1142 : f32 = u_xlat10.y;
        u_xlat8.x = x_1142;
        let x_1144 : vec4<f32> = u_xlat6;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1152 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1151.x, x_1152.z, x_1151.y);
        let x_1154 : vec4<f32> = u_xlat6;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1159.w);
        let x_1162 : f32 = u_xlat58.x;
        u_xlat7.y = x_1162;
        let x_1165 : f32 = u_xlat9.y;
        u_xlat7.w = x_1165;
        let x_1167 : vec4<f32> = u_xlat7;
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1167 + x_1168);
        let x_1170 : vec4<f32> = u_xlat6;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1174.x, x_1173.x, x_1174.z, x_1173.y);
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1176.y, x_1176.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1180 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1180.w);
        let x_1183 : f32 = u_xlat58.y;
        u_xlat9.y = x_1183;
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1185 + x_1186);
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1189 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1188 / x_1189);
        let x_1191 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1191 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1198 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1197 / x_1198);
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1200 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1202.w, x_1202.x, x_1202.y, x_1202.z) * vec4<f32>(x_1205.x, x_1205.x, x_1205.x, x_1205.x));
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1211 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1208.x, x_1208.w, x_1208.y, x_1208.z) * vec4<f32>(x_1211.y, x_1211.y, x_1211.y, x_1211.y));
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1215 : vec3<f32> = vec3<f32>(x_1214.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1215.x, x_1216.y, x_1215.y, x_1215.z);
        let x_1219 : f32 = u_xlat9.x;
        u_xlat10.y = x_1219;
        let x_1221 : vec2<f32> = u_xlat57;
        let x_1224 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y) * vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y)) + vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1227.y));
        let x_1230 : vec2<f32> = u_xlat57;
        let x_1232 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1237 : vec2<f32> = ((x_1230 * vec2<f32>(x_1232.x, x_1232.y)) + vec2<f32>(x_1235.w, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
        let x_1241 : f32 = u_xlat10.y;
        u_xlat7.y = x_1241;
        let x_1244 : f32 = u_xlat9.z;
        u_xlat10.y = x_1244;
        let x_1246 : vec2<f32> = u_xlat57;
        let x_1249 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y) * vec4<f32>(x_1249.x, x_1249.y, x_1249.x, x_1249.y)) + vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1252.y));
        let x_1256 : vec2<f32> = u_xlat57;
        let x_1258 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1256 * vec2<f32>(x_1258.x, x_1258.y)) + vec2<f32>(x_1261.w, x_1261.y));
        let x_1265 : f32 = u_xlat10.y;
        u_xlat7.z = x_1265;
        let x_1267 : vec2<f32> = u_xlat57;
        let x_1270 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.z));
        let x_1277 : f32 = u_xlat9.w;
        u_xlat10.y = x_1277;
        let x_1280 : vec2<f32> = u_xlat57;
        let x_1283 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1290 : vec2<f32> = u_xlat57;
        let x_1292 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1290 * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
        let x_1299 : f32 = u_xlat10.y;
        u_xlat7.w = x_1299;
        let x_1302 : vec2<f32> = u_xlat57;
        let x_1304 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat7;
        let x_1309 : vec2<f32> = ((x_1302 * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.w));
        let x_1310 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat10;
        let x_1313 : vec3<f32> = vec3<f32>(x_1312.x, x_1312.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1313.x, x_1314.y, x_1313.y, x_1313.z);
        let x_1316 : vec2<f32> = u_xlat57;
        let x_1319 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y) * vec4<f32>(x_1319.x, x_1319.y, x_1319.x, x_1319.y)) + vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1322.y));
        let x_1326 : vec2<f32> = u_xlat57;
        let x_1328 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1326 * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.w, x_1331.y));
        let x_1335 : f32 = u_xlat7.x;
        u_xlat9.x = x_1335;
        let x_1337 : vec2<f32> = u_xlat57;
        let x_1339 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1337 * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.y));
        let x_1346 : vec4<f32> = u_xlat6;
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1346.x, x_1346.x, x_1346.x, x_1346.x) * x_1348);
        let x_1351 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1351.y, x_1351.y, x_1351.y, x_1351.y) * x_1353);
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1356.z, x_1356.z, x_1356.z, x_1356.z) * x_1358);
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1360.w, x_1360.w, x_1360.w, x_1360.w) * x_1362);
        let x_1365 : vec4<f32> = u_xlat11;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
        let x_1368 : f32 = u_xlat27.z;
        txVec13 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec13;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat7.x = x_1377;
        let x_1380 : vec4<f32> = u_xlat11;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.z, x_1380.w);
        let x_1383 : f32 = u_xlat27.z;
        txVec14 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1391 : vec3<f32> = txVec14;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat85 = x_1393;
        let x_1394 : f32 = u_xlat85;
        let x_1396 : f32 = u_xlat17.y;
        u_xlat85 = (x_1394 * x_1396);
        let x_1399 : f32 = u_xlat17.x;
        let x_1401 : f32 = u_xlat7.x;
        let x_1403 : f32 = u_xlat85;
        u_xlat7.x = ((x_1399 * x_1401) + x_1403);
        let x_1407 : vec4<f32> = u_xlat12;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = u_xlat27.z;
        txVec15 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec15;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat85 = x_1419;
        let x_1421 : f32 = u_xlat17.z;
        let x_1422 : f32 = u_xlat85;
        let x_1425 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1421 * x_1422) + x_1425);
        let x_1429 : vec4<f32> = u_xlat14;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat27.z;
        txVec16 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec16;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat85 = x_1441;
        let x_1443 : f32 = u_xlat17.w;
        let x_1444 : f32 = u_xlat85;
        let x_1447 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1443 * x_1444) + x_1447);
        let x_1451 : vec4<f32> = u_xlat13;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = u_xlat27.z;
        txVec17 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec17;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat85 = x_1463;
        let x_1465 : f32 = u_xlat18.x;
        let x_1466 : f32 = u_xlat85;
        let x_1469 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1465 * x_1466) + x_1469);
        let x_1473 : vec4<f32> = u_xlat13;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.z, x_1473.w);
        let x_1476 : f32 = u_xlat27.z;
        txVec18 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec18;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat85 = x_1485;
        let x_1487 : f32 = u_xlat18.y;
        let x_1488 : f32 = u_xlat85;
        let x_1491 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1487 * x_1488) + x_1491);
        let x_1495 : vec2<f32> = u_xlat64;
        let x_1497 : f32 = u_xlat27.z;
        txVec19 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec19;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat85 = x_1506;
        let x_1508 : f32 = u_xlat18.z;
        let x_1509 : f32 = u_xlat85;
        let x_1512 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1508 * x_1509) + x_1512);
        let x_1516 : vec4<f32> = u_xlat14;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat27.z;
        txVec20 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec20;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat85 = x_1528;
        let x_1530 : f32 = u_xlat18.w;
        let x_1531 : f32 = u_xlat85;
        let x_1534 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1530 * x_1531) + x_1534);
        let x_1538 : vec4<f32> = u_xlat15;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.x, x_1538.y);
        let x_1541 : f32 = u_xlat27.z;
        txVec21 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec21;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1548.xy, x_1548.z);
        u_xlat85 = x_1550;
        let x_1552 : f32 = u_xlat19.x;
        let x_1553 : f32 = u_xlat85;
        let x_1556 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1552 * x_1553) + x_1556);
        let x_1560 : vec4<f32> = u_xlat15;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.z, x_1560.w);
        let x_1563 : f32 = u_xlat27.z;
        txVec22 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec22;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat85 = x_1572;
        let x_1574 : f32 = u_xlat19.y;
        let x_1575 : f32 = u_xlat85;
        let x_1578 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1574 * x_1575) + x_1578);
        let x_1582 : vec2<f32> = u_xlat33;
        let x_1584 : f32 = u_xlat27.z;
        txVec23 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec23;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1591.xy, x_1591.z);
        u_xlat33.x = x_1593;
        let x_1596 : f32 = u_xlat19.z;
        let x_1598 : f32 = u_xlat33.x;
        let x_1601 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1596 * x_1598) + x_1601);
        let x_1605 : vec4<f32> = u_xlat16;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat27.z;
        txVec24 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec24;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat33.x = x_1617;
        let x_1620 : f32 = u_xlat19.w;
        let x_1622 : f32 = u_xlat33.x;
        let x_1625 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1620 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat10;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = u_xlat27.z;
        txVec25 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec25;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat33.x = x_1641;
        let x_1644 : f32 = u_xlat6.x;
        let x_1646 : f32 = u_xlat33.x;
        let x_1649 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1644 * x_1646) + x_1649);
        let x_1653 : vec4<f32> = u_xlat10;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat27.z;
        txVec26 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec26;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1663.xy, x_1663.z);
        u_xlat7.x = x_1665;
        let x_1668 : f32 = u_xlat6.y;
        let x_1670 : f32 = u_xlat7.x;
        let x_1673 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1668 * x_1670) + x_1673);
        let x_1677 : vec2<f32> = u_xlat61;
        let x_1679 : f32 = u_xlat27.z;
        txVec27 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1687 : vec3<f32> = txVec27;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat32 = x_1689;
        let x_1691 : f32 = u_xlat6.z;
        let x_1692 : f32 = u_xlat32;
        let x_1695 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1691 * x_1692) + x_1695);
        let x_1699 : vec2<f32> = u_xlat57;
        let x_1701 : f32 = u_xlat27.z;
        txVec28 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec28;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat57.x = x_1710;
        let x_1713 : f32 = u_xlat6.w;
        let x_1715 : f32 = u_xlat57.x;
        let x_1718 : f32 = u_xlat6.x;
        u_xlat31.x = ((x_1713 * x_1715) + x_1718);
      }
    }
  } else {
    let x_1723 : vec3<f32> = u_xlat27;
    let x_1724 : vec2<f32> = vec2<f32>(x_1723.x, x_1723.y);
    let x_1726 : f32 = u_xlat27.z;
    txVec29 = vec3<f32>(x_1724.x, x_1724.y, x_1726);
    let x_1733 : vec3<f32> = txVec29;
    let x_1735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1733.xy, x_1733.z);
    u_xlat31.x = x_1735;
  }
  let x_1738 : f32 = x_83.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1738) + 1.0f);
  let x_1743 : f32 = u_xlat31.x;
  let x_1745 : f32 = x_83.x_MainLightShadowParams.x;
  let x_1748 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1743 * x_1745) + x_1748);
  let x_1753 : f32 = u_xlat27.z;
  u_xlatb53 = (0.0f >= x_1753);
  let x_1757 : f32 = u_xlat27.z;
  u_xlatb79 = (x_1757 >= 1.0f);
  let x_1759 : bool = u_xlatb79;
  let x_1760 : bool = u_xlatb53;
  u_xlatb53 = (x_1759 | x_1760);
  let x_1762 : bool = u_xlatb53;
  if (x_1762) {
    x_1764 = 1.0f;
  } else {
    let x_1769 : f32 = u_xlat27.x;
    x_1764 = x_1769;
  }
  let x_1770 : f32 = x_1764;
  u_xlat27.x = x_1770;
  let x_1772 : vec3<f32> = vs_TEXCOORD7;
  let x_1775 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1772 + -(x_1775));
  let x_1779 : vec3<f32> = u_xlat31;
  let x_1780 : vec3<f32> = u_xlat31;
  u_xlat53 = dot(x_1779, x_1780);
  let x_1783 : f32 = u_xlat53;
  let x_1785 : f32 = x_83.x_MainLightShadowParams.z;
  let x_1788 : f32 = x_83.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1783 * x_1785) + x_1788);
  let x_1790 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1790, 0.0f, 1.0f);
  let x_1793 : f32 = u_xlat27.x;
  u_xlat31.x = (-(x_1793) + 1.0f);
  let x_1797 : f32 = u_xlat79;
  let x_1799 : f32 = u_xlat31.x;
  let x_1802 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1797 * x_1799) + x_1802);
  let x_1812 : f32 = x_1810.x_MainLightCookieTextureFormat;
  u_xlatb79 = !((x_1812 == -1.0f));
  let x_1814 : bool = u_xlatb79;
  if (x_1814) {
    let x_1817 : vec3<f32> = vs_TEXCOORD7;
    let x_1820 : vec4<f32> = x_1810.x_MainLightWorldToLight[1i];
    let x_1822 : vec2<f32> = (vec2<f32>(x_1817.y, x_1817.y) * vec2<f32>(x_1820.x, x_1820.y));
    let x_1823 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1822.x, x_1822.y, x_1823.z);
    let x_1826 : vec4<f32> = x_1810.x_MainLightWorldToLight[0i];
    let x_1828 : vec3<f32> = vs_TEXCOORD7;
    let x_1831 : vec3<f32> = u_xlat31;
    let x_1833 : vec2<f32> = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1828.x, x_1828.x)) + vec2<f32>(x_1831.x, x_1831.y));
    let x_1834 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1833.x, x_1833.y, x_1834.z);
    let x_1837 : vec4<f32> = x_1810.x_MainLightWorldToLight[2i];
    let x_1839 : vec3<f32> = vs_TEXCOORD7;
    let x_1842 : vec3<f32> = u_xlat31;
    let x_1844 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(x_1839.z, x_1839.z)) + vec2<f32>(x_1842.x, x_1842.y));
    let x_1845 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1844.x, x_1844.y, x_1845.z);
    let x_1847 : vec3<f32> = u_xlat31;
    let x_1850 : vec4<f32> = x_1810.x_MainLightWorldToLight[3i];
    let x_1852 : vec2<f32> = (vec2<f32>(x_1847.x, x_1847.y) + vec2<f32>(x_1850.x, x_1850.y));
    let x_1853 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1852.x, x_1852.y, x_1853.z);
    let x_1855 : vec3<f32> = u_xlat31;
    let x_1858 : vec2<f32> = ((vec2<f32>(x_1855.x, x_1855.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1859 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_1858.x, x_1858.y, x_1859.z);
    let x_1866 : vec3<f32> = u_xlat31;
    let x_1869 : f32 = x_29.x_GlobalMipBias.x;
    let x_1870 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1866.x, x_1866.y), x_1869);
    u_xlat6 = x_1870;
    let x_1872 : f32 = x_1810.x_MainLightCookieTextureFormat;
    let x_1874 : f32 = x_1810.x_MainLightCookieTextureFormat;
    let x_1876 : f32 = x_1810.x_MainLightCookieTextureFormat;
    let x_1878 : f32 = x_1810.x_MainLightCookieTextureFormat;
    let x_1879 : vec4<f32> = vec4<f32>(x_1872, x_1874, x_1876, x_1878);
    let x_1886 : vec4<bool> = (vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1879.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_1886.x, x_1886.y);
    let x_1889 : bool = u_xlatb31.y;
    if (x_1889) {
      let x_1894 : f32 = u_xlat6.w;
      x_1890 = x_1894;
    } else {
      let x_1897 : f32 = u_xlat6.x;
      x_1890 = x_1897;
    }
    let x_1898 : f32 = x_1890;
    u_xlat79 = x_1898;
    let x_1900 : bool = u_xlatb31.x;
    if (x_1900) {
      let x_1904 : vec4<f32> = u_xlat6;
      x_1901 = vec3<f32>(x_1904.x, x_1904.y, x_1904.z);
    } else {
      let x_1907 : f32 = u_xlat79;
      x_1901 = vec3<f32>(x_1907, x_1907, x_1907);
    }
    let x_1909 : vec3<f32> = x_1901;
    u_xlat31 = x_1909;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_1914 : vec3<f32> = u_xlat31;
  let x_1916 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat31 = (x_1914 * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1920 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1920;
  let x_1924 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1924;
  let x_1928 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1928;
  let x_1930 : vec4<f32> = u_xlat6;
  let x_1933 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(-(vec3<f32>(x_1930.x, x_1930.y, x_1930.z)), vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : f32 = u_xlat79;
  let x_1937 : f32 = u_xlat79;
  u_xlat79 = (x_1936 + x_1937);
  let x_1939 : vec4<f32> = u_xlat2;
  let x_1941 : f32 = u_xlat79;
  let x_1945 : vec4<f32> = u_xlat6;
  let x_1948 : vec3<f32> = ((vec3<f32>(x_1939.x, x_1939.y, x_1939.z) * -(vec3<f32>(x_1941, x_1941, x_1941))) + -(vec3<f32>(x_1945.x, x_1945.y, x_1945.z)));
  let x_1949 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
  let x_1951 : vec4<f32> = u_xlat2;
  let x_1953 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1951.x, x_1951.y, x_1951.z), vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1956, 0.0f, 1.0f);
  let x_1958 : f32 = u_xlat79;
  u_xlat79 = (-(x_1958) + 1.0f);
  let x_1961 : f32 = u_xlat79;
  let x_1962 : f32 = u_xlat79;
  u_xlat79 = (x_1961 * x_1962);
  let x_1964 : f32 = u_xlat79;
  let x_1965 : f32 = u_xlat79;
  u_xlat79 = (x_1964 * x_1965);
  let x_1969 : f32 = u_xlat1.x;
  u_xlat84 = ((-(x_1969) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1976 : f32 = u_xlat1.x;
  let x_1977 : f32 = u_xlat84;
  u_xlat1.x = (x_1976 * x_1977);
  let x_1981 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1981 * 6.0f);
  let x_1993 : vec4<f32> = u_xlat7;
  let x_1996 : f32 = u_xlat1.x;
  let x_1997 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1993.x, x_1993.y, x_1993.z), x_1996);
  u_xlat7 = x_1997;
  let x_1999 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1999 + -1.0f);
  let x_2003 : f32 = x_320.unity_SpecCube0_HDR.w;
  let x_2005 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2003 * x_2005) + 1.0f);
  let x_2010 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2010, 0.0f);
  let x_2014 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2014);
  let x_2018 : f32 = u_xlat1.x;
  let x_2020 : f32 = x_320.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2018 * x_2020);
  let x_2024 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2024);
  let x_2028 : f32 = u_xlat1.x;
  let x_2030 : f32 = x_320.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2028 * x_2030);
  let x_2033 : vec4<f32> = u_xlat7;
  let x_2035 : vec4<f32> = u_xlat1;
  let x_2037 : vec3<f32> = (vec3<f32>(x_2033.x, x_2033.y, x_2033.z) * vec3<f32>(x_2035.x, x_2035.x, x_2035.x));
  let x_2038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
  let x_2040 : f32 = u_xlat80;
  let x_2042 : f32 = u_xlat80;
  let x_2046 : vec2<f32> = ((vec2<f32>(x_2040, x_2040) * vec2<f32>(x_2042, x_2042)) + vec2<f32>(-1.0f, 1.0f));
  let x_2047 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2046.x, x_2046.y, x_2047.z, x_2047.w);
  let x_2050 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_2050);
  let x_2054 : vec4<f32> = u_xlat0;
  let x_2057 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2054.x, x_2054.y, x_2054.z)) + vec3<f32>(x_2057, x_2057, x_2057));
  let x_2060 : f32 = u_xlat79;
  let x_2062 : vec3<f32> = u_xlat34;
  let x_2064 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2060, x_2060, x_2060) * x_2062) + vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : vec4<f32> = u_xlat1;
  let x_2069 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2067.x, x_2067.x, x_2067.x) * x_2069);
  let x_2071 : vec4<f32> = u_xlat7;
  let x_2073 : vec3<f32> = u_xlat34;
  let x_2074 : vec3<f32> = (vec3<f32>(x_2071.x, x_2071.y, x_2071.z) * x_2073);
  let x_2075 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec3<f32> = u_xlat29;
  let x_2078 : vec3<f32> = u_xlat30;
  let x_2080 : vec4<f32> = u_xlat7;
  u_xlat29 = ((x_2077 * x_2078) + vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2084 : f32 = u_xlat27.x;
  let x_2086 : f32 = x_320.unity_LightData.z;
  u_xlat78 = (x_2084 * x_2086);
  let x_2088 : vec4<f32> = u_xlat2;
  let x_2091 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2088.x, x_2088.y, x_2088.z), vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
  let x_2096 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2096, 0.0f, 1.0f);
  let x_2099 : f32 = u_xlat78;
  let x_2101 : f32 = u_xlat1.x;
  u_xlat78 = (x_2099 * x_2101);
  let x_2103 : f32 = u_xlat78;
  let x_2105 : vec3<f32> = u_xlat31;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2103, x_2103, x_2103) * x_2105);
  let x_2107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2106.x, x_2106.y, x_2107.z, x_2106.z);
  let x_2109 : vec4<f32> = u_xlat6;
  let x_2112 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat31 = (vec3<f32>(x_2109.x, x_2109.y, x_2109.z) + vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec3<f32> = u_xlat31;
  let x_2116 : vec3<f32> = u_xlat31;
  u_xlat78 = dot(x_2115, x_2116);
  let x_2118 : f32 = u_xlat78;
  u_xlat78 = max(x_2118, 1.17549435e-38f);
  let x_2121 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2121);
  let x_2123 : f32 = u_xlat78;
  let x_2125 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2123, x_2123, x_2123) * x_2125);
  let x_2127 : vec4<f32> = u_xlat2;
  let x_2129 : vec3<f32> = u_xlat31;
  u_xlat78 = dot(vec3<f32>(x_2127.x, x_2127.y, x_2127.z), x_2129);
  let x_2131 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2131, 0.0f, 1.0f);
  let x_2134 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2136 : vec3<f32> = u_xlat31;
  u_xlat80 = dot(vec3<f32>(x_2134.x, x_2134.y, x_2134.z), x_2136);
  let x_2138 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2138, 0.0f, 1.0f);
  let x_2140 : f32 = u_xlat78;
  let x_2141 : f32 = u_xlat78;
  u_xlat78 = (x_2140 * x_2141);
  let x_2143 : f32 = u_xlat78;
  let x_2145 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2143 * x_2145) + 1.00001001358032226562f);
  let x_2149 : f32 = u_xlat80;
  let x_2150 : f32 = u_xlat80;
  u_xlat80 = (x_2149 * x_2150);
  let x_2152 : f32 = u_xlat78;
  let x_2153 : f32 = u_xlat78;
  u_xlat78 = (x_2152 * x_2153);
  let x_2155 : f32 = u_xlat80;
  u_xlat80 = max(x_2155, 0.10000000149011611938f);
  let x_2158 : f32 = u_xlat78;
  let x_2159 : f32 = u_xlat80;
  u_xlat78 = (x_2158 * x_2159);
  let x_2162 : f32 = u_xlat4.x;
  let x_2163 : f32 = u_xlat78;
  u_xlat78 = (x_2162 * x_2163);
  let x_2166 : f32 = u_xlat5.x;
  let x_2167 : f32 = u_xlat78;
  u_xlat78 = (x_2166 / x_2167);
  let x_2169 : vec4<f32> = u_xlat0;
  let x_2171 : f32 = u_xlat78;
  let x_2174 : vec3<f32> = u_xlat30;
  u_xlat31 = ((vec3<f32>(x_2169.x, x_2169.y, x_2169.z) * vec3<f32>(x_2171, x_2171, x_2171)) + x_2174);
  let x_2177 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2179 : f32 = x_320.unity_LightData.y;
  u_xlat78 = min(x_2177, x_2179);
  let x_2182 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2182));
  let x_2185 : f32 = u_xlat53;
  let x_2188 : f32 = x_83.x_AdditionalShadowFadeParams.x;
  let x_2191 : f32 = x_83.x_AdditionalShadowFadeParams.y;
  u_xlat53 = ((x_2185 * x_2188) + x_2191);
  let x_2193 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2193, 0.0f, 1.0f);
  let x_2197 : f32 = x_1810.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2199 : f32 = x_1810.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2201 : f32 = x_1810.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2203 : f32 = x_1810.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2204 : vec4<f32> = vec4<f32>(x_2197, x_2199, x_2201, x_2203);
  let x_2210 : vec4<bool> = (vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2204.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2210.x, x_2210.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2222 : u32 = u_xlatu_loop_1;
    let x_2223 : u32 = u_xlatu78;
    if ((x_2222 < x_2223)) {
    } else {
      break;
    }
    let x_2226 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2226 >> 2u);
    let x_2229 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2229 & 3u));
    let x_2232 : u32 = u_xlatu84;
    let x_2235 : vec4<f32> = x_320.unity_LightIndices[bitcast<i32>(x_2232)];
    let x_2245 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2250 : vec4<u32> = indexable[x_2245];
    u_xlat84 = dot(x_2235, bitcast<vec4<f32>>(x_2250));
    let x_2254 : f32 = u_xlat84;
    u_xlati84 = i32(x_2254);
    let x_2256 : vec3<f32> = vs_TEXCOORD7;
    let x_2267 : i32 = u_xlati84;
    let x_2269 : vec4<f32> = x_2266.x_AdditionalLightsPosition[x_2267];
    let x_2272 : i32 = u_xlati84;
    let x_2274 : vec4<f32> = x_2266.x_AdditionalLightsPosition[x_2272];
    let x_2276 : vec3<f32> = ((-(x_2256) * vec3<f32>(x_2269.w, x_2269.w, x_2269.w)) + vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
    let x_2277 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
    let x_2280 : vec4<f32> = u_xlat9;
    let x_2282 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2280.x, x_2280.y, x_2280.z), vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
    let x_2285 : f32 = u_xlat59;
    u_xlat59 = max(x_2285, 0.00006103515625f);
    let x_2288 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2288);
    let x_2290 : f32 = u_xlat85;
    let x_2292 : vec4<f32> = u_xlat9;
    let x_2294 : vec3<f32> = (vec3<f32>(x_2290, x_2290, x_2290) * vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
    let x_2295 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
    let x_2298 : f32 = u_xlat59;
    u_xlat87 = (1.0f / x_2298);
    let x_2300 : f32 = u_xlat59;
    let x_2301 : i32 = u_xlati84;
    let x_2303 : f32 = x_2266.x_AdditionalLightsAttenuation[x_2301].x;
    u_xlat59 = (x_2300 * x_2303);
    let x_2305 : f32 = u_xlat59;
    let x_2307 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2305) * x_2307) + 1.0f);
    let x_2310 : f32 = u_xlat59;
    u_xlat59 = max(x_2310, 0.0f);
    let x_2312 : f32 = u_xlat59;
    let x_2313 : f32 = u_xlat59;
    u_xlat59 = (x_2312 * x_2313);
    let x_2315 : f32 = u_xlat59;
    let x_2316 : f32 = u_xlat87;
    u_xlat59 = (x_2315 * x_2316);
    let x_2318 : i32 = u_xlati84;
    let x_2320 : vec4<f32> = x_2266.x_AdditionalLightsSpotDir[x_2318];
    let x_2322 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : f32 = u_xlat87;
    let x_2326 : i32 = u_xlati84;
    let x_2328 : f32 = x_2266.x_AdditionalLightsAttenuation[x_2326].z;
    let x_2330 : i32 = u_xlati84;
    let x_2332 : f32 = x_2266.x_AdditionalLightsAttenuation[x_2330].w;
    u_xlat87 = ((x_2325 * x_2328) + x_2332);
    let x_2334 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2334, 0.0f, 1.0f);
    let x_2336 : f32 = u_xlat87;
    let x_2337 : f32 = u_xlat87;
    u_xlat87 = (x_2336 * x_2337);
    let x_2339 : f32 = u_xlat59;
    let x_2340 : f32 = u_xlat87;
    u_xlat59 = (x_2339 * x_2340);
    let x_2344 : i32 = u_xlati84;
    let x_2346 : f32 = x_83.x_AdditionalShadowParams[x_2344].w;
    u_xlati87 = i32(x_2346);
    let x_2349 : i32 = u_xlati87;
    u_xlatb88 = (x_2349 >= 0i);
    let x_2351 : bool = u_xlatb88;
    if (x_2351) {
      let x_2355 : i32 = u_xlati84;
      let x_2357 : f32 = x_83.x_AdditionalShadowParams[x_2355].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2357, x_2357, x_2357, x_2357))));
      let x_2361 : bool = u_xlatb88;
      if (x_2361) {
        let x_2365 : vec4<f32> = u_xlat10;
        let x_2368 : vec4<f32> = u_xlat10;
        let x_2371 : vec4<bool> = (abs(vec4<f32>(x_2365.z, x_2365.z, x_2365.y, x_2365.z)) >= abs(vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.x)));
        let x_2373 : vec3<bool> = vec3<bool>(x_2371.x, x_2371.y, x_2371.z);
        let x_2374 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
        let x_2377 : bool = u_xlatb11.y;
        let x_2379 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2377 & x_2379);
        let x_2381 : vec4<f32> = u_xlat10;
        let x_2384 : vec4<bool> = (-(vec4<f32>(x_2381.z, x_2381.y, x_2381.z, x_2381.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2385 : vec3<bool> = vec3<bool>(x_2384.x, x_2384.y, x_2384.w);
        let x_2386 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2385.x, x_2385.y, x_2386.z, x_2385.z);
        let x_2389 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2389);
        let x_2394 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2394);
        let x_2399 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2399);
        let x_2403 : bool = u_xlatb11.z;
        if (x_2403) {
          let x_2408 : f32 = u_xlat11.y;
          x_2404 = x_2408;
        } else {
          let x_2410 : f32 = u_xlat89;
          x_2404 = x_2410;
        }
        let x_2411 : f32 = x_2404;
        u_xlat37.x = x_2411;
        let x_2414 : bool = u_xlatb88;
        if (x_2414) {
          let x_2419 : f32 = u_xlat11.x;
          x_2415 = x_2419;
        } else {
          let x_2422 : f32 = u_xlat37.x;
          x_2415 = x_2422;
        }
        let x_2423 : f32 = x_2415;
        u_xlat88 = x_2423;
        let x_2424 : i32 = u_xlati84;
        let x_2426 : f32 = x_83.x_AdditionalShadowParams[x_2424].w;
        u_xlat11.x = trunc(x_2426);
        let x_2429 : f32 = u_xlat88;
        let x_2431 : f32 = u_xlat11.x;
        u_xlat88 = (x_2429 + x_2431);
        let x_2433 : f32 = u_xlat88;
        u_xlati87 = i32(x_2433);
      }
      let x_2435 : i32 = u_xlati87;
      u_xlati87 = (x_2435 << bitcast<u32>(2i));
      let x_2437 : vec3<f32> = vs_TEXCOORD7;
      let x_2440 : i32 = u_xlati87;
      let x_2443 : i32 = u_xlati87;
      let x_2447 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2440 + 1i) / 4i)][((x_2443 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2437.y, x_2437.y, x_2437.y, x_2437.y) * x_2447);
      let x_2449 : i32 = u_xlati87;
      let x_2451 : i32 = u_xlati87;
      let x_2454 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[(x_2449 / 4i)][(x_2451 % 4i)];
      let x_2455 : vec3<f32> = vs_TEXCOORD7;
      let x_2458 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2454 * vec4<f32>(x_2455.x, x_2455.x, x_2455.x, x_2455.x)) + x_2458);
      let x_2460 : i32 = u_xlati87;
      let x_2463 : i32 = u_xlati87;
      let x_2467 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2460 + 2i) / 4i)][((x_2463 + 2i) % 4i)];
      let x_2468 : vec3<f32> = vs_TEXCOORD7;
      let x_2471 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2467 * vec4<f32>(x_2468.z, x_2468.z, x_2468.z, x_2468.z)) + x_2471);
      let x_2473 : vec4<f32> = u_xlat11;
      let x_2474 : i32 = u_xlati87;
      let x_2477 : i32 = u_xlati87;
      let x_2481 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2474 + 3i) / 4i)][((x_2477 + 3i) % 4i)];
      u_xlat11 = (x_2473 + x_2481);
      let x_2483 : vec4<f32> = u_xlat11;
      let x_2485 : vec4<f32> = u_xlat11;
      let x_2487 : vec3<f32> = (vec3<f32>(x_2483.x, x_2483.y, x_2483.z) / vec3<f32>(x_2485.w, x_2485.w, x_2485.w));
      let x_2488 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
      let x_2491 : i32 = u_xlati84;
      let x_2493 : f32 = x_83.x_AdditionalShadowParams[x_2491].y;
      u_xlatb87 = (0.0f < x_2493);
      let x_2495 : bool = u_xlatb87;
      if (x_2495) {
        let x_2498 : i32 = u_xlati84;
        let x_2500 : f32 = x_83.x_AdditionalShadowParams[x_2498].y;
        u_xlatb87 = (1.0f == x_2500);
        let x_2502 : bool = u_xlatb87;
        if (x_2502) {
          let x_2505 : vec4<f32> = u_xlat11;
          let x_2509 : vec4<f32> = x_83.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2505.x, x_2505.y, x_2505.x, x_2505.y) + x_2509);
          let x_2512 : vec4<f32> = u_xlat12;
          let x_2513 : vec2<f32> = vec2<f32>(x_2512.x, x_2512.y);
          let x_2515 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
          let x_2523 : vec3<f32> = txVec30;
          let x_2525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2523.xy, x_2523.z);
          u_xlat13.x = x_2525;
          let x_2528 : vec4<f32> = u_xlat12;
          let x_2529 : vec2<f32> = vec2<f32>(x_2528.z, x_2528.w);
          let x_2531 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
          let x_2538 : vec3<f32> = txVec31;
          let x_2540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
          u_xlat13.y = x_2540;
          let x_2542 : vec4<f32> = u_xlat11;
          let x_2546 : vec4<f32> = x_83.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) + x_2546);
          let x_2549 : vec4<f32> = u_xlat12;
          let x_2550 : vec2<f32> = vec2<f32>(x_2549.x, x_2549.y);
          let x_2552 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
          let x_2559 : vec3<f32> = txVec32;
          let x_2561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
          u_xlat13.z = x_2561;
          let x_2564 : vec4<f32> = u_xlat12;
          let x_2565 : vec2<f32> = vec2<f32>(x_2564.z, x_2564.w);
          let x_2567 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
          let x_2574 : vec3<f32> = txVec33;
          let x_2576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2574.xy, x_2574.z);
          u_xlat13.w = x_2576;
          let x_2578 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2578, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2581 : i32 = u_xlati84;
          let x_2583 : f32 = x_83.x_AdditionalShadowParams[x_2581].y;
          u_xlatb88 = (2.0f == x_2583);
          let x_2585 : bool = u_xlatb88;
          if (x_2585) {
            let x_2588 : vec4<f32> = u_xlat11;
            let x_2592 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2595 : vec2<f32> = ((vec2<f32>(x_2588.x, x_2588.y) * vec2<f32>(x_2592.z, x_2592.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2596 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
            let x_2598 : vec4<f32> = u_xlat12;
            let x_2600 : vec2<f32> = floor(vec2<f32>(x_2598.x, x_2598.y));
            let x_2601 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec4<f32> = u_xlat11;
            let x_2606 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2609 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2603.x, x_2603.y) * vec2<f32>(x_2606.z, x_2606.w)) + -(vec2<f32>(x_2609.x, x_2609.y)));
            let x_2613 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2613.x, x_2613.x, x_2613.y, x_2613.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2616 : vec4<f32> = u_xlat13;
            let x_2618 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2616.x, x_2616.x, x_2616.z, x_2616.z) * vec4<f32>(x_2618.x, x_2618.x, x_2618.z, x_2618.z));
            let x_2621 : vec4<f32> = u_xlat14;
            let x_2623 : vec2<f32> = (vec2<f32>(x_2621.y, x_2621.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2624 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2623.x, x_2624.y, x_2623.y, x_2624.w);
            let x_2626 : vec4<f32> = u_xlat14;
            let x_2629 : vec2<f32> = u_xlat64;
            let x_2631 : vec2<f32> = ((vec2<f32>(x_2626.x, x_2626.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2629));
            let x_2632 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2635 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2635) + vec2<f32>(1.0f, 1.0f));
            let x_2638 : vec2<f32> = u_xlat64;
            let x_2639 : vec2<f32> = min(x_2638, vec2<f32>(0.0f, 0.0f));
            let x_2640 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
            let x_2642 : vec4<f32> = u_xlat15;
            let x_2645 : vec4<f32> = u_xlat15;
            let x_2648 : vec2<f32> = u_xlat66;
            let x_2649 : vec2<f32> = ((-(vec2<f32>(x_2642.x, x_2642.y)) * vec2<f32>(x_2645.x, x_2645.y)) + x_2648);
            let x_2650 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2649.x, x_2649.y, x_2650.z, x_2650.w);
            let x_2652 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2652, vec2<f32>(0.0f, 0.0f));
            let x_2654 : vec2<f32> = u_xlat64;
            let x_2656 : vec2<f32> = u_xlat64;
            let x_2658 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2654) * x_2656) + vec2<f32>(x_2658.y, x_2658.w));
            let x_2661 : vec4<f32> = u_xlat15;
            let x_2663 : vec2<f32> = (vec2<f32>(x_2661.x, x_2661.y) + vec2<f32>(1.0f, 1.0f));
            let x_2664 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2663.x, x_2663.y, x_2664.z, x_2664.w);
            let x_2666 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2666 + vec2<f32>(1.0f, 1.0f));
            let x_2668 : vec4<f32> = u_xlat14;
            let x_2670 : vec2<f32> = (vec2<f32>(x_2668.x, x_2668.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2671 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
            let x_2673 : vec2<f32> = u_xlat66;
            let x_2674 : vec2<f32> = (x_2673 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2675 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2674.x, x_2674.y, x_2675.z, x_2675.w);
            let x_2677 : vec4<f32> = u_xlat15;
            let x_2679 : vec2<f32> = (vec2<f32>(x_2677.x, x_2677.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2680 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec2<f32> = u_xlat64;
            let x_2683 : vec2<f32> = (x_2682 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2684 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2683.x, x_2683.y, x_2684.z, x_2684.w);
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2686.y, x_2686.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2690 : f32 = u_xlat15.x;
            u_xlat16.z = x_2690;
            let x_2693 : f32 = u_xlat64.x;
            u_xlat16.w = x_2693;
            let x_2696 : f32 = u_xlat17.x;
            u_xlat14.z = x_2696;
            let x_2699 : f32 = u_xlat13.x;
            u_xlat14.w = x_2699;
            let x_2701 : vec4<f32> = u_xlat14;
            let x_2703 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2701.z, x_2701.w, x_2701.x, x_2701.z) + vec4<f32>(x_2703.z, x_2703.w, x_2703.x, x_2703.z));
            let x_2707 : f32 = u_xlat16.y;
            u_xlat15.z = x_2707;
            let x_2710 : f32 = u_xlat64.y;
            u_xlat15.w = x_2710;
            let x_2713 : f32 = u_xlat14.y;
            u_xlat17.z = x_2713;
            let x_2716 : f32 = u_xlat13.z;
            u_xlat17.w = x_2716;
            let x_2718 : vec4<f32> = u_xlat15;
            let x_2720 : vec4<f32> = u_xlat17;
            let x_2722 : vec3<f32> = (vec3<f32>(x_2718.z, x_2718.y, x_2718.w) + vec3<f32>(x_2720.z, x_2720.y, x_2720.w));
            let x_2723 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
            let x_2725 : vec4<f32> = u_xlat14;
            let x_2727 : vec4<f32> = u_xlat18;
            let x_2729 : vec3<f32> = (vec3<f32>(x_2725.x, x_2725.z, x_2725.w) / vec3<f32>(x_2727.z, x_2727.w, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
            let x_2732 : vec4<f32> = u_xlat14;
            let x_2734 : vec3<f32> = (vec3<f32>(x_2732.x, x_2732.y, x_2732.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2735 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat17;
            let x_2739 : vec4<f32> = u_xlat13;
            let x_2741 : vec3<f32> = (vec3<f32>(x_2737.z, x_2737.y, x_2737.w) / vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
            let x_2742 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
            let x_2744 : vec4<f32> = u_xlat15;
            let x_2746 : vec3<f32> = (vec3<f32>(x_2744.x, x_2744.y, x_2744.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2747 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
            let x_2749 : vec4<f32> = u_xlat14;
            let x_2752 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2754 : vec3<f32> = (vec3<f32>(x_2749.y, x_2749.x, x_2749.z) * vec3<f32>(x_2752.x, x_2752.x, x_2752.x));
            let x_2755 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2755.w);
            let x_2757 : vec4<f32> = u_xlat15;
            let x_2760 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2762 : vec3<f32> = (vec3<f32>(x_2757.x, x_2757.y, x_2757.z) * vec3<f32>(x_2760.y, x_2760.y, x_2760.y));
            let x_2763 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
            let x_2766 : f32 = u_xlat15.x;
            u_xlat14.w = x_2766;
            let x_2768 : vec4<f32> = u_xlat12;
            let x_2771 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y) * vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y)) + vec4<f32>(x_2774.y, x_2774.w, x_2774.x, x_2774.w));
            let x_2777 : vec4<f32> = u_xlat12;
            let x_2780 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2783 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2777.x, x_2777.y) * vec2<f32>(x_2780.x, x_2780.y)) + vec2<f32>(x_2783.z, x_2783.w));
            let x_2787 : f32 = u_xlat14.y;
            u_xlat15.w = x_2787;
            let x_2789 : vec4<f32> = u_xlat15;
            let x_2790 : vec2<f32> = vec2<f32>(x_2789.y, x_2789.z);
            let x_2791 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2791.x, x_2790.x, x_2791.z, x_2790.y);
            let x_2793 : vec4<f32> = u_xlat12;
            let x_2796 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2799 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y) * vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y)) + vec4<f32>(x_2799.x, x_2799.y, x_2799.z, x_2799.y));
            let x_2802 : vec4<f32> = u_xlat12;
            let x_2805 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2808 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y) * vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y)) + vec4<f32>(x_2808.w, x_2808.y, x_2808.w, x_2808.z));
            let x_2811 : vec4<f32> = u_xlat12;
            let x_2814 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2817 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.x, x_2817.w, x_2817.z, x_2817.w));
            let x_2820 : vec4<f32> = u_xlat13;
            let x_2822 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2820.x, x_2820.x, x_2820.x, x_2820.y) * vec4<f32>(x_2822.z, x_2822.w, x_2822.y, x_2822.z));
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2828 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2826.y, x_2826.y, x_2826.z, x_2826.z) * x_2828);
            let x_2831 : f32 = u_xlat13.z;
            let x_2833 : f32 = u_xlat18.y;
            u_xlat88 = (x_2831 * x_2833);
            let x_2836 : vec4<f32> = u_xlat16;
            let x_2837 : vec2<f32> = vec2<f32>(x_2836.x, x_2836.y);
            let x_2839 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2837.x, x_2837.y, x_2839);
            let x_2846 : vec3<f32> = txVec34;
            let x_2848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
            u_xlat89 = x_2848;
            let x_2850 : vec4<f32> = u_xlat16;
            let x_2851 : vec2<f32> = vec2<f32>(x_2850.z, x_2850.w);
            let x_2853 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
            let x_2860 : vec3<f32> = txVec35;
            let x_2862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
            u_xlat12.x = x_2862;
            let x_2865 : f32 = u_xlat12.x;
            let x_2867 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2865 * x_2867);
            let x_2871 : f32 = u_xlat19.x;
            let x_2872 : f32 = u_xlat89;
            let x_2875 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2871 * x_2872) + x_2875);
            let x_2878 : vec2<f32> = u_xlat64;
            let x_2880 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2878.x, x_2878.y, x_2880);
            let x_2887 : vec3<f32> = txVec36;
            let x_2889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2887.xy, x_2887.z);
            u_xlat12.x = x_2889;
            let x_2892 : f32 = u_xlat19.z;
            let x_2894 : f32 = u_xlat12.x;
            let x_2896 : f32 = u_xlat89;
            u_xlat89 = ((x_2892 * x_2894) + x_2896);
            let x_2899 : vec4<f32> = u_xlat15;
            let x_2900 : vec2<f32> = vec2<f32>(x_2899.x, x_2899.y);
            let x_2902 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
            let x_2909 : vec3<f32> = txVec37;
            let x_2911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
            u_xlat12.x = x_2911;
            let x_2914 : f32 = u_xlat19.w;
            let x_2916 : f32 = u_xlat12.x;
            let x_2918 : f32 = u_xlat89;
            u_xlat89 = ((x_2914 * x_2916) + x_2918);
            let x_2921 : vec4<f32> = u_xlat17;
            let x_2922 : vec2<f32> = vec2<f32>(x_2921.x, x_2921.y);
            let x_2924 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2922.x, x_2922.y, x_2924);
            let x_2931 : vec3<f32> = txVec38;
            let x_2933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2931.xy, x_2931.z);
            u_xlat12.x = x_2933;
            let x_2936 : f32 = u_xlat20.x;
            let x_2938 : f32 = u_xlat12.x;
            let x_2940 : f32 = u_xlat89;
            u_xlat89 = ((x_2936 * x_2938) + x_2940);
            let x_2943 : vec4<f32> = u_xlat17;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.z, x_2943.w);
            let x_2946 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec39;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat12.x = x_2955;
            let x_2958 : f32 = u_xlat20.y;
            let x_2960 : f32 = u_xlat12.x;
            let x_2962 : f32 = u_xlat89;
            u_xlat89 = ((x_2958 * x_2960) + x_2962);
            let x_2965 : vec4<f32> = u_xlat15;
            let x_2966 : vec2<f32> = vec2<f32>(x_2965.z, x_2965.w);
            let x_2968 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2966.x, x_2966.y, x_2968);
            let x_2975 : vec3<f32> = txVec40;
            let x_2977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2975.xy, x_2975.z);
            u_xlat12.x = x_2977;
            let x_2980 : f32 = u_xlat20.z;
            let x_2982 : f32 = u_xlat12.x;
            let x_2984 : f32 = u_xlat89;
            u_xlat89 = ((x_2980 * x_2982) + x_2984);
            let x_2987 : vec4<f32> = u_xlat14;
            let x_2988 : vec2<f32> = vec2<f32>(x_2987.x, x_2987.y);
            let x_2990 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
            let x_2997 : vec3<f32> = txVec41;
            let x_2999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
            u_xlat12.x = x_2999;
            let x_3002 : f32 = u_xlat20.w;
            let x_3004 : f32 = u_xlat12.x;
            let x_3006 : f32 = u_xlat89;
            u_xlat89 = ((x_3002 * x_3004) + x_3006);
            let x_3009 : vec4<f32> = u_xlat14;
            let x_3010 : vec2<f32> = vec2<f32>(x_3009.z, x_3009.w);
            let x_3012 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3019 : vec3<f32> = txVec42;
            let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
            u_xlat12.x = x_3021;
            let x_3023 : f32 = u_xlat88;
            let x_3025 : f32 = u_xlat12.x;
            let x_3027 : f32 = u_xlat89;
            u_xlat87 = ((x_3023 * x_3025) + x_3027);
          } else {
            let x_3030 : vec4<f32> = u_xlat11;
            let x_3033 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3036 : vec2<f32> = ((vec2<f32>(x_3030.x, x_3030.y) * vec2<f32>(x_3033.z, x_3033.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3037 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3036.x, x_3036.y, x_3037.z, x_3037.w);
            let x_3039 : vec4<f32> = u_xlat12;
            let x_3041 : vec2<f32> = floor(vec2<f32>(x_3039.x, x_3039.y));
            let x_3042 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3041.x, x_3041.y, x_3042.z, x_3042.w);
            let x_3044 : vec4<f32> = u_xlat11;
            let x_3047 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3050 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3044.x, x_3044.y) * vec2<f32>(x_3047.z, x_3047.w)) + -(vec2<f32>(x_3050.x, x_3050.y)));
            let x_3054 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3054.x, x_3054.x, x_3054.y, x_3054.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3057 : vec4<f32> = u_xlat13;
            let x_3059 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3057.x, x_3057.x, x_3057.z, x_3057.z) * vec4<f32>(x_3059.x, x_3059.x, x_3059.z, x_3059.z));
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3064 : vec2<f32> = (vec2<f32>(x_3062.y, x_3062.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3065 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3065.x, x_3064.x, x_3065.z, x_3064.y);
            let x_3067 : vec4<f32> = u_xlat14;
            let x_3070 : vec2<f32> = u_xlat64;
            let x_3072 : vec2<f32> = ((vec2<f32>(x_3067.x, x_3067.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3070));
            let x_3073 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3072.x, x_3073.y, x_3072.y, x_3073.w);
            let x_3075 : vec2<f32> = u_xlat64;
            let x_3077 : vec2<f32> = (-(x_3075) + vec2<f32>(1.0f, 1.0f));
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3077.x, x_3077.y, x_3078.z, x_3078.w);
            let x_3080 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3080, vec2<f32>(0.0f, 0.0f));
            let x_3082 : vec2<f32> = u_xlat66;
            let x_3084 : vec2<f32> = u_xlat66;
            let x_3086 : vec4<f32> = u_xlat14;
            let x_3088 : vec2<f32> = ((-(x_3082) * x_3084) + vec2<f32>(x_3086.x, x_3086.y));
            let x_3089 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3088.x, x_3088.y, x_3089.z, x_3089.w);
            let x_3091 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3091, vec2<f32>(0.0f, 0.0f));
            let x_3094 : vec2<f32> = u_xlat66;
            let x_3096 : vec2<f32> = u_xlat66;
            let x_3098 : vec4<f32> = u_xlat13;
            let x_3100 : vec2<f32> = ((-(x_3094) * x_3096) + vec2<f32>(x_3098.y, x_3098.w));
            let x_3101 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3100.x, x_3101.y, x_3100.y);
            let x_3103 : vec4<f32> = u_xlat14;
            let x_3106 : vec2<f32> = (vec2<f32>(x_3103.x, x_3103.y) + vec2<f32>(2.0f, 2.0f));
            let x_3107 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3106.x, x_3106.y, x_3107.z, x_3107.w);
            let x_3109 : vec3<f32> = u_xlat39;
            let x_3111 : vec2<f32> = (vec2<f32>(x_3109.x, x_3109.z) + vec2<f32>(2.0f, 2.0f));
            let x_3112 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3112.x, x_3111.x, x_3112.z, x_3111.y);
            let x_3115 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3115 * 0.08163200318813323975f);
            let x_3118 : vec4<f32> = u_xlat13;
            let x_3121 : vec3<f32> = (vec3<f32>(x_3118.z, x_3118.x, x_3118.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3122 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3121.x, x_3121.y, x_3121.z, x_3122.w);
            let x_3124 : vec4<f32> = u_xlat14;
            let x_3126 : vec2<f32> = (vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3127 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3126.x, x_3126.y, x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat17.y;
            u_xlat16.x = x_3130;
            let x_3132 : vec2<f32> = u_xlat64;
            let x_3135 : vec2<f32> = ((vec2<f32>(x_3132.x, x_3132.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3136 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3136.x, x_3135.x, x_3136.z, x_3135.y);
            let x_3138 : vec2<f32> = u_xlat64;
            let x_3141 : vec2<f32> = ((vec2<f32>(x_3138.x, x_3138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3142 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3141.x, x_3142.y, x_3141.y, x_3142.w);
            let x_3145 : f32 = u_xlat13.x;
            u_xlat14.y = x_3145;
            let x_3148 : f32 = u_xlat15.y;
            u_xlat14.w = x_3148;
            let x_3150 : vec4<f32> = u_xlat14;
            let x_3151 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3150 + x_3151);
            let x_3153 : vec2<f32> = u_xlat64;
            let x_3156 : vec2<f32> = ((vec2<f32>(x_3153.y, x_3153.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3157 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3157.x, x_3156.x, x_3157.z, x_3156.y);
            let x_3159 : vec2<f32> = u_xlat64;
            let x_3162 : vec2<f32> = ((vec2<f32>(x_3159.y, x_3159.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3163 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3162.x, x_3163.y, x_3162.y, x_3163.w);
            let x_3166 : f32 = u_xlat13.y;
            u_xlat15.y = x_3166;
            let x_3168 : vec4<f32> = u_xlat15;
            let x_3169 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3168 + x_3169);
            let x_3171 : vec4<f32> = u_xlat14;
            let x_3172 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3171 / x_3172);
            let x_3174 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3174 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3176 : vec4<f32> = u_xlat15;
            let x_3177 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3176 / x_3177);
            let x_3179 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3179 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3181 : vec4<f32> = u_xlat14;
            let x_3184 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3181.w, x_3181.x, x_3181.y, x_3181.z) * vec4<f32>(x_3184.x, x_3184.x, x_3184.x, x_3184.x));
            let x_3187 : vec4<f32> = u_xlat15;
            let x_3190 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3187.x, x_3187.w, x_3187.y, x_3187.z) * vec4<f32>(x_3190.y, x_3190.y, x_3190.y, x_3190.y));
            let x_3193 : vec4<f32> = u_xlat14;
            let x_3194 : vec3<f32> = vec3<f32>(x_3193.y, x_3193.z, x_3193.w);
            let x_3195 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3194.x, x_3195.y, x_3194.y, x_3194.z);
            let x_3198 : f32 = u_xlat15.x;
            u_xlat17.y = x_3198;
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3203 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3206 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3200.x, x_3200.y, x_3200.x, x_3200.y) * vec4<f32>(x_3203.x, x_3203.y, x_3203.x, x_3203.y)) + vec4<f32>(x_3206.x, x_3206.y, x_3206.z, x_3206.y));
            let x_3209 : vec4<f32> = u_xlat12;
            let x_3212 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3215 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(x_3212.x, x_3212.y)) + vec2<f32>(x_3215.w, x_3215.y));
            let x_3219 : f32 = u_xlat17.y;
            u_xlat14.y = x_3219;
            let x_3222 : f32 = u_xlat15.z;
            u_xlat17.y = x_3222;
            let x_3224 : vec4<f32> = u_xlat12;
            let x_3227 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3230 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y) * vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y)) + vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3230.y));
            let x_3233 : vec4<f32> = u_xlat12;
            let x_3236 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat17;
            let x_3241 : vec2<f32> = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.x, x_3236.y)) + vec2<f32>(x_3239.w, x_3239.y));
            let x_3242 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3241.x, x_3241.y, x_3242.z, x_3242.w);
            let x_3245 : f32 = u_xlat17.y;
            u_xlat14.z = x_3245;
            let x_3248 : vec4<f32> = u_xlat12;
            let x_3251 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3254 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3248.x, x_3248.y, x_3248.x, x_3248.y) * vec4<f32>(x_3251.x, x_3251.y, x_3251.x, x_3251.y)) + vec4<f32>(x_3254.x, x_3254.y, x_3254.x, x_3254.z));
            let x_3258 : f32 = u_xlat15.w;
            u_xlat17.y = x_3258;
            let x_3261 : vec4<f32> = u_xlat12;
            let x_3264 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3267 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3261.x, x_3261.y, x_3261.x, x_3261.y) * vec4<f32>(x_3264.x, x_3264.y, x_3264.x, x_3264.y)) + vec4<f32>(x_3267.x, x_3267.y, x_3267.z, x_3267.y));
            let x_3271 : vec4<f32> = u_xlat12;
            let x_3274 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3277 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3271.x, x_3271.y) * vec2<f32>(x_3274.x, x_3274.y)) + vec2<f32>(x_3277.w, x_3277.y));
            let x_3281 : f32 = u_xlat17.y;
            u_xlat14.w = x_3281;
            let x_3284 : vec4<f32> = u_xlat12;
            let x_3287 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3290 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3284.x, x_3284.y) * vec2<f32>(x_3287.x, x_3287.y)) + vec2<f32>(x_3290.x, x_3290.w));
            let x_3293 : vec4<f32> = u_xlat17;
            let x_3294 : vec3<f32> = vec3<f32>(x_3293.x, x_3293.z, x_3293.w);
            let x_3295 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3294.x, x_3295.y, x_3294.y, x_3294.z);
            let x_3297 : vec4<f32> = u_xlat12;
            let x_3300 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3303 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3297.x, x_3297.y, x_3297.x, x_3297.y) * vec4<f32>(x_3300.x, x_3300.y, x_3300.x, x_3300.y)) + vec4<f32>(x_3303.x, x_3303.y, x_3303.z, x_3303.y));
            let x_3307 : vec4<f32> = u_xlat12;
            let x_3310 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3313 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3307.x, x_3307.y) * vec2<f32>(x_3310.x, x_3310.y)) + vec2<f32>(x_3313.w, x_3313.y));
            let x_3317 : f32 = u_xlat14.x;
            u_xlat15.x = x_3317;
            let x_3319 : vec4<f32> = u_xlat12;
            let x_3322 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat15;
            let x_3327 : vec2<f32> = ((vec2<f32>(x_3319.x, x_3319.y) * vec2<f32>(x_3322.x, x_3322.y)) + vec2<f32>(x_3325.x, x_3325.y));
            let x_3328 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3327.x, x_3327.y, x_3328.z, x_3328.w);
            let x_3331 : vec4<f32> = u_xlat13;
            let x_3333 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3331.x, x_3331.x, x_3331.x, x_3331.x) * x_3333);
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3338 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3336.y, x_3336.y, x_3336.y, x_3336.y) * x_3338);
            let x_3341 : vec4<f32> = u_xlat13;
            let x_3343 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3341.z, x_3341.z, x_3341.z, x_3341.z) * x_3343);
            let x_3345 : vec4<f32> = u_xlat13;
            let x_3347 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3345.w, x_3345.w, x_3345.w, x_3345.w) * x_3347);
            let x_3350 : vec4<f32> = u_xlat18;
            let x_3351 : vec2<f32> = vec2<f32>(x_3350.x, x_3350.y);
            let x_3353 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec43;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat88 = x_3362;
            let x_3364 : vec4<f32> = u_xlat18;
            let x_3365 : vec2<f32> = vec2<f32>(x_3364.z, x_3364.w);
            let x_3367 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
            let x_3374 : vec3<f32> = txVec44;
            let x_3376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
            u_xlat89 = x_3376;
            let x_3377 : f32 = u_xlat89;
            let x_3379 : f32 = u_xlat23.y;
            u_xlat89 = (x_3377 * x_3379);
            let x_3382 : f32 = u_xlat23.x;
            let x_3383 : f32 = u_xlat88;
            let x_3385 : f32 = u_xlat89;
            u_xlat88 = ((x_3382 * x_3383) + x_3385);
            let x_3388 : vec2<f32> = u_xlat64;
            let x_3390 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec45;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat89 = x_3399;
            let x_3401 : f32 = u_xlat23.z;
            let x_3402 : f32 = u_xlat89;
            let x_3404 : f32 = u_xlat88;
            u_xlat88 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat21;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
            let x_3410 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec46;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat89 = x_3419;
            let x_3421 : f32 = u_xlat23.w;
            let x_3422 : f32 = u_xlat89;
            let x_3424 : f32 = u_xlat88;
            u_xlat88 = ((x_3421 * x_3422) + x_3424);
            let x_3427 : vec4<f32> = u_xlat19;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.x, x_3427.y);
            let x_3430 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3437 : vec3<f32> = txVec47;
            let x_3439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
            u_xlat89 = x_3439;
            let x_3441 : f32 = u_xlat24.x;
            let x_3442 : f32 = u_xlat89;
            let x_3444 : f32 = u_xlat88;
            u_xlat88 = ((x_3441 * x_3442) + x_3444);
            let x_3447 : vec4<f32> = u_xlat19;
            let x_3448 : vec2<f32> = vec2<f32>(x_3447.z, x_3447.w);
            let x_3450 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec48;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat89 = x_3459;
            let x_3461 : f32 = u_xlat24.y;
            let x_3462 : f32 = u_xlat89;
            let x_3464 : f32 = u_xlat88;
            u_xlat88 = ((x_3461 * x_3462) + x_3464);
            let x_3467 : vec4<f32> = u_xlat20;
            let x_3468 : vec2<f32> = vec2<f32>(x_3467.x, x_3467.y);
            let x_3470 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3468.x, x_3468.y, x_3470);
            let x_3477 : vec3<f32> = txVec49;
            let x_3479 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3477.xy, x_3477.z);
            u_xlat89 = x_3479;
            let x_3481 : f32 = u_xlat24.z;
            let x_3482 : f32 = u_xlat89;
            let x_3484 : f32 = u_xlat88;
            u_xlat88 = ((x_3481 * x_3482) + x_3484);
            let x_3487 : vec4<f32> = u_xlat21;
            let x_3488 : vec2<f32> = vec2<f32>(x_3487.z, x_3487.w);
            let x_3490 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3488.x, x_3488.y, x_3490);
            let x_3497 : vec3<f32> = txVec50;
            let x_3499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3497.xy, x_3497.z);
            u_xlat89 = x_3499;
            let x_3501 : f32 = u_xlat24.w;
            let x_3502 : f32 = u_xlat89;
            let x_3504 : f32 = u_xlat88;
            u_xlat88 = ((x_3501 * x_3502) + x_3504);
            let x_3507 : vec4<f32> = u_xlat22;
            let x_3508 : vec2<f32> = vec2<f32>(x_3507.x, x_3507.y);
            let x_3510 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3508.x, x_3508.y, x_3510);
            let x_3517 : vec3<f32> = txVec51;
            let x_3519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3517.xy, x_3517.z);
            u_xlat89 = x_3519;
            let x_3521 : f32 = u_xlat25.x;
            let x_3522 : f32 = u_xlat89;
            let x_3524 : f32 = u_xlat88;
            u_xlat88 = ((x_3521 * x_3522) + x_3524);
            let x_3527 : vec4<f32> = u_xlat22;
            let x_3528 : vec2<f32> = vec2<f32>(x_3527.z, x_3527.w);
            let x_3530 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3528.x, x_3528.y, x_3530);
            let x_3537 : vec3<f32> = txVec52;
            let x_3539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3537.xy, x_3537.z);
            u_xlat89 = x_3539;
            let x_3541 : f32 = u_xlat25.y;
            let x_3542 : f32 = u_xlat89;
            let x_3544 : f32 = u_xlat88;
            u_xlat88 = ((x_3541 * x_3542) + x_3544);
            let x_3547 : vec2<f32> = u_xlat40;
            let x_3549 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3556 : vec3<f32> = txVec53;
            let x_3558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3556.xy, x_3556.z);
            u_xlat89 = x_3558;
            let x_3560 : f32 = u_xlat25.z;
            let x_3561 : f32 = u_xlat89;
            let x_3563 : f32 = u_xlat88;
            u_xlat88 = ((x_3560 * x_3561) + x_3563);
            let x_3566 : vec2<f32> = u_xlat72;
            let x_3568 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3566.x, x_3566.y, x_3568);
            let x_3575 : vec3<f32> = txVec54;
            let x_3577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3575.xy, x_3575.z);
            u_xlat89 = x_3577;
            let x_3579 : f32 = u_xlat25.w;
            let x_3580 : f32 = u_xlat89;
            let x_3582 : f32 = u_xlat88;
            u_xlat88 = ((x_3579 * x_3580) + x_3582);
            let x_3585 : vec4<f32> = u_xlat17;
            let x_3586 : vec2<f32> = vec2<f32>(x_3585.x, x_3585.y);
            let x_3588 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3586.x, x_3586.y, x_3588);
            let x_3595 : vec3<f32> = txVec55;
            let x_3597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3595.xy, x_3595.z);
            u_xlat89 = x_3597;
            let x_3599 : f32 = u_xlat13.x;
            let x_3600 : f32 = u_xlat89;
            let x_3602 : f32 = u_xlat88;
            u_xlat88 = ((x_3599 * x_3600) + x_3602);
            let x_3605 : vec4<f32> = u_xlat17;
            let x_3606 : vec2<f32> = vec2<f32>(x_3605.z, x_3605.w);
            let x_3608 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3606.x, x_3606.y, x_3608);
            let x_3615 : vec3<f32> = txVec56;
            let x_3617 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3615.xy, x_3615.z);
            u_xlat89 = x_3617;
            let x_3619 : f32 = u_xlat13.y;
            let x_3620 : f32 = u_xlat89;
            let x_3622 : f32 = u_xlat88;
            u_xlat88 = ((x_3619 * x_3620) + x_3622);
            let x_3625 : vec2<f32> = u_xlat67;
            let x_3627 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
            let x_3634 : vec3<f32> = txVec57;
            let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
            u_xlat89 = x_3636;
            let x_3638 : f32 = u_xlat13.z;
            let x_3639 : f32 = u_xlat89;
            let x_3641 : f32 = u_xlat88;
            u_xlat88 = ((x_3638 * x_3639) + x_3641);
            let x_3644 : vec4<f32> = u_xlat12;
            let x_3645 : vec2<f32> = vec2<f32>(x_3644.x, x_3644.y);
            let x_3647 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3645.x, x_3645.y, x_3647);
            let x_3654 : vec3<f32> = txVec58;
            let x_3656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3654.xy, x_3654.z);
            u_xlat89 = x_3656;
            let x_3658 : f32 = u_xlat13.w;
            let x_3659 : f32 = u_xlat89;
            let x_3661 : f32 = u_xlat88;
            u_xlat87 = ((x_3658 * x_3659) + x_3661);
          }
        }
      } else {
        let x_3665 : vec4<f32> = u_xlat11;
        let x_3666 : vec2<f32> = vec2<f32>(x_3665.x, x_3665.y);
        let x_3668 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3666.x, x_3666.y, x_3668);
        let x_3675 : vec3<f32> = txVec59;
        let x_3677 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3675.xy, x_3675.z);
        u_xlat87 = x_3677;
      }
      let x_3678 : i32 = u_xlati84;
      let x_3680 : f32 = x_83.x_AdditionalShadowParams[x_3678].x;
      u_xlat88 = (1.0f + -(x_3680));
      let x_3683 : f32 = u_xlat87;
      let x_3684 : i32 = u_xlati84;
      let x_3686 : f32 = x_83.x_AdditionalShadowParams[x_3684].x;
      let x_3688 : f32 = u_xlat88;
      u_xlat87 = ((x_3683 * x_3686) + x_3688);
      let x_3691 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3691);
      let x_3694 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3694 >= 1.0f);
      let x_3697 : bool = u_xlatb88;
      let x_3699 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3697 | x_3699);
      let x_3701 : bool = u_xlatb88;
      let x_3702 : f32 = u_xlat87;
      u_xlat87 = select(x_3702, 1.0f, x_3701);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3705 : f32 = u_xlat87;
    u_xlat88 = (-(x_3705) + 1.0f);
    let x_3708 : f32 = u_xlat53;
    let x_3709 : f32 = u_xlat88;
    let x_3711 : f32 = u_xlat87;
    u_xlat87 = ((x_3708 * x_3709) + x_3711);
    let x_3714 : i32 = u_xlati84;
    u_xlati88 = (1i << bitcast<u32>((x_3714 & 31i)));
    let x_3718 : i32 = u_xlati88;
    let x_3721 : f32 = x_1810.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3718) & bitcast<u32>(x_3721)));
    let x_3725 : i32 = u_xlati88;
    if ((x_3725 != 0i)) {
      let x_3729 : i32 = u_xlati84;
      let x_3731 : f32 = x_1810.x_AdditionalLightsLightTypes[x_3729].el;
      u_xlati88 = i32(x_3731);
      let x_3734 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3734 != 0i));
      let x_3738 : i32 = u_xlati84;
      u_xlati37 = (x_3738 << bitcast<u32>(2i));
      let x_3740 : i32 = u_xlati11;
      if ((x_3740 != 0i)) {
        let x_3744 : vec3<f32> = vs_TEXCOORD7;
        let x_3746 : i32 = u_xlati37;
        let x_3749 : i32 = u_xlati37;
        let x_3753 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3746 + 1i) / 4i)][((x_3749 + 1i) % 4i)];
        let x_3755 : vec3<f32> = (vec3<f32>(x_3744.y, x_3744.y, x_3744.y) * vec3<f32>(x_3753.x, x_3753.y, x_3753.w));
        let x_3756 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3755.x, x_3756.y, x_3755.y, x_3755.z);
        let x_3758 : i32 = u_xlati37;
        let x_3760 : i32 = u_xlati37;
        let x_3763 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[(x_3758 / 4i)][(x_3760 % 4i)];
        let x_3765 : vec3<f32> = vs_TEXCOORD7;
        let x_3768 : vec4<f32> = u_xlat11;
        let x_3770 : vec3<f32> = ((vec3<f32>(x_3763.x, x_3763.y, x_3763.w) * vec3<f32>(x_3765.x, x_3765.x, x_3765.x)) + vec3<f32>(x_3768.x, x_3768.z, x_3768.w));
        let x_3771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3770.x, x_3771.y, x_3770.y, x_3770.z);
        let x_3773 : i32 = u_xlati37;
        let x_3776 : i32 = u_xlati37;
        let x_3780 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3773 + 2i) / 4i)][((x_3776 + 2i) % 4i)];
        let x_3782 : vec3<f32> = vs_TEXCOORD7;
        let x_3785 : vec4<f32> = u_xlat11;
        let x_3787 : vec3<f32> = ((vec3<f32>(x_3780.x, x_3780.y, x_3780.w) * vec3<f32>(x_3782.z, x_3782.z, x_3782.z)) + vec3<f32>(x_3785.x, x_3785.z, x_3785.w));
        let x_3788 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3787.x, x_3788.y, x_3787.y, x_3787.z);
        let x_3790 : vec4<f32> = u_xlat11;
        let x_3792 : i32 = u_xlati37;
        let x_3795 : i32 = u_xlati37;
        let x_3799 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3792 + 3i) / 4i)][((x_3795 + 3i) % 4i)];
        let x_3801 : vec3<f32> = (vec3<f32>(x_3790.x, x_3790.z, x_3790.w) + vec3<f32>(x_3799.x, x_3799.y, x_3799.w));
        let x_3802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3801.x, x_3802.y, x_3801.y, x_3801.z);
        let x_3804 : vec4<f32> = u_xlat11;
        let x_3806 : vec4<f32> = u_xlat11;
        let x_3808 : vec2<f32> = (vec2<f32>(x_3804.x, x_3804.z) / vec2<f32>(x_3806.w, x_3806.w));
        let x_3809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3808.x, x_3809.y, x_3808.y, x_3809.w);
        let x_3811 : vec4<f32> = u_xlat11;
        let x_3814 : vec2<f32> = ((vec2<f32>(x_3811.x, x_3811.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3815 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3814.x, x_3815.y, x_3814.y, x_3815.w);
        let x_3817 : vec4<f32> = u_xlat11;
        let x_3821 : vec2<f32> = clamp(vec2<f32>(x_3817.x, x_3817.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3822 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3821.x, x_3822.y, x_3821.y, x_3822.w);
        let x_3824 : i32 = u_xlati84;
        let x_3826 : vec4<f32> = x_1810.x_AdditionalLightsCookieAtlasUVRects[x_3824];
        let x_3828 : vec4<f32> = u_xlat11;
        let x_3831 : i32 = u_xlati84;
        let x_3833 : vec4<f32> = x_1810.x_AdditionalLightsCookieAtlasUVRects[x_3831];
        let x_3835 : vec2<f32> = ((vec2<f32>(x_3826.x, x_3826.y) * vec2<f32>(x_3828.x, x_3828.z)) + vec2<f32>(x_3833.z, x_3833.w));
        let x_3836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3835.x, x_3836.y, x_3835.y, x_3836.w);
      } else {
        let x_3839 : i32 = u_xlati88;
        u_xlatb88 = (x_3839 == 1i);
        let x_3841 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3841);
        let x_3843 : i32 = u_xlati88;
        if ((x_3843 != 0i)) {
          let x_3847 : vec3<f32> = vs_TEXCOORD7;
          let x_3849 : i32 = u_xlati37;
          let x_3852 : i32 = u_xlati37;
          let x_3856 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3849 + 1i) / 4i)][((x_3852 + 1i) % 4i)];
          let x_3858 : vec2<f32> = (vec2<f32>(x_3847.y, x_3847.y) * vec2<f32>(x_3856.x, x_3856.y));
          let x_3859 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3858.x, x_3858.y, x_3859.z, x_3859.w);
          let x_3861 : i32 = u_xlati37;
          let x_3863 : i32 = u_xlati37;
          let x_3866 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[(x_3861 / 4i)][(x_3863 % 4i)];
          let x_3868 : vec3<f32> = vs_TEXCOORD7;
          let x_3871 : vec4<f32> = u_xlat12;
          let x_3873 : vec2<f32> = ((vec2<f32>(x_3866.x, x_3866.y) * vec2<f32>(x_3868.x, x_3868.x)) + vec2<f32>(x_3871.x, x_3871.y));
          let x_3874 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3873.x, x_3873.y, x_3874.z, x_3874.w);
          let x_3876 : i32 = u_xlati37;
          let x_3879 : i32 = u_xlati37;
          let x_3883 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3876 + 2i) / 4i)][((x_3879 + 2i) % 4i)];
          let x_3885 : vec3<f32> = vs_TEXCOORD7;
          let x_3888 : vec4<f32> = u_xlat12;
          let x_3890 : vec2<f32> = ((vec2<f32>(x_3883.x, x_3883.y) * vec2<f32>(x_3885.z, x_3885.z)) + vec2<f32>(x_3888.x, x_3888.y));
          let x_3891 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3890.x, x_3890.y, x_3891.z, x_3891.w);
          let x_3893 : vec4<f32> = u_xlat12;
          let x_3895 : i32 = u_xlati37;
          let x_3898 : i32 = u_xlati37;
          let x_3902 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3895 + 3i) / 4i)][((x_3898 + 3i) % 4i)];
          let x_3904 : vec2<f32> = (vec2<f32>(x_3893.x, x_3893.y) + vec2<f32>(x_3902.x, x_3902.y));
          let x_3905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3904.x, x_3904.y, x_3905.z, x_3905.w);
          let x_3907 : vec4<f32> = u_xlat12;
          let x_3910 : vec2<f32> = ((vec2<f32>(x_3907.x, x_3907.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3911 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3910.x, x_3910.y, x_3911.z, x_3911.w);
          let x_3913 : vec4<f32> = u_xlat12;
          let x_3915 : vec2<f32> = fract(vec2<f32>(x_3913.x, x_3913.y));
          let x_3916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3915.x, x_3915.y, x_3916.z, x_3916.w);
          let x_3918 : i32 = u_xlati84;
          let x_3920 : vec4<f32> = x_1810.x_AdditionalLightsCookieAtlasUVRects[x_3918];
          let x_3922 : vec4<f32> = u_xlat12;
          let x_3925 : i32 = u_xlati84;
          let x_3927 : vec4<f32> = x_1810.x_AdditionalLightsCookieAtlasUVRects[x_3925];
          let x_3929 : vec2<f32> = ((vec2<f32>(x_3920.x, x_3920.y) * vec2<f32>(x_3922.x, x_3922.y)) + vec2<f32>(x_3927.z, x_3927.w));
          let x_3930 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3929.x, x_3930.y, x_3929.y, x_3930.w);
        } else {
          let x_3933 : vec3<f32> = vs_TEXCOORD7;
          let x_3935 : i32 = u_xlati37;
          let x_3938 : i32 = u_xlati37;
          let x_3942 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3935 + 1i) / 4i)][((x_3938 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3933.y, x_3933.y, x_3933.y, x_3933.y) * x_3942);
          let x_3944 : i32 = u_xlati37;
          let x_3946 : i32 = u_xlati37;
          let x_3949 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[(x_3944 / 4i)][(x_3946 % 4i)];
          let x_3950 : vec3<f32> = vs_TEXCOORD7;
          let x_3953 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3949 * vec4<f32>(x_3950.x, x_3950.x, x_3950.x, x_3950.x)) + x_3953);
          let x_3955 : i32 = u_xlati37;
          let x_3958 : i32 = u_xlati37;
          let x_3962 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3955 + 2i) / 4i)][((x_3958 + 2i) % 4i)];
          let x_3963 : vec3<f32> = vs_TEXCOORD7;
          let x_3966 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3962 * vec4<f32>(x_3963.z, x_3963.z, x_3963.z, x_3963.z)) + x_3966);
          let x_3968 : vec4<f32> = u_xlat12;
          let x_3969 : i32 = u_xlati37;
          let x_3972 : i32 = u_xlati37;
          let x_3976 : vec4<f32> = x_1810.x_AdditionalLightsWorldToLights[((x_3969 + 3i) / 4i)][((x_3972 + 3i) % 4i)];
          u_xlat12 = (x_3968 + x_3976);
          let x_3978 : vec4<f32> = u_xlat12;
          let x_3980 : vec4<f32> = u_xlat12;
          let x_3982 : vec3<f32> = (vec3<f32>(x_3978.x, x_3978.y, x_3978.z) / vec3<f32>(x_3980.w, x_3980.w, x_3980.w));
          let x_3983 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3982.x, x_3982.y, x_3982.z, x_3983.w);
          let x_3985 : vec4<f32> = u_xlat12;
          let x_3987 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3985.x, x_3985.y, x_3985.z), vec3<f32>(x_3987.x, x_3987.y, x_3987.z));
          let x_3990 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3990);
          let x_3992 : f32 = u_xlat88;
          let x_3994 : vec4<f32> = u_xlat12;
          let x_3996 : vec3<f32> = (vec3<f32>(x_3992, x_3992, x_3992) * vec3<f32>(x_3994.x, x_3994.y, x_3994.z));
          let x_3997 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3996.x, x_3996.y, x_3996.z, x_3997.w);
          let x_3999 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3999.x, x_3999.y, x_3999.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4004 : f32 = u_xlat88;
          u_xlat88 = max(x_4004, 0.00000099999999747524f);
          let x_4007 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_4007);
          let x_4009 : f32 = u_xlat88;
          let x_4011 : vec4<f32> = u_xlat12;
          let x_4013 : vec3<f32> = (vec3<f32>(x_4009, x_4009, x_4009) * vec3<f32>(x_4011.z, x_4011.x, x_4011.y));
          let x_4014 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4013.x, x_4013.y, x_4013.z, x_4014.w);
          let x_4017 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4017);
          let x_4021 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4021, 0.0f, 1.0f);
          let x_4026 : vec4<f32> = u_xlat13;
          let x_4028 : vec4<bool> = (vec4<f32>(x_4026.y, x_4026.y, x_4026.z, x_4026.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4029 : vec2<bool> = vec2<bool>(x_4028.x, x_4028.z);
          let x_4030 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4029.x, x_4030.y, x_4029.y);
          let x_4033 : bool = u_xlatb37.x;
          if (x_4033) {
            let x_4038 : f32 = u_xlat13.x;
            x_4034 = x_4038;
          } else {
            let x_4041 : f32 = u_xlat13.x;
            x_4034 = -(x_4041);
          }
          let x_4043 : f32 = x_4034;
          u_xlat37.x = x_4043;
          let x_4046 : bool = u_xlatb37.z;
          if (x_4046) {
            let x_4051 : f32 = u_xlat13.x;
            x_4047 = x_4051;
          } else {
            let x_4054 : f32 = u_xlat13.x;
            x_4047 = -(x_4054);
          }
          let x_4056 : f32 = x_4047;
          u_xlat37.z = x_4056;
          let x_4058 : vec4<f32> = u_xlat12;
          let x_4060 : f32 = u_xlat88;
          let x_4063 : vec3<f32> = u_xlat37;
          let x_4065 : vec2<f32> = ((vec2<f32>(x_4058.x, x_4058.y) * vec2<f32>(x_4060, x_4060)) + vec2<f32>(x_4063.x, x_4063.z));
          let x_4066 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4065.x, x_4066.y, x_4065.y);
          let x_4068 : vec3<f32> = u_xlat37;
          let x_4071 : vec2<f32> = ((vec2<f32>(x_4068.x, x_4068.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4072 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4071.x, x_4072.y, x_4071.y);
          let x_4074 : vec3<f32> = u_xlat37;
          let x_4078 : vec2<f32> = clamp(vec2<f32>(x_4074.x, x_4074.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4079 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4078.x, x_4079.y, x_4078.y);
          let x_4081 : i32 = u_xlati84;
          let x_4083 : vec4<f32> = x_1810.x_AdditionalLightsCookieAtlasUVRects[x_4081];
          let x_4085 : vec3<f32> = u_xlat37;
          let x_4088 : i32 = u_xlati84;
          let x_4090 : vec4<f32> = x_1810.x_AdditionalLightsCookieAtlasUVRects[x_4088];
          let x_4092 : vec2<f32> = ((vec2<f32>(x_4083.x, x_4083.y) * vec2<f32>(x_4085.x, x_4085.z)) + vec2<f32>(x_4090.z, x_4090.w));
          let x_4093 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4092.x, x_4093.y, x_4092.y, x_4093.w);
        }
      }
      let x_4100 : vec4<f32> = u_xlat11;
      let x_4102 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4100.x, x_4100.z), 0.0f);
      u_xlat11 = x_4102;
      let x_4104 : bool = u_xlatb7.y;
      if (x_4104) {
        let x_4109 : f32 = u_xlat11.w;
        x_4105 = x_4109;
      } else {
        let x_4112 : f32 = u_xlat11.x;
        x_4105 = x_4112;
      }
      let x_4113 : f32 = x_4105;
      u_xlat88 = x_4113;
      let x_4115 : bool = u_xlatb7.x;
      if (x_4115) {
        let x_4119 : vec4<f32> = u_xlat11;
        x_4116 = vec3<f32>(x_4119.x, x_4119.y, x_4119.z);
      } else {
        let x_4122 : f32 = u_xlat88;
        x_4116 = vec3<f32>(x_4122, x_4122, x_4122);
      }
      let x_4124 : vec3<f32> = x_4116;
      let x_4125 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4124.x, x_4124.y, x_4124.z, x_4125.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4131 : vec4<f32> = u_xlat11;
    let x_4133 : i32 = u_xlati84;
    let x_4135 : vec4<f32> = x_2266.x_AdditionalLightsColor[x_4133];
    let x_4137 : vec3<f32> = (vec3<f32>(x_4131.x, x_4131.y, x_4131.z) * vec3<f32>(x_4135.x, x_4135.y, x_4135.z));
    let x_4138 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4137.x, x_4137.y, x_4137.z, x_4138.w);
    let x_4140 : f32 = u_xlat59;
    let x_4141 : f32 = u_xlat87;
    u_xlat84 = (x_4140 * x_4141);
    let x_4143 : vec4<f32> = u_xlat2;
    let x_4145 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_4143.x, x_4143.y, x_4143.z), vec3<f32>(x_4145.x, x_4145.y, x_4145.z));
    let x_4148 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4148, 0.0f, 1.0f);
    let x_4150 : f32 = u_xlat84;
    let x_4151 : f32 = u_xlat59;
    u_xlat84 = (x_4150 * x_4151);
    let x_4153 : f32 = u_xlat84;
    let x_4155 : vec4<f32> = u_xlat11;
    let x_4157 : vec3<f32> = (vec3<f32>(x_4153, x_4153, x_4153) * vec3<f32>(x_4155.x, x_4155.y, x_4155.z));
    let x_4158 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4157.x, x_4157.y, x_4157.z, x_4158.w);
    let x_4160 : vec4<f32> = u_xlat9;
    let x_4162 : f32 = u_xlat85;
    let x_4165 : vec4<f32> = u_xlat6;
    let x_4167 : vec3<f32> = ((vec3<f32>(x_4160.x, x_4160.y, x_4160.z) * vec3<f32>(x_4162, x_4162, x_4162)) + vec3<f32>(x_4165.x, x_4165.y, x_4165.z));
    let x_4168 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4167.x, x_4167.y, x_4167.z, x_4168.w);
    let x_4170 : vec4<f32> = u_xlat9;
    let x_4172 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4170.x, x_4170.y, x_4170.z), vec3<f32>(x_4172.x, x_4172.y, x_4172.z));
    let x_4175 : f32 = u_xlat84;
    u_xlat84 = max(x_4175, 1.17549435e-38f);
    let x_4177 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4177);
    let x_4179 : f32 = u_xlat84;
    let x_4181 : vec4<f32> = u_xlat9;
    let x_4183 : vec3<f32> = (vec3<f32>(x_4179, x_4179, x_4179) * vec3<f32>(x_4181.x, x_4181.y, x_4181.z));
    let x_4184 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4183.x, x_4183.y, x_4183.z, x_4184.w);
    let x_4186 : vec4<f32> = u_xlat2;
    let x_4188 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4186.x, x_4186.y, x_4186.z), vec3<f32>(x_4188.x, x_4188.y, x_4188.z));
    let x_4191 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4191, 0.0f, 1.0f);
    let x_4193 : vec4<f32> = u_xlat10;
    let x_4195 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4193.x, x_4193.y, x_4193.z), vec3<f32>(x_4195.x, x_4195.y, x_4195.z));
    let x_4198 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4198, 0.0f, 1.0f);
    let x_4200 : f32 = u_xlat84;
    let x_4201 : f32 = u_xlat84;
    u_xlat84 = (x_4200 * x_4201);
    let x_4203 : f32 = u_xlat84;
    let x_4205 : f32 = u_xlat8.x;
    u_xlat84 = ((x_4203 * x_4205) + 1.00001001358032226562f);
    let x_4208 : f32 = u_xlat59;
    let x_4209 : f32 = u_xlat59;
    u_xlat59 = (x_4208 * x_4209);
    let x_4211 : f32 = u_xlat84;
    let x_4212 : f32 = u_xlat84;
    u_xlat84 = (x_4211 * x_4212);
    let x_4214 : f32 = u_xlat59;
    u_xlat59 = max(x_4214, 0.10000000149011611938f);
    let x_4216 : f32 = u_xlat84;
    let x_4217 : f32 = u_xlat59;
    u_xlat84 = (x_4216 * x_4217);
    let x_4220 : f32 = u_xlat4.x;
    let x_4221 : f32 = u_xlat84;
    u_xlat84 = (x_4220 * x_4221);
    let x_4224 : f32 = u_xlat5.x;
    let x_4225 : f32 = u_xlat84;
    u_xlat84 = (x_4224 / x_4225);
    let x_4227 : vec4<f32> = u_xlat0;
    let x_4229 : f32 = u_xlat84;
    let x_4232 : vec3<f32> = u_xlat30;
    let x_4233 : vec3<f32> = ((vec3<f32>(x_4227.x, x_4227.y, x_4227.z) * vec3<f32>(x_4229, x_4229, x_4229)) + x_4232);
    let x_4234 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4233.x, x_4233.y, x_4233.z, x_4234.w);
    let x_4236 : vec4<f32> = u_xlat9;
    let x_4238 : vec4<f32> = u_xlat11;
    let x_4241 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4236.x, x_4236.y, x_4236.z) * vec3<f32>(x_4238.x, x_4238.y, x_4238.z)) + x_4241);

    continuing {
      let x_4243 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4243 + bitcast<u32>(1i));
    }
  }
  let x_4245 : vec3<f32> = u_xlat31;
  let x_4246 : vec4<f32> = u_xlat1;
  let x_4249 : vec3<f32> = u_xlat29;
  let x_4250 : vec3<f32> = ((x_4245 * vec3<f32>(x_4246.x, x_4246.y, x_4246.w)) + x_4249);
  let x_4251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4250.x, x_4250.y, x_4250.z, x_4251.w);
  let x_4253 : vec3<f32> = u_xlat34;
  let x_4254 : vec4<f32> = u_xlat0;
  let x_4256 : vec3<f32> = (x_4253 + vec3<f32>(x_4254.x, x_4254.y, x_4254.z));
  let x_4257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4256.x, x_4256.y, x_4256.z, x_4257.w);
  let x_4260 : f32 = u_xlat3.x;
  let x_4262 : f32 = u_xlat3.x;
  u_xlat78 = (x_4260 * -(x_4262));
  let x_4265 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4265);
  let x_4267 : vec4<f32> = u_xlat0;
  let x_4270 : vec4<f32> = x_29.unity_FogColor;
  let x_4273 : vec3<f32> = (vec3<f32>(x_4267.x, x_4267.y, x_4267.z) + -(vec3<f32>(x_4270.x, x_4270.y, x_4270.z)));
  let x_4274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4273.x, x_4273.y, x_4273.z, x_4274.w);
  let x_4278 : f32 = u_xlat78;
  let x_4280 : vec4<f32> = u_xlat0;
  let x_4284 : vec4<f32> = x_29.unity_FogColor;
  let x_4286 : vec3<f32> = ((vec3<f32>(x_4278, x_4278, x_4278) * vec3<f32>(x_4280.x, x_4280.y, x_4280.z)) + vec3<f32>(x_4284.x, x_4284.y, x_4284.z));
  let x_4287 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4286.x, x_4286.y, x_4286.z, x_4287.w);
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


