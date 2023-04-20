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

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat80 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_287 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_1625 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1805 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2065 : AdditionalLights;

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

var<private> u_xlatu81 : u32;

fn main_1() {
  var x_99 : vec3<f32>;
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
  var x_1709 : f32;
  var x_1720 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2204 : f32;
  var x_2215 : f32;
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
  var x_3834 : f32;
  var x_3847 : f32;
  var x_3905 : f32;
  var x_3916 : vec3<f32>;
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
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_64) + x_69);
  let x_72 : vec3<f32> = u_xlat2;
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(x_72, x_73);
  let x_75 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_75);
  let x_77 : f32 = u_xlat53;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_85 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_85;
  let x_89 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_89;
  let x_94 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_94;
  let x_97 : bool = u_xlatb27;
  if (x_97) {
    let x_102 : vec3<f32> = u_xlat2;
    x_99 = x_102;
  } else {
    let x_104 : vec4<f32> = u_xlat3;
    x_99 = vec3<f32>(x_104.x, x_104.y, x_104.z);
  }
  let x_106 : vec3<f32> = x_99;
  u_xlat27 = x_106;
  let x_108 : vec3<f32> = vs_TEXCOORD3;
  let x_109 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_108, x_109);
  let x_113 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_113);
  let x_116 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_123 : f32 = vs_TEXCOORD7.y;
  let x_125 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat80 = (x_123 * x_125);
  let x_128 : f32 = x_29.unity_MatrixV[0i].z;
  let x_130 : f32 = vs_TEXCOORD7.x;
  let x_132 : f32 = u_xlat80;
  u_xlat80 = ((x_128 * x_130) + x_132);
  let x_135 : f32 = x_29.unity_MatrixV[2i].z;
  let x_137 : f32 = vs_TEXCOORD7.z;
  let x_139 : f32 = u_xlat80;
  u_xlat80 = ((x_135 * x_137) + x_139);
  let x_141 : f32 = u_xlat80;
  let x_144 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat80 = (x_141 + x_144);
  let x_146 : f32 = u_xlat80;
  let x_150 : f32 = x_29.x_ProjectionParams.y;
  u_xlat80 = (-(x_146) + -(x_150));
  let x_153 : f32 = u_xlat80;
  u_xlat80 = max(x_153, 0.0f);
  let x_155 : f32 = u_xlat80;
  let x_158 : f32 = x_29.unity_FogParams.x;
  u_xlat80 = (x_155 * x_158);
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_29.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat3 = x_169;
  let x_175 : vec4<f32> = vs_TEXCOORD0;
  let x_178 : f32 = x_29.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat4 = vec3<f32>(x_179.x, x_179.y, x_179.z);
  let x_181 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_188, vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : f32 = u_xlat3.x;
  u_xlat3.x = (x_194 + 0.5f);
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * x_200);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_206 : f32 = u_xlat3.w;
  u_xlat81 = max(x_206, 0.00009999999747378752f);
  let x_209 : vec4<f32> = u_xlat3;
  let x_211 : f32 = u_xlat81;
  let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) / vec3<f32>(x_211, x_211, x_211));
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : f32 = u_xlat1;
  u_xlat81 = ((-(x_216) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_221 : f32 = u_xlat81;
  u_xlat4.x = (-(x_221) + 1.0f);
  let x_227 : vec4<f32> = u_xlat0;
  let x_229 : f32 = u_xlat81;
  u_xlat30 = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229, x_229, x_229));
  let x_232 : vec4<f32> = u_xlat0;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : f32 = u_xlat1;
  let x_241 : vec4<f32> = u_xlat0;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_250) + 1.0f);
  let x_253 : f32 = u_xlat1;
  let x_254 : f32 = u_xlat1;
  u_xlat81 = (x_253 * x_254);
  let x_256 : f32 = u_xlat81;
  u_xlat81 = max(x_256, 0.0078125f);
  let x_260 : f32 = u_xlat81;
  let x_261 : f32 = u_xlat81;
  u_xlat5 = (x_260 * x_261);
  let x_265 : f32 = u_xlat0.w;
  let x_267 : f32 = u_xlat4.x;
  u_xlat78 = (x_265 + x_267);
  let x_269 : f32 = u_xlat78;
  u_xlat78 = clamp(x_269, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat81;
  u_xlat4.x = ((x_271 * 4.0f) + 2.0f);
  let x_290 : f32 = x_287.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_290);
  let x_294 : bool = u_xlatb31.x;
  if (x_294) {
    let x_298 : f32 = x_287.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_298 == 1.0f);
    let x_302 : bool = u_xlatb31.x;
    if (x_302) {
      let x_307 : vec4<f32> = vs_TEXCOORD8;
      let x_311 : vec4<f32> = x_287.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_307.x, x_307.y, x_307.x, x_307.y) + x_311);
      let x_314 : vec4<f32> = u_xlat6;
      let x_315 : vec2<f32> = vec2<f32>(x_314.x, x_314.y);
      let x_317 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_315.x, x_315.y, x_317);
      let x_330 : vec3<f32> = txVec0;
      let x_332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_330.xy, x_330.z);
      u_xlat7.x = x_332;
      let x_335 : vec4<f32> = u_xlat6;
      let x_336 : vec2<f32> = vec2<f32>(x_335.z, x_335.w);
      let x_338 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_336.x, x_336.y, x_338);
      let x_345 : vec3<f32> = txVec1;
      let x_347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_345.xy, x_345.z);
      u_xlat7.y = x_347;
      let x_349 : vec4<f32> = vs_TEXCOORD8;
      let x_352 : vec4<f32> = x_287.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_349.x, x_349.y, x_349.x, x_349.y) + x_352);
      let x_355 : vec4<f32> = u_xlat6;
      let x_356 : vec2<f32> = vec2<f32>(x_355.x, x_355.y);
      let x_358 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_356.x, x_356.y, x_358);
      let x_365 : vec3<f32> = txVec2;
      let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_365.xy, x_365.z);
      u_xlat7.z = x_367;
      let x_370 : vec4<f32> = u_xlat6;
      let x_371 : vec2<f32> = vec2<f32>(x_370.z, x_370.w);
      let x_373 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_371.x, x_371.y, x_373);
      let x_380 : vec3<f32> = txVec3;
      let x_382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_380.xy, x_380.z);
      u_xlat7.w = x_382;
      let x_385 : vec4<f32> = u_xlat7;
      u_xlat31 = dot(x_385, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_392 : f32 = x_287.x_MainLightShadowParams.y;
      u_xlatb57 = (x_392 == 2.0f);
      let x_394 : bool = u_xlatb57;
      if (x_394) {
        let x_399 : vec4<f32> = vs_TEXCOORD8;
        let x_402 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.z, x_402.w)) + vec2<f32>(0.5f, 0.5f));
        let x_407 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_407);
        let x_409 : vec4<f32> = vs_TEXCOORD8;
        let x_412 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_415 : vec2<f32> = u_xlat57;
        let x_417 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412.z, x_412.w)) + -(x_415));
        let x_418 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_420 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_420.x, x_420.x, x_420.y, x_420.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_425 : vec4<f32> = u_xlat7;
        let x_427 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_425.x, x_425.x, x_425.z, x_425.z) * vec4<f32>(x_427.x, x_427.x, x_427.z, x_427.z));
        let x_431 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_431.y, x_431.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_436 : vec4<f32> = u_xlat8;
        let x_439 : vec4<f32> = u_xlat6;
        let x_442 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_439.x, x_439.y)));
        let x_443 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_442.x, x_443.y, x_442.y, x_443.w);
        let x_445 : vec4<f32> = u_xlat6;
        let x_449 : vec2<f32> = (-(vec2<f32>(x_445.x, x_445.y)) + vec2<f32>(1.0f, 1.0f));
        let x_450 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_453 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_453.x, x_453.y), vec2<f32>(0.0f, 0.0f));
        let x_457 : vec2<f32> = u_xlat60;
        let x_459 : vec2<f32> = u_xlat60;
        let x_461 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_457) * x_459) + vec2<f32>(x_461.x, x_461.y));
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec2<f32> = max(vec2<f32>(x_464.x, x_464.y), vec2<f32>(0.0f, 0.0f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec4<f32> = u_xlat6;
        let x_472 : vec4<f32> = u_xlat6;
        let x_475 : vec4<f32> = u_xlat7;
        let x_477 : vec2<f32> = ((-(vec2<f32>(x_469.x, x_469.y)) * vec2<f32>(x_472.x, x_472.y)) + vec2<f32>(x_475.y, x_475.w));
        let x_478 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_480 + vec2<f32>(1.0f, 1.0f));
        let x_482 : vec4<f32> = u_xlat6;
        let x_484 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) + vec2<f32>(1.0f, 1.0f));
        let x_485 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec4<f32> = u_xlat7;
        let x_492 : vec2<f32> = (vec2<f32>(x_488.x, x_488.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_493 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_496 : vec4<f32> = u_xlat8;
        let x_498 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_499 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
        let x_501 : vec2<f32> = u_xlat60;
        let x_502 : vec2<f32> = (x_501 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_503 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_506 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_509 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat7;
        let x_513 : vec2<f32> = (vec2<f32>(x_511.y, x_511.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_514 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_517 : f32 = u_xlat8.x;
        u_xlat9.z = x_517;
        let x_520 : f32 = u_xlat6.x;
        u_xlat9.w = x_520;
        let x_523 : f32 = u_xlat11.x;
        u_xlat10.z = x_523;
        let x_526 : f32 = u_xlat58.x;
        u_xlat10.w = x_526;
        let x_528 : vec4<f32> = u_xlat9;
        let x_530 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_528.z, x_528.w, x_528.x, x_528.z) + vec4<f32>(x_530.z, x_530.w, x_530.x, x_530.z));
        let x_534 : f32 = u_xlat9.y;
        u_xlat8.z = x_534;
        let x_537 : f32 = u_xlat6.y;
        u_xlat8.w = x_537;
        let x_540 : f32 = u_xlat10.y;
        u_xlat11.z = x_540;
        let x_543 : f32 = u_xlat58.y;
        u_xlat11.w = x_543;
        let x_545 : vec4<f32> = u_xlat8;
        let x_547 : vec4<f32> = u_xlat11;
        let x_549 : vec3<f32> = (vec3<f32>(x_545.z, x_545.y, x_545.w) + vec3<f32>(x_547.z, x_547.y, x_547.w));
        let x_550 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat10;
        let x_554 : vec4<f32> = u_xlat7;
        let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.z, x_552.w) / vec3<f32>(x_554.z, x_554.w, x_554.y));
        let x_557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat8;
        let x_564 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_565 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat11;
        let x_569 : vec4<f32> = u_xlat6;
        let x_571 : vec3<f32> = (vec3<f32>(x_567.z, x_567.y, x_567.w) / vec3<f32>(x_569.x, x_569.y, x_569.z));
        let x_572 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat9;
        let x_576 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat8;
        let x_582 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_584 : vec3<f32> = (vec3<f32>(x_579.y, x_579.x, x_579.z) * vec3<f32>(x_582.x, x_582.x, x_582.x));
        let x_585 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat9;
        let x_590 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_592 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_590.y, x_590.y, x_590.y));
        let x_593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_596 : f32 = u_xlat9.x;
        u_xlat8.w = x_596;
        let x_598 : vec2<f32> = u_xlat57;
        let x_601 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) * vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y)) + vec4<f32>(x_604.y, x_604.w, x_604.x, x_604.w));
        let x_607 : vec2<f32> = u_xlat57;
        let x_609 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_612 : vec4<f32> = u_xlat8;
        let x_614 : vec2<f32> = ((x_607 * vec2<f32>(x_609.x, x_609.y)) + vec2<f32>(x_612.z, x_612.w));
        let x_615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_618 : f32 = u_xlat8.y;
        u_xlat9.w = x_618;
        let x_620 : vec4<f32> = u_xlat9;
        let x_621 : vec2<f32> = vec2<f32>(x_620.y, x_620.z);
        let x_622 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_622.x, x_621.x, x_622.z, x_621.y);
        let x_625 : vec2<f32> = u_xlat57;
        let x_628 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.y));
        let x_634 : vec2<f32> = u_xlat57;
        let x_637 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.w, x_640.y, x_640.w, x_640.z));
        let x_643 : vec2<f32> = u_xlat57;
        let x_646 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.w, x_649.z, x_649.w));
        let x_653 : vec4<f32> = u_xlat6;
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_653.x, x_653.x, x_653.x, x_653.y) * vec4<f32>(x_655.z, x_655.w, x_655.y, x_655.z));
        let x_659 : vec4<f32> = u_xlat6;
        let x_661 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_659.y, x_659.y, x_659.z, x_659.z) * x_661);
        let x_664 : f32 = u_xlat6.z;
        let x_666 : f32 = u_xlat7.y;
        u_xlat57.x = (x_664 * x_666);
        let x_670 : vec4<f32> = u_xlat10;
        let x_671 : vec2<f32> = vec2<f32>(x_670.x, x_670.y);
        let x_673 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_671.x, x_671.y, x_673);
        let x_681 : vec3<f32> = txVec4;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
        u_xlat83 = x_683;
        let x_685 : vec4<f32> = u_xlat10;
        let x_686 : vec2<f32> = vec2<f32>(x_685.z, x_685.w);
        let x_688 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_686.x, x_686.y, x_688);
        let x_695 : vec3<f32> = txVec5;
        let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_695.xy, x_695.z);
        u_xlat6.x = x_697;
        let x_700 : f32 = u_xlat6.x;
        let x_702 : f32 = u_xlat13.y;
        u_xlat6.x = (x_700 * x_702);
        let x_706 : f32 = u_xlat13.x;
        let x_707 : f32 = u_xlat83;
        let x_710 : f32 = u_xlat6.x;
        u_xlat83 = ((x_706 * x_707) + x_710);
        let x_713 : vec4<f32> = u_xlat11;
        let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
        let x_716 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec6;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
        u_xlat6.x = x_725;
        let x_728 : f32 = u_xlat13.z;
        let x_730 : f32 = u_xlat6.x;
        let x_732 : f32 = u_xlat83;
        u_xlat83 = ((x_728 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat9;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec7;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
        u_xlat6.x = x_747;
        let x_750 : f32 = u_xlat13.w;
        let x_752 : f32 = u_xlat6.x;
        let x_754 : f32 = u_xlat83;
        u_xlat83 = ((x_750 * x_752) + x_754);
        let x_757 : vec4<f32> = u_xlat12;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec8;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_767.xy, x_767.z);
        u_xlat6.x = x_769;
        let x_772 : f32 = u_xlat14.x;
        let x_774 : f32 = u_xlat6.x;
        let x_776 : f32 = u_xlat83;
        u_xlat83 = ((x_772 * x_774) + x_776);
        let x_779 : vec4<f32> = u_xlat12;
        let x_780 : vec2<f32> = vec2<f32>(x_779.z, x_779.w);
        let x_782 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec9;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_789.xy, x_789.z);
        u_xlat6.x = x_791;
        let x_794 : f32 = u_xlat14.y;
        let x_796 : f32 = u_xlat6.x;
        let x_798 : f32 = u_xlat83;
        u_xlat83 = ((x_794 * x_796) + x_798);
        let x_801 : vec4<f32> = u_xlat9;
        let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
        let x_804 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec10;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_811.xy, x_811.z);
        u_xlat6.x = x_813;
        let x_816 : f32 = u_xlat14.z;
        let x_818 : f32 = u_xlat6.x;
        let x_820 : f32 = u_xlat83;
        u_xlat83 = ((x_816 * x_818) + x_820);
        let x_823 : vec4<f32> = u_xlat8;
        let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
        let x_826 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_833 : vec3<f32> = txVec11;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat6.x = x_835;
        let x_838 : f32 = u_xlat14.w;
        let x_840 : f32 = u_xlat6.x;
        let x_842 : f32 = u_xlat83;
        u_xlat83 = ((x_838 * x_840) + x_842);
        let x_845 : vec4<f32> = u_xlat8;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec12;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
        u_xlat6.x = x_857;
        let x_860 : f32 = u_xlat57.x;
        let x_862 : f32 = u_xlat6.x;
        let x_864 : f32 = u_xlat83;
        u_xlat31 = ((x_860 * x_862) + x_864);
      } else {
        let x_867 : vec4<f32> = vs_TEXCOORD8;
        let x_870 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.z, x_870.w)) + vec2<f32>(0.5f, 0.5f));
        let x_874 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_874);
        let x_876 : vec4<f32> = vs_TEXCOORD8;
        let x_879 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_882 : vec2<f32> = u_xlat57;
        let x_884 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_879.z, x_879.w)) + -(x_882));
        let x_885 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_887 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_887.x, x_887.x, x_887.y, x_887.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_890 : vec4<f32> = u_xlat7;
        let x_892 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_890.x, x_890.x, x_890.z, x_890.z) * vec4<f32>(x_892.x, x_892.x, x_892.z, x_892.z));
        let x_895 : vec4<f32> = u_xlat8;
        let x_899 : vec2<f32> = (vec2<f32>(x_895.y, x_895.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_900.x, x_899.x, x_900.z, x_899.y);
        let x_902 : vec4<f32> = u_xlat8;
        let x_905 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_902.x, x_902.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_905.x, x_905.y)));
        let x_909 : vec4<f32> = u_xlat6;
        let x_912 : vec2<f32> = (-(vec2<f32>(x_909.x, x_909.y)) + vec2<f32>(1.0f, 1.0f));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_913.y, x_912.y, x_913.w);
        let x_915 : vec4<f32> = u_xlat6;
        let x_917 : vec2<f32> = min(vec2<f32>(x_915.x, x_915.y), vec2<f32>(0.0f, 0.0f));
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_920 : vec4<f32> = u_xlat8;
        let x_923 : vec4<f32> = u_xlat8;
        let x_926 : vec4<f32> = u_xlat7;
        let x_928 : vec2<f32> = ((-(vec2<f32>(x_920.x, x_920.y)) * vec2<f32>(x_923.x, x_923.y)) + vec2<f32>(x_926.x, x_926.z));
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_928.x, x_929.y, x_928.y, x_929.w);
        let x_931 : vec4<f32> = u_xlat6;
        let x_933 : vec2<f32> = max(vec2<f32>(x_931.x, x_931.y), vec2<f32>(0.0f, 0.0f));
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat8;
        let x_939 : vec4<f32> = u_xlat8;
        let x_942 : vec4<f32> = u_xlat7;
        let x_944 : vec2<f32> = ((-(vec2<f32>(x_936.x, x_936.y)) * vec2<f32>(x_939.x, x_939.y)) + vec2<f32>(x_942.y, x_942.w));
        let x_945 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_945.x, x_944.x, x_945.z, x_944.y);
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_947 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_951 : f32 = u_xlat7.y;
        u_xlat8.z = (x_951 * 0.08163200318813323975f);
        let x_955 : vec2<f32> = u_xlat58;
        let x_958 : vec2<f32> = (vec2<f32>(x_955.y, x_955.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_961.x, x_961.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_965 : f32 = u_xlat7.w;
        u_xlat10.z = (x_965 * 0.08163200318813323975f);
        let x_969 : f32 = u_xlat10.y;
        u_xlat8.x = x_969;
        let x_971 : vec4<f32> = u_xlat6;
        let x_978 : vec2<f32> = ((vec2<f32>(x_971.x, x_971.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec4<f32> = u_xlat6;
        let x_985 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_986 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_985.x, x_986.y, x_985.y, x_986.w);
        let x_989 : f32 = u_xlat58.x;
        u_xlat7.y = x_989;
        let x_992 : f32 = u_xlat9.y;
        u_xlat7.w = x_992;
        let x_994 : vec4<f32> = u_xlat7;
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_994 + x_995);
        let x_997 : vec4<f32> = u_xlat6;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_997.y, x_997.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1003.y, x_1003.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1010 : f32 = u_xlat58.y;
        u_xlat9.y = x_1010;
        let x_1012 : vec4<f32> = u_xlat9;
        let x_1013 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1012 + x_1013);
        let x_1015 : vec4<f32> = u_xlat7;
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1015 / x_1016);
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1018 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1024 : vec4<f32> = u_xlat9;
        let x_1025 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1024 / x_1025);
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1027 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1029 : vec4<f32> = u_xlat7;
        let x_1032 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1029.w, x_1029.x, x_1029.y, x_1029.z) * vec4<f32>(x_1032.x, x_1032.x, x_1032.x, x_1032.x));
        let x_1035 : vec4<f32> = u_xlat9;
        let x_1038 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1035.x, x_1035.w, x_1035.y, x_1035.z) * vec4<f32>(x_1038.y, x_1038.y, x_1038.y, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec3<f32> = vec3<f32>(x_1041.y, x_1041.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1042.z);
        let x_1046 : f32 = u_xlat9.x;
        u_xlat10.y = x_1046;
        let x_1048 : vec2<f32> = u_xlat57;
        let x_1051 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1057 : vec2<f32> = u_xlat57;
        let x_1059 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1062 : vec4<f32> = u_xlat10;
        let x_1064 : vec2<f32> = ((x_1057 * vec2<f32>(x_1059.x, x_1059.y)) + vec2<f32>(x_1062.w, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1068 : f32 = u_xlat10.y;
        u_xlat7.y = x_1068;
        let x_1071 : f32 = u_xlat9.z;
        u_xlat10.y = x_1071;
        let x_1073 : vec2<f32> = u_xlat57;
        let x_1076 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.y));
        let x_1083 : vec2<f32> = u_xlat57;
        let x_1085 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1083 * vec2<f32>(x_1085.x, x_1085.y)) + vec2<f32>(x_1088.w, x_1088.y));
        let x_1092 : f32 = u_xlat10.y;
        u_xlat7.z = x_1092;
        let x_1094 : vec2<f32> = u_xlat57;
        let x_1097 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.z));
        let x_1104 : f32 = u_xlat9.w;
        u_xlat10.y = x_1104;
        let x_1107 : vec2<f32> = u_xlat57;
        let x_1110 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1113.y));
        let x_1117 : vec2<f32> = u_xlat57;
        let x_1119 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1117 * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1126 : f32 = u_xlat10.y;
        u_xlat7.w = x_1126;
        let x_1129 : vec2<f32> = u_xlat57;
        let x_1131 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1136 : vec2<f32> = ((x_1129 * vec2<f32>(x_1131.x, x_1131.y)) + vec2<f32>(x_1134.x, x_1134.w));
        let x_1137 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat10;
        let x_1140 : vec3<f32> = vec3<f32>(x_1139.x, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1140.z);
        let x_1143 : vec2<f32> = u_xlat57;
        let x_1146 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y) * vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y)) + vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1149.y));
        let x_1153 : vec2<f32> = u_xlat57;
        let x_1155 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1153 * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.w, x_1158.y));
        let x_1162 : f32 = u_xlat7.x;
        u_xlat9.x = x_1162;
        let x_1164 : vec2<f32> = u_xlat57;
        let x_1166 : vec4<f32> = x_287.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1164 * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.x, x_1169.y));
        let x_1173 : vec4<f32> = u_xlat6;
        let x_1175 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.x, x_1173.x) * x_1175);
        let x_1178 : vec4<f32> = u_xlat6;
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1178.y, x_1178.y, x_1178.y, x_1178.y) * x_1180);
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1183.z, x_1183.z, x_1183.z, x_1183.z) * x_1185);
        let x_1187 : vec4<f32> = u_xlat6;
        let x_1189 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1187.w, x_1187.w, x_1187.w, x_1187.w) * x_1189);
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.x, x_1192.y);
        let x_1195 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec13;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1202.xy, x_1202.z);
        u_xlat7.x = x_1204;
        let x_1207 : vec4<f32> = u_xlat11;
        let x_1208 : vec2<f32> = vec2<f32>(x_1207.z, x_1207.w);
        let x_1210 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1208.x, x_1208.y, x_1210);
        let x_1218 : vec3<f32> = txVec14;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat85 = x_1220;
        let x_1221 : f32 = u_xlat85;
        let x_1223 : f32 = u_xlat17.y;
        u_xlat85 = (x_1221 * x_1223);
        let x_1226 : f32 = u_xlat17.x;
        let x_1228 : f32 = u_xlat7.x;
        let x_1230 : f32 = u_xlat85;
        u_xlat7.x = ((x_1226 * x_1228) + x_1230);
        let x_1234 : vec4<f32> = u_xlat12;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec15;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1244.xy, x_1244.z);
        u_xlat85 = x_1246;
        let x_1248 : f32 = u_xlat17.z;
        let x_1249 : f32 = u_xlat85;
        let x_1252 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1248 * x_1249) + x_1252);
        let x_1256 : vec4<f32> = u_xlat14;
        let x_1257 : vec2<f32> = vec2<f32>(x_1256.x, x_1256.y);
        let x_1259 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
        let x_1266 : vec3<f32> = txVec16;
        let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
        u_xlat85 = x_1268;
        let x_1270 : f32 = u_xlat17.w;
        let x_1271 : f32 = u_xlat85;
        let x_1274 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1270 * x_1271) + x_1274);
        let x_1278 : vec4<f32> = u_xlat13;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec17;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat85 = x_1290;
        let x_1292 : f32 = u_xlat18.x;
        let x_1293 : f32 = u_xlat85;
        let x_1296 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1292 * x_1293) + x_1296);
        let x_1300 : vec4<f32> = u_xlat13;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.z, x_1300.w);
        let x_1303 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec18;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat85 = x_1312;
        let x_1314 : f32 = u_xlat18.y;
        let x_1315 : f32 = u_xlat85;
        let x_1318 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1314 * x_1315) + x_1318);
        let x_1322 : vec2<f32> = u_xlat64;
        let x_1324 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec19;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat85 = x_1333;
        let x_1335 : f32 = u_xlat18.z;
        let x_1336 : f32 = u_xlat85;
        let x_1339 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1335 * x_1336) + x_1339);
        let x_1343 : vec4<f32> = u_xlat14;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.z, x_1343.w);
        let x_1346 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec20;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1353.xy, x_1353.z);
        u_xlat85 = x_1355;
        let x_1357 : f32 = u_xlat18.w;
        let x_1358 : f32 = u_xlat85;
        let x_1361 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1357 * x_1358) + x_1361);
        let x_1365 : vec4<f32> = u_xlat15;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.x, x_1365.y);
        let x_1368 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec21;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat85 = x_1377;
        let x_1379 : f32 = u_xlat19.x;
        let x_1380 : f32 = u_xlat85;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1379 * x_1380) + x_1383);
        let x_1387 : vec4<f32> = u_xlat15;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.z, x_1387.w);
        let x_1390 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec22;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat85 = x_1399;
        let x_1401 : f32 = u_xlat19.y;
        let x_1402 : f32 = u_xlat85;
        let x_1405 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1401 * x_1402) + x_1405);
        let x_1409 : vec2<f32> = u_xlat33;
        let x_1411 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec23;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat33.x = x_1420;
        let x_1423 : f32 = u_xlat19.z;
        let x_1425 : f32 = u_xlat33.x;
        let x_1428 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1423 * x_1425) + x_1428);
        let x_1432 : vec4<f32> = u_xlat16;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec24;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat33.x = x_1444;
        let x_1447 : f32 = u_xlat19.w;
        let x_1449 : f32 = u_xlat33.x;
        let x_1452 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1447 * x_1449) + x_1452);
        let x_1456 : vec4<f32> = u_xlat10;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec25;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat33.x = x_1468;
        let x_1471 : f32 = u_xlat6.x;
        let x_1473 : f32 = u_xlat33.x;
        let x_1476 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1471 * x_1473) + x_1476);
        let x_1480 : vec4<f32> = u_xlat10;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.z, x_1480.w);
        let x_1483 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec26;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat7.x = x_1492;
        let x_1495 : f32 = u_xlat6.y;
        let x_1497 : f32 = u_xlat7.x;
        let x_1500 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1495 * x_1497) + x_1500);
        let x_1504 : vec2<f32> = u_xlat61;
        let x_1506 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1514 : vec3<f32> = txVec27;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat32 = x_1516;
        let x_1518 : f32 = u_xlat6.z;
        let x_1519 : f32 = u_xlat32;
        let x_1522 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1518 * x_1519) + x_1522);
        let x_1526 : vec2<f32> = u_xlat57;
        let x_1528 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec28;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat57.x = x_1537;
        let x_1540 : f32 = u_xlat6.w;
        let x_1542 : f32 = u_xlat57.x;
        let x_1545 : f32 = u_xlat6.x;
        u_xlat31 = ((x_1540 * x_1542) + x_1545);
      }
    }
  } else {
    let x_1549 : vec4<f32> = vs_TEXCOORD8;
    let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
    let x_1552 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
    let x_1559 : vec3<f32> = txVec29;
    let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
    u_xlat31 = x_1561;
  }
  let x_1563 : f32 = x_287.x_MainLightShadowParams.x;
  u_xlat57.x = (-(x_1563) + 1.0f);
  let x_1567 : f32 = u_xlat31;
  let x_1569 : f32 = x_287.x_MainLightShadowParams.x;
  let x_1572 : f32 = u_xlat57.x;
  u_xlat31 = ((x_1567 * x_1569) + x_1572);
  let x_1575 : f32 = vs_TEXCOORD8.z;
  u_xlatb57 = (0.0f >= x_1575);
  let x_1579 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (x_1579 >= 1.0f);
  let x_1581 : bool = u_xlatb83;
  let x_1582 : bool = u_xlatb57;
  u_xlatb57 = (x_1581 | x_1582);
  let x_1584 : bool = u_xlatb57;
  let x_1585 : f32 = u_xlat31;
  u_xlat31 = select(x_1585, 1.0f, x_1584);
  let x_1587 : vec3<f32> = vs_TEXCOORD7;
  let x_1589 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1591 : vec3<f32> = (x_1587 + -(x_1589));
  let x_1592 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
  let x_1594 : vec4<f32> = u_xlat6;
  let x_1596 : vec4<f32> = u_xlat6;
  u_xlat57.x = dot(vec3<f32>(x_1594.x, x_1594.y, x_1594.z), vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1601 : f32 = u_xlat57.x;
  let x_1603 : f32 = x_287.x_MainLightShadowParams.z;
  let x_1606 : f32 = x_287.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1601 * x_1603) + x_1606);
  let x_1608 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1608, 0.0f, 1.0f);
  let x_1610 : f32 = u_xlat31;
  u_xlat6.x = (-(x_1610) + 1.0f);
  let x_1614 : f32 = u_xlat83;
  let x_1616 : f32 = u_xlat6.x;
  let x_1618 : f32 = u_xlat31;
  u_xlat31 = ((x_1614 * x_1616) + x_1618);
  let x_1627 : f32 = x_1625.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1627 == -1.0f));
  let x_1630 : bool = u_xlatb83;
  if (x_1630) {
    let x_1633 : vec3<f32> = vs_TEXCOORD7;
    let x_1636 : vec4<f32> = x_1625.x_MainLightWorldToLight[1i];
    let x_1638 : vec2<f32> = (vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(x_1636.x, x_1636.y));
    let x_1639 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
    let x_1642 : vec4<f32> = x_1625.x_MainLightWorldToLight[0i];
    let x_1644 : vec3<f32> = vs_TEXCOORD7;
    let x_1647 : vec4<f32> = u_xlat6;
    let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1644.x, x_1644.x)) + vec2<f32>(x_1647.x, x_1647.y));
    let x_1650 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1649.x, x_1649.y, x_1650.z, x_1650.w);
    let x_1653 : vec4<f32> = x_1625.x_MainLightWorldToLight[2i];
    let x_1655 : vec3<f32> = vs_TEXCOORD7;
    let x_1658 : vec4<f32> = u_xlat6;
    let x_1660 : vec2<f32> = ((vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(x_1655.z, x_1655.z)) + vec2<f32>(x_1658.x, x_1658.y));
    let x_1661 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
    let x_1663 : vec4<f32> = u_xlat6;
    let x_1666 : vec4<f32> = x_1625.x_MainLightWorldToLight[3i];
    let x_1668 : vec2<f32> = (vec2<f32>(x_1663.x, x_1663.y) + vec2<f32>(x_1666.x, x_1666.y));
    let x_1669 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1668.x, x_1668.y, x_1669.z, x_1669.w);
    let x_1671 : vec4<f32> = u_xlat6;
    let x_1674 : vec2<f32> = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1675 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1674.x, x_1674.y, x_1675.z, x_1675.w);
    let x_1682 : vec4<f32> = u_xlat6;
    let x_1685 : f32 = x_29.x_GlobalMipBias.x;
    let x_1686 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1682.x, x_1682.y), x_1685);
    u_xlat6 = x_1686;
    let x_1689 : f32 = x_1625.x_MainLightCookieTextureFormat;
    let x_1691 : f32 = x_1625.x_MainLightCookieTextureFormat;
    let x_1693 : f32 = x_1625.x_MainLightCookieTextureFormat;
    let x_1695 : f32 = x_1625.x_MainLightCookieTextureFormat;
    let x_1696 : vec4<f32> = vec4<f32>(x_1689, x_1691, x_1693, x_1695);
    let x_1704 : vec4<bool> = (vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1704.x, x_1704.y);
    let x_1707 : bool = u_xlatb7.y;
    if (x_1707) {
      let x_1713 : f32 = u_xlat6.w;
      x_1709 = x_1713;
    } else {
      let x_1716 : f32 = u_xlat6.x;
      x_1709 = x_1716;
    }
    let x_1717 : f32 = x_1709;
    u_xlat83 = x_1717;
    let x_1719 : bool = u_xlatb7.x;
    if (x_1719) {
      let x_1723 : vec4<f32> = u_xlat6;
      x_1720 = vec3<f32>(x_1723.x, x_1723.y, x_1723.z);
    } else {
      let x_1726 : f32 = u_xlat83;
      x_1720 = vec3<f32>(x_1726, x_1726, x_1726);
    }
    let x_1728 : vec3<f32> = x_1720;
    let x_1729 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1735 : vec4<f32> = u_xlat6;
  let x_1738 : vec4<f32> = x_29.x_MainLightColor;
  let x_1740 : vec3<f32> = (vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
  let x_1743 : vec3<f32> = u_xlat27;
  let x_1745 : vec3<f32> = u_xlat2;
  u_xlat83 = dot(-(x_1743), x_1745);
  let x_1747 : f32 = u_xlat83;
  let x_1748 : f32 = u_xlat83;
  u_xlat83 = (x_1747 + x_1748);
  let x_1750 : vec3<f32> = u_xlat2;
  let x_1751 : f32 = u_xlat83;
  let x_1755 : vec3<f32> = u_xlat27;
  let x_1757 : vec3<f32> = ((x_1750 * -(vec3<f32>(x_1751, x_1751, x_1751))) + -(x_1755));
  let x_1758 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1760 : vec3<f32> = u_xlat2;
  let x_1761 : vec3<f32> = u_xlat27;
  u_xlat83 = dot(x_1760, x_1761);
  let x_1763 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1763, 0.0f, 1.0f);
  let x_1765 : f32 = u_xlat83;
  u_xlat83 = (-(x_1765) + 1.0f);
  let x_1768 : f32 = u_xlat83;
  let x_1769 : f32 = u_xlat83;
  u_xlat83 = (x_1768 * x_1769);
  let x_1771 : f32 = u_xlat83;
  let x_1772 : f32 = u_xlat83;
  u_xlat83 = (x_1771 * x_1772);
  let x_1775 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1775) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1781 : f32 = u_xlat1;
  let x_1782 : f32 = u_xlat84;
  u_xlat1 = (x_1781 * x_1782);
  let x_1784 : f32 = u_xlat1;
  u_xlat1 = (x_1784 * 6.0f);
  let x_1795 : vec4<f32> = u_xlat7;
  let x_1797 : f32 = u_xlat1;
  let x_1798 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1795.x, x_1795.y, x_1795.z), x_1797);
  u_xlat7 = x_1798;
  let x_1800 : f32 = u_xlat7.w;
  u_xlat1 = (x_1800 + -1.0f);
  let x_1807 : f32 = x_1805.unity_SpecCube0_HDR.w;
  let x_1808 : f32 = u_xlat1;
  u_xlat1 = ((x_1807 * x_1808) + 1.0f);
  let x_1811 : f32 = u_xlat1;
  u_xlat1 = max(x_1811, 0.0f);
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = log2(x_1813);
  let x_1815 : f32 = u_xlat1;
  let x_1817 : f32 = x_1805.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1815 * x_1817);
  let x_1819 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1819);
  let x_1821 : f32 = u_xlat1;
  let x_1823 : f32 = x_1805.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1821 * x_1823);
  let x_1825 : vec4<f32> = u_xlat7;
  let x_1827 : f32 = u_xlat1;
  let x_1829 : vec3<f32> = (vec3<f32>(x_1825.x, x_1825.y, x_1825.z) * vec3<f32>(x_1827, x_1827, x_1827));
  let x_1830 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1832 : f32 = u_xlat81;
  let x_1834 : f32 = u_xlat81;
  let x_1838 : vec2<f32> = ((vec2<f32>(x_1832, x_1832) * vec2<f32>(x_1834, x_1834)) + vec2<f32>(-1.0f, 1.0f));
  let x_1839 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1838.x, x_1838.y, x_1839.z, x_1839.w);
  let x_1842 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1842);
  let x_1845 : vec4<f32> = u_xlat0;
  let x_1848 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1845.x, x_1845.y, x_1845.z)) + vec3<f32>(x_1848, x_1848, x_1848));
  let x_1851 : f32 = u_xlat83;
  let x_1853 : vec3<f32> = u_xlat34;
  let x_1855 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1851, x_1851, x_1851) * x_1853) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : f32 = u_xlat1;
  let x_1860 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1858, x_1858, x_1858) * x_1860);
  let x_1862 : vec4<f32> = u_xlat7;
  let x_1864 : vec3<f32> = u_xlat34;
  let x_1865 : vec3<f32> = (vec3<f32>(x_1862.x, x_1862.y, x_1862.z) * x_1864);
  let x_1866 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : vec4<f32> = u_xlat3;
  let x_1870 : vec3<f32> = u_xlat30;
  let x_1872 : vec4<f32> = u_xlat7;
  let x_1874 : vec3<f32> = ((vec3<f32>(x_1868.x, x_1868.y, x_1868.z) * x_1870) + vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1875 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1877 : f32 = u_xlat31;
  let x_1879 : f32 = x_1805.unity_LightData.z;
  u_xlat78 = (x_1877 * x_1879);
  let x_1881 : vec3<f32> = u_xlat2;
  let x_1883 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1881, vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
  let x_1886 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1886, 0.0f, 1.0f);
  let x_1888 : f32 = u_xlat78;
  let x_1889 : f32 = u_xlat1;
  u_xlat78 = (x_1888 * x_1889);
  let x_1891 : f32 = u_xlat78;
  let x_1893 : vec4<f32> = u_xlat6;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1891, x_1891, x_1891) * vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec3<f32> = u_xlat27;
  let x_1900 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1902 : vec3<f32> = (x_1898 + vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1905 : vec4<f32> = u_xlat7;
  let x_1907 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1905.x, x_1905.y, x_1905.z), vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : f32 = u_xlat78;
  u_xlat78 = max(x_1910, 1.17549435e-38f);
  let x_1913 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1913);
  let x_1915 : f32 = u_xlat78;
  let x_1917 : vec4<f32> = u_xlat7;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1915, x_1915, x_1915) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec3<f32> = u_xlat2;
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1922, vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1926, 0.0f, 1.0f);
  let x_1929 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1931 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1929.x, x_1929.y, x_1929.z), vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1934, 0.0f, 1.0f);
  let x_1936 : f32 = u_xlat78;
  let x_1937 : f32 = u_xlat78;
  u_xlat78 = (x_1936 * x_1937);
  let x_1939 : f32 = u_xlat78;
  let x_1941 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1939 * x_1941) + 1.00001001358032226562f);
  let x_1945 : f32 = u_xlat1;
  let x_1946 : f32 = u_xlat1;
  u_xlat1 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat78;
  let x_1949 : f32 = u_xlat78;
  u_xlat78 = (x_1948 * x_1949);
  let x_1951 : f32 = u_xlat1;
  u_xlat1 = max(x_1951, 0.10000000149011611938f);
  let x_1954 : f32 = u_xlat78;
  let x_1955 : f32 = u_xlat1;
  u_xlat78 = (x_1954 * x_1955);
  let x_1958 : f32 = u_xlat4.x;
  let x_1959 : f32 = u_xlat78;
  u_xlat78 = (x_1958 * x_1959);
  let x_1961 : f32 = u_xlat5;
  let x_1962 : f32 = u_xlat78;
  u_xlat78 = (x_1961 / x_1962);
  let x_1964 : vec4<f32> = u_xlat0;
  let x_1966 : f32 = u_xlat78;
  let x_1969 : vec3<f32> = u_xlat30;
  let x_1970 : vec3<f32> = ((vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1966, x_1966, x_1966)) + x_1969);
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1974 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1976 : f32 = x_1805.unity_LightData.y;
  u_xlat78 = min(x_1974, x_1976);
  let x_1980 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1980));
  let x_1984 : f32 = u_xlat57.x;
  let x_1987 : f32 = x_287.x_AdditionalShadowFadeParams.x;
  let x_1990 : f32 = x_287.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1984 * x_1987) + x_1990);
  let x_1992 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1992, 0.0f, 1.0f);
  let x_1995 : f32 = x_1625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1997 : f32 = x_1625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1999 : f32 = x_1625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2001 : f32 = x_1625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2002 : vec4<f32> = vec4<f32>(x_1995, x_1997, x_1999, x_2001);
  let x_2008 : vec4<bool> = (vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2002.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_2008.x, x_2008.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2020 : u32 = u_xlatu_loop_1;
    let x_2021 : u32 = u_xlatu78;
    if ((x_2020 < x_2021)) {
    } else {
      break;
    }
    let x_2024 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2024 >> 2u);
    let x_2028 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2028 & 3u));
    let x_2031 : u32 = u_xlatu83;
    let x_2034 : vec4<f32> = x_1805.unity_LightIndices[bitcast<i32>(x_2031)];
    let x_2044 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2049 : vec4<u32> = indexable[x_2044];
    u_xlat83 = dot(x_2034, bitcast<vec4<f32>>(x_2049));
    let x_2053 : f32 = u_xlat83;
    u_xlati83 = i32(x_2053);
    let x_2055 : vec3<f32> = vs_TEXCOORD7;
    let x_2066 : i32 = u_xlati83;
    let x_2068 : vec4<f32> = x_2065.x_AdditionalLightsPosition[x_2066];
    let x_2071 : i32 = u_xlati83;
    let x_2073 : vec4<f32> = x_2065.x_AdditionalLightsPosition[x_2071];
    let x_2075 : vec3<f32> = ((-(x_2055) * vec3<f32>(x_2068.w, x_2068.w, x_2068.w)) + vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
    let x_2076 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
    let x_2078 : vec4<f32> = u_xlat9;
    let x_2080 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2078.x, x_2078.y, x_2078.z), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : f32 = u_xlat84;
    u_xlat84 = max(x_2083, 0.00006103515625f);
    let x_2086 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2086);
    let x_2088 : f32 = u_xlat85;
    let x_2090 : vec4<f32> = u_xlat9;
    let x_2092 : vec3<f32> = (vec3<f32>(x_2088, x_2088, x_2088) * vec3<f32>(x_2090.x, x_2090.y, x_2090.z));
    let x_2093 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
    let x_2096 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2096);
    let x_2098 : f32 = u_xlat84;
    let x_2099 : i32 = u_xlati83;
    let x_2101 : f32 = x_2065.x_AdditionalLightsAttenuation[x_2099].x;
    u_xlat84 = (x_2098 * x_2101);
    let x_2103 : f32 = u_xlat84;
    let x_2105 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2103) * x_2105) + 1.0f);
    let x_2108 : f32 = u_xlat84;
    u_xlat84 = max(x_2108, 0.0f);
    let x_2110 : f32 = u_xlat84;
    let x_2111 : f32 = u_xlat84;
    u_xlat84 = (x_2110 * x_2111);
    let x_2113 : f32 = u_xlat84;
    let x_2114 : f32 = u_xlat87;
    u_xlat84 = (x_2113 * x_2114);
    let x_2116 : i32 = u_xlati83;
    let x_2118 : vec4<f32> = x_2065.x_AdditionalLightsSpotDir[x_2116];
    let x_2120 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2118.x, x_2118.y, x_2118.z), vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
    let x_2123 : f32 = u_xlat87;
    let x_2124 : i32 = u_xlati83;
    let x_2126 : f32 = x_2065.x_AdditionalLightsAttenuation[x_2124].z;
    let x_2128 : i32 = u_xlati83;
    let x_2130 : f32 = x_2065.x_AdditionalLightsAttenuation[x_2128].w;
    u_xlat87 = ((x_2123 * x_2126) + x_2130);
    let x_2132 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2132, 0.0f, 1.0f);
    let x_2134 : f32 = u_xlat87;
    let x_2135 : f32 = u_xlat87;
    u_xlat87 = (x_2134 * x_2135);
    let x_2137 : f32 = u_xlat84;
    let x_2138 : f32 = u_xlat87;
    u_xlat84 = (x_2137 * x_2138);
    let x_2142 : i32 = u_xlati83;
    let x_2144 : f32 = x_287.x_AdditionalShadowParams[x_2142].w;
    u_xlati87 = i32(x_2144);
    let x_2147 : i32 = u_xlati87;
    u_xlatb88 = (x_2147 >= 0i);
    let x_2149 : bool = u_xlatb88;
    if (x_2149) {
      let x_2153 : i32 = u_xlati83;
      let x_2155 : f32 = x_287.x_AdditionalShadowParams[x_2153].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2155, x_2155, x_2155, x_2155))));
      let x_2159 : bool = u_xlatb88;
      if (x_2159) {
        let x_2164 : vec4<f32> = u_xlat10;
        let x_2167 : vec4<f32> = u_xlat10;
        let x_2170 : vec4<bool> = (abs(vec4<f32>(x_2164.z, x_2164.z, x_2164.y, x_2164.z)) >= abs(vec4<f32>(x_2167.x, x_2167.y, x_2167.x, x_2167.x)));
        let x_2172 : vec3<bool> = vec3<bool>(x_2170.x, x_2170.y, x_2170.z);
        let x_2173 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
        let x_2176 : bool = u_xlatb11.y;
        let x_2178 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2176 & x_2178);
        let x_2180 : vec4<f32> = u_xlat10;
        let x_2183 : vec4<bool> = (-(vec4<f32>(x_2180.z, x_2180.y, x_2180.z, x_2180.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2184 : vec3<bool> = vec3<bool>(x_2183.x, x_2183.y, x_2183.w);
        let x_2185 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2184.x, x_2184.y, x_2185.z, x_2184.z);
        let x_2188 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2188);
        let x_2193 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2193);
        let x_2199 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2199);
        let x_2203 : bool = u_xlatb11.z;
        if (x_2203) {
          let x_2208 : f32 = u_xlat11.y;
          x_2204 = x_2208;
        } else {
          let x_2210 : f32 = u_xlat89;
          x_2204 = x_2210;
        }
        let x_2211 : f32 = x_2204;
        u_xlat37.x = x_2211;
        let x_2214 : bool = u_xlatb88;
        if (x_2214) {
          let x_2219 : f32 = u_xlat11.x;
          x_2215 = x_2219;
        } else {
          let x_2222 : f32 = u_xlat37.x;
          x_2215 = x_2222;
        }
        let x_2223 : f32 = x_2215;
        u_xlat88 = x_2223;
        let x_2224 : i32 = u_xlati83;
        let x_2226 : f32 = x_287.x_AdditionalShadowParams[x_2224].w;
        u_xlat11.x = trunc(x_2226);
        let x_2229 : f32 = u_xlat88;
        let x_2231 : f32 = u_xlat11.x;
        u_xlat88 = (x_2229 + x_2231);
        let x_2233 : f32 = u_xlat88;
        u_xlati87 = i32(x_2233);
      }
      let x_2235 : i32 = u_xlati87;
      u_xlati87 = (x_2235 << bitcast<u32>(2i));
      let x_2237 : vec3<f32> = vs_TEXCOORD7;
      let x_2240 : i32 = u_xlati87;
      let x_2243 : i32 = u_xlati87;
      let x_2247 : vec4<f32> = x_287.x_AdditionalLightsWorldToShadow[((x_2240 + 1i) / 4i)][((x_2243 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2237.y, x_2237.y, x_2237.y, x_2237.y) * x_2247);
      let x_2249 : i32 = u_xlati87;
      let x_2251 : i32 = u_xlati87;
      let x_2254 : vec4<f32> = x_287.x_AdditionalLightsWorldToShadow[(x_2249 / 4i)][(x_2251 % 4i)];
      let x_2255 : vec3<f32> = vs_TEXCOORD7;
      let x_2258 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2254 * vec4<f32>(x_2255.x, x_2255.x, x_2255.x, x_2255.x)) + x_2258);
      let x_2260 : i32 = u_xlati87;
      let x_2263 : i32 = u_xlati87;
      let x_2267 : vec4<f32> = x_287.x_AdditionalLightsWorldToShadow[((x_2260 + 2i) / 4i)][((x_2263 + 2i) % 4i)];
      let x_2268 : vec3<f32> = vs_TEXCOORD7;
      let x_2271 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2267 * vec4<f32>(x_2268.z, x_2268.z, x_2268.z, x_2268.z)) + x_2271);
      let x_2273 : vec4<f32> = u_xlat11;
      let x_2274 : i32 = u_xlati87;
      let x_2277 : i32 = u_xlati87;
      let x_2281 : vec4<f32> = x_287.x_AdditionalLightsWorldToShadow[((x_2274 + 3i) / 4i)][((x_2277 + 3i) % 4i)];
      u_xlat11 = (x_2273 + x_2281);
      let x_2283 : vec4<f32> = u_xlat11;
      let x_2285 : vec4<f32> = u_xlat11;
      let x_2287 : vec3<f32> = (vec3<f32>(x_2283.x, x_2283.y, x_2283.z) / vec3<f32>(x_2285.w, x_2285.w, x_2285.w));
      let x_2288 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
      let x_2291 : i32 = u_xlati83;
      let x_2293 : f32 = x_287.x_AdditionalShadowParams[x_2291].y;
      u_xlatb87 = (0.0f < x_2293);
      let x_2295 : bool = u_xlatb87;
      if (x_2295) {
        let x_2298 : i32 = u_xlati83;
        let x_2300 : f32 = x_287.x_AdditionalShadowParams[x_2298].y;
        u_xlatb87 = (1.0f == x_2300);
        let x_2302 : bool = u_xlatb87;
        if (x_2302) {
          let x_2305 : vec4<f32> = u_xlat11;
          let x_2309 : vec4<f32> = x_287.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y) + x_2309);
          let x_2312 : vec4<f32> = u_xlat12;
          let x_2313 : vec2<f32> = vec2<f32>(x_2312.x, x_2312.y);
          let x_2315 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2313.x, x_2313.y, x_2315);
          let x_2323 : vec3<f32> = txVec30;
          let x_2325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2323.xy, x_2323.z);
          u_xlat13.x = x_2325;
          let x_2328 : vec4<f32> = u_xlat12;
          let x_2329 : vec2<f32> = vec2<f32>(x_2328.z, x_2328.w);
          let x_2331 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
          let x_2338 : vec3<f32> = txVec31;
          let x_2340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
          u_xlat13.y = x_2340;
          let x_2342 : vec4<f32> = u_xlat11;
          let x_2346 : vec4<f32> = x_287.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2342.x, x_2342.y, x_2342.x, x_2342.y) + x_2346);
          let x_2349 : vec4<f32> = u_xlat12;
          let x_2350 : vec2<f32> = vec2<f32>(x_2349.x, x_2349.y);
          let x_2352 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2350.x, x_2350.y, x_2352);
          let x_2359 : vec3<f32> = txVec32;
          let x_2361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2359.xy, x_2359.z);
          u_xlat13.z = x_2361;
          let x_2364 : vec4<f32> = u_xlat12;
          let x_2365 : vec2<f32> = vec2<f32>(x_2364.z, x_2364.w);
          let x_2367 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2365.x, x_2365.y, x_2367);
          let x_2374 : vec3<f32> = txVec33;
          let x_2376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2374.xy, x_2374.z);
          u_xlat13.w = x_2376;
          let x_2378 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2378, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2381 : i32 = u_xlati83;
          let x_2383 : f32 = x_287.x_AdditionalShadowParams[x_2381].y;
          u_xlatb88 = (2.0f == x_2383);
          let x_2385 : bool = u_xlatb88;
          if (x_2385) {
            let x_2388 : vec4<f32> = u_xlat11;
            let x_2392 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2395 : vec2<f32> = ((vec2<f32>(x_2388.x, x_2388.y) * vec2<f32>(x_2392.z, x_2392.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2396 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2398 : vec4<f32> = u_xlat12;
            let x_2400 : vec2<f32> = floor(vec2<f32>(x_2398.x, x_2398.y));
            let x_2401 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat11;
            let x_2406 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2409 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2403.x, x_2403.y) * vec2<f32>(x_2406.z, x_2406.w)) + -(vec2<f32>(x_2409.x, x_2409.y)));
            let x_2413 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2413.x, x_2413.x, x_2413.y, x_2413.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2416 : vec4<f32> = u_xlat13;
            let x_2418 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2416.x, x_2416.x, x_2416.z, x_2416.z) * vec4<f32>(x_2418.x, x_2418.x, x_2418.z, x_2418.z));
            let x_2421 : vec4<f32> = u_xlat14;
            let x_2423 : vec2<f32> = (vec2<f32>(x_2421.y, x_2421.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2424 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2423.x, x_2424.y, x_2423.y, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat14;
            let x_2429 : vec2<f32> = u_xlat64;
            let x_2431 : vec2<f32> = ((vec2<f32>(x_2426.x, x_2426.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2429));
            let x_2432 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
            let x_2435 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2435) + vec2<f32>(1.0f, 1.0f));
            let x_2438 : vec2<f32> = u_xlat64;
            let x_2439 : vec2<f32> = min(x_2438, vec2<f32>(0.0f, 0.0f));
            let x_2440 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
            let x_2442 : vec4<f32> = u_xlat15;
            let x_2445 : vec4<f32> = u_xlat15;
            let x_2448 : vec2<f32> = u_xlat66;
            let x_2449 : vec2<f32> = ((-(vec2<f32>(x_2442.x, x_2442.y)) * vec2<f32>(x_2445.x, x_2445.y)) + x_2448);
            let x_2450 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2452, vec2<f32>(0.0f, 0.0f));
            let x_2454 : vec2<f32> = u_xlat64;
            let x_2456 : vec2<f32> = u_xlat64;
            let x_2458 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2454) * x_2456) + vec2<f32>(x_2458.y, x_2458.w));
            let x_2461 : vec4<f32> = u_xlat15;
            let x_2463 : vec2<f32> = (vec2<f32>(x_2461.x, x_2461.y) + vec2<f32>(1.0f, 1.0f));
            let x_2464 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2466 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2466 + vec2<f32>(1.0f, 1.0f));
            let x_2468 : vec4<f32> = u_xlat14;
            let x_2470 : vec2<f32> = (vec2<f32>(x_2468.x, x_2468.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2471 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2470.x, x_2470.y, x_2471.z, x_2471.w);
            let x_2473 : vec2<f32> = u_xlat66;
            let x_2474 : vec2<f32> = (x_2473 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2475 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2474.x, x_2474.y, x_2475.z, x_2475.w);
            let x_2477 : vec4<f32> = u_xlat15;
            let x_2479 : vec2<f32> = (vec2<f32>(x_2477.x, x_2477.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2480 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2479.x, x_2479.y, x_2480.z, x_2480.w);
            let x_2482 : vec2<f32> = u_xlat64;
            let x_2483 : vec2<f32> = (x_2482 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2484 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2483.x, x_2483.y, x_2484.z, x_2484.w);
            let x_2486 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2486.y, x_2486.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2490 : f32 = u_xlat15.x;
            u_xlat16.z = x_2490;
            let x_2493 : f32 = u_xlat64.x;
            u_xlat16.w = x_2493;
            let x_2496 : f32 = u_xlat17.x;
            u_xlat14.z = x_2496;
            let x_2499 : f32 = u_xlat13.x;
            u_xlat14.w = x_2499;
            let x_2501 : vec4<f32> = u_xlat14;
            let x_2503 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2501.z, x_2501.w, x_2501.x, x_2501.z) + vec4<f32>(x_2503.z, x_2503.w, x_2503.x, x_2503.z));
            let x_2507 : f32 = u_xlat16.y;
            u_xlat15.z = x_2507;
            let x_2510 : f32 = u_xlat64.y;
            u_xlat15.w = x_2510;
            let x_2513 : f32 = u_xlat14.y;
            u_xlat17.z = x_2513;
            let x_2516 : f32 = u_xlat13.z;
            u_xlat17.w = x_2516;
            let x_2518 : vec4<f32> = u_xlat15;
            let x_2520 : vec4<f32> = u_xlat17;
            let x_2522 : vec3<f32> = (vec3<f32>(x_2518.z, x_2518.y, x_2518.w) + vec3<f32>(x_2520.z, x_2520.y, x_2520.w));
            let x_2523 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
            let x_2525 : vec4<f32> = u_xlat14;
            let x_2527 : vec4<f32> = u_xlat18;
            let x_2529 : vec3<f32> = (vec3<f32>(x_2525.x, x_2525.z, x_2525.w) / vec3<f32>(x_2527.z, x_2527.w, x_2527.y));
            let x_2530 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
            let x_2532 : vec4<f32> = u_xlat14;
            let x_2534 : vec3<f32> = (vec3<f32>(x_2532.x, x_2532.y, x_2532.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2535 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
            let x_2537 : vec4<f32> = u_xlat17;
            let x_2539 : vec4<f32> = u_xlat13;
            let x_2541 : vec3<f32> = (vec3<f32>(x_2537.z, x_2537.y, x_2537.w) / vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
            let x_2542 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
            let x_2544 : vec4<f32> = u_xlat15;
            let x_2546 : vec3<f32> = (vec3<f32>(x_2544.x, x_2544.y, x_2544.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2547 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
            let x_2549 : vec4<f32> = u_xlat14;
            let x_2552 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2554 : vec3<f32> = (vec3<f32>(x_2549.y, x_2549.x, x_2549.z) * vec3<f32>(x_2552.x, x_2552.x, x_2552.x));
            let x_2555 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat15;
            let x_2560 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2557.x, x_2557.y, x_2557.z) * vec3<f32>(x_2560.y, x_2560.y, x_2560.y));
            let x_2563 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2566 : f32 = u_xlat15.x;
            u_xlat14.w = x_2566;
            let x_2568 : vec4<f32> = u_xlat12;
            let x_2571 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2574 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.y, x_2574.w, x_2574.x, x_2574.w));
            let x_2577 : vec4<f32> = u_xlat12;
            let x_2580 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2583 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(x_2580.x, x_2580.y)) + vec2<f32>(x_2583.z, x_2583.w));
            let x_2587 : f32 = u_xlat14.y;
            u_xlat15.w = x_2587;
            let x_2589 : vec4<f32> = u_xlat15;
            let x_2590 : vec2<f32> = vec2<f32>(x_2589.y, x_2589.z);
            let x_2591 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2591.x, x_2590.x, x_2591.z, x_2590.y);
            let x_2593 : vec4<f32> = u_xlat12;
            let x_2596 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2599 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y) * vec4<f32>(x_2596.x, x_2596.y, x_2596.x, x_2596.y)) + vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2599.y));
            let x_2602 : vec4<f32> = u_xlat12;
            let x_2605 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2608 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y) * vec4<f32>(x_2605.x, x_2605.y, x_2605.x, x_2605.y)) + vec4<f32>(x_2608.w, x_2608.y, x_2608.w, x_2608.z));
            let x_2611 : vec4<f32> = u_xlat12;
            let x_2614 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2617 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y) * vec4<f32>(x_2614.x, x_2614.y, x_2614.x, x_2614.y)) + vec4<f32>(x_2617.x, x_2617.w, x_2617.z, x_2617.w));
            let x_2620 : vec4<f32> = u_xlat13;
            let x_2622 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2620.x, x_2620.x, x_2620.x, x_2620.y) * vec4<f32>(x_2622.z, x_2622.w, x_2622.y, x_2622.z));
            let x_2626 : vec4<f32> = u_xlat13;
            let x_2628 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2626.y, x_2626.y, x_2626.z, x_2626.z) * x_2628);
            let x_2631 : f32 = u_xlat13.z;
            let x_2633 : f32 = u_xlat18.y;
            u_xlat88 = (x_2631 * x_2633);
            let x_2636 : vec4<f32> = u_xlat16;
            let x_2637 : vec2<f32> = vec2<f32>(x_2636.x, x_2636.y);
            let x_2639 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2637.x, x_2637.y, x_2639);
            let x_2646 : vec3<f32> = txVec34;
            let x_2648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2646.xy, x_2646.z);
            u_xlat89 = x_2648;
            let x_2650 : vec4<f32> = u_xlat16;
            let x_2651 : vec2<f32> = vec2<f32>(x_2650.z, x_2650.w);
            let x_2653 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2651.x, x_2651.y, x_2653);
            let x_2660 : vec3<f32> = txVec35;
            let x_2662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2660.xy, x_2660.z);
            u_xlat12.x = x_2662;
            let x_2665 : f32 = u_xlat12.x;
            let x_2667 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2665 * x_2667);
            let x_2671 : f32 = u_xlat19.x;
            let x_2672 : f32 = u_xlat89;
            let x_2675 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2671 * x_2672) + x_2675);
            let x_2678 : vec2<f32> = u_xlat64;
            let x_2680 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2678.x, x_2678.y, x_2680);
            let x_2687 : vec3<f32> = txVec36;
            let x_2689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2687.xy, x_2687.z);
            u_xlat12.x = x_2689;
            let x_2692 : f32 = u_xlat19.z;
            let x_2694 : f32 = u_xlat12.x;
            let x_2696 : f32 = u_xlat89;
            u_xlat89 = ((x_2692 * x_2694) + x_2696);
            let x_2699 : vec4<f32> = u_xlat15;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.x, x_2699.y);
            let x_2702 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec37;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat12.x = x_2711;
            let x_2714 : f32 = u_xlat19.w;
            let x_2716 : f32 = u_xlat12.x;
            let x_2718 : f32 = u_xlat89;
            u_xlat89 = ((x_2714 * x_2716) + x_2718);
            let x_2721 : vec4<f32> = u_xlat17;
            let x_2722 : vec2<f32> = vec2<f32>(x_2721.x, x_2721.y);
            let x_2724 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2722.x, x_2722.y, x_2724);
            let x_2731 : vec3<f32> = txVec38;
            let x_2733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
            u_xlat12.x = x_2733;
            let x_2736 : f32 = u_xlat20.x;
            let x_2738 : f32 = u_xlat12.x;
            let x_2740 : f32 = u_xlat89;
            u_xlat89 = ((x_2736 * x_2738) + x_2740);
            let x_2743 : vec4<f32> = u_xlat17;
            let x_2744 : vec2<f32> = vec2<f32>(x_2743.z, x_2743.w);
            let x_2746 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2744.x, x_2744.y, x_2746);
            let x_2753 : vec3<f32> = txVec39;
            let x_2755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2753.xy, x_2753.z);
            u_xlat12.x = x_2755;
            let x_2758 : f32 = u_xlat20.y;
            let x_2760 : f32 = u_xlat12.x;
            let x_2762 : f32 = u_xlat89;
            u_xlat89 = ((x_2758 * x_2760) + x_2762);
            let x_2765 : vec4<f32> = u_xlat15;
            let x_2766 : vec2<f32> = vec2<f32>(x_2765.z, x_2765.w);
            let x_2768 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2766.x, x_2766.y, x_2768);
            let x_2775 : vec3<f32> = txVec40;
            let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
            u_xlat12.x = x_2777;
            let x_2780 : f32 = u_xlat20.z;
            let x_2782 : f32 = u_xlat12.x;
            let x_2784 : f32 = u_xlat89;
            u_xlat89 = ((x_2780 * x_2782) + x_2784);
            let x_2787 : vec4<f32> = u_xlat14;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.x, x_2787.y);
            let x_2790 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec41;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat12.x = x_2799;
            let x_2802 : f32 = u_xlat20.w;
            let x_2804 : f32 = u_xlat12.x;
            let x_2806 : f32 = u_xlat89;
            u_xlat89 = ((x_2802 * x_2804) + x_2806);
            let x_2809 : vec4<f32> = u_xlat14;
            let x_2810 : vec2<f32> = vec2<f32>(x_2809.z, x_2809.w);
            let x_2812 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2810.x, x_2810.y, x_2812);
            let x_2819 : vec3<f32> = txVec42;
            let x_2821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2819.xy, x_2819.z);
            u_xlat12.x = x_2821;
            let x_2823 : f32 = u_xlat88;
            let x_2825 : f32 = u_xlat12.x;
            let x_2827 : f32 = u_xlat89;
            u_xlat87 = ((x_2823 * x_2825) + x_2827);
          } else {
            let x_2830 : vec4<f32> = u_xlat11;
            let x_2833 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2836 : vec2<f32> = ((vec2<f32>(x_2830.x, x_2830.y) * vec2<f32>(x_2833.z, x_2833.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2837 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2836.x, x_2836.y, x_2837.z, x_2837.w);
            let x_2839 : vec4<f32> = u_xlat12;
            let x_2841 : vec2<f32> = floor(vec2<f32>(x_2839.x, x_2839.y));
            let x_2842 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2841.x, x_2841.y, x_2842.z, x_2842.w);
            let x_2844 : vec4<f32> = u_xlat11;
            let x_2847 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_2850 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2844.x, x_2844.y) * vec2<f32>(x_2847.z, x_2847.w)) + -(vec2<f32>(x_2850.x, x_2850.y)));
            let x_2854 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2854.x, x_2854.x, x_2854.y, x_2854.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2857 : vec4<f32> = u_xlat13;
            let x_2859 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2857.x, x_2857.x, x_2857.z, x_2857.z) * vec4<f32>(x_2859.x, x_2859.x, x_2859.z, x_2859.z));
            let x_2862 : vec4<f32> = u_xlat14;
            let x_2864 : vec2<f32> = (vec2<f32>(x_2862.y, x_2862.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2865 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2865.x, x_2864.x, x_2865.z, x_2864.y);
            let x_2867 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = u_xlat64;
            let x_2872 : vec2<f32> = ((vec2<f32>(x_2867.x, x_2867.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2870));
            let x_2873 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2872.x, x_2873.y, x_2872.y, x_2873.w);
            let x_2875 : vec2<f32> = u_xlat64;
            let x_2877 : vec2<f32> = (-(x_2875) + vec2<f32>(1.0f, 1.0f));
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2880 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2880, vec2<f32>(0.0f, 0.0f));
            let x_2882 : vec2<f32> = u_xlat66;
            let x_2884 : vec2<f32> = u_xlat66;
            let x_2886 : vec4<f32> = u_xlat14;
            let x_2888 : vec2<f32> = ((-(x_2882) * x_2884) + vec2<f32>(x_2886.x, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
            let x_2891 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2891, vec2<f32>(0.0f, 0.0f));
            let x_2894 : vec2<f32> = u_xlat66;
            let x_2896 : vec2<f32> = u_xlat66;
            let x_2898 : vec4<f32> = u_xlat13;
            let x_2900 : vec2<f32> = ((-(x_2894) * x_2896) + vec2<f32>(x_2898.y, x_2898.w));
            let x_2901 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2900.x, x_2901.y, x_2900.y);
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2906 : vec2<f32> = (vec2<f32>(x_2903.x, x_2903.y) + vec2<f32>(2.0f, 2.0f));
            let x_2907 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2909 : vec3<f32> = u_xlat39;
            let x_2911 : vec2<f32> = (vec2<f32>(x_2909.x, x_2909.z) + vec2<f32>(2.0f, 2.0f));
            let x_2912 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2912.x, x_2911.x, x_2912.z, x_2911.y);
            let x_2915 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2915 * 0.08163200318813323975f);
            let x_2918 : vec4<f32> = u_xlat13;
            let x_2921 : vec3<f32> = (vec3<f32>(x_2918.z, x_2918.x, x_2918.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2922 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2921.x, x_2921.y, x_2921.z, x_2922.w);
            let x_2924 : vec4<f32> = u_xlat14;
            let x_2926 : vec2<f32> = (vec2<f32>(x_2924.x, x_2924.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2927 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2926.x, x_2926.y, x_2927.z, x_2927.w);
            let x_2930 : f32 = u_xlat17.y;
            u_xlat16.x = x_2930;
            let x_2932 : vec2<f32> = u_xlat64;
            let x_2935 : vec2<f32> = ((vec2<f32>(x_2932.x, x_2932.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2936 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2936.x, x_2935.x, x_2936.z, x_2935.y);
            let x_2938 : vec2<f32> = u_xlat64;
            let x_2941 : vec2<f32> = ((vec2<f32>(x_2938.x, x_2938.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2942 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2941.x, x_2942.y, x_2941.y, x_2942.w);
            let x_2945 : f32 = u_xlat13.x;
            u_xlat14.y = x_2945;
            let x_2948 : f32 = u_xlat15.y;
            u_xlat14.w = x_2948;
            let x_2950 : vec4<f32> = u_xlat14;
            let x_2951 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2950 + x_2951);
            let x_2953 : vec2<f32> = u_xlat64;
            let x_2956 : vec2<f32> = ((vec2<f32>(x_2953.y, x_2953.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2957 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2957.x, x_2956.x, x_2957.z, x_2956.y);
            let x_2959 : vec2<f32> = u_xlat64;
            let x_2962 : vec2<f32> = ((vec2<f32>(x_2959.y, x_2959.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2963 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2962.x, x_2963.y, x_2962.y, x_2963.w);
            let x_2966 : f32 = u_xlat13.y;
            u_xlat15.y = x_2966;
            let x_2968 : vec4<f32> = u_xlat15;
            let x_2969 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2968 + x_2969);
            let x_2971 : vec4<f32> = u_xlat14;
            let x_2972 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2971 / x_2972);
            let x_2974 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2974 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2976 : vec4<f32> = u_xlat15;
            let x_2977 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2976 / x_2977);
            let x_2979 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2979 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2981 : vec4<f32> = u_xlat14;
            let x_2984 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2981.w, x_2981.x, x_2981.y, x_2981.z) * vec4<f32>(x_2984.x, x_2984.x, x_2984.x, x_2984.x));
            let x_2987 : vec4<f32> = u_xlat15;
            let x_2990 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2987.x, x_2987.w, x_2987.y, x_2987.z) * vec4<f32>(x_2990.y, x_2990.y, x_2990.y, x_2990.y));
            let x_2993 : vec4<f32> = u_xlat14;
            let x_2994 : vec3<f32> = vec3<f32>(x_2993.y, x_2993.z, x_2993.w);
            let x_2995 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2994.x, x_2995.y, x_2994.y, x_2994.z);
            let x_2998 : f32 = u_xlat15.x;
            u_xlat17.y = x_2998;
            let x_3000 : vec4<f32> = u_xlat12;
            let x_3003 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3006 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3000.x, x_3000.y, x_3000.x, x_3000.y) * vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y)) + vec4<f32>(x_3006.x, x_3006.y, x_3006.z, x_3006.y));
            let x_3009 : vec4<f32> = u_xlat12;
            let x_3012 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3015 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3009.x, x_3009.y) * vec2<f32>(x_3012.x, x_3012.y)) + vec2<f32>(x_3015.w, x_3015.y));
            let x_3019 : f32 = u_xlat17.y;
            u_xlat14.y = x_3019;
            let x_3022 : f32 = u_xlat15.z;
            u_xlat17.y = x_3022;
            let x_3024 : vec4<f32> = u_xlat12;
            let x_3027 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y) * vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y)) + vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3030.y));
            let x_3033 : vec4<f32> = u_xlat12;
            let x_3036 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat17;
            let x_3041 : vec2<f32> = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3036.x, x_3036.y)) + vec2<f32>(x_3039.w, x_3039.y));
            let x_3042 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3041.x, x_3041.y, x_3042.z, x_3042.w);
            let x_3045 : f32 = u_xlat17.y;
            u_xlat14.z = x_3045;
            let x_3048 : vec4<f32> = u_xlat12;
            let x_3051 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3054 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3048.x, x_3048.y, x_3048.x, x_3048.y) * vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y)) + vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.z));
            let x_3058 : f32 = u_xlat15.w;
            u_xlat17.y = x_3058;
            let x_3061 : vec4<f32> = u_xlat12;
            let x_3064 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y) * vec4<f32>(x_3064.x, x_3064.y, x_3064.x, x_3064.y)) + vec4<f32>(x_3067.x, x_3067.y, x_3067.z, x_3067.y));
            let x_3071 : vec4<f32> = u_xlat12;
            let x_3074 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3071.x, x_3071.y) * vec2<f32>(x_3074.x, x_3074.y)) + vec2<f32>(x_3077.w, x_3077.y));
            let x_3081 : f32 = u_xlat17.y;
            u_xlat14.w = x_3081;
            let x_3084 : vec4<f32> = u_xlat12;
            let x_3087 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(x_3087.x, x_3087.y)) + vec2<f32>(x_3090.x, x_3090.w));
            let x_3093 : vec4<f32> = u_xlat17;
            let x_3094 : vec3<f32> = vec3<f32>(x_3093.x, x_3093.z, x_3093.w);
            let x_3095 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3094.x, x_3095.y, x_3094.y, x_3094.z);
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3100 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y) * vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y)) + vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3103.y));
            let x_3107 : vec4<f32> = u_xlat12;
            let x_3110 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3113 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3107.x, x_3107.y) * vec2<f32>(x_3110.x, x_3110.y)) + vec2<f32>(x_3113.w, x_3113.y));
            let x_3117 : f32 = u_xlat14.x;
            u_xlat15.x = x_3117;
            let x_3119 : vec4<f32> = u_xlat12;
            let x_3122 : vec4<f32> = x_287.x_AdditionalShadowmapSize;
            let x_3125 : vec4<f32> = u_xlat15;
            let x_3127 : vec2<f32> = ((vec2<f32>(x_3119.x, x_3119.y) * vec2<f32>(x_3122.x, x_3122.y)) + vec2<f32>(x_3125.x, x_3125.y));
            let x_3128 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3127.x, x_3127.y, x_3128.z, x_3128.w);
            let x_3131 : vec4<f32> = u_xlat13;
            let x_3133 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3131.x, x_3131.x, x_3131.x, x_3131.x) * x_3133);
            let x_3136 : vec4<f32> = u_xlat13;
            let x_3138 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3136.y, x_3136.y, x_3136.y, x_3136.y) * x_3138);
            let x_3141 : vec4<f32> = u_xlat13;
            let x_3143 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3141.z, x_3141.z, x_3141.z, x_3141.z) * x_3143);
            let x_3145 : vec4<f32> = u_xlat13;
            let x_3147 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3145.w, x_3145.w, x_3145.w, x_3145.w) * x_3147);
            let x_3150 : vec4<f32> = u_xlat18;
            let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
            let x_3153 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec43;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat88 = x_3162;
            let x_3164 : vec4<f32> = u_xlat18;
            let x_3165 : vec2<f32> = vec2<f32>(x_3164.z, x_3164.w);
            let x_3167 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3165.x, x_3165.y, x_3167);
            let x_3174 : vec3<f32> = txVec44;
            let x_3176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
            u_xlat89 = x_3176;
            let x_3177 : f32 = u_xlat89;
            let x_3179 : f32 = u_xlat23.y;
            u_xlat89 = (x_3177 * x_3179);
            let x_3182 : f32 = u_xlat23.x;
            let x_3183 : f32 = u_xlat88;
            let x_3185 : f32 = u_xlat89;
            u_xlat88 = ((x_3182 * x_3183) + x_3185);
            let x_3188 : vec2<f32> = u_xlat64;
            let x_3190 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3197 : vec3<f32> = txVec45;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat89 = x_3199;
            let x_3201 : f32 = u_xlat23.z;
            let x_3202 : f32 = u_xlat89;
            let x_3204 : f32 = u_xlat88;
            u_xlat88 = ((x_3201 * x_3202) + x_3204);
            let x_3207 : vec4<f32> = u_xlat21;
            let x_3208 : vec2<f32> = vec2<f32>(x_3207.x, x_3207.y);
            let x_3210 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3208.x, x_3208.y, x_3210);
            let x_3217 : vec3<f32> = txVec46;
            let x_3219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3217.xy, x_3217.z);
            u_xlat89 = x_3219;
            let x_3221 : f32 = u_xlat23.w;
            let x_3222 : f32 = u_xlat89;
            let x_3224 : f32 = u_xlat88;
            u_xlat88 = ((x_3221 * x_3222) + x_3224);
            let x_3227 : vec4<f32> = u_xlat19;
            let x_3228 : vec2<f32> = vec2<f32>(x_3227.x, x_3227.y);
            let x_3230 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3228.x, x_3228.y, x_3230);
            let x_3237 : vec3<f32> = txVec47;
            let x_3239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3237.xy, x_3237.z);
            u_xlat89 = x_3239;
            let x_3241 : f32 = u_xlat24.x;
            let x_3242 : f32 = u_xlat89;
            let x_3244 : f32 = u_xlat88;
            u_xlat88 = ((x_3241 * x_3242) + x_3244);
            let x_3247 : vec4<f32> = u_xlat19;
            let x_3248 : vec2<f32> = vec2<f32>(x_3247.z, x_3247.w);
            let x_3250 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
            let x_3257 : vec3<f32> = txVec48;
            let x_3259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
            u_xlat89 = x_3259;
            let x_3261 : f32 = u_xlat24.y;
            let x_3262 : f32 = u_xlat89;
            let x_3264 : f32 = u_xlat88;
            u_xlat88 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec4<f32> = u_xlat20;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.x, x_3267.y);
            let x_3270 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec49;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat89 = x_3279;
            let x_3281 : f32 = u_xlat24.z;
            let x_3282 : f32 = u_xlat89;
            let x_3284 : f32 = u_xlat88;
            u_xlat88 = ((x_3281 * x_3282) + x_3284);
            let x_3287 : vec4<f32> = u_xlat21;
            let x_3288 : vec2<f32> = vec2<f32>(x_3287.z, x_3287.w);
            let x_3290 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3297 : vec3<f32> = txVec50;
            let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
            u_xlat89 = x_3299;
            let x_3301 : f32 = u_xlat24.w;
            let x_3302 : f32 = u_xlat89;
            let x_3304 : f32 = u_xlat88;
            u_xlat88 = ((x_3301 * x_3302) + x_3304);
            let x_3307 : vec4<f32> = u_xlat22;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.x, x_3307.y);
            let x_3310 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec51;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat89 = x_3319;
            let x_3321 : f32 = u_xlat25.x;
            let x_3322 : f32 = u_xlat89;
            let x_3324 : f32 = u_xlat88;
            u_xlat88 = ((x_3321 * x_3322) + x_3324);
            let x_3327 : vec4<f32> = u_xlat22;
            let x_3328 : vec2<f32> = vec2<f32>(x_3327.z, x_3327.w);
            let x_3330 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec52;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat89 = x_3339;
            let x_3341 : f32 = u_xlat25.y;
            let x_3342 : f32 = u_xlat89;
            let x_3344 : f32 = u_xlat88;
            u_xlat88 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec2<f32> = u_xlat40;
            let x_3349 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec53;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat89 = x_3358;
            let x_3360 : f32 = u_xlat25.z;
            let x_3361 : f32 = u_xlat89;
            let x_3363 : f32 = u_xlat88;
            u_xlat88 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec2<f32> = u_xlat72;
            let x_3368 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3366.x, x_3366.y, x_3368);
            let x_3375 : vec3<f32> = txVec54;
            let x_3377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3375.xy, x_3375.z);
            u_xlat89 = x_3377;
            let x_3379 : f32 = u_xlat25.w;
            let x_3380 : f32 = u_xlat89;
            let x_3382 : f32 = u_xlat88;
            u_xlat88 = ((x_3379 * x_3380) + x_3382);
            let x_3385 : vec4<f32> = u_xlat17;
            let x_3386 : vec2<f32> = vec2<f32>(x_3385.x, x_3385.y);
            let x_3388 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec55;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat89 = x_3397;
            let x_3399 : f32 = u_xlat13.x;
            let x_3400 : f32 = u_xlat89;
            let x_3402 : f32 = u_xlat88;
            u_xlat88 = ((x_3399 * x_3400) + x_3402);
            let x_3405 : vec4<f32> = u_xlat17;
            let x_3406 : vec2<f32> = vec2<f32>(x_3405.z, x_3405.w);
            let x_3408 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec56;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat89 = x_3417;
            let x_3419 : f32 = u_xlat13.y;
            let x_3420 : f32 = u_xlat89;
            let x_3422 : f32 = u_xlat88;
            u_xlat88 = ((x_3419 * x_3420) + x_3422);
            let x_3425 : vec2<f32> = u_xlat67;
            let x_3427 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec57;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat89 = x_3436;
            let x_3438 : f32 = u_xlat13.z;
            let x_3439 : f32 = u_xlat89;
            let x_3441 : f32 = u_xlat88;
            u_xlat88 = ((x_3438 * x_3439) + x_3441);
            let x_3444 : vec4<f32> = u_xlat12;
            let x_3445 : vec2<f32> = vec2<f32>(x_3444.x, x_3444.y);
            let x_3447 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec58;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat89 = x_3456;
            let x_3458 : f32 = u_xlat13.w;
            let x_3459 : f32 = u_xlat89;
            let x_3461 : f32 = u_xlat88;
            u_xlat87 = ((x_3458 * x_3459) + x_3461);
          }
        }
      } else {
        let x_3465 : vec4<f32> = u_xlat11;
        let x_3466 : vec2<f32> = vec2<f32>(x_3465.x, x_3465.y);
        let x_3468 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
        let x_3475 : vec3<f32> = txVec59;
        let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
        u_xlat87 = x_3477;
      }
      let x_3478 : i32 = u_xlati83;
      let x_3480 : f32 = x_287.x_AdditionalShadowParams[x_3478].x;
      u_xlat88 = (1.0f + -(x_3480));
      let x_3483 : f32 = u_xlat87;
      let x_3484 : i32 = u_xlati83;
      let x_3486 : f32 = x_287.x_AdditionalShadowParams[x_3484].x;
      let x_3488 : f32 = u_xlat88;
      u_xlat87 = ((x_3483 * x_3486) + x_3488);
      let x_3491 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3491);
      let x_3494 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3494 >= 1.0f);
      let x_3497 : bool = u_xlatb88;
      let x_3499 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3497 | x_3499);
      let x_3501 : bool = u_xlatb88;
      let x_3502 : f32 = u_xlat87;
      u_xlat87 = select(x_3502, 1.0f, x_3501);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3505 : f32 = u_xlat87;
    u_xlat88 = (-(x_3505) + 1.0f);
    let x_3508 : f32 = u_xlat1;
    let x_3509 : f32 = u_xlat88;
    let x_3511 : f32 = u_xlat87;
    u_xlat87 = ((x_3508 * x_3509) + x_3511);
    let x_3514 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3514 & 31i)));
    let x_3518 : i32 = u_xlati88;
    let x_3521 : f32 = x_1625.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3518) & bitcast<u32>(x_3521)));
    let x_3525 : i32 = u_xlati88;
    if ((x_3525 != 0i)) {
      let x_3529 : i32 = u_xlati83;
      let x_3531 : f32 = x_1625.x_AdditionalLightsLightTypes[x_3529].el;
      u_xlati88 = i32(x_3531);
      let x_3534 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3534 != 0i));
      let x_3538 : i32 = u_xlati83;
      u_xlati37 = (x_3538 << bitcast<u32>(2i));
      let x_3540 : i32 = u_xlati11;
      if ((x_3540 != 0i)) {
        let x_3544 : vec3<f32> = vs_TEXCOORD7;
        let x_3546 : i32 = u_xlati37;
        let x_3549 : i32 = u_xlati37;
        let x_3553 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3546 + 1i) / 4i)][((x_3549 + 1i) % 4i)];
        let x_3555 : vec3<f32> = (vec3<f32>(x_3544.y, x_3544.y, x_3544.y) * vec3<f32>(x_3553.x, x_3553.y, x_3553.w));
        let x_3556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3555.x, x_3556.y, x_3555.y, x_3555.z);
        let x_3558 : i32 = u_xlati37;
        let x_3560 : i32 = u_xlati37;
        let x_3563 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[(x_3558 / 4i)][(x_3560 % 4i)];
        let x_3565 : vec3<f32> = vs_TEXCOORD7;
        let x_3568 : vec4<f32> = u_xlat11;
        let x_3570 : vec3<f32> = ((vec3<f32>(x_3563.x, x_3563.y, x_3563.w) * vec3<f32>(x_3565.x, x_3565.x, x_3565.x)) + vec3<f32>(x_3568.x, x_3568.z, x_3568.w));
        let x_3571 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3570.x, x_3571.y, x_3570.y, x_3570.z);
        let x_3573 : i32 = u_xlati37;
        let x_3576 : i32 = u_xlati37;
        let x_3580 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3573 + 2i) / 4i)][((x_3576 + 2i) % 4i)];
        let x_3582 : vec3<f32> = vs_TEXCOORD7;
        let x_3585 : vec4<f32> = u_xlat11;
        let x_3587 : vec3<f32> = ((vec3<f32>(x_3580.x, x_3580.y, x_3580.w) * vec3<f32>(x_3582.z, x_3582.z, x_3582.z)) + vec3<f32>(x_3585.x, x_3585.z, x_3585.w));
        let x_3588 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3587.x, x_3588.y, x_3587.y, x_3587.z);
        let x_3590 : vec4<f32> = u_xlat11;
        let x_3592 : i32 = u_xlati37;
        let x_3595 : i32 = u_xlati37;
        let x_3599 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3592 + 3i) / 4i)][((x_3595 + 3i) % 4i)];
        let x_3601 : vec3<f32> = (vec3<f32>(x_3590.x, x_3590.z, x_3590.w) + vec3<f32>(x_3599.x, x_3599.y, x_3599.w));
        let x_3602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3601.x, x_3602.y, x_3601.y, x_3601.z);
        let x_3604 : vec4<f32> = u_xlat11;
        let x_3606 : vec4<f32> = u_xlat11;
        let x_3608 : vec2<f32> = (vec2<f32>(x_3604.x, x_3604.z) / vec2<f32>(x_3606.w, x_3606.w));
        let x_3609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3608.x, x_3609.y, x_3608.y, x_3609.w);
        let x_3611 : vec4<f32> = u_xlat11;
        let x_3614 : vec2<f32> = ((vec2<f32>(x_3611.x, x_3611.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3614.x, x_3615.y, x_3614.y, x_3615.w);
        let x_3617 : vec4<f32> = u_xlat11;
        let x_3621 : vec2<f32> = clamp(vec2<f32>(x_3617.x, x_3617.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3621.x, x_3622.y, x_3621.y, x_3622.w);
        let x_3624 : i32 = u_xlati83;
        let x_3626 : vec4<f32> = x_1625.x_AdditionalLightsCookieAtlasUVRects[x_3624];
        let x_3628 : vec4<f32> = u_xlat11;
        let x_3631 : i32 = u_xlati83;
        let x_3633 : vec4<f32> = x_1625.x_AdditionalLightsCookieAtlasUVRects[x_3631];
        let x_3635 : vec2<f32> = ((vec2<f32>(x_3626.x, x_3626.y) * vec2<f32>(x_3628.x, x_3628.z)) + vec2<f32>(x_3633.z, x_3633.w));
        let x_3636 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3635.x, x_3636.y, x_3635.y, x_3636.w);
      } else {
        let x_3639 : i32 = u_xlati88;
        u_xlatb88 = (x_3639 == 1i);
        let x_3641 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3641);
        let x_3643 : i32 = u_xlati88;
        if ((x_3643 != 0i)) {
          let x_3647 : vec3<f32> = vs_TEXCOORD7;
          let x_3649 : i32 = u_xlati37;
          let x_3652 : i32 = u_xlati37;
          let x_3656 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3649 + 1i) / 4i)][((x_3652 + 1i) % 4i)];
          let x_3658 : vec2<f32> = (vec2<f32>(x_3647.y, x_3647.y) * vec2<f32>(x_3656.x, x_3656.y));
          let x_3659 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3658.x, x_3658.y, x_3659.z, x_3659.w);
          let x_3661 : i32 = u_xlati37;
          let x_3663 : i32 = u_xlati37;
          let x_3666 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[(x_3661 / 4i)][(x_3663 % 4i)];
          let x_3668 : vec3<f32> = vs_TEXCOORD7;
          let x_3671 : vec4<f32> = u_xlat12;
          let x_3673 : vec2<f32> = ((vec2<f32>(x_3666.x, x_3666.y) * vec2<f32>(x_3668.x, x_3668.x)) + vec2<f32>(x_3671.x, x_3671.y));
          let x_3674 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3673.x, x_3673.y, x_3674.z, x_3674.w);
          let x_3676 : i32 = u_xlati37;
          let x_3679 : i32 = u_xlati37;
          let x_3683 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3676 + 2i) / 4i)][((x_3679 + 2i) % 4i)];
          let x_3685 : vec3<f32> = vs_TEXCOORD7;
          let x_3688 : vec4<f32> = u_xlat12;
          let x_3690 : vec2<f32> = ((vec2<f32>(x_3683.x, x_3683.y) * vec2<f32>(x_3685.z, x_3685.z)) + vec2<f32>(x_3688.x, x_3688.y));
          let x_3691 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3690.x, x_3690.y, x_3691.z, x_3691.w);
          let x_3693 : vec4<f32> = u_xlat12;
          let x_3695 : i32 = u_xlati37;
          let x_3698 : i32 = u_xlati37;
          let x_3702 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3695 + 3i) / 4i)][((x_3698 + 3i) % 4i)];
          let x_3704 : vec2<f32> = (vec2<f32>(x_3693.x, x_3693.y) + vec2<f32>(x_3702.x, x_3702.y));
          let x_3705 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3704.x, x_3704.y, x_3705.z, x_3705.w);
          let x_3707 : vec4<f32> = u_xlat12;
          let x_3710 : vec2<f32> = ((vec2<f32>(x_3707.x, x_3707.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3711 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3710.x, x_3710.y, x_3711.z, x_3711.w);
          let x_3713 : vec4<f32> = u_xlat12;
          let x_3715 : vec2<f32> = fract(vec2<f32>(x_3713.x, x_3713.y));
          let x_3716 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3715.x, x_3715.y, x_3716.z, x_3716.w);
          let x_3718 : i32 = u_xlati83;
          let x_3720 : vec4<f32> = x_1625.x_AdditionalLightsCookieAtlasUVRects[x_3718];
          let x_3722 : vec4<f32> = u_xlat12;
          let x_3725 : i32 = u_xlati83;
          let x_3727 : vec4<f32> = x_1625.x_AdditionalLightsCookieAtlasUVRects[x_3725];
          let x_3729 : vec2<f32> = ((vec2<f32>(x_3720.x, x_3720.y) * vec2<f32>(x_3722.x, x_3722.y)) + vec2<f32>(x_3727.z, x_3727.w));
          let x_3730 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3729.x, x_3730.y, x_3729.y, x_3730.w);
        } else {
          let x_3733 : vec3<f32> = vs_TEXCOORD7;
          let x_3735 : i32 = u_xlati37;
          let x_3738 : i32 = u_xlati37;
          let x_3742 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3735 + 1i) / 4i)][((x_3738 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3733.y, x_3733.y, x_3733.y, x_3733.y) * x_3742);
          let x_3744 : i32 = u_xlati37;
          let x_3746 : i32 = u_xlati37;
          let x_3749 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[(x_3744 / 4i)][(x_3746 % 4i)];
          let x_3750 : vec3<f32> = vs_TEXCOORD7;
          let x_3753 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3749 * vec4<f32>(x_3750.x, x_3750.x, x_3750.x, x_3750.x)) + x_3753);
          let x_3755 : i32 = u_xlati37;
          let x_3758 : i32 = u_xlati37;
          let x_3762 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3755 + 2i) / 4i)][((x_3758 + 2i) % 4i)];
          let x_3763 : vec3<f32> = vs_TEXCOORD7;
          let x_3766 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3762 * vec4<f32>(x_3763.z, x_3763.z, x_3763.z, x_3763.z)) + x_3766);
          let x_3768 : vec4<f32> = u_xlat12;
          let x_3769 : i32 = u_xlati37;
          let x_3772 : i32 = u_xlati37;
          let x_3776 : vec4<f32> = x_1625.x_AdditionalLightsWorldToLights[((x_3769 + 3i) / 4i)][((x_3772 + 3i) % 4i)];
          u_xlat12 = (x_3768 + x_3776);
          let x_3778 : vec4<f32> = u_xlat12;
          let x_3780 : vec4<f32> = u_xlat12;
          let x_3782 : vec3<f32> = (vec3<f32>(x_3778.x, x_3778.y, x_3778.z) / vec3<f32>(x_3780.w, x_3780.w, x_3780.w));
          let x_3783 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3782.x, x_3782.y, x_3782.z, x_3783.w);
          let x_3785 : vec4<f32> = u_xlat12;
          let x_3787 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3785.x, x_3785.y, x_3785.z), vec3<f32>(x_3787.x, x_3787.y, x_3787.z));
          let x_3790 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3790);
          let x_3792 : f32 = u_xlat88;
          let x_3794 : vec4<f32> = u_xlat12;
          let x_3796 : vec3<f32> = (vec3<f32>(x_3792, x_3792, x_3792) * vec3<f32>(x_3794.x, x_3794.y, x_3794.z));
          let x_3797 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3796.x, x_3796.y, x_3796.z, x_3797.w);
          let x_3799 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3799.x, x_3799.y, x_3799.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3804 : f32 = u_xlat88;
          u_xlat88 = max(x_3804, 0.00000099999999747524f);
          let x_3807 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3807);
          let x_3809 : f32 = u_xlat88;
          let x_3811 : vec4<f32> = u_xlat12;
          let x_3813 : vec3<f32> = (vec3<f32>(x_3809, x_3809, x_3809) * vec3<f32>(x_3811.z, x_3811.x, x_3811.y));
          let x_3814 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3813.x, x_3813.y, x_3813.z, x_3814.w);
          let x_3817 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3817);
          let x_3821 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3821, 0.0f, 1.0f);
          let x_3826 : vec4<f32> = u_xlat13;
          let x_3828 : vec4<bool> = (vec4<f32>(x_3826.y, x_3826.y, x_3826.z, x_3826.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3829 : vec2<bool> = vec2<bool>(x_3828.x, x_3828.z);
          let x_3830 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3829.x, x_3830.y, x_3829.y);
          let x_3833 : bool = u_xlatb37.x;
          if (x_3833) {
            let x_3838 : f32 = u_xlat13.x;
            x_3834 = x_3838;
          } else {
            let x_3841 : f32 = u_xlat13.x;
            x_3834 = -(x_3841);
          }
          let x_3843 : f32 = x_3834;
          u_xlat37.x = x_3843;
          let x_3846 : bool = u_xlatb37.z;
          if (x_3846) {
            let x_3851 : f32 = u_xlat13.x;
            x_3847 = x_3851;
          } else {
            let x_3854 : f32 = u_xlat13.x;
            x_3847 = -(x_3854);
          }
          let x_3856 : f32 = x_3847;
          u_xlat37.z = x_3856;
          let x_3858 : vec4<f32> = u_xlat12;
          let x_3860 : f32 = u_xlat88;
          let x_3863 : vec3<f32> = u_xlat37;
          let x_3865 : vec2<f32> = ((vec2<f32>(x_3858.x, x_3858.y) * vec2<f32>(x_3860, x_3860)) + vec2<f32>(x_3863.x, x_3863.z));
          let x_3866 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3865.x, x_3866.y, x_3865.y);
          let x_3868 : vec3<f32> = u_xlat37;
          let x_3871 : vec2<f32> = ((vec2<f32>(x_3868.x, x_3868.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3872 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3871.x, x_3872.y, x_3871.y);
          let x_3874 : vec3<f32> = u_xlat37;
          let x_3878 : vec2<f32> = clamp(vec2<f32>(x_3874.x, x_3874.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3879 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3878.x, x_3879.y, x_3878.y);
          let x_3881 : i32 = u_xlati83;
          let x_3883 : vec4<f32> = x_1625.x_AdditionalLightsCookieAtlasUVRects[x_3881];
          let x_3885 : vec3<f32> = u_xlat37;
          let x_3888 : i32 = u_xlati83;
          let x_3890 : vec4<f32> = x_1625.x_AdditionalLightsCookieAtlasUVRects[x_3888];
          let x_3892 : vec2<f32> = ((vec2<f32>(x_3883.x, x_3883.y) * vec2<f32>(x_3885.x, x_3885.z)) + vec2<f32>(x_3890.z, x_3890.w));
          let x_3893 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3892.x, x_3893.y, x_3892.y, x_3893.w);
        }
      }
      let x_3900 : vec4<f32> = u_xlat11;
      let x_3902 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3900.x, x_3900.z), 0.0f);
      u_xlat11 = x_3902;
      let x_3904 : bool = u_xlatb31.y;
      if (x_3904) {
        let x_3909 : f32 = u_xlat11.w;
        x_3905 = x_3909;
      } else {
        let x_3912 : f32 = u_xlat11.x;
        x_3905 = x_3912;
      }
      let x_3913 : f32 = x_3905;
      u_xlat88 = x_3913;
      let x_3915 : bool = u_xlatb31.x;
      if (x_3915) {
        let x_3919 : vec4<f32> = u_xlat11;
        x_3916 = vec3<f32>(x_3919.x, x_3919.y, x_3919.z);
      } else {
        let x_3922 : f32 = u_xlat88;
        x_3916 = vec3<f32>(x_3922, x_3922, x_3922);
      }
      let x_3924 : vec3<f32> = x_3916;
      let x_3925 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3924.x, x_3924.y, x_3924.z, x_3925.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3931 : vec4<f32> = u_xlat11;
    let x_3933 : i32 = u_xlati83;
    let x_3935 : vec4<f32> = x_2065.x_AdditionalLightsColor[x_3933];
    let x_3937 : vec3<f32> = (vec3<f32>(x_3931.x, x_3931.y, x_3931.z) * vec3<f32>(x_3935.x, x_3935.y, x_3935.z));
    let x_3938 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3937.x, x_3937.y, x_3937.z, x_3938.w);
    let x_3940 : f32 = u_xlat84;
    let x_3941 : f32 = u_xlat87;
    u_xlat83 = (x_3940 * x_3941);
    let x_3943 : vec3<f32> = u_xlat2;
    let x_3944 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3943, vec3<f32>(x_3944.x, x_3944.y, x_3944.z));
    let x_3947 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3947, 0.0f, 1.0f);
    let x_3949 : f32 = u_xlat83;
    let x_3950 : f32 = u_xlat84;
    u_xlat83 = (x_3949 * x_3950);
    let x_3952 : f32 = u_xlat83;
    let x_3954 : vec4<f32> = u_xlat11;
    let x_3956 : vec3<f32> = (vec3<f32>(x_3952, x_3952, x_3952) * vec3<f32>(x_3954.x, x_3954.y, x_3954.z));
    let x_3957 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3956.x, x_3956.y, x_3956.z, x_3957.w);
    let x_3959 : vec4<f32> = u_xlat9;
    let x_3961 : f32 = u_xlat85;
    let x_3964 : vec3<f32> = u_xlat27;
    let x_3965 : vec3<f32> = ((vec3<f32>(x_3959.x, x_3959.y, x_3959.z) * vec3<f32>(x_3961, x_3961, x_3961)) + x_3964);
    let x_3966 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
    let x_3968 : vec4<f32> = u_xlat9;
    let x_3970 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3968.x, x_3968.y, x_3968.z), vec3<f32>(x_3970.x, x_3970.y, x_3970.z));
    let x_3973 : f32 = u_xlat83;
    u_xlat83 = max(x_3973, 1.17549435e-38f);
    let x_3975 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3975);
    let x_3977 : f32 = u_xlat83;
    let x_3979 : vec4<f32> = u_xlat9;
    let x_3981 : vec3<f32> = (vec3<f32>(x_3977, x_3977, x_3977) * vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
    let x_3982 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3981.x, x_3981.y, x_3981.z, x_3982.w);
    let x_3984 : vec3<f32> = u_xlat2;
    let x_3985 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_3984, vec3<f32>(x_3985.x, x_3985.y, x_3985.z));
    let x_3988 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3988, 0.0f, 1.0f);
    let x_3990 : vec4<f32> = u_xlat10;
    let x_3992 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3990.x, x_3990.y, x_3990.z), vec3<f32>(x_3992.x, x_3992.y, x_3992.z));
    let x_3995 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3995, 0.0f, 1.0f);
    let x_3997 : f32 = u_xlat83;
    let x_3998 : f32 = u_xlat83;
    u_xlat83 = (x_3997 * x_3998);
    let x_4000 : f32 = u_xlat83;
    let x_4002 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4000 * x_4002) + 1.00001001358032226562f);
    let x_4005 : f32 = u_xlat84;
    let x_4006 : f32 = u_xlat84;
    u_xlat84 = (x_4005 * x_4006);
    let x_4008 : f32 = u_xlat83;
    let x_4009 : f32 = u_xlat83;
    u_xlat83 = (x_4008 * x_4009);
    let x_4011 : f32 = u_xlat84;
    u_xlat84 = max(x_4011, 0.10000000149011611938f);
    let x_4013 : f32 = u_xlat83;
    let x_4014 : f32 = u_xlat84;
    u_xlat83 = (x_4013 * x_4014);
    let x_4017 : f32 = u_xlat4.x;
    let x_4018 : f32 = u_xlat83;
    u_xlat83 = (x_4017 * x_4018);
    let x_4020 : f32 = u_xlat5;
    let x_4021 : f32 = u_xlat83;
    u_xlat83 = (x_4020 / x_4021);
    let x_4023 : vec4<f32> = u_xlat0;
    let x_4025 : f32 = u_xlat83;
    let x_4028 : vec3<f32> = u_xlat30;
    let x_4029 : vec3<f32> = ((vec3<f32>(x_4023.x, x_4023.y, x_4023.z) * vec3<f32>(x_4025, x_4025, x_4025)) + x_4028);
    let x_4030 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4029.x, x_4029.y, x_4029.z, x_4030.w);
    let x_4032 : vec4<f32> = u_xlat9;
    let x_4034 : vec4<f32> = u_xlat11;
    let x_4037 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4032.x, x_4032.y, x_4032.z) * vec3<f32>(x_4034.x, x_4034.y, x_4034.z)) + x_4037);

    continuing {
      let x_4039 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4039 + bitcast<u32>(1i));
    }
  }
  let x_4041 : vec4<f32> = u_xlat7;
  let x_4043 : vec4<f32> = u_xlat6;
  let x_4046 : vec4<f32> = u_xlat3;
  let x_4048 : vec3<f32> = ((vec3<f32>(x_4041.x, x_4041.y, x_4041.z) * vec3<f32>(x_4043.x, x_4043.y, x_4043.z)) + vec3<f32>(x_4046.x, x_4046.y, x_4046.z));
  let x_4049 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4048.x, x_4048.y, x_4048.z, x_4049.w);
  let x_4051 : vec3<f32> = u_xlat34;
  let x_4052 : vec4<f32> = u_xlat0;
  let x_4054 : vec3<f32> = (x_4051 + vec3<f32>(x_4052.x, x_4052.y, x_4052.z));
  let x_4055 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4054.x, x_4054.y, x_4054.z, x_4055.w);
  let x_4057 : f32 = u_xlat80;
  let x_4058 : f32 = u_xlat80;
  u_xlat78 = (x_4057 * -(x_4058));
  let x_4061 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4061);
  let x_4063 : vec4<f32> = u_xlat0;
  let x_4066 : vec4<f32> = x_29.unity_FogColor;
  let x_4069 : vec3<f32> = (vec3<f32>(x_4063.x, x_4063.y, x_4063.z) + -(vec3<f32>(x_4066.x, x_4066.y, x_4066.z)));
  let x_4070 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4069.x, x_4069.y, x_4069.z, x_4070.w);
  let x_4074 : f32 = u_xlat78;
  let x_4076 : vec4<f32> = u_xlat0;
  let x_4080 : vec4<f32> = x_29.unity_FogColor;
  let x_4082 : vec3<f32> = ((vec3<f32>(x_4074, x_4074, x_4074) * vec3<f32>(x_4076.x, x_4076.y, x_4076.z)) + vec3<f32>(x_4080.x, x_4080.y, x_4080.z));
  let x_4083 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
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


