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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_269 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb53 : bool;

var<private> u_xlatb79 : bool;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

@group(1) @binding(4) var<uniform> x_1731 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2207 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

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
  var x_1681 : f32;
  var x_1814 : f32;
  var x_1825 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2345 : f32;
  var x_2355 : f32;
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
  var x_3941 : f32;
  var x_3954 : f32;
  var x_4012 : f32;
  var x_4023 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_43.x, x_43.y), x_46);
  u_xlat1.x = x_47.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat27;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.x, x_65.x) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_74 : vec3<f32> = vs_TEXCOORD7;
  let x_87 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres0;
  u_xlat27 = (x_74 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
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
  u_xlat2.w = 1.0f;
  let x_272 : vec4<f32> = x_269.unity_SHAr;
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_272, x_273);
  let x_278 : vec4<f32> = x_269.unity_SHAg;
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_269.unity_SHAb;
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_284, x_285);
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_288.y, x_288.z, x_288.z, x_288.x) * vec4<f32>(x_290.x, x_290.y, x_290.z, x_290.z));
  let x_295 : vec4<f32> = x_269.unity_SHBr;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_295, x_296);
  let x_301 : vec4<f32> = x_269.unity_SHBg;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_269.unity_SHBb;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_307, x_308);
  let x_313 : f32 = u_xlat2.y;
  let x_315 : f32 = u_xlat2.y;
  u_xlat80 = (x_313 * x_315);
  let x_318 : f32 = u_xlat2.x;
  let x_320 : f32 = u_xlat2.x;
  let x_322 : f32 = u_xlat80;
  u_xlat80 = ((x_318 * x_320) + -(x_322));
  let x_327 : vec4<f32> = x_269.unity_SHC;
  let x_329 : f32 = u_xlat80;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329, x_329, x_329)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec3<f32> = u_xlat3;
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_337 + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_341, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_344 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_344) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_350 : f32 = u_xlat80;
  u_xlat81 = (-(x_350) + 1.0f);
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : f32 = u_xlat80;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355, x_355, x_355));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.x, x_367.x) * vec3<f32>(x_369.x, x_369.y, x_369.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_378) + 1.0f);
  let x_383 : f32 = u_xlat1.x;
  let x_385 : f32 = u_xlat1.x;
  u_xlat80 = (x_383 * x_385);
  let x_387 : f32 = u_xlat80;
  u_xlat80 = max(x_387, 0.0078125f);
  let x_391 : f32 = u_xlat80;
  let x_392 : f32 = u_xlat80;
  u_xlat82 = (x_391 * x_392);
  let x_396 : f32 = u_xlat0.w;
  let x_397 : f32 = u_xlat81;
  u_xlat78 = (x_396 + x_397);
  let x_399 : f32 = u_xlat78;
  u_xlat78 = clamp(x_399, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat80;
  u_xlat81 = ((x_401 * 4.0f) + 2.0f);
  let x_407 : f32 = x_83.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_407);
  let x_409 : bool = u_xlatb5;
  if (x_409) {
    let x_413 : f32 = x_83.x_MainLightShadowParams.y;
    u_xlatb5 = (x_413 == 1.0f);
    let x_415 : bool = u_xlatb5;
    if (x_415) {
      let x_418 : vec3<f32> = u_xlat27;
      let x_422 : vec4<f32> = x_83.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_418.x, x_418.y, x_418.x, x_418.y) + x_422);
      let x_426 : vec4<f32> = u_xlat5;
      let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
      let x_429 : f32 = u_xlat27.z;
      txVec0 = vec3<f32>(x_427.x, x_427.y, x_429);
      let x_441 : vec3<f32> = txVec0;
      let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_441.xy, x_441.z);
      u_xlat6.x = x_443;
      let x_446 : vec4<f32> = u_xlat5;
      let x_447 : vec2<f32> = vec2<f32>(x_446.z, x_446.w);
      let x_449 : f32 = u_xlat27.z;
      txVec1 = vec3<f32>(x_447.x, x_447.y, x_449);
      let x_456 : vec3<f32> = txVec1;
      let x_458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_456.xy, x_456.z);
      u_xlat6.y = x_458;
      let x_460 : vec3<f32> = u_xlat27;
      let x_464 : vec4<f32> = x_83.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_460.x, x_460.y, x_460.x, x_460.y) + x_464);
      let x_467 : vec4<f32> = u_xlat5;
      let x_468 : vec2<f32> = vec2<f32>(x_467.x, x_467.y);
      let x_470 : f32 = u_xlat27.z;
      txVec2 = vec3<f32>(x_468.x, x_468.y, x_470);
      let x_477 : vec3<f32> = txVec2;
      let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_477.xy, x_477.z);
      u_xlat6.z = x_479;
      let x_482 : vec4<f32> = u_xlat5;
      let x_483 : vec2<f32> = vec2<f32>(x_482.z, x_482.w);
      let x_485 : f32 = u_xlat27.z;
      txVec3 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_492 : vec3<f32> = txVec3;
      let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_492.xy, x_492.z);
      u_xlat6.w = x_494;
      let x_496 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_496, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_504 : f32 = x_83.x_MainLightShadowParams.y;
      u_xlatb31 = (x_504 == 2.0f);
      let x_506 : bool = u_xlatb31;
      if (x_506) {
        let x_511 : vec3<f32> = u_xlat27;
        let x_515 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_515.z, x_515.w)) + vec2<f32>(0.5f, 0.5f));
        let x_521 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_521);
        let x_523 : vec3<f32> = u_xlat27;
        let x_526 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_529 : vec2<f32> = u_xlat31;
        let x_531 : vec2<f32> = ((vec2<f32>(x_523.x, x_523.y) * vec2<f32>(x_526.z, x_526.w)) + -(x_529));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_535 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_535.x, x_535.x, x_535.y, x_535.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_540 : vec4<f32> = u_xlat7;
        let x_542 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_540.x, x_540.x, x_540.z, x_540.z) * vec4<f32>(x_542.x, x_542.x, x_542.z, x_542.z));
        let x_546 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_546.y, x_546.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_551 : vec4<f32> = u_xlat8;
        let x_554 : vec4<f32> = u_xlat6;
        let x_557 : vec2<f32> = ((vec2<f32>(x_551.x, x_551.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_554.x, x_554.y)));
        let x_558 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_558.w);
        let x_560 : vec4<f32> = u_xlat6;
        let x_564 : vec2<f32> = (-(vec2<f32>(x_560.x, x_560.y)) + vec2<f32>(1.0f, 1.0f));
        let x_565 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_568.x, x_568.y), vec2<f32>(0.0f, 0.0f));
        let x_572 : vec2<f32> = u_xlat60;
        let x_574 : vec2<f32> = u_xlat60;
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_572) * x_574) + vec2<f32>(x_576.x, x_576.y));
        let x_579 : vec4<f32> = u_xlat6;
        let x_581 : vec2<f32> = max(vec2<f32>(x_579.x, x_579.y), vec2<f32>(0.0f, 0.0f));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat6;
        let x_587 : vec4<f32> = u_xlat6;
        let x_590 : vec4<f32> = u_xlat7;
        let x_592 : vec2<f32> = ((-(vec2<f32>(x_584.x, x_584.y)) * vec2<f32>(x_587.x, x_587.y)) + vec2<f32>(x_590.y, x_590.w));
        let x_593 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_595 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_595 + vec2<f32>(1.0f, 1.0f));
        let x_597 : vec4<f32> = u_xlat6;
        let x_599 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_603 : vec4<f32> = u_xlat7;
        let x_607 : vec2<f32> = (vec2<f32>(x_603.x, x_603.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_611 : vec4<f32> = u_xlat8;
        let x_613 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec2<f32> = u_xlat60;
        let x_617 : vec2<f32> = (x_616 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
        let x_621 : vec4<f32> = u_xlat6;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat7;
        let x_628 : vec2<f32> = (vec2<f32>(x_626.y, x_626.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_629 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_632 : f32 = u_xlat8.x;
        u_xlat9.z = x_632;
        let x_635 : f32 = u_xlat6.x;
        u_xlat9.w = x_635;
        let x_638 : f32 = u_xlat11.x;
        u_xlat10.z = x_638;
        let x_641 : f32 = u_xlat58.x;
        u_xlat10.w = x_641;
        let x_643 : vec4<f32> = u_xlat9;
        let x_645 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_643.z, x_643.w, x_643.x, x_643.z) + vec4<f32>(x_645.z, x_645.w, x_645.x, x_645.z));
        let x_649 : f32 = u_xlat9.y;
        u_xlat8.z = x_649;
        let x_652 : f32 = u_xlat6.y;
        u_xlat8.w = x_652;
        let x_655 : f32 = u_xlat10.y;
        u_xlat11.z = x_655;
        let x_658 : f32 = u_xlat58.y;
        u_xlat11.w = x_658;
        let x_660 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat11;
        let x_664 : vec3<f32> = (vec3<f32>(x_660.z, x_660.y, x_660.w) + vec3<f32>(x_662.z, x_662.y, x_662.w));
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat10;
        let x_669 : vec4<f32> = u_xlat7;
        let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.z, x_667.w) / vec3<f32>(x_669.z, x_669.w, x_669.y));
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat8;
        let x_680 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat11;
        let x_685 : vec4<f32> = u_xlat6;
        let x_687 : vec3<f32> = (vec3<f32>(x_683.z, x_683.y, x_683.w) / vec3<f32>(x_685.x, x_685.y, x_685.z));
        let x_688 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat9;
        let x_692 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_693 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_698 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_700 : vec3<f32> = (vec3<f32>(x_695.y, x_695.x, x_695.z) * vec3<f32>(x_698.x, x_698.x, x_698.x));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat9;
        let x_706 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_708 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_706.y, x_706.y, x_706.y));
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_712 : f32 = u_xlat9.x;
        u_xlat8.w = x_712;
        let x_714 : vec2<f32> = u_xlat31;
        let x_717 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_720 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.y) * vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y)) + vec4<f32>(x_720.y, x_720.w, x_720.x, x_720.w));
        let x_723 : vec2<f32> = u_xlat31;
        let x_725 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat8;
        let x_730 : vec2<f32> = ((x_723 * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.z, x_728.w));
        let x_731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_734 : f32 = u_xlat8.y;
        u_xlat9.w = x_734;
        let x_736 : vec4<f32> = u_xlat9;
        let x_737 : vec2<f32> = vec2<f32>(x_736.y, x_736.z);
        let x_738 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_738.x, x_737.x, x_738.z, x_737.y);
        let x_741 : vec2<f32> = u_xlat31;
        let x_744 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) * vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y)) + vec4<f32>(x_747.x, x_747.y, x_747.z, x_747.y));
        let x_750 : vec2<f32> = u_xlat31;
        let x_753 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_756 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y) * vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y)) + vec4<f32>(x_756.w, x_756.y, x_756.w, x_756.z));
        let x_759 : vec2<f32> = u_xlat31;
        let x_762 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_765 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y) * vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y)) + vec4<f32>(x_765.x, x_765.w, x_765.z, x_765.w));
        let x_769 : vec4<f32> = u_xlat6;
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_769.x, x_769.x, x_769.x, x_769.y) * vec4<f32>(x_771.z, x_771.w, x_771.y, x_771.z));
        let x_775 : vec4<f32> = u_xlat6;
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_775.y, x_775.y, x_775.z, x_775.z) * x_777);
        let x_780 : f32 = u_xlat6.z;
        let x_782 : f32 = u_xlat7.y;
        u_xlat31.x = (x_780 * x_782);
        let x_786 : vec4<f32> = u_xlat10;
        let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
        let x_789 : f32 = u_xlat27.z;
        txVec4 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_797 : vec3<f32> = txVec4;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
        u_xlat57 = x_799;
        let x_801 : vec4<f32> = u_xlat10;
        let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
        let x_804 : f32 = u_xlat27.z;
        txVec5 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_812 : vec3<f32> = txVec5;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
        u_xlat83 = x_814;
        let x_815 : f32 = u_xlat83;
        let x_817 : f32 = u_xlat13.y;
        u_xlat83 = (x_815 * x_817);
        let x_820 : f32 = u_xlat13.x;
        let x_821 : f32 = u_xlat57;
        let x_823 : f32 = u_xlat83;
        u_xlat57 = ((x_820 * x_821) + x_823);
        let x_826 : vec4<f32> = u_xlat11;
        let x_827 : vec2<f32> = vec2<f32>(x_826.x, x_826.y);
        let x_829 : f32 = u_xlat27.z;
        txVec6 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_836 : vec3<f32> = txVec6;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_836.xy, x_836.z);
        u_xlat83 = x_838;
        let x_840 : f32 = u_xlat13.z;
        let x_841 : f32 = u_xlat83;
        let x_843 : f32 = u_xlat57;
        u_xlat57 = ((x_840 * x_841) + x_843);
        let x_846 : vec4<f32> = u_xlat9;
        let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
        let x_849 : f32 = u_xlat27.z;
        txVec7 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec7;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat83 = x_858;
        let x_860 : f32 = u_xlat13.w;
        let x_861 : f32 = u_xlat83;
        let x_863 : f32 = u_xlat57;
        u_xlat57 = ((x_860 * x_861) + x_863);
        let x_866 : vec4<f32> = u_xlat12;
        let x_867 : vec2<f32> = vec2<f32>(x_866.x, x_866.y);
        let x_869 : f32 = u_xlat27.z;
        txVec8 = vec3<f32>(x_867.x, x_867.y, x_869);
        let x_876 : vec3<f32> = txVec8;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_876.xy, x_876.z);
        u_xlat83 = x_878;
        let x_880 : f32 = u_xlat14.x;
        let x_881 : f32 = u_xlat83;
        let x_883 : f32 = u_xlat57;
        u_xlat57 = ((x_880 * x_881) + x_883);
        let x_886 : vec4<f32> = u_xlat12;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = u_xlat27.z;
        txVec9 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec9;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_896.xy, x_896.z);
        u_xlat83 = x_898;
        let x_900 : f32 = u_xlat14.y;
        let x_901 : f32 = u_xlat83;
        let x_903 : f32 = u_xlat57;
        u_xlat57 = ((x_900 * x_901) + x_903);
        let x_906 : vec4<f32> = u_xlat9;
        let x_907 : vec2<f32> = vec2<f32>(x_906.z, x_906.w);
        let x_909 : f32 = u_xlat27.z;
        txVec10 = vec3<f32>(x_907.x, x_907.y, x_909);
        let x_916 : vec3<f32> = txVec10;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_916.xy, x_916.z);
        u_xlat83 = x_918;
        let x_920 : f32 = u_xlat14.z;
        let x_921 : f32 = u_xlat83;
        let x_923 : f32 = u_xlat57;
        u_xlat57 = ((x_920 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat8;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = u_xlat27.z;
        txVec11 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec11;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat83 = x_938;
        let x_940 : f32 = u_xlat14.w;
        let x_941 : f32 = u_xlat83;
        let x_943 : f32 = u_xlat57;
        u_xlat57 = ((x_940 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat8;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = u_xlat27.z;
        txVec12 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec12;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat83 = x_958;
        let x_960 : f32 = u_xlat31.x;
        let x_961 : f32 = u_xlat83;
        let x_963 : f32 = u_xlat57;
        u_xlat5.x = ((x_960 * x_961) + x_963);
      } else {
        let x_967 : vec3<f32> = u_xlat27;
        let x_970 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_970.z, x_970.w)) + vec2<f32>(0.5f, 0.5f));
        let x_974 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_974);
        let x_976 : vec3<f32> = u_xlat27;
        let x_979 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_982 : vec2<f32> = u_xlat31;
        let x_984 : vec2<f32> = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.w)) + -(x_982));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_987.x, x_987.x, x_987.y, x_987.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_990 : vec4<f32> = u_xlat7;
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_990.x, x_990.x, x_990.z, x_990.z) * vec4<f32>(x_992.x, x_992.x, x_992.z, x_992.z));
        let x_995 : vec4<f32> = u_xlat8;
        let x_999 : vec2<f32> = (vec2<f32>(x_995.y, x_995.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1000.x, x_999.x, x_1000.z, x_999.y);
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1005 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1002.x, x_1002.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1005.x, x_1005.y)));
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1012 : vec2<f32> = (-(vec2<f32>(x_1009.x, x_1009.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat6;
        let x_1017 : vec2<f32> = min(vec2<f32>(x_1015.x, x_1015.y), vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat8;
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : vec2<f32> = ((-(vec2<f32>(x_1020.x, x_1020.y)) * vec2<f32>(x_1023.x, x_1023.y)) + vec2<f32>(x_1026.x, x_1026.z));
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1028.x, x_1029.y, x_1028.y, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1033 : vec2<f32> = max(vec2<f32>(x_1031.x, x_1031.y), vec2<f32>(0.0f, 0.0f));
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = ((-(vec2<f32>(x_1036.x, x_1036.y)) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.y, x_1042.w));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1047 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1051 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1051 * 0.08163200318813323975f);
        let x_1055 : vec2<f32> = u_xlat58;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1055.y, x_1055.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1065 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1065 * 0.08163200318813323975f);
        let x_1069 : f32 = u_xlat10.y;
        u_xlat8.x = x_1069;
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1079.x, x_1078.x, x_1079.z, x_1078.y);
        let x_1081 : vec4<f32> = u_xlat6;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1086.w);
        let x_1089 : f32 = u_xlat58.x;
        u_xlat7.y = x_1089;
        let x_1092 : f32 = u_xlat9.y;
        u_xlat7.w = x_1092;
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1094 + x_1095);
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1097.y, x_1097.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1101 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1101.x, x_1100.x, x_1101.z, x_1100.y);
        let x_1103 : vec4<f32> = u_xlat6;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1103.y, x_1103.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1107.w);
        let x_1110 : f32 = u_xlat58.y;
        u_xlat9.y = x_1110;
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1113 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1112 + x_1113);
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1115 / x_1116);
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1118 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1125 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1124 / x_1125);
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1127 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1129.w, x_1129.x, x_1129.y, x_1129.z) * vec4<f32>(x_1132.x, x_1132.x, x_1132.x, x_1132.x));
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1135.x, x_1135.w, x_1135.y, x_1135.z) * vec4<f32>(x_1138.y, x_1138.y, x_1138.y, x_1138.y));
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1142 : vec3<f32> = vec3<f32>(x_1141.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1142.z);
        let x_1146 : f32 = u_xlat9.x;
        u_xlat10.y = x_1146;
        let x_1148 : vec2<f32> = u_xlat31;
        let x_1151 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y) * vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y)) + vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1154.y));
        let x_1157 : vec2<f32> = u_xlat31;
        let x_1159 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        let x_1164 : vec2<f32> = ((x_1157 * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1165 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1168 : f32 = u_xlat10.y;
        u_xlat7.y = x_1168;
        let x_1171 : f32 = u_xlat9.z;
        u_xlat10.y = x_1171;
        let x_1173 : vec2<f32> = u_xlat31;
        let x_1176 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.y));
        let x_1183 : vec2<f32> = u_xlat31;
        let x_1185 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1183 * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.w, x_1188.y));
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.z = x_1192;
        let x_1194 : vec2<f32> = u_xlat31;
        let x_1197 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.z));
        let x_1204 : f32 = u_xlat9.w;
        u_xlat10.y = x_1204;
        let x_1207 : vec2<f32> = u_xlat31;
        let x_1210 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1213.y));
        let x_1217 : vec2<f32> = u_xlat31;
        let x_1219 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1217 * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1226 : f32 = u_xlat10.y;
        u_xlat7.w = x_1226;
        let x_1229 : vec2<f32> = u_xlat31;
        let x_1231 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = ((x_1229 * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.x, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec3<f32> = vec3<f32>(x_1239.x, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1240.x, x_1241.y, x_1240.y, x_1240.z);
        let x_1243 : vec2<f32> = u_xlat31;
        let x_1246 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec2<f32> = u_xlat31;
        let x_1255 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1253 * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.w, x_1258.y));
        let x_1262 : f32 = u_xlat7.x;
        u_xlat9.x = x_1262;
        let x_1264 : vec2<f32> = u_xlat31;
        let x_1266 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat31 = ((x_1264 * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.x, x_1269.y));
        let x_1273 : vec4<f32> = u_xlat6;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1273.x, x_1273.x, x_1273.x, x_1273.x) * x_1275);
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1278.y, x_1278.y, x_1278.y, x_1278.y) * x_1280);
        let x_1283 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1283.z, x_1283.z, x_1283.z, x_1283.z) * x_1285);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1287.w, x_1287.w, x_1287.w, x_1287.w) * x_1289);
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = u_xlat27.z;
        txVec13 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec13;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat83 = x_1304;
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.z, x_1306.w);
        let x_1309 : f32 = u_xlat27.z;
        txVec14 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec14;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat7.x = x_1318;
        let x_1321 : f32 = u_xlat7.x;
        let x_1323 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1321 * x_1323);
        let x_1327 : f32 = u_xlat17.x;
        let x_1328 : f32 = u_xlat83;
        let x_1331 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1327 * x_1328) + x_1331);
        let x_1334 : vec4<f32> = u_xlat12;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat27.z;
        txVec15 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec15;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat7.x = x_1346;
        let x_1349 : f32 = u_xlat17.z;
        let x_1351 : f32 = u_xlat7.x;
        let x_1353 : f32 = u_xlat83;
        u_xlat83 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat14;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = u_xlat27.z;
        txVec16 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec16;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat7.x = x_1368;
        let x_1371 : f32 = u_xlat17.w;
        let x_1373 : f32 = u_xlat7.x;
        let x_1375 : f32 = u_xlat83;
        u_xlat83 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat13;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = u_xlat27.z;
        txVec17 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec17;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat7.x = x_1390;
        let x_1393 : f32 = u_xlat18.x;
        let x_1395 : f32 = u_xlat7.x;
        let x_1397 : f32 = u_xlat83;
        u_xlat83 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat13;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.z, x_1400.w);
        let x_1403 : f32 = u_xlat27.z;
        txVec18 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec18;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat7.x = x_1412;
        let x_1415 : f32 = u_xlat18.y;
        let x_1417 : f32 = u_xlat7.x;
        let x_1419 : f32 = u_xlat83;
        u_xlat83 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec2<f32> = u_xlat64;
        let x_1424 : f32 = u_xlat27.z;
        txVec19 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec19;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat7.x = x_1433;
        let x_1436 : f32 = u_xlat18.z;
        let x_1438 : f32 = u_xlat7.x;
        let x_1440 : f32 = u_xlat83;
        u_xlat83 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat14;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.z, x_1443.w);
        let x_1446 : f32 = u_xlat27.z;
        txVec20 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec20;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat7.x = x_1455;
        let x_1458 : f32 = u_xlat18.w;
        let x_1460 : f32 = u_xlat7.x;
        let x_1462 : f32 = u_xlat83;
        u_xlat83 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat15;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = u_xlat27.z;
        txVec21 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec21;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat7.x = x_1477;
        let x_1480 : f32 = u_xlat19.x;
        let x_1482 : f32 = u_xlat7.x;
        let x_1484 : f32 = u_xlat83;
        u_xlat83 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat15;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = u_xlat27.z;
        txVec22 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec22;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat7.x = x_1499;
        let x_1502 : f32 = u_xlat19.y;
        let x_1504 : f32 = u_xlat7.x;
        let x_1506 : f32 = u_xlat83;
        u_xlat83 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec2<f32> = u_xlat33;
        let x_1511 : f32 = u_xlat27.z;
        txVec23 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec23;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat7.x = x_1520;
        let x_1523 : f32 = u_xlat19.z;
        let x_1525 : f32 = u_xlat7.x;
        let x_1527 : f32 = u_xlat83;
        u_xlat83 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec4<f32> = u_xlat16;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
        let x_1533 : f32 = u_xlat27.z;
        txVec24 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec24;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat7.x = x_1542;
        let x_1545 : f32 = u_xlat19.w;
        let x_1547 : f32 = u_xlat7.x;
        let x_1549 : f32 = u_xlat83;
        u_xlat83 = ((x_1545 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat10;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = u_xlat27.z;
        txVec25 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec25;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat7.x = x_1564;
        let x_1567 : f32 = u_xlat6.x;
        let x_1569 : f32 = u_xlat7.x;
        let x_1571 : f32 = u_xlat83;
        u_xlat83 = ((x_1567 * x_1569) + x_1571);
        let x_1574 : vec4<f32> = u_xlat10;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.z, x_1574.w);
        let x_1577 : f32 = u_xlat27.z;
        txVec26 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec26;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat6.x = x_1586;
        let x_1589 : f32 = u_xlat6.y;
        let x_1591 : f32 = u_xlat6.x;
        let x_1593 : f32 = u_xlat83;
        u_xlat83 = ((x_1589 * x_1591) + x_1593);
        let x_1596 : vec2<f32> = u_xlat61;
        let x_1598 : f32 = u_xlat27.z;
        txVec27 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec27;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
        u_xlat6.x = x_1607;
        let x_1610 : f32 = u_xlat6.z;
        let x_1612 : f32 = u_xlat6.x;
        let x_1614 : f32 = u_xlat83;
        u_xlat83 = ((x_1610 * x_1612) + x_1614);
        let x_1617 : vec2<f32> = u_xlat31;
        let x_1619 : f32 = u_xlat27.z;
        txVec28 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec28;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat31.x = x_1628;
        let x_1631 : f32 = u_xlat6.w;
        let x_1633 : f32 = u_xlat31.x;
        let x_1635 : f32 = u_xlat83;
        u_xlat5.x = ((x_1631 * x_1633) + x_1635);
      }
    }
  } else {
    let x_1640 : vec3<f32> = u_xlat27;
    let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
    let x_1643 : f32 = u_xlat27.z;
    txVec29 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
    let x_1650 : vec3<f32> = txVec29;
    let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
    u_xlat5.x = x_1652;
  }
  let x_1655 : f32 = x_83.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1655) + 1.0f);
  let x_1660 : f32 = u_xlat5.x;
  let x_1662 : f32 = x_83.x_MainLightShadowParams.x;
  let x_1665 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1660 * x_1662) + x_1665);
  let x_1670 : f32 = u_xlat27.z;
  u_xlatb53 = (0.0f >= x_1670);
  let x_1674 : f32 = u_xlat27.z;
  u_xlatb79 = (x_1674 >= 1.0f);
  let x_1676 : bool = u_xlatb79;
  let x_1677 : bool = u_xlatb53;
  u_xlatb53 = (x_1676 | x_1677);
  let x_1679 : bool = u_xlatb53;
  if (x_1679) {
    x_1681 = 1.0f;
  } else {
    let x_1686 : f32 = u_xlat27.x;
    x_1681 = x_1686;
  }
  let x_1687 : f32 = x_1681;
  u_xlat27.x = x_1687;
  let x_1689 : vec3<f32> = vs_TEXCOORD7;
  let x_1692 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1694 : vec3<f32> = (x_1689 + -(x_1692));
  let x_1695 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1698 : vec4<f32> = u_xlat5;
  let x_1700 : vec4<f32> = u_xlat5;
  u_xlat53 = dot(vec3<f32>(x_1698.x, x_1698.y, x_1698.z), vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1704 : f32 = u_xlat53;
  let x_1706 : f32 = x_83.x_MainLightShadowParams.z;
  let x_1709 : f32 = x_83.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1704 * x_1706) + x_1709);
  let x_1711 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1711, 0.0f, 1.0f);
  let x_1714 : f32 = u_xlat27.x;
  u_xlat5.x = (-(x_1714) + 1.0f);
  let x_1718 : f32 = u_xlat79;
  let x_1720 : f32 = u_xlat5.x;
  let x_1723 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1718 * x_1720) + x_1723);
  let x_1733 : f32 = x_1731.x_MainLightCookieTextureFormat;
  u_xlatb79 = !((x_1733 == -1.0f));
  let x_1735 : bool = u_xlatb79;
  if (x_1735) {
    let x_1738 : vec3<f32> = vs_TEXCOORD7;
    let x_1741 : vec4<f32> = x_1731.x_MainLightWorldToLight[1i];
    let x_1743 : vec2<f32> = (vec2<f32>(x_1738.y, x_1738.y) * vec2<f32>(x_1741.x, x_1741.y));
    let x_1744 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
    let x_1747 : vec4<f32> = x_1731.x_MainLightWorldToLight[0i];
    let x_1749 : vec3<f32> = vs_TEXCOORD7;
    let x_1752 : vec4<f32> = u_xlat5;
    let x_1754 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1749.x, x_1749.x)) + vec2<f32>(x_1752.x, x_1752.y));
    let x_1755 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
    let x_1758 : vec4<f32> = x_1731.x_MainLightWorldToLight[2i];
    let x_1760 : vec3<f32> = vs_TEXCOORD7;
    let x_1763 : vec4<f32> = u_xlat5;
    let x_1765 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1760.z, x_1760.z)) + vec2<f32>(x_1763.x, x_1763.y));
    let x_1766 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1765.x, x_1765.y, x_1766.z, x_1766.w);
    let x_1768 : vec4<f32> = u_xlat5;
    let x_1771 : vec4<f32> = x_1731.x_MainLightWorldToLight[3i];
    let x_1773 : vec2<f32> = (vec2<f32>(x_1768.x, x_1768.y) + vec2<f32>(x_1771.x, x_1771.y));
    let x_1774 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1773.x, x_1773.y, x_1774.z, x_1774.w);
    let x_1776 : vec4<f32> = u_xlat5;
    let x_1779 : vec2<f32> = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1780 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
    let x_1787 : vec4<f32> = u_xlat5;
    let x_1790 : f32 = x_28.x_GlobalMipBias.x;
    let x_1791 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1787.x, x_1787.y), x_1790);
    u_xlat5 = x_1791;
    let x_1796 : f32 = x_1731.x_MainLightCookieTextureFormat;
    let x_1798 : f32 = x_1731.x_MainLightCookieTextureFormat;
    let x_1800 : f32 = x_1731.x_MainLightCookieTextureFormat;
    let x_1802 : f32 = x_1731.x_MainLightCookieTextureFormat;
    let x_1803 : vec4<f32> = vec4<f32>(x_1796, x_1798, x_1800, x_1802);
    let x_1810 : vec4<bool> = (vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1803.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1810.x, x_1810.y);
    let x_1813 : bool = u_xlatb6.y;
    if (x_1813) {
      let x_1818 : f32 = u_xlat5.w;
      x_1814 = x_1818;
    } else {
      let x_1821 : f32 = u_xlat5.x;
      x_1814 = x_1821;
    }
    let x_1822 : f32 = x_1814;
    u_xlat79 = x_1822;
    let x_1824 : bool = u_xlatb6.x;
    if (x_1824) {
      let x_1828 : vec4<f32> = u_xlat5;
      x_1825 = vec3<f32>(x_1828.x, x_1828.y, x_1828.z);
    } else {
      let x_1831 : f32 = u_xlat79;
      x_1825 = vec3<f32>(x_1831, x_1831, x_1831);
    }
    let x_1833 : vec3<f32> = x_1825;
    let x_1834 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1840 : vec4<f32> = u_xlat5;
  let x_1843 : vec4<f32> = x_28.x_MainLightColor;
  let x_1845 : vec3<f32> = (vec3<f32>(x_1840.x, x_1840.y, x_1840.z) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1850 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1850;
  let x_1854 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1854;
  let x_1858 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1858;
  let x_1860 : vec4<f32> = u_xlat6;
  let x_1863 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(-(vec3<f32>(x_1860.x, x_1860.y, x_1860.z)), vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : f32 = u_xlat79;
  let x_1867 : f32 = u_xlat79;
  u_xlat79 = (x_1866 + x_1867);
  let x_1869 : vec4<f32> = u_xlat2;
  let x_1871 : f32 = u_xlat79;
  let x_1875 : vec4<f32> = u_xlat6;
  let x_1878 : vec3<f32> = ((vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * -(vec3<f32>(x_1871, x_1871, x_1871))) + -(vec3<f32>(x_1875.x, x_1875.y, x_1875.z)));
  let x_1879 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
  let x_1881 : vec4<f32> = u_xlat2;
  let x_1883 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
  let x_1886 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1886, 0.0f, 1.0f);
  let x_1888 : f32 = u_xlat79;
  u_xlat79 = (-(x_1888) + 1.0f);
  let x_1891 : f32 = u_xlat79;
  let x_1892 : f32 = u_xlat79;
  u_xlat79 = (x_1891 * x_1892);
  let x_1894 : f32 = u_xlat79;
  let x_1895 : f32 = u_xlat79;
  u_xlat79 = (x_1894 * x_1895);
  let x_1898 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1898) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1905 : f32 = u_xlat1.x;
  let x_1906 : f32 = u_xlat83;
  u_xlat1.x = (x_1905 * x_1906);
  let x_1910 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1910 * 6.0f);
  let x_1922 : vec4<f32> = u_xlat7;
  let x_1925 : f32 = u_xlat1.x;
  let x_1926 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1922.x, x_1922.y, x_1922.z), x_1925);
  u_xlat7 = x_1926;
  let x_1928 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1928 + -1.0f);
  let x_1932 : f32 = x_269.unity_SpecCube0_HDR.w;
  let x_1934 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1932 * x_1934) + 1.0f);
  let x_1939 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1939, 0.0f);
  let x_1943 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1943);
  let x_1947 : f32 = u_xlat1.x;
  let x_1949 : f32 = x_269.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1947 * x_1949);
  let x_1953 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1953);
  let x_1957 : f32 = u_xlat1.x;
  let x_1959 : f32 = x_269.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1957 * x_1959);
  let x_1962 : vec4<f32> = u_xlat7;
  let x_1964 : vec4<f32> = u_xlat1;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(x_1964.x, x_1964.x, x_1964.x));
  let x_1967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : f32 = u_xlat80;
  let x_1971 : f32 = u_xlat80;
  let x_1975 : vec2<f32> = ((vec2<f32>(x_1969, x_1969) * vec2<f32>(x_1971, x_1971)) + vec2<f32>(-1.0f, 1.0f));
  let x_1976 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1975.x, x_1975.y, x_1976.z, x_1976.w);
  let x_1979 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1979);
  let x_1983 : vec4<f32> = u_xlat0;
  let x_1986 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1983.x, x_1983.y, x_1983.z)) + vec3<f32>(x_1986, x_1986, x_1986));
  let x_1989 : f32 = u_xlat79;
  let x_1991 : vec3<f32> = u_xlat34;
  let x_1993 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1989, x_1989, x_1989) * x_1991) + vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat1;
  let x_1998 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1996.x, x_1996.x, x_1996.x) * x_1998);
  let x_2000 : vec4<f32> = u_xlat7;
  let x_2002 : vec3<f32> = u_xlat34;
  let x_2003 : vec3<f32> = (vec3<f32>(x_2000.x, x_2000.y, x_2000.z) * x_2002);
  let x_2004 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
  let x_2006 : vec3<f32> = u_xlat3;
  let x_2007 : vec4<f32> = u_xlat4;
  let x_2010 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_2006 * vec3<f32>(x_2007.x, x_2007.y, x_2007.z)) + vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2014 : f32 = u_xlat27.x;
  let x_2016 : f32 = x_269.unity_LightData.z;
  u_xlat78 = (x_2014 * x_2016);
  let x_2018 : vec4<f32> = u_xlat2;
  let x_2021 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2018.x, x_2018.y, x_2018.z), vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
  let x_2026 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2026, 0.0f, 1.0f);
  let x_2029 : f32 = u_xlat78;
  let x_2031 : f32 = u_xlat1.x;
  u_xlat78 = (x_2029 * x_2031);
  let x_2033 : f32 = u_xlat78;
  let x_2035 : vec4<f32> = u_xlat5;
  let x_2037 : vec3<f32> = (vec3<f32>(x_2033, x_2033, x_2033) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2037.x, x_2037.y, x_2038.z, x_2037.z);
  let x_2040 : vec4<f32> = u_xlat6;
  let x_2043 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2045 : vec3<f32> = (vec3<f32>(x_2040.x, x_2040.y, x_2040.z) + vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
  let x_2048 : vec4<f32> = u_xlat5;
  let x_2050 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_2048.x, x_2048.y, x_2048.z), vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
  let x_2053 : f32 = u_xlat78;
  u_xlat78 = max(x_2053, 1.17549435e-38f);
  let x_2056 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2056);
  let x_2058 : f32 = u_xlat78;
  let x_2060 : vec4<f32> = u_xlat5;
  let x_2062 : vec3<f32> = (vec3<f32>(x_2058, x_2058, x_2058) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec4<f32> = u_xlat2;
  let x_2067 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2070, 0.0f, 1.0f);
  let x_2073 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2075 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(vec3<f32>(x_2073.x, x_2073.y, x_2073.z), vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2078 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2078, 0.0f, 1.0f);
  let x_2080 : f32 = u_xlat78;
  let x_2081 : f32 = u_xlat78;
  u_xlat78 = (x_2080 * x_2081);
  let x_2083 : f32 = u_xlat78;
  let x_2085 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2083 * x_2085) + 1.00001001358032226562f);
  let x_2089 : f32 = u_xlat80;
  let x_2090 : f32 = u_xlat80;
  u_xlat80 = (x_2089 * x_2090);
  let x_2092 : f32 = u_xlat78;
  let x_2093 : f32 = u_xlat78;
  u_xlat78 = (x_2092 * x_2093);
  let x_2095 : f32 = u_xlat80;
  u_xlat80 = max(x_2095, 0.10000000149011611938f);
  let x_2098 : f32 = u_xlat78;
  let x_2099 : f32 = u_xlat80;
  u_xlat78 = (x_2098 * x_2099);
  let x_2101 : f32 = u_xlat81;
  let x_2102 : f32 = u_xlat78;
  u_xlat78 = (x_2101 * x_2102);
  let x_2104 : f32 = u_xlat82;
  let x_2105 : f32 = u_xlat78;
  u_xlat78 = (x_2104 / x_2105);
  let x_2107 : vec4<f32> = u_xlat0;
  let x_2109 : f32 = u_xlat78;
  let x_2112 : vec4<f32> = u_xlat4;
  let x_2114 : vec3<f32> = ((vec3<f32>(x_2107.x, x_2107.y, x_2107.z) * vec3<f32>(x_2109, x_2109, x_2109)) + vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2118 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2120 : f32 = x_269.unity_LightData.y;
  u_xlat78 = min(x_2118, x_2120);
  let x_2123 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2123));
  let x_2126 : f32 = u_xlat53;
  let x_2129 : f32 = x_83.x_AdditionalShadowFadeParams.x;
  let x_2132 : f32 = x_83.x_AdditionalShadowFadeParams.y;
  u_xlat53 = ((x_2126 * x_2129) + x_2132);
  let x_2134 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2134, 0.0f, 1.0f);
  let x_2138 : f32 = x_1731.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2140 : f32 = x_1731.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2142 : f32 = x_1731.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2144 : f32 = x_1731.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2145 : vec4<f32> = vec4<f32>(x_2138, x_2140, x_2142, x_2144);
  let x_2151 : vec4<bool> = (vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2145.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2151.x, x_2151.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2163 : u32 = u_xlatu_loop_1;
    let x_2164 : u32 = u_xlatu78;
    if ((x_2163 < x_2164)) {
    } else {
      break;
    }
    let x_2167 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2167 >> 2u);
    let x_2170 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2170 & 3u));
    let x_2173 : u32 = u_xlatu83;
    let x_2176 : vec4<f32> = x_269.unity_LightIndices[bitcast<i32>(x_2173)];
    let x_2186 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2191 : vec4<u32> = indexable[x_2186];
    u_xlat83 = dot(x_2176, bitcast<vec4<f32>>(x_2191));
    let x_2195 : f32 = u_xlat83;
    u_xlati83 = i32(x_2195);
    let x_2197 : vec3<f32> = vs_TEXCOORD7;
    let x_2208 : i32 = u_xlati83;
    let x_2210 : vec4<f32> = x_2207.x_AdditionalLightsPosition[x_2208];
    let x_2213 : i32 = u_xlati83;
    let x_2215 : vec4<f32> = x_2207.x_AdditionalLightsPosition[x_2213];
    let x_2217 : vec3<f32> = ((-(x_2197) * vec3<f32>(x_2210.w, x_2210.w, x_2210.w)) + vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
    let x_2218 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
    let x_2221 : vec4<f32> = u_xlat9;
    let x_2223 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2221.x, x_2221.y, x_2221.z), vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
    let x_2226 : f32 = u_xlat84;
    u_xlat84 = max(x_2226, 0.00006103515625f);
    let x_2230 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2230);
    let x_2232 : f32 = u_xlat59;
    let x_2234 : vec4<f32> = u_xlat9;
    let x_2236 : vec3<f32> = (vec3<f32>(x_2232, x_2232, x_2232) * vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
    let x_2237 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
    let x_2240 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2240);
    let x_2242 : f32 = u_xlat84;
    let x_2243 : i32 = u_xlati83;
    let x_2245 : f32 = x_2207.x_AdditionalLightsAttenuation[x_2243].x;
    u_xlat84 = (x_2242 * x_2245);
    let x_2247 : f32 = u_xlat84;
    let x_2249 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2247) * x_2249) + 1.0f);
    let x_2252 : f32 = u_xlat84;
    u_xlat84 = max(x_2252, 0.0f);
    let x_2254 : f32 = u_xlat84;
    let x_2255 : f32 = u_xlat84;
    u_xlat84 = (x_2254 * x_2255);
    let x_2257 : f32 = u_xlat84;
    let x_2258 : f32 = u_xlat85;
    u_xlat84 = (x_2257 * x_2258);
    let x_2260 : i32 = u_xlati83;
    let x_2262 : vec4<f32> = x_2207.x_AdditionalLightsSpotDir[x_2260];
    let x_2264 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2262.x, x_2262.y, x_2262.z), vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
    let x_2267 : f32 = u_xlat85;
    let x_2268 : i32 = u_xlati83;
    let x_2270 : f32 = x_2207.x_AdditionalLightsAttenuation[x_2268].z;
    let x_2272 : i32 = u_xlati83;
    let x_2274 : f32 = x_2207.x_AdditionalLightsAttenuation[x_2272].w;
    u_xlat85 = ((x_2267 * x_2270) + x_2274);
    let x_2276 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2276, 0.0f, 1.0f);
    let x_2278 : f32 = u_xlat85;
    let x_2279 : f32 = u_xlat85;
    u_xlat85 = (x_2278 * x_2279);
    let x_2281 : f32 = u_xlat84;
    let x_2282 : f32 = u_xlat85;
    u_xlat84 = (x_2281 * x_2282);
    let x_2286 : i32 = u_xlati83;
    let x_2288 : f32 = x_83.x_AdditionalShadowParams[x_2286].w;
    u_xlati85 = i32(x_2288);
    let x_2291 : i32 = u_xlati85;
    u_xlatb87 = (x_2291 >= 0i);
    let x_2293 : bool = u_xlatb87;
    if (x_2293) {
      let x_2297 : i32 = u_xlati83;
      let x_2299 : f32 = x_83.x_AdditionalShadowParams[x_2297].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2299, x_2299, x_2299, x_2299))));
      let x_2303 : bool = u_xlatb87;
      if (x_2303) {
        let x_2307 : vec4<f32> = u_xlat10;
        let x_2310 : vec4<f32> = u_xlat10;
        let x_2313 : vec4<bool> = (abs(vec4<f32>(x_2307.z, x_2307.z, x_2307.y, x_2307.z)) >= abs(vec4<f32>(x_2310.x, x_2310.y, x_2310.x, x_2310.x)));
        let x_2315 : vec3<bool> = vec3<bool>(x_2313.x, x_2313.y, x_2313.z);
        let x_2316 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
        let x_2319 : bool = u_xlatb11.y;
        let x_2321 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2319 & x_2321);
        let x_2323 : vec4<f32> = u_xlat10;
        let x_2326 : vec4<bool> = (-(vec4<f32>(x_2323.z, x_2323.y, x_2323.z, x_2323.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2327 : vec3<bool> = vec3<bool>(x_2326.x, x_2326.y, x_2326.w);
        let x_2328 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2327.x, x_2327.y, x_2328.z, x_2327.z);
        let x_2331 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2331);
        let x_2336 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2336);
        let x_2341 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2341);
        let x_2344 : bool = u_xlatb11.z;
        if (x_2344) {
          let x_2349 : f32 = u_xlat11.y;
          x_2345 = x_2349;
        } else {
          let x_2351 : f32 = u_xlat88;
          x_2345 = x_2351;
        }
        let x_2352 : f32 = x_2345;
        u_xlat88 = x_2352;
        let x_2354 : bool = u_xlatb87;
        if (x_2354) {
          let x_2359 : f32 = u_xlat11.x;
          x_2355 = x_2359;
        } else {
          let x_2361 : f32 = u_xlat88;
          x_2355 = x_2361;
        }
        let x_2362 : f32 = x_2355;
        u_xlat87 = x_2362;
        let x_2363 : i32 = u_xlati83;
        let x_2365 : f32 = x_83.x_AdditionalShadowParams[x_2363].w;
        u_xlat88 = trunc(x_2365);
        let x_2367 : f32 = u_xlat87;
        let x_2368 : f32 = u_xlat88;
        u_xlat87 = (x_2367 + x_2368);
        let x_2370 : f32 = u_xlat87;
        u_xlati85 = i32(x_2370);
      }
      let x_2372 : i32 = u_xlati85;
      u_xlati85 = (x_2372 << bitcast<u32>(2i));
      let x_2374 : vec3<f32> = vs_TEXCOORD7;
      let x_2377 : i32 = u_xlati85;
      let x_2380 : i32 = u_xlati85;
      let x_2384 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2377 + 1i) / 4i)][((x_2380 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2374.y, x_2374.y, x_2374.y, x_2374.y) * x_2384);
      let x_2386 : i32 = u_xlati85;
      let x_2388 : i32 = u_xlati85;
      let x_2391 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[(x_2386 / 4i)][(x_2388 % 4i)];
      let x_2392 : vec3<f32> = vs_TEXCOORD7;
      let x_2395 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2391 * vec4<f32>(x_2392.x, x_2392.x, x_2392.x, x_2392.x)) + x_2395);
      let x_2397 : i32 = u_xlati85;
      let x_2400 : i32 = u_xlati85;
      let x_2404 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2397 + 2i) / 4i)][((x_2400 + 2i) % 4i)];
      let x_2405 : vec3<f32> = vs_TEXCOORD7;
      let x_2408 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2404 * vec4<f32>(x_2405.z, x_2405.z, x_2405.z, x_2405.z)) + x_2408);
      let x_2410 : vec4<f32> = u_xlat11;
      let x_2411 : i32 = u_xlati85;
      let x_2414 : i32 = u_xlati85;
      let x_2418 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2411 + 3i) / 4i)][((x_2414 + 3i) % 4i)];
      u_xlat11 = (x_2410 + x_2418);
      let x_2420 : vec4<f32> = u_xlat11;
      let x_2422 : vec4<f32> = u_xlat11;
      let x_2424 : vec3<f32> = (vec3<f32>(x_2420.x, x_2420.y, x_2420.z) / vec3<f32>(x_2422.w, x_2422.w, x_2422.w));
      let x_2425 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
      let x_2428 : i32 = u_xlati83;
      let x_2430 : f32 = x_83.x_AdditionalShadowParams[x_2428].y;
      u_xlatb85 = (0.0f < x_2430);
      let x_2432 : bool = u_xlatb85;
      if (x_2432) {
        let x_2435 : i32 = u_xlati83;
        let x_2437 : f32 = x_83.x_AdditionalShadowParams[x_2435].y;
        u_xlatb85 = (1.0f == x_2437);
        let x_2439 : bool = u_xlatb85;
        if (x_2439) {
          let x_2442 : vec4<f32> = u_xlat11;
          let x_2446 : vec4<f32> = x_83.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2442.x, x_2442.y, x_2442.x, x_2442.y) + x_2446);
          let x_2449 : vec4<f32> = u_xlat12;
          let x_2450 : vec2<f32> = vec2<f32>(x_2449.x, x_2449.y);
          let x_2452 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
          let x_2460 : vec3<f32> = txVec30;
          let x_2462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2460.xy, x_2460.z);
          u_xlat13.x = x_2462;
          let x_2465 : vec4<f32> = u_xlat12;
          let x_2466 : vec2<f32> = vec2<f32>(x_2465.z, x_2465.w);
          let x_2468 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2466.x, x_2466.y, x_2468);
          let x_2475 : vec3<f32> = txVec31;
          let x_2477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2475.xy, x_2475.z);
          u_xlat13.y = x_2477;
          let x_2479 : vec4<f32> = u_xlat11;
          let x_2483 : vec4<f32> = x_83.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2479.x, x_2479.y, x_2479.x, x_2479.y) + x_2483);
          let x_2486 : vec4<f32> = u_xlat12;
          let x_2487 : vec2<f32> = vec2<f32>(x_2486.x, x_2486.y);
          let x_2489 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2487.x, x_2487.y, x_2489);
          let x_2496 : vec3<f32> = txVec32;
          let x_2498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2496.xy, x_2496.z);
          u_xlat13.z = x_2498;
          let x_2501 : vec4<f32> = u_xlat12;
          let x_2502 : vec2<f32> = vec2<f32>(x_2501.z, x_2501.w);
          let x_2504 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2502.x, x_2502.y, x_2504);
          let x_2511 : vec3<f32> = txVec33;
          let x_2513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2511.xy, x_2511.z);
          u_xlat13.w = x_2513;
          let x_2515 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2515, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2518 : i32 = u_xlati83;
          let x_2520 : f32 = x_83.x_AdditionalShadowParams[x_2518].y;
          u_xlatb87 = (2.0f == x_2520);
          let x_2522 : bool = u_xlatb87;
          if (x_2522) {
            let x_2525 : vec4<f32> = u_xlat11;
            let x_2529 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2532 : vec2<f32> = ((vec2<f32>(x_2525.x, x_2525.y) * vec2<f32>(x_2529.z, x_2529.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2533 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2535 : vec4<f32> = u_xlat12;
            let x_2537 : vec2<f32> = floor(vec2<f32>(x_2535.x, x_2535.y));
            let x_2538 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
            let x_2540 : vec4<f32> = u_xlat11;
            let x_2543 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2546 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2540.x, x_2540.y) * vec2<f32>(x_2543.z, x_2543.w)) + -(vec2<f32>(x_2546.x, x_2546.y)));
            let x_2550 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2550.x, x_2550.x, x_2550.y, x_2550.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2553 : vec4<f32> = u_xlat13;
            let x_2555 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2553.x, x_2553.x, x_2553.z, x_2553.z) * vec4<f32>(x_2555.x, x_2555.x, x_2555.z, x_2555.z));
            let x_2558 : vec4<f32> = u_xlat14;
            let x_2560 : vec2<f32> = (vec2<f32>(x_2558.y, x_2558.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2561 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2560.x, x_2561.y, x_2560.y, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat14;
            let x_2566 : vec2<f32> = u_xlat64;
            let x_2568 : vec2<f32> = ((vec2<f32>(x_2563.x, x_2563.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2566));
            let x_2569 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2568.x, x_2568.y, x_2569.z, x_2569.w);
            let x_2572 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2572) + vec2<f32>(1.0f, 1.0f));
            let x_2575 : vec2<f32> = u_xlat64;
            let x_2576 : vec2<f32> = min(x_2575, vec2<f32>(0.0f, 0.0f));
            let x_2577 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec4<f32> = u_xlat15;
            let x_2582 : vec4<f32> = u_xlat15;
            let x_2585 : vec2<f32> = u_xlat66;
            let x_2586 : vec2<f32> = ((-(vec2<f32>(x_2579.x, x_2579.y)) * vec2<f32>(x_2582.x, x_2582.y)) + x_2585);
            let x_2587 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2586.x, x_2586.y, x_2587.z, x_2587.w);
            let x_2589 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2589, vec2<f32>(0.0f, 0.0f));
            let x_2591 : vec2<f32> = u_xlat64;
            let x_2593 : vec2<f32> = u_xlat64;
            let x_2595 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2591) * x_2593) + vec2<f32>(x_2595.y, x_2595.w));
            let x_2598 : vec4<f32> = u_xlat15;
            let x_2600 : vec2<f32> = (vec2<f32>(x_2598.x, x_2598.y) + vec2<f32>(1.0f, 1.0f));
            let x_2601 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2603 + vec2<f32>(1.0f, 1.0f));
            let x_2605 : vec4<f32> = u_xlat14;
            let x_2607 : vec2<f32> = (vec2<f32>(x_2605.x, x_2605.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2608 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2610 : vec2<f32> = u_xlat66;
            let x_2611 : vec2<f32> = (x_2610 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2612 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2611.x, x_2611.y, x_2612.z, x_2612.w);
            let x_2614 : vec4<f32> = u_xlat15;
            let x_2616 : vec2<f32> = (vec2<f32>(x_2614.x, x_2614.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2617 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2616.x, x_2616.y, x_2617.z, x_2617.w);
            let x_2619 : vec2<f32> = u_xlat64;
            let x_2620 : vec2<f32> = (x_2619 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2621 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2620.x, x_2620.y, x_2621.z, x_2621.w);
            let x_2623 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2623.y, x_2623.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2627 : f32 = u_xlat15.x;
            u_xlat16.z = x_2627;
            let x_2630 : f32 = u_xlat64.x;
            u_xlat16.w = x_2630;
            let x_2633 : f32 = u_xlat17.x;
            u_xlat14.z = x_2633;
            let x_2636 : f32 = u_xlat13.x;
            u_xlat14.w = x_2636;
            let x_2638 : vec4<f32> = u_xlat14;
            let x_2640 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2638.z, x_2638.w, x_2638.x, x_2638.z) + vec4<f32>(x_2640.z, x_2640.w, x_2640.x, x_2640.z));
            let x_2644 : f32 = u_xlat16.y;
            u_xlat15.z = x_2644;
            let x_2647 : f32 = u_xlat64.y;
            u_xlat15.w = x_2647;
            let x_2650 : f32 = u_xlat14.y;
            u_xlat17.z = x_2650;
            let x_2653 : f32 = u_xlat13.z;
            u_xlat17.w = x_2653;
            let x_2655 : vec4<f32> = u_xlat15;
            let x_2657 : vec4<f32> = u_xlat17;
            let x_2659 : vec3<f32> = (vec3<f32>(x_2655.z, x_2655.y, x_2655.w) + vec3<f32>(x_2657.z, x_2657.y, x_2657.w));
            let x_2660 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
            let x_2662 : vec4<f32> = u_xlat14;
            let x_2664 : vec4<f32> = u_xlat18;
            let x_2666 : vec3<f32> = (vec3<f32>(x_2662.x, x_2662.z, x_2662.w) / vec3<f32>(x_2664.z, x_2664.w, x_2664.y));
            let x_2667 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
            let x_2669 : vec4<f32> = u_xlat14;
            let x_2671 : vec3<f32> = (vec3<f32>(x_2669.x, x_2669.y, x_2669.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2672 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
            let x_2674 : vec4<f32> = u_xlat17;
            let x_2676 : vec4<f32> = u_xlat13;
            let x_2678 : vec3<f32> = (vec3<f32>(x_2674.z, x_2674.y, x_2674.w) / vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
            let x_2679 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
            let x_2681 : vec4<f32> = u_xlat15;
            let x_2683 : vec3<f32> = (vec3<f32>(x_2681.x, x_2681.y, x_2681.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2684 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
            let x_2686 : vec4<f32> = u_xlat14;
            let x_2689 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2691 : vec3<f32> = (vec3<f32>(x_2686.y, x_2686.x, x_2686.z) * vec3<f32>(x_2689.x, x_2689.x, x_2689.x));
            let x_2692 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2692.w);
            let x_2694 : vec4<f32> = u_xlat15;
            let x_2697 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2699 : vec3<f32> = (vec3<f32>(x_2694.x, x_2694.y, x_2694.z) * vec3<f32>(x_2697.y, x_2697.y, x_2697.y));
            let x_2700 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
            let x_2703 : f32 = u_xlat15.x;
            u_xlat14.w = x_2703;
            let x_2705 : vec4<f32> = u_xlat12;
            let x_2708 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2711 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.y) * vec4<f32>(x_2708.x, x_2708.y, x_2708.x, x_2708.y)) + vec4<f32>(x_2711.y, x_2711.w, x_2711.x, x_2711.w));
            let x_2714 : vec4<f32> = u_xlat12;
            let x_2717 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2720 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2717.x, x_2717.y)) + vec2<f32>(x_2720.z, x_2720.w));
            let x_2724 : f32 = u_xlat14.y;
            u_xlat15.w = x_2724;
            let x_2726 : vec4<f32> = u_xlat15;
            let x_2727 : vec2<f32> = vec2<f32>(x_2726.y, x_2726.z);
            let x_2728 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2728.x, x_2727.x, x_2728.z, x_2727.y);
            let x_2730 : vec4<f32> = u_xlat12;
            let x_2733 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2730.x, x_2730.y, x_2730.x, x_2730.y) * vec4<f32>(x_2733.x, x_2733.y, x_2733.x, x_2733.y)) + vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2736.y));
            let x_2739 : vec4<f32> = u_xlat12;
            let x_2742 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2745 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2739.x, x_2739.y, x_2739.x, x_2739.y) * vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y)) + vec4<f32>(x_2745.w, x_2745.y, x_2745.w, x_2745.z));
            let x_2748 : vec4<f32> = u_xlat12;
            let x_2751 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2754 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y) * vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.y)) + vec4<f32>(x_2754.x, x_2754.w, x_2754.z, x_2754.w));
            let x_2757 : vec4<f32> = u_xlat13;
            let x_2759 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2757.x, x_2757.x, x_2757.x, x_2757.y) * vec4<f32>(x_2759.z, x_2759.w, x_2759.y, x_2759.z));
            let x_2763 : vec4<f32> = u_xlat13;
            let x_2765 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2763.y, x_2763.y, x_2763.z, x_2763.z) * x_2765);
            let x_2768 : f32 = u_xlat13.z;
            let x_2770 : f32 = u_xlat18.y;
            u_xlat87 = (x_2768 * x_2770);
            let x_2773 : vec4<f32> = u_xlat16;
            let x_2774 : vec2<f32> = vec2<f32>(x_2773.x, x_2773.y);
            let x_2776 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2774.x, x_2774.y, x_2776);
            let x_2783 : vec3<f32> = txVec34;
            let x_2785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
            u_xlat88 = x_2785;
            let x_2787 : vec4<f32> = u_xlat16;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.z, x_2787.w);
            let x_2790 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2798 : vec3<f32> = txVec35;
            let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
            u_xlat89 = x_2800;
            let x_2801 : f32 = u_xlat89;
            let x_2803 : f32 = u_xlat19.y;
            u_xlat89 = (x_2801 * x_2803);
            let x_2806 : f32 = u_xlat19.x;
            let x_2807 : f32 = u_xlat88;
            let x_2809 : f32 = u_xlat89;
            u_xlat88 = ((x_2806 * x_2807) + x_2809);
            let x_2812 : vec2<f32> = u_xlat64;
            let x_2814 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2812.x, x_2812.y, x_2814);
            let x_2821 : vec3<f32> = txVec36;
            let x_2823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2821.xy, x_2821.z);
            u_xlat89 = x_2823;
            let x_2825 : f32 = u_xlat19.z;
            let x_2826 : f32 = u_xlat89;
            let x_2828 : f32 = u_xlat88;
            u_xlat88 = ((x_2825 * x_2826) + x_2828);
            let x_2831 : vec4<f32> = u_xlat15;
            let x_2832 : vec2<f32> = vec2<f32>(x_2831.x, x_2831.y);
            let x_2834 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2832.x, x_2832.y, x_2834);
            let x_2841 : vec3<f32> = txVec37;
            let x_2843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2841.xy, x_2841.z);
            u_xlat89 = x_2843;
            let x_2845 : f32 = u_xlat19.w;
            let x_2846 : f32 = u_xlat89;
            let x_2848 : f32 = u_xlat88;
            u_xlat88 = ((x_2845 * x_2846) + x_2848);
            let x_2851 : vec4<f32> = u_xlat17;
            let x_2852 : vec2<f32> = vec2<f32>(x_2851.x, x_2851.y);
            let x_2854 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2852.x, x_2852.y, x_2854);
            let x_2861 : vec3<f32> = txVec38;
            let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
            u_xlat89 = x_2863;
            let x_2865 : f32 = u_xlat20.x;
            let x_2866 : f32 = u_xlat89;
            let x_2868 : f32 = u_xlat88;
            u_xlat88 = ((x_2865 * x_2866) + x_2868);
            let x_2871 : vec4<f32> = u_xlat17;
            let x_2872 : vec2<f32> = vec2<f32>(x_2871.z, x_2871.w);
            let x_2874 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2872.x, x_2872.y, x_2874);
            let x_2881 : vec3<f32> = txVec39;
            let x_2883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2881.xy, x_2881.z);
            u_xlat89 = x_2883;
            let x_2885 : f32 = u_xlat20.y;
            let x_2886 : f32 = u_xlat89;
            let x_2888 : f32 = u_xlat88;
            u_xlat88 = ((x_2885 * x_2886) + x_2888);
            let x_2891 : vec4<f32> = u_xlat15;
            let x_2892 : vec2<f32> = vec2<f32>(x_2891.z, x_2891.w);
            let x_2894 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2892.x, x_2892.y, x_2894);
            let x_2901 : vec3<f32> = txVec40;
            let x_2903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2901.xy, x_2901.z);
            u_xlat89 = x_2903;
            let x_2905 : f32 = u_xlat20.z;
            let x_2906 : f32 = u_xlat89;
            let x_2908 : f32 = u_xlat88;
            u_xlat88 = ((x_2905 * x_2906) + x_2908);
            let x_2911 : vec4<f32> = u_xlat14;
            let x_2912 : vec2<f32> = vec2<f32>(x_2911.x, x_2911.y);
            let x_2914 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
            let x_2921 : vec3<f32> = txVec41;
            let x_2923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
            u_xlat89 = x_2923;
            let x_2925 : f32 = u_xlat20.w;
            let x_2926 : f32 = u_xlat89;
            let x_2928 : f32 = u_xlat88;
            u_xlat88 = ((x_2925 * x_2926) + x_2928);
            let x_2931 : vec4<f32> = u_xlat14;
            let x_2932 : vec2<f32> = vec2<f32>(x_2931.z, x_2931.w);
            let x_2934 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
            let x_2941 : vec3<f32> = txVec42;
            let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
            u_xlat89 = x_2943;
            let x_2944 : f32 = u_xlat87;
            let x_2945 : f32 = u_xlat89;
            let x_2947 : f32 = u_xlat88;
            u_xlat85 = ((x_2944 * x_2945) + x_2947);
          } else {
            let x_2950 : vec4<f32> = u_xlat11;
            let x_2953 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2956 : vec2<f32> = ((vec2<f32>(x_2950.x, x_2950.y) * vec2<f32>(x_2953.z, x_2953.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2957 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2961 : vec2<f32> = floor(vec2<f32>(x_2959.x, x_2959.y));
            let x_2962 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2961.x, x_2961.y, x_2962.z, x_2962.w);
            let x_2964 : vec4<f32> = u_xlat11;
            let x_2967 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2970 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2964.x, x_2964.y) * vec2<f32>(x_2967.z, x_2967.w)) + -(vec2<f32>(x_2970.x, x_2970.y)));
            let x_2974 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2974.x, x_2974.x, x_2974.y, x_2974.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2977 : vec4<f32> = u_xlat13;
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2977.x, x_2977.x, x_2977.z, x_2977.z) * vec4<f32>(x_2979.x, x_2979.x, x_2979.z, x_2979.z));
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2984 : vec2<f32> = (vec2<f32>(x_2982.y, x_2982.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2985 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2985.x, x_2984.x, x_2985.z, x_2984.y);
            let x_2987 : vec4<f32> = u_xlat14;
            let x_2990 : vec2<f32> = u_xlat64;
            let x_2992 : vec2<f32> = ((vec2<f32>(x_2987.x, x_2987.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2990));
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2992.x, x_2993.y, x_2992.y, x_2993.w);
            let x_2995 : vec2<f32> = u_xlat64;
            let x_2997 : vec2<f32> = (-(x_2995) + vec2<f32>(1.0f, 1.0f));
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2997.x, x_2997.y, x_2998.z, x_2998.w);
            let x_3000 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3000, vec2<f32>(0.0f, 0.0f));
            let x_3002 : vec2<f32> = u_xlat66;
            let x_3004 : vec2<f32> = u_xlat66;
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3008 : vec2<f32> = ((-(x_3002) * x_3004) + vec2<f32>(x_3006.x, x_3006.y));
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3008.x, x_3008.y, x_3009.z, x_3009.w);
            let x_3011 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3011, vec2<f32>(0.0f, 0.0f));
            let x_3014 : vec2<f32> = u_xlat66;
            let x_3016 : vec2<f32> = u_xlat66;
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3020 : vec2<f32> = ((-(x_3014) * x_3016) + vec2<f32>(x_3018.y, x_3018.w));
            let x_3021 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3020.x, x_3021.y, x_3020.y);
            let x_3023 : vec4<f32> = u_xlat14;
            let x_3026 : vec2<f32> = (vec2<f32>(x_3023.x, x_3023.y) + vec2<f32>(2.0f, 2.0f));
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3026.x, x_3026.y, x_3027.z, x_3027.w);
            let x_3029 : vec3<f32> = u_xlat39;
            let x_3031 : vec2<f32> = (vec2<f32>(x_3029.x, x_3029.z) + vec2<f32>(2.0f, 2.0f));
            let x_3032 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3032.x, x_3031.x, x_3032.z, x_3031.y);
            let x_3035 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3035 * 0.08163200318813323975f);
            let x_3038 : vec4<f32> = u_xlat13;
            let x_3041 : vec3<f32> = (vec3<f32>(x_3038.z, x_3038.x, x_3038.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3042 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3041.x, x_3041.y, x_3041.z, x_3042.w);
            let x_3044 : vec4<f32> = u_xlat14;
            let x_3046 : vec2<f32> = (vec2<f32>(x_3044.x, x_3044.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3047 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3046.x, x_3046.y, x_3047.z, x_3047.w);
            let x_3050 : f32 = u_xlat17.y;
            u_xlat16.x = x_3050;
            let x_3052 : vec2<f32> = u_xlat64;
            let x_3055 : vec2<f32> = ((vec2<f32>(x_3052.x, x_3052.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3056 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3056.x, x_3055.x, x_3056.z, x_3055.y);
            let x_3058 : vec2<f32> = u_xlat64;
            let x_3061 : vec2<f32> = ((vec2<f32>(x_3058.x, x_3058.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3062 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3061.x, x_3062.y, x_3061.y, x_3062.w);
            let x_3065 : f32 = u_xlat13.x;
            u_xlat14.y = x_3065;
            let x_3068 : f32 = u_xlat15.y;
            u_xlat14.w = x_3068;
            let x_3070 : vec4<f32> = u_xlat14;
            let x_3071 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3070 + x_3071);
            let x_3073 : vec2<f32> = u_xlat64;
            let x_3076 : vec2<f32> = ((vec2<f32>(x_3073.y, x_3073.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3077 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3077.x, x_3076.x, x_3077.z, x_3076.y);
            let x_3079 : vec2<f32> = u_xlat64;
            let x_3082 : vec2<f32> = ((vec2<f32>(x_3079.y, x_3079.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3083 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3082.x, x_3083.y, x_3082.y, x_3083.w);
            let x_3086 : f32 = u_xlat13.y;
            u_xlat15.y = x_3086;
            let x_3088 : vec4<f32> = u_xlat15;
            let x_3089 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3088 + x_3089);
            let x_3091 : vec4<f32> = u_xlat14;
            let x_3092 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3091 / x_3092);
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3094 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3096 : vec4<f32> = u_xlat15;
            let x_3097 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3096 / x_3097);
            let x_3099 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3099 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3101 : vec4<f32> = u_xlat14;
            let x_3104 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3101.w, x_3101.x, x_3101.y, x_3101.z) * vec4<f32>(x_3104.x, x_3104.x, x_3104.x, x_3104.x));
            let x_3107 : vec4<f32> = u_xlat15;
            let x_3110 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3107.x, x_3107.w, x_3107.y, x_3107.z) * vec4<f32>(x_3110.y, x_3110.y, x_3110.y, x_3110.y));
            let x_3113 : vec4<f32> = u_xlat14;
            let x_3114 : vec3<f32> = vec3<f32>(x_3113.y, x_3113.z, x_3113.w);
            let x_3115 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3114.x, x_3115.y, x_3114.y, x_3114.z);
            let x_3118 : f32 = u_xlat15.x;
            u_xlat17.y = x_3118;
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3123 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y) * vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.y)) + vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3126.y));
            let x_3129 : vec4<f32> = u_xlat12;
            let x_3132 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3135 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3129.x, x_3129.y) * vec2<f32>(x_3132.x, x_3132.y)) + vec2<f32>(x_3135.w, x_3135.y));
            let x_3139 : f32 = u_xlat17.y;
            u_xlat14.y = x_3139;
            let x_3142 : f32 = u_xlat15.z;
            u_xlat17.y = x_3142;
            let x_3144 : vec4<f32> = u_xlat12;
            let x_3147 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y) * vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.y)) + vec4<f32>(x_3150.x, x_3150.y, x_3150.z, x_3150.y));
            let x_3153 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat17;
            let x_3161 : vec2<f32> = ((vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(x_3156.x, x_3156.y)) + vec2<f32>(x_3159.w, x_3159.y));
            let x_3162 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3161.x, x_3161.y, x_3162.z, x_3162.w);
            let x_3165 : f32 = u_xlat17.y;
            u_xlat14.z = x_3165;
            let x_3168 : vec4<f32> = u_xlat12;
            let x_3171 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3174 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3168.x, x_3168.y, x_3168.x, x_3168.y) * vec4<f32>(x_3171.x, x_3171.y, x_3171.x, x_3171.y)) + vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.z));
            let x_3178 : f32 = u_xlat15.w;
            u_xlat17.y = x_3178;
            let x_3181 : vec4<f32> = u_xlat12;
            let x_3184 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3187 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.y) * vec4<f32>(x_3184.x, x_3184.y, x_3184.x, x_3184.y)) + vec4<f32>(x_3187.x, x_3187.y, x_3187.z, x_3187.y));
            let x_3191 : vec4<f32> = u_xlat12;
            let x_3194 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3197 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3194.x, x_3194.y)) + vec2<f32>(x_3197.w, x_3197.y));
            let x_3201 : f32 = u_xlat17.y;
            u_xlat14.w = x_3201;
            let x_3204 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3210 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3204.x, x_3204.y) * vec2<f32>(x_3207.x, x_3207.y)) + vec2<f32>(x_3210.x, x_3210.w));
            let x_3213 : vec4<f32> = u_xlat17;
            let x_3214 : vec3<f32> = vec3<f32>(x_3213.x, x_3213.z, x_3213.w);
            let x_3215 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3214.x, x_3215.y, x_3214.y, x_3214.z);
            let x_3217 : vec4<f32> = u_xlat12;
            let x_3220 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3223 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3217.x, x_3217.y, x_3217.x, x_3217.y) * vec4<f32>(x_3220.x, x_3220.y, x_3220.x, x_3220.y)) + vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3223.y));
            let x_3227 : vec4<f32> = u_xlat12;
            let x_3230 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3233 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3227.x, x_3227.y) * vec2<f32>(x_3230.x, x_3230.y)) + vec2<f32>(x_3233.w, x_3233.y));
            let x_3237 : f32 = u_xlat14.x;
            u_xlat15.x = x_3237;
            let x_3239 : vec4<f32> = u_xlat12;
            let x_3242 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3245 : vec4<f32> = u_xlat15;
            let x_3247 : vec2<f32> = ((vec2<f32>(x_3239.x, x_3239.y) * vec2<f32>(x_3242.x, x_3242.y)) + vec2<f32>(x_3245.x, x_3245.y));
            let x_3248 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3247.x, x_3247.y, x_3248.z, x_3248.w);
            let x_3251 : vec4<f32> = u_xlat13;
            let x_3253 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3251.x, x_3251.x, x_3251.x, x_3251.x) * x_3253);
            let x_3256 : vec4<f32> = u_xlat13;
            let x_3258 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3256.y, x_3256.y, x_3256.y, x_3256.y) * x_3258);
            let x_3261 : vec4<f32> = u_xlat13;
            let x_3263 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3261.z, x_3261.z, x_3261.z, x_3261.z) * x_3263);
            let x_3265 : vec4<f32> = u_xlat13;
            let x_3267 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3265.w, x_3265.w, x_3265.w, x_3265.w) * x_3267);
            let x_3270 : vec4<f32> = u_xlat18;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.x, x_3270.y);
            let x_3273 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec43;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat87 = x_3282;
            let x_3284 : vec4<f32> = u_xlat18;
            let x_3285 : vec2<f32> = vec2<f32>(x_3284.z, x_3284.w);
            let x_3287 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
            let x_3294 : vec3<f32> = txVec44;
            let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
            u_xlat88 = x_3296;
            let x_3297 : f32 = u_xlat88;
            let x_3299 : f32 = u_xlat23.y;
            u_xlat88 = (x_3297 * x_3299);
            let x_3302 : f32 = u_xlat23.x;
            let x_3303 : f32 = u_xlat87;
            let x_3305 : f32 = u_xlat88;
            u_xlat87 = ((x_3302 * x_3303) + x_3305);
            let x_3308 : vec2<f32> = u_xlat64;
            let x_3310 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec45;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat88 = x_3319;
            let x_3321 : f32 = u_xlat23.z;
            let x_3322 : f32 = u_xlat88;
            let x_3324 : f32 = u_xlat87;
            u_xlat87 = ((x_3321 * x_3322) + x_3324);
            let x_3327 : vec4<f32> = u_xlat21;
            let x_3328 : vec2<f32> = vec2<f32>(x_3327.x, x_3327.y);
            let x_3330 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec46;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat88 = x_3339;
            let x_3341 : f32 = u_xlat23.w;
            let x_3342 : f32 = u_xlat88;
            let x_3344 : f32 = u_xlat87;
            u_xlat87 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec4<f32> = u_xlat19;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.x, x_3347.y);
            let x_3350 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec47;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat88 = x_3359;
            let x_3361 : f32 = u_xlat24.x;
            let x_3362 : f32 = u_xlat88;
            let x_3364 : f32 = u_xlat87;
            u_xlat87 = ((x_3361 * x_3362) + x_3364);
            let x_3367 : vec4<f32> = u_xlat19;
            let x_3368 : vec2<f32> = vec2<f32>(x_3367.z, x_3367.w);
            let x_3370 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec48;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat88 = x_3379;
            let x_3381 : f32 = u_xlat24.y;
            let x_3382 : f32 = u_xlat88;
            let x_3384 : f32 = u_xlat87;
            u_xlat87 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec4<f32> = u_xlat20;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.x, x_3387.y);
            let x_3390 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec49;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat88 = x_3399;
            let x_3401 : f32 = u_xlat24.z;
            let x_3402 : f32 = u_xlat88;
            let x_3404 : f32 = u_xlat87;
            u_xlat87 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat21;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.z, x_3407.w);
            let x_3410 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec50;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat88 = x_3419;
            let x_3421 : f32 = u_xlat24.w;
            let x_3422 : f32 = u_xlat88;
            let x_3424 : f32 = u_xlat87;
            u_xlat87 = ((x_3421 * x_3422) + x_3424);
            let x_3427 : vec4<f32> = u_xlat22;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.x, x_3427.y);
            let x_3430 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3437 : vec3<f32> = txVec51;
            let x_3439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
            u_xlat88 = x_3439;
            let x_3441 : f32 = u_xlat25.x;
            let x_3442 : f32 = u_xlat88;
            let x_3444 : f32 = u_xlat87;
            u_xlat87 = ((x_3441 * x_3442) + x_3444);
            let x_3447 : vec4<f32> = u_xlat22;
            let x_3448 : vec2<f32> = vec2<f32>(x_3447.z, x_3447.w);
            let x_3450 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec52;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat88 = x_3459;
            let x_3461 : f32 = u_xlat25.y;
            let x_3462 : f32 = u_xlat88;
            let x_3464 : f32 = u_xlat87;
            u_xlat87 = ((x_3461 * x_3462) + x_3464);
            let x_3467 : vec2<f32> = u_xlat40;
            let x_3469 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec53;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat88 = x_3478;
            let x_3480 : f32 = u_xlat25.z;
            let x_3481 : f32 = u_xlat88;
            let x_3483 : f32 = u_xlat87;
            u_xlat87 = ((x_3480 * x_3481) + x_3483);
            let x_3486 : vec2<f32> = u_xlat72;
            let x_3488 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec54;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat88 = x_3497;
            let x_3499 : f32 = u_xlat25.w;
            let x_3500 : f32 = u_xlat88;
            let x_3502 : f32 = u_xlat87;
            u_xlat87 = ((x_3499 * x_3500) + x_3502);
            let x_3505 : vec4<f32> = u_xlat17;
            let x_3506 : vec2<f32> = vec2<f32>(x_3505.x, x_3505.y);
            let x_3508 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec55;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat88 = x_3517;
            let x_3519 : f32 = u_xlat13.x;
            let x_3520 : f32 = u_xlat88;
            let x_3522 : f32 = u_xlat87;
            u_xlat87 = ((x_3519 * x_3520) + x_3522);
            let x_3525 : vec4<f32> = u_xlat17;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.z, x_3525.w);
            let x_3528 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec56;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat88 = x_3537;
            let x_3539 : f32 = u_xlat13.y;
            let x_3540 : f32 = u_xlat88;
            let x_3542 : f32 = u_xlat87;
            u_xlat87 = ((x_3539 * x_3540) + x_3542);
            let x_3545 : vec2<f32> = u_xlat67;
            let x_3547 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3545.x, x_3545.y, x_3547);
            let x_3554 : vec3<f32> = txVec57;
            let x_3556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3554.xy, x_3554.z);
            u_xlat88 = x_3556;
            let x_3558 : f32 = u_xlat13.z;
            let x_3559 : f32 = u_xlat88;
            let x_3561 : f32 = u_xlat87;
            u_xlat87 = ((x_3558 * x_3559) + x_3561);
            let x_3564 : vec4<f32> = u_xlat12;
            let x_3565 : vec2<f32> = vec2<f32>(x_3564.x, x_3564.y);
            let x_3567 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
            let x_3574 : vec3<f32> = txVec58;
            let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
            u_xlat88 = x_3576;
            let x_3578 : f32 = u_xlat13.w;
            let x_3579 : f32 = u_xlat88;
            let x_3581 : f32 = u_xlat87;
            u_xlat85 = ((x_3578 * x_3579) + x_3581);
          }
        }
      } else {
        let x_3585 : vec4<f32> = u_xlat11;
        let x_3586 : vec2<f32> = vec2<f32>(x_3585.x, x_3585.y);
        let x_3588 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3586.x, x_3586.y, x_3588);
        let x_3595 : vec3<f32> = txVec59;
        let x_3597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3595.xy, x_3595.z);
        u_xlat85 = x_3597;
      }
      let x_3598 : i32 = u_xlati83;
      let x_3600 : f32 = x_83.x_AdditionalShadowParams[x_3598].x;
      u_xlat87 = (1.0f + -(x_3600));
      let x_3603 : f32 = u_xlat85;
      let x_3604 : i32 = u_xlati83;
      let x_3606 : f32 = x_83.x_AdditionalShadowParams[x_3604].x;
      let x_3608 : f32 = u_xlat87;
      u_xlat85 = ((x_3603 * x_3606) + x_3608);
      let x_3611 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3611);
      let x_3615 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3615 >= 1.0f);
      let x_3617 : bool = u_xlatb87;
      let x_3618 : bool = u_xlatb88;
      u_xlatb87 = (x_3617 | x_3618);
      let x_3620 : bool = u_xlatb87;
      let x_3621 : f32 = u_xlat85;
      u_xlat85 = select(x_3621, 1.0f, x_3620);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3624 : f32 = u_xlat85;
    u_xlat87 = (-(x_3624) + 1.0f);
    let x_3627 : f32 = u_xlat53;
    let x_3628 : f32 = u_xlat87;
    let x_3630 : f32 = u_xlat85;
    u_xlat85 = ((x_3627 * x_3628) + x_3630);
    let x_3633 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3633 & 31i)));
    let x_3637 : i32 = u_xlati87;
    let x_3640 : f32 = x_1731.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3637) & bitcast<u32>(x_3640)));
    let x_3644 : i32 = u_xlati87;
    if ((x_3644 != 0i)) {
      let x_3648 : i32 = u_xlati83;
      let x_3650 : f32 = x_1731.x_AdditionalLightsLightTypes[x_3648].el;
      u_xlati87 = i32(x_3650);
      let x_3653 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3653 != 0i));
      let x_3657 : i32 = u_xlati83;
      u_xlati11 = (x_3657 << bitcast<u32>(2i));
      let x_3659 : i32 = u_xlati88;
      if ((x_3659 != 0i)) {
        let x_3664 : vec3<f32> = vs_TEXCOORD7;
        let x_3666 : i32 = u_xlati11;
        let x_3669 : i32 = u_xlati11;
        let x_3673 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3666 + 1i) / 4i)][((x_3669 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3664.y, x_3664.y, x_3664.y) * vec3<f32>(x_3673.x, x_3673.y, x_3673.w));
        let x_3676 : i32 = u_xlati11;
        let x_3678 : i32 = u_xlati11;
        let x_3681 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[(x_3676 / 4i)][(x_3678 % 4i)];
        let x_3683 : vec3<f32> = vs_TEXCOORD7;
        let x_3686 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3681.x, x_3681.y, x_3681.w) * vec3<f32>(x_3683.x, x_3683.x, x_3683.x)) + x_3686);
        let x_3688 : i32 = u_xlati11;
        let x_3691 : i32 = u_xlati11;
        let x_3695 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3688 + 2i) / 4i)][((x_3691 + 2i) % 4i)];
        let x_3697 : vec3<f32> = vs_TEXCOORD7;
        let x_3700 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3695.x, x_3695.y, x_3695.w) * vec3<f32>(x_3697.z, x_3697.z, x_3697.z)) + x_3700);
        let x_3702 : vec3<f32> = u_xlat37;
        let x_3703 : i32 = u_xlati11;
        let x_3706 : i32 = u_xlati11;
        let x_3710 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3703 + 3i) / 4i)][((x_3706 + 3i) % 4i)];
        u_xlat37 = (x_3702 + vec3<f32>(x_3710.x, x_3710.y, x_3710.w));
        let x_3713 : vec3<f32> = u_xlat37;
        let x_3715 : vec3<f32> = u_xlat37;
        let x_3717 : vec2<f32> = (vec2<f32>(x_3713.x, x_3713.y) / vec2<f32>(x_3715.z, x_3715.z));
        let x_3718 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3717.x, x_3717.y, x_3718.z);
        let x_3720 : vec3<f32> = u_xlat37;
        let x_3723 : vec2<f32> = ((vec2<f32>(x_3720.x, x_3720.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3724 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3723.x, x_3723.y, x_3724.z);
        let x_3726 : vec3<f32> = u_xlat37;
        let x_3730 : vec2<f32> = clamp(vec2<f32>(x_3726.x, x_3726.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3731 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3730.x, x_3730.y, x_3731.z);
        let x_3733 : i32 = u_xlati83;
        let x_3735 : vec4<f32> = x_1731.x_AdditionalLightsCookieAtlasUVRects[x_3733];
        let x_3737 : vec3<f32> = u_xlat37;
        let x_3740 : i32 = u_xlati83;
        let x_3742 : vec4<f32> = x_1731.x_AdditionalLightsCookieAtlasUVRects[x_3740];
        let x_3744 : vec2<f32> = ((vec2<f32>(x_3735.x, x_3735.y) * vec2<f32>(x_3737.x, x_3737.y)) + vec2<f32>(x_3742.z, x_3742.w));
        let x_3745 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3744.x, x_3744.y, x_3745.z);
      } else {
        let x_3748 : i32 = u_xlati87;
        u_xlatb87 = (x_3748 == 1i);
        let x_3750 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3750);
        let x_3752 : i32 = u_xlati87;
        if ((x_3752 != 0i)) {
          let x_3756 : vec3<f32> = vs_TEXCOORD7;
          let x_3758 : i32 = u_xlati11;
          let x_3761 : i32 = u_xlati11;
          let x_3765 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3758 + 1i) / 4i)][((x_3761 + 1i) % 4i)];
          let x_3767 : vec2<f32> = (vec2<f32>(x_3756.y, x_3756.y) * vec2<f32>(x_3765.x, x_3765.y));
          let x_3768 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3767.x, x_3767.y, x_3768.z, x_3768.w);
          let x_3770 : i32 = u_xlati11;
          let x_3772 : i32 = u_xlati11;
          let x_3775 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[(x_3770 / 4i)][(x_3772 % 4i)];
          let x_3777 : vec3<f32> = vs_TEXCOORD7;
          let x_3780 : vec4<f32> = u_xlat12;
          let x_3782 : vec2<f32> = ((vec2<f32>(x_3775.x, x_3775.y) * vec2<f32>(x_3777.x, x_3777.x)) + vec2<f32>(x_3780.x, x_3780.y));
          let x_3783 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3782.x, x_3782.y, x_3783.z, x_3783.w);
          let x_3785 : i32 = u_xlati11;
          let x_3788 : i32 = u_xlati11;
          let x_3792 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3785 + 2i) / 4i)][((x_3788 + 2i) % 4i)];
          let x_3794 : vec3<f32> = vs_TEXCOORD7;
          let x_3797 : vec4<f32> = u_xlat12;
          let x_3799 : vec2<f32> = ((vec2<f32>(x_3792.x, x_3792.y) * vec2<f32>(x_3794.z, x_3794.z)) + vec2<f32>(x_3797.x, x_3797.y));
          let x_3800 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3799.x, x_3799.y, x_3800.z, x_3800.w);
          let x_3802 : vec4<f32> = u_xlat12;
          let x_3804 : i32 = u_xlati11;
          let x_3807 : i32 = u_xlati11;
          let x_3811 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3804 + 3i) / 4i)][((x_3807 + 3i) % 4i)];
          let x_3813 : vec2<f32> = (vec2<f32>(x_3802.x, x_3802.y) + vec2<f32>(x_3811.x, x_3811.y));
          let x_3814 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3813.x, x_3813.y, x_3814.z, x_3814.w);
          let x_3816 : vec4<f32> = u_xlat12;
          let x_3819 : vec2<f32> = ((vec2<f32>(x_3816.x, x_3816.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3819.x, x_3819.y, x_3820.z, x_3820.w);
          let x_3822 : vec4<f32> = u_xlat12;
          let x_3824 : vec2<f32> = fract(vec2<f32>(x_3822.x, x_3822.y));
          let x_3825 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3824.x, x_3824.y, x_3825.z, x_3825.w);
          let x_3827 : i32 = u_xlati83;
          let x_3829 : vec4<f32> = x_1731.x_AdditionalLightsCookieAtlasUVRects[x_3827];
          let x_3831 : vec4<f32> = u_xlat12;
          let x_3834 : i32 = u_xlati83;
          let x_3836 : vec4<f32> = x_1731.x_AdditionalLightsCookieAtlasUVRects[x_3834];
          let x_3838 : vec2<f32> = ((vec2<f32>(x_3829.x, x_3829.y) * vec2<f32>(x_3831.x, x_3831.y)) + vec2<f32>(x_3836.z, x_3836.w));
          let x_3839 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3838.x, x_3838.y, x_3839.z);
        } else {
          let x_3842 : vec3<f32> = vs_TEXCOORD7;
          let x_3844 : i32 = u_xlati11;
          let x_3847 : i32 = u_xlati11;
          let x_3851 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3844 + 1i) / 4i)][((x_3847 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3842.y, x_3842.y, x_3842.y, x_3842.y) * x_3851);
          let x_3853 : i32 = u_xlati11;
          let x_3855 : i32 = u_xlati11;
          let x_3858 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[(x_3853 / 4i)][(x_3855 % 4i)];
          let x_3859 : vec3<f32> = vs_TEXCOORD7;
          let x_3862 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3858 * vec4<f32>(x_3859.x, x_3859.x, x_3859.x, x_3859.x)) + x_3862);
          let x_3864 : i32 = u_xlati11;
          let x_3867 : i32 = u_xlati11;
          let x_3871 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3864 + 2i) / 4i)][((x_3867 + 2i) % 4i)];
          let x_3872 : vec3<f32> = vs_TEXCOORD7;
          let x_3875 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3871 * vec4<f32>(x_3872.z, x_3872.z, x_3872.z, x_3872.z)) + x_3875);
          let x_3877 : vec4<f32> = u_xlat12;
          let x_3878 : i32 = u_xlati11;
          let x_3881 : i32 = u_xlati11;
          let x_3885 : vec4<f32> = x_1731.x_AdditionalLightsWorldToLights[((x_3878 + 3i) / 4i)][((x_3881 + 3i) % 4i)];
          u_xlat12 = (x_3877 + x_3885);
          let x_3887 : vec4<f32> = u_xlat12;
          let x_3889 : vec4<f32> = u_xlat12;
          let x_3891 : vec3<f32> = (vec3<f32>(x_3887.x, x_3887.y, x_3887.z) / vec3<f32>(x_3889.w, x_3889.w, x_3889.w));
          let x_3892 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3891.x, x_3891.y, x_3891.z, x_3892.w);
          let x_3894 : vec4<f32> = u_xlat12;
          let x_3896 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3894.x, x_3894.y, x_3894.z), vec3<f32>(x_3896.x, x_3896.y, x_3896.z));
          let x_3899 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3899);
          let x_3901 : f32 = u_xlat87;
          let x_3903 : vec4<f32> = u_xlat12;
          let x_3905 : vec3<f32> = (vec3<f32>(x_3901, x_3901, x_3901) * vec3<f32>(x_3903.x, x_3903.y, x_3903.z));
          let x_3906 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3905.x, x_3905.y, x_3905.z, x_3906.w);
          let x_3908 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3908.x, x_3908.y, x_3908.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3913 : f32 = u_xlat87;
          u_xlat87 = max(x_3913, 0.00000099999999747524f);
          let x_3916 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3916);
          let x_3918 : f32 = u_xlat87;
          let x_3920 : vec4<f32> = u_xlat12;
          let x_3922 : vec3<f32> = (vec3<f32>(x_3918, x_3918, x_3918) * vec3<f32>(x_3920.z, x_3920.x, x_3920.y));
          let x_3923 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3922.x, x_3922.y, x_3922.z, x_3923.w);
          let x_3926 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3926);
          let x_3930 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3930, 0.0f, 1.0f);
          let x_3933 : vec4<f32> = u_xlat13;
          let x_3935 : vec4<bool> = (vec4<f32>(x_3933.y, x_3933.y, x_3933.y, x_3933.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3936 : vec2<bool> = vec2<bool>(x_3935.x, x_3935.w);
          let x_3937 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3936.x, x_3937.y, x_3937.z, x_3936.y);
          let x_3940 : bool = u_xlatb11.x;
          if (x_3940) {
            let x_3945 : f32 = u_xlat13.x;
            x_3941 = x_3945;
          } else {
            let x_3948 : f32 = u_xlat13.x;
            x_3941 = -(x_3948);
          }
          let x_3950 : f32 = x_3941;
          u_xlat11.x = x_3950;
          let x_3953 : bool = u_xlatb11.w;
          if (x_3953) {
            let x_3958 : f32 = u_xlat13.x;
            x_3954 = x_3958;
          } else {
            let x_3961 : f32 = u_xlat13.x;
            x_3954 = -(x_3961);
          }
          let x_3963 : f32 = x_3954;
          u_xlat11.w = x_3963;
          let x_3965 : vec4<f32> = u_xlat12;
          let x_3967 : f32 = u_xlat87;
          let x_3970 : vec4<f32> = u_xlat11;
          let x_3972 : vec2<f32> = ((vec2<f32>(x_3965.x, x_3965.y) * vec2<f32>(x_3967, x_3967)) + vec2<f32>(x_3970.x, x_3970.w));
          let x_3973 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3972.x, x_3973.y, x_3973.z, x_3972.y);
          let x_3975 : vec4<f32> = u_xlat11;
          let x_3978 : vec2<f32> = ((vec2<f32>(x_3975.x, x_3975.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3979 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3978.x, x_3979.y, x_3979.z, x_3978.y);
          let x_3981 : vec4<f32> = u_xlat11;
          let x_3985 : vec2<f32> = clamp(vec2<f32>(x_3981.x, x_3981.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3986 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3985.x, x_3986.y, x_3986.z, x_3985.y);
          let x_3988 : i32 = u_xlati83;
          let x_3990 : vec4<f32> = x_1731.x_AdditionalLightsCookieAtlasUVRects[x_3988];
          let x_3992 : vec4<f32> = u_xlat11;
          let x_3995 : i32 = u_xlati83;
          let x_3997 : vec4<f32> = x_1731.x_AdditionalLightsCookieAtlasUVRects[x_3995];
          let x_3999 : vec2<f32> = ((vec2<f32>(x_3990.x, x_3990.y) * vec2<f32>(x_3992.x, x_3992.w)) + vec2<f32>(x_3997.z, x_3997.w));
          let x_4000 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3999.x, x_3999.y, x_4000.z);
        }
      }
      let x_4007 : vec3<f32> = u_xlat37;
      let x_4009 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4007.x, x_4007.y), 0.0f);
      u_xlat11 = x_4009;
      let x_4011 : bool = u_xlatb7.y;
      if (x_4011) {
        let x_4016 : f32 = u_xlat11.w;
        x_4012 = x_4016;
      } else {
        let x_4019 : f32 = u_xlat11.x;
        x_4012 = x_4019;
      }
      let x_4020 : f32 = x_4012;
      u_xlat87 = x_4020;
      let x_4022 : bool = u_xlatb7.x;
      if (x_4022) {
        let x_4026 : vec4<f32> = u_xlat11;
        x_4023 = vec3<f32>(x_4026.x, x_4026.y, x_4026.z);
      } else {
        let x_4029 : f32 = u_xlat87;
        x_4023 = vec3<f32>(x_4029, x_4029, x_4029);
      }
      let x_4031 : vec3<f32> = x_4023;
      let x_4032 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4031.x, x_4031.y, x_4031.z, x_4032.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4038 : vec4<f32> = u_xlat11;
    let x_4040 : i32 = u_xlati83;
    let x_4042 : vec4<f32> = x_2207.x_AdditionalLightsColor[x_4040];
    let x_4044 : vec3<f32> = (vec3<f32>(x_4038.x, x_4038.y, x_4038.z) * vec3<f32>(x_4042.x, x_4042.y, x_4042.z));
    let x_4045 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
    let x_4047 : f32 = u_xlat84;
    let x_4048 : f32 = u_xlat85;
    u_xlat83 = (x_4047 * x_4048);
    let x_4050 : vec4<f32> = u_xlat2;
    let x_4052 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4050.x, x_4050.y, x_4050.z), vec3<f32>(x_4052.x, x_4052.y, x_4052.z));
    let x_4055 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4055, 0.0f, 1.0f);
    let x_4057 : f32 = u_xlat83;
    let x_4058 : f32 = u_xlat84;
    u_xlat83 = (x_4057 * x_4058);
    let x_4060 : f32 = u_xlat83;
    let x_4062 : vec4<f32> = u_xlat11;
    let x_4064 : vec3<f32> = (vec3<f32>(x_4060, x_4060, x_4060) * vec3<f32>(x_4062.x, x_4062.y, x_4062.z));
    let x_4065 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4064.x, x_4064.y, x_4064.z, x_4065.w);
    let x_4067 : vec4<f32> = u_xlat9;
    let x_4069 : f32 = u_xlat59;
    let x_4072 : vec4<f32> = u_xlat6;
    let x_4074 : vec3<f32> = ((vec3<f32>(x_4067.x, x_4067.y, x_4067.z) * vec3<f32>(x_4069, x_4069, x_4069)) + vec3<f32>(x_4072.x, x_4072.y, x_4072.z));
    let x_4075 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4074.x, x_4074.y, x_4074.z, x_4075.w);
    let x_4077 : vec4<f32> = u_xlat9;
    let x_4079 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4077.x, x_4077.y, x_4077.z), vec3<f32>(x_4079.x, x_4079.y, x_4079.z));
    let x_4082 : f32 = u_xlat83;
    u_xlat83 = max(x_4082, 1.17549435e-38f);
    let x_4084 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4084);
    let x_4086 : f32 = u_xlat83;
    let x_4088 : vec4<f32> = u_xlat9;
    let x_4090 : vec3<f32> = (vec3<f32>(x_4086, x_4086, x_4086) * vec3<f32>(x_4088.x, x_4088.y, x_4088.z));
    let x_4091 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
    let x_4093 : vec4<f32> = u_xlat2;
    let x_4095 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4093.x, x_4093.y, x_4093.z), vec3<f32>(x_4095.x, x_4095.y, x_4095.z));
    let x_4098 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4098, 0.0f, 1.0f);
    let x_4100 : vec4<f32> = u_xlat10;
    let x_4102 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4100.x, x_4100.y, x_4100.z), vec3<f32>(x_4102.x, x_4102.y, x_4102.z));
    let x_4105 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4105, 0.0f, 1.0f);
    let x_4107 : f32 = u_xlat83;
    let x_4108 : f32 = u_xlat83;
    u_xlat83 = (x_4107 * x_4108);
    let x_4110 : f32 = u_xlat83;
    let x_4112 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4110 * x_4112) + 1.00001001358032226562f);
    let x_4115 : f32 = u_xlat84;
    let x_4116 : f32 = u_xlat84;
    u_xlat84 = (x_4115 * x_4116);
    let x_4118 : f32 = u_xlat83;
    let x_4119 : f32 = u_xlat83;
    u_xlat83 = (x_4118 * x_4119);
    let x_4121 : f32 = u_xlat84;
    u_xlat84 = max(x_4121, 0.10000000149011611938f);
    let x_4123 : f32 = u_xlat83;
    let x_4124 : f32 = u_xlat84;
    u_xlat83 = (x_4123 * x_4124);
    let x_4126 : f32 = u_xlat81;
    let x_4127 : f32 = u_xlat83;
    u_xlat83 = (x_4126 * x_4127);
    let x_4129 : f32 = u_xlat82;
    let x_4130 : f32 = u_xlat83;
    u_xlat83 = (x_4129 / x_4130);
    let x_4132 : vec4<f32> = u_xlat0;
    let x_4134 : f32 = u_xlat83;
    let x_4137 : vec4<f32> = u_xlat4;
    let x_4139 : vec3<f32> = ((vec3<f32>(x_4132.x, x_4132.y, x_4132.z) * vec3<f32>(x_4134, x_4134, x_4134)) + vec3<f32>(x_4137.x, x_4137.y, x_4137.z));
    let x_4140 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4139.x, x_4139.y, x_4139.z, x_4140.w);
    let x_4142 : vec4<f32> = u_xlat9;
    let x_4144 : vec4<f32> = u_xlat11;
    let x_4147 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4142.x, x_4142.y, x_4142.z) * vec3<f32>(x_4144.x, x_4144.y, x_4144.z)) + x_4147);

    continuing {
      let x_4149 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4149 + bitcast<u32>(1i));
    }
  }
  let x_4151 : vec4<f32> = u_xlat5;
  let x_4153 : vec4<f32> = u_xlat1;
  let x_4156 : vec3<f32> = u_xlat3;
  let x_4157 : vec3<f32> = ((vec3<f32>(x_4151.x, x_4151.y, x_4151.z) * vec3<f32>(x_4153.x, x_4153.y, x_4153.w)) + x_4156);
  let x_4158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4157.x, x_4157.y, x_4157.z, x_4158.w);
  let x_4162 : vec3<f32> = u_xlat34;
  let x_4163 : vec4<f32> = u_xlat0;
  let x_4165 : vec3<f32> = (x_4162 + vec3<f32>(x_4163.x, x_4163.y, x_4163.z));
  let x_4166 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4165.x, x_4165.y, x_4165.z, x_4166.w);
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


