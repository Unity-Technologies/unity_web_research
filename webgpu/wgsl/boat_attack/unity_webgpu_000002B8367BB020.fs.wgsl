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

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb56 : bool;

@group(1) @binding(3) var<uniform> x_243 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat56 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1567 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat83 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1764 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2028 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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

var<private> u_xlatu82 : u32;

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
  var x_1654 : f32;
  var x_1665 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2167 : f32;
  var x_2178 : f32;
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
  var x_3796 : f32;
  var x_3809 : f32;
  var x_3867 : f32;
  var x_3878 : vec3<f32>;
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
  let x_75 : f32 = vs_TEXCOORD7.y;
  let x_80 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2 = (x_75 * x_80);
  let x_83 : f32 = x_29.unity_MatrixV[0i].z;
  let x_85 : f32 = vs_TEXCOORD7.x;
  let x_87 : f32 = u_xlat2;
  u_xlat2 = ((x_83 * x_85) + x_87);
  let x_91 : f32 = x_29.unity_MatrixV[2i].z;
  let x_93 : f32 = vs_TEXCOORD7.z;
  let x_95 : f32 = u_xlat2;
  u_xlat2 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat2;
  let x_100 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2 = (x_97 + x_100);
  let x_102 : f32 = u_xlat2;
  let x_106 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2 = (-(x_102) + -(x_106));
  let x_109 : f32 = u_xlat2;
  u_xlat2 = max(x_109, 0.0f);
  let x_112 : f32 = u_xlat2;
  let x_115 : f32 = x_29.unity_FogParams.x;
  u_xlat2 = (x_112 * x_115);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_126 : f32 = x_29.x_GlobalMipBias.x;
  let x_127 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_123.z, x_123.w), x_126);
  u_xlat3 = x_127;
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  let x_136 : f32 = x_29.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_133.z, x_133.w), x_136);
  u_xlat28 = vec3<f32>(x_137.x, x_137.y, x_137.z);
  let x_139 : vec4<f32> = u_xlat3;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec3<f32> = u_xlat27;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_146, vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_152 : f32 = u_xlat3.x;
  u_xlat3.x = (x_152 + 0.5f);
  let x_156 : vec3<f32> = u_xlat28;
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_162, 0.00009999999747378752f);
  let x_166 : vec3<f32> = u_xlat28;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_166 / vec3<f32>(x_167.x, x_167.x, x_167.x));
  let x_170 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_170) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_178 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_178) + 1.0f);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.x, x_184.x));
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_186.x, x_187.y, x_186.y, x_186.z);
  let x_189 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : f32 = u_xlat1;
  let x_198 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196, x_196, x_196) * vec3<f32>(x_198.x, x_198.y, x_198.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_207) + 1.0f);
  let x_211 : f32 = u_xlat1;
  let x_212 : f32 = u_xlat1;
  u_xlat4 = (x_211 * x_212);
  let x_214 : f32 = u_xlat4;
  u_xlat4 = max(x_214, 0.0078125f);
  let x_218 : f32 = u_xlat4;
  let x_219 : f32 = u_xlat4;
  u_xlat30 = (x_218 * x_219);
  let x_223 : f32 = u_xlat0.w;
  let x_224 : f32 = u_xlat29;
  u_xlat78 = (x_223 + x_224);
  let x_226 : f32 = u_xlat78;
  u_xlat78 = clamp(x_226, 0.0f, 1.0f);
  let x_228 : f32 = u_xlat4;
  u_xlat29 = ((x_228 * 4.0f) + 2.0f);
  let x_245 : f32 = x_243.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_245);
  let x_247 : bool = u_xlatb56;
  if (x_247) {
    let x_251 : f32 = x_243.x_MainLightShadowParams.y;
    u_xlatb56 = (x_251 == 1.0f);
    let x_253 : bool = u_xlatb56;
    if (x_253) {
      let x_258 : vec4<f32> = vs_TEXCOORD8;
      let x_262 : vec4<f32> = x_243.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_258.x, x_258.y, x_258.x, x_258.y) + x_262);
      let x_266 : vec4<f32> = u_xlat5;
      let x_267 : vec2<f32> = vec2<f32>(x_266.x, x_266.y);
      let x_269 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_267.x, x_267.y, x_269);
      let x_282 : vec3<f32> = txVec0;
      let x_284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_282.xy, x_282.z);
      u_xlat6.x = x_284;
      let x_287 : vec4<f32> = u_xlat5;
      let x_288 : vec2<f32> = vec2<f32>(x_287.z, x_287.w);
      let x_290 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_288.x, x_288.y, x_290);
      let x_297 : vec3<f32> = txVec1;
      let x_299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_297.xy, x_297.z);
      u_xlat6.y = x_299;
      let x_301 : vec4<f32> = vs_TEXCOORD8;
      let x_305 : vec4<f32> = x_243.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_301.x, x_301.y, x_301.x, x_301.y) + x_305);
      let x_308 : vec4<f32> = u_xlat5;
      let x_309 : vec2<f32> = vec2<f32>(x_308.x, x_308.y);
      let x_311 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_309.x, x_309.y, x_311);
      let x_318 : vec3<f32> = txVec2;
      let x_320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_318.xy, x_318.z);
      u_xlat6.z = x_320;
      let x_323 : vec4<f32> = u_xlat5;
      let x_324 : vec2<f32> = vec2<f32>(x_323.z, x_323.w);
      let x_326 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_324.x, x_324.y, x_326);
      let x_333 : vec3<f32> = txVec3;
      let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_333.xy, x_333.z);
      u_xlat6.w = x_335;
      let x_338 : vec4<f32> = u_xlat6;
      u_xlat56 = dot(x_338, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_345 : f32 = x_243.x_MainLightShadowParams.y;
      u_xlatb82 = (x_345 == 2.0f);
      let x_347 : bool = u_xlatb82;
      if (x_347) {
        let x_350 : vec4<f32> = vs_TEXCOORD8;
        let x_354 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_358 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(x_354.z, x_354.w)) + vec2<f32>(0.5f, 0.5f));
        let x_359 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
        let x_361 : vec4<f32> = u_xlat5;
        let x_363 : vec2<f32> = floor(vec2<f32>(x_361.x, x_361.y));
        let x_364 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
        let x_368 : vec4<f32> = vs_TEXCOORD8;
        let x_371 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_374 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_368.x, x_368.y) * vec2<f32>(x_371.z, x_371.w)) + -(vec2<f32>(x_374.x, x_374.y)));
        let x_378 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_378.x, x_378.x, x_378.y, x_378.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_383 : vec4<f32> = u_xlat6;
        let x_385 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_383.x, x_383.x, x_383.z, x_383.z) * vec4<f32>(x_385.x, x_385.x, x_385.z, x_385.z));
        let x_388 : vec4<f32> = u_xlat7;
        let x_392 : vec2<f32> = (vec2<f32>(x_388.y, x_388.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_393 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_392.x, x_393.y, x_392.y, x_393.w);
        let x_395 : vec4<f32> = u_xlat7;
        let x_398 : vec2<f32> = u_xlat57;
        let x_400 : vec2<f32> = ((vec2<f32>(x_395.x, x_395.z) * vec2<f32>(0.5f, 0.5f)) + -(x_398));
        let x_401 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
        let x_404 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_404) + vec2<f32>(1.0f, 1.0f));
        let x_409 : vec2<f32> = u_xlat57;
        let x_411 : vec2<f32> = min(x_409, vec2<f32>(0.0f, 0.0f));
        let x_412 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
        let x_414 : vec4<f32> = u_xlat8;
        let x_417 : vec4<f32> = u_xlat8;
        let x_420 : vec2<f32> = u_xlat59;
        let x_421 : vec2<f32> = ((-(vec2<f32>(x_414.x, x_414.y)) * vec2<f32>(x_417.x, x_417.y)) + x_420);
        let x_422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_424 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_424, vec2<f32>(0.0f, 0.0f));
        let x_426 : vec2<f32> = u_xlat57;
        let x_428 : vec2<f32> = u_xlat57;
        let x_430 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_426) * x_428) + vec2<f32>(x_430.y, x_430.w));
        let x_433 : vec4<f32> = u_xlat8;
        let x_435 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) + vec2<f32>(1.0f, 1.0f));
        let x_436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_438 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_438 + vec2<f32>(1.0f, 1.0f));
        let x_441 : vec4<f32> = u_xlat7;
        let x_445 : vec2<f32> = (vec2<f32>(x_441.x, x_441.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_446 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec2<f32> = u_xlat59;
        let x_449 : vec2<f32> = (x_448 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_450 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_452 : vec4<f32> = u_xlat8;
        let x_454 : vec2<f32> = (vec2<f32>(x_452.x, x_452.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_455 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_458 : vec2<f32> = u_xlat57;
        let x_459 : vec2<f32> = (x_458 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_460 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_462.y, x_462.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_466 : f32 = u_xlat8.x;
        u_xlat9.z = x_466;
        let x_469 : f32 = u_xlat57.x;
        u_xlat9.w = x_469;
        let x_472 : f32 = u_xlat10.x;
        u_xlat7.z = x_472;
        let x_475 : f32 = u_xlat6.x;
        u_xlat7.w = x_475;
        let x_478 : vec4<f32> = u_xlat7;
        let x_480 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_478.z, x_478.w, x_478.x, x_478.z) + vec4<f32>(x_480.z, x_480.w, x_480.x, x_480.z));
        let x_484 : f32 = u_xlat9.y;
        u_xlat8.z = x_484;
        let x_487 : f32 = u_xlat57.y;
        u_xlat8.w = x_487;
        let x_490 : f32 = u_xlat7.y;
        u_xlat10.z = x_490;
        let x_493 : f32 = u_xlat6.z;
        u_xlat10.w = x_493;
        let x_495 : vec4<f32> = u_xlat8;
        let x_497 : vec4<f32> = u_xlat10;
        let x_499 : vec3<f32> = (vec3<f32>(x_495.z, x_495.y, x_495.w) + vec3<f32>(x_497.z, x_497.y, x_497.w));
        let x_500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
        let x_502 : vec4<f32> = u_xlat7;
        let x_504 : vec4<f32> = u_xlat11;
        let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.z, x_502.w) / vec3<f32>(x_504.z, x_504.w, x_504.y));
        let x_507 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
        let x_509 : vec4<f32> = u_xlat7;
        let x_514 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_515 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
        let x_517 : vec4<f32> = u_xlat10;
        let x_519 : vec4<f32> = u_xlat6;
        let x_521 : vec3<f32> = (vec3<f32>(x_517.z, x_517.y, x_517.w) / vec3<f32>(x_519.x, x_519.y, x_519.z));
        let x_522 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat8;
        let x_526 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat7;
        let x_532 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_534 : vec3<f32> = (vec3<f32>(x_529.y, x_529.x, x_529.z) * vec3<f32>(x_532.x, x_532.x, x_532.x));
        let x_535 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
        let x_537 : vec4<f32> = u_xlat8;
        let x_540 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_542 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_540.y, x_540.y, x_540.y));
        let x_543 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
        let x_546 : f32 = u_xlat8.x;
        u_xlat7.w = x_546;
        let x_548 : vec4<f32> = u_xlat5;
        let x_551 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y) * vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y)) + vec4<f32>(x_554.y, x_554.w, x_554.x, x_554.w));
        let x_557 : vec4<f32> = u_xlat5;
        let x_560 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(x_560.x, x_560.y)) + vec2<f32>(x_563.z, x_563.w));
        let x_567 : f32 = u_xlat7.y;
        u_xlat8.w = x_567;
        let x_569 : vec4<f32> = u_xlat8;
        let x_570 : vec2<f32> = vec2<f32>(x_569.y, x_569.z);
        let x_571 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_571.x, x_570.x, x_571.z, x_570.y);
        let x_573 : vec4<f32> = u_xlat5;
        let x_576 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y) * vec4<f32>(x_576.x, x_576.y, x_576.x, x_576.y)) + vec4<f32>(x_579.x, x_579.y, x_579.z, x_579.y));
        let x_582 : vec4<f32> = u_xlat5;
        let x_585 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y)) + vec4<f32>(x_588.w, x_588.y, x_588.w, x_588.z));
        let x_591 : vec4<f32> = u_xlat5;
        let x_594 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_597 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y) * vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y)) + vec4<f32>(x_597.x, x_597.w, x_597.z, x_597.w));
        let x_601 : vec4<f32> = u_xlat6;
        let x_603 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_601.x, x_601.x, x_601.x, x_601.y) * vec4<f32>(x_603.z, x_603.w, x_603.y, x_603.z));
        let x_607 : vec4<f32> = u_xlat6;
        let x_609 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_607.y, x_607.y, x_607.z, x_607.z) * x_609);
        let x_613 : f32 = u_xlat6.z;
        let x_615 : f32 = u_xlat11.y;
        u_xlat82 = (x_613 * x_615);
        let x_618 : vec4<f32> = u_xlat9;
        let x_619 : vec2<f32> = vec2<f32>(x_618.x, x_618.y);
        let x_621 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_619.x, x_619.y, x_621);
        let x_628 : vec3<f32> = txVec4;
        let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_628.xy, x_628.z);
        u_xlat5.x = x_630;
        let x_633 : vec4<f32> = u_xlat9;
        let x_634 : vec2<f32> = vec2<f32>(x_633.z, x_633.w);
        let x_636 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_634.x, x_634.y, x_636);
        let x_644 : vec3<f32> = txVec5;
        let x_646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_644.xy, x_644.z);
        u_xlat31 = x_646;
        let x_647 : f32 = u_xlat31;
        let x_649 : f32 = u_xlat12.y;
        u_xlat31 = (x_647 * x_649);
        let x_652 : f32 = u_xlat12.x;
        let x_654 : f32 = u_xlat5.x;
        let x_656 : f32 = u_xlat31;
        u_xlat5.x = ((x_652 * x_654) + x_656);
        let x_660 : vec2<f32> = u_xlat57;
        let x_662 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_660.x, x_660.y, x_662);
        let x_669 : vec3<f32> = txVec6;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_669.xy, x_669.z);
        u_xlat31 = x_671;
        let x_673 : f32 = u_xlat12.z;
        let x_674 : f32 = u_xlat31;
        let x_677 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_673 * x_674) + x_677);
        let x_681 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
        let x_684 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec7;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat31 = x_693;
        let x_695 : f32 = u_xlat12.w;
        let x_696 : f32 = u_xlat31;
        let x_699 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_695 * x_696) + x_699);
        let x_703 : vec4<f32> = u_xlat10;
        let x_704 : vec2<f32> = vec2<f32>(x_703.x, x_703.y);
        let x_706 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_704.x, x_704.y, x_706);
        let x_713 : vec3<f32> = txVec8;
        let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_713.xy, x_713.z);
        u_xlat31 = x_715;
        let x_717 : f32 = u_xlat13.x;
        let x_718 : f32 = u_xlat31;
        let x_721 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_717 * x_718) + x_721);
        let x_725 : vec4<f32> = u_xlat10;
        let x_726 : vec2<f32> = vec2<f32>(x_725.z, x_725.w);
        let x_728 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_726.x, x_726.y, x_728);
        let x_735 : vec3<f32> = txVec9;
        let x_737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_735.xy, x_735.z);
        u_xlat31 = x_737;
        let x_739 : f32 = u_xlat13.y;
        let x_740 : f32 = u_xlat31;
        let x_743 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_739 * x_740) + x_743);
        let x_747 : vec4<f32> = u_xlat8;
        let x_748 : vec2<f32> = vec2<f32>(x_747.z, x_747.w);
        let x_750 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_748.x, x_748.y, x_750);
        let x_757 : vec3<f32> = txVec10;
        let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
        u_xlat31 = x_759;
        let x_761 : f32 = u_xlat13.z;
        let x_762 : f32 = u_xlat31;
        let x_765 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_761 * x_762) + x_765);
        let x_769 : vec4<f32> = u_xlat7;
        let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
        let x_772 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_770.x, x_770.y, x_772);
        let x_779 : vec3<f32> = txVec11;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat31 = x_781;
        let x_783 : f32 = u_xlat13.w;
        let x_784 : f32 = u_xlat31;
        let x_787 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_783 * x_784) + x_787);
        let x_791 : vec4<f32> = u_xlat7;
        let x_792 : vec2<f32> = vec2<f32>(x_791.z, x_791.w);
        let x_794 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_792.x, x_792.y, x_794);
        let x_801 : vec3<f32> = txVec12;
        let x_803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_801.xy, x_801.z);
        u_xlat31 = x_803;
        let x_804 : f32 = u_xlat82;
        let x_805 : f32 = u_xlat31;
        let x_808 : f32 = u_xlat5.x;
        u_xlat56 = ((x_804 * x_805) + x_808);
      } else {
        let x_811 : vec4<f32> = vs_TEXCOORD8;
        let x_814 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_817 : vec2<f32> = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(x_814.z, x_814.w)) + vec2<f32>(0.5f, 0.5f));
        let x_818 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec4<f32> = u_xlat5;
        let x_822 : vec2<f32> = floor(vec2<f32>(x_820.x, x_820.y));
        let x_823 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_825 : vec4<f32> = vs_TEXCOORD8;
        let x_828 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_825.x, x_825.y) * vec2<f32>(x_828.z, x_828.w)) + -(vec2<f32>(x_831.x, x_831.y)));
        let x_835 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_835.x, x_835.x, x_835.y, x_835.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_838 : vec4<f32> = u_xlat6;
        let x_840 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_838.x, x_838.x, x_838.z, x_838.z) * vec4<f32>(x_840.x, x_840.x, x_840.z, x_840.z));
        let x_843 : vec4<f32> = u_xlat7;
        let x_847 : vec2<f32> = (vec2<f32>(x_843.y, x_843.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_848 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_848.x, x_847.x, x_848.z, x_847.y);
        let x_850 : vec4<f32> = u_xlat7;
        let x_853 : vec2<f32> = u_xlat57;
        let x_855 : vec2<f32> = ((vec2<f32>(x_850.x, x_850.z) * vec2<f32>(0.5f, 0.5f)) + -(x_853));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_856.y, x_855.y, x_856.w);
        let x_858 : vec2<f32> = u_xlat57;
        let x_860 : vec2<f32> = (-(x_858) + vec2<f32>(1.0f, 1.0f));
        let x_861 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_863 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_863, vec2<f32>(0.0f, 0.0f));
        let x_865 : vec2<f32> = u_xlat59;
        let x_867 : vec2<f32> = u_xlat59;
        let x_869 : vec4<f32> = u_xlat7;
        let x_871 : vec2<f32> = ((-(x_865) * x_867) + vec2<f32>(x_869.x, x_869.y));
        let x_872 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_874, vec2<f32>(0.0f, 0.0f));
        let x_877 : vec2<f32> = u_xlat59;
        let x_879 : vec2<f32> = u_xlat59;
        let x_881 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = ((-(x_877) * x_879) + vec2<f32>(x_881.y, x_881.w));
        let x_884 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_883.x, x_884.y, x_883.y);
        let x_886 : vec4<f32> = u_xlat7;
        let x_889 : vec2<f32> = (vec2<f32>(x_886.x, x_886.y) + vec2<f32>(2.0f, 2.0f));
        let x_890 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
        let x_892 : vec3<f32> = u_xlat32;
        let x_894 : vec2<f32> = (vec2<f32>(x_892.x, x_892.z) + vec2<f32>(2.0f, 2.0f));
        let x_895 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_895.x, x_894.x, x_895.z, x_894.y);
        let x_898 : f32 = u_xlat6.y;
        u_xlat9.z = (x_898 * 0.08163200318813323975f);
        let x_902 : vec4<f32> = u_xlat6;
        let x_905 : vec3<f32> = (vec3<f32>(x_902.z, x_902.x, x_902.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_906 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat7;
        let x_911 : vec2<f32> = (vec2<f32>(x_908.x, x_908.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_912 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_915 : f32 = u_xlat10.y;
        u_xlat9.x = x_915;
        let x_917 : vec2<f32> = u_xlat57;
        let x_924 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_925 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_927 : vec2<f32> = u_xlat57;
        let x_931 : vec2<f32> = ((vec2<f32>(x_927.x, x_927.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_932 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_932.y, x_931.y, x_932.w);
        let x_935 : f32 = u_xlat6.x;
        u_xlat7.y = x_935;
        let x_938 : f32 = u_xlat8.y;
        u_xlat7.w = x_938;
        let x_940 : vec4<f32> = u_xlat7;
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_940 + x_941);
        let x_943 : vec2<f32> = u_xlat57;
        let x_946 : vec2<f32> = ((vec2<f32>(x_943.y, x_943.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_949 : vec2<f32> = u_xlat57;
        let x_952 : vec2<f32> = ((vec2<f32>(x_949.y, x_949.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_953.w);
        let x_956 : f32 = u_xlat6.y;
        u_xlat8.y = x_956;
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_958 + x_959);
        let x_961 : vec4<f32> = u_xlat7;
        let x_962 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_961 / x_962);
        let x_964 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_964 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_970 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_970 / x_971);
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_973 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_975 : vec4<f32> = u_xlat7;
        let x_978 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_975.w, x_975.x, x_975.y, x_975.z) * vec4<f32>(x_978.x, x_978.x, x_978.x, x_978.x));
        let x_981 : vec4<f32> = u_xlat8;
        let x_984 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_981.x, x_981.w, x_981.y, x_981.z) * vec4<f32>(x_984.y, x_984.y, x_984.y, x_984.y));
        let x_987 : vec4<f32> = u_xlat7;
        let x_988 : vec3<f32> = vec3<f32>(x_987.y, x_987.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_988.z);
        let x_992 : f32 = u_xlat8.x;
        u_xlat10.y = x_992;
        let x_994 : vec4<f32> = u_xlat5;
        let x_997 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1000 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_994.x, x_994.y, x_994.x, x_994.y) * vec4<f32>(x_997.x, x_997.y, x_997.x, x_997.y)) + vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1000.y));
        let x_1003 : vec4<f32> = u_xlat5;
        let x_1006 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(x_1006.x, x_1006.y)) + vec2<f32>(x_1009.w, x_1009.y));
        let x_1013 : f32 = u_xlat10.y;
        u_xlat7.y = x_1013;
        let x_1016 : f32 = u_xlat8.z;
        u_xlat10.y = x_1016;
        let x_1018 : vec4<f32> = u_xlat5;
        let x_1021 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y) * vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y)) + vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1024.y));
        let x_1027 : vec4<f32> = u_xlat5;
        let x_1030 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1033 : vec4<f32> = u_xlat10;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.x, x_1030.y)) + vec2<f32>(x_1033.w, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
        let x_1039 : f32 = u_xlat10.y;
        u_xlat7.z = x_1039;
        let x_1042 : vec4<f32> = u_xlat5;
        let x_1045 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.z));
        let x_1052 : f32 = u_xlat8.w;
        u_xlat10.y = x_1052;
        let x_1055 : vec4<f32> = u_xlat5;
        let x_1058 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.y));
        let x_1065 : vec4<f32> = u_xlat5;
        let x_1068 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.x, x_1068.y)) + vec2<f32>(x_1071.w, x_1071.y));
        let x_1075 : f32 = u_xlat10.y;
        u_xlat7.w = x_1075;
        let x_1078 : vec4<f32> = u_xlat5;
        let x_1081 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1084.x, x_1084.w));
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1088 : vec3<f32> = vec3<f32>(x_1087.x, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1088.z);
        let x_1091 : vec4<f32> = u_xlat5;
        let x_1094 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y) * vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y)) + vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1097.y));
        let x_1101 : vec4<f32> = u_xlat5;
        let x_1104 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(x_1104.x, x_1104.y)) + vec2<f32>(x_1107.w, x_1107.y));
        let x_1111 : f32 = u_xlat7.x;
        u_xlat8.x = x_1111;
        let x_1113 : vec4<f32> = u_xlat5;
        let x_1116 : vec4<f32> = x_243.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(x_1116.x, x_1116.y)) + vec2<f32>(x_1119.x, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1125.x, x_1125.x, x_1125.x, x_1125.x) * x_1127);
        let x_1130 : vec4<f32> = u_xlat6;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1130.y, x_1130.y, x_1130.y, x_1130.y) * x_1132);
        let x_1135 : vec4<f32> = u_xlat6;
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1135.z, x_1135.z, x_1135.z, x_1135.z) * x_1137);
        let x_1139 : vec4<f32> = u_xlat6;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1139.w, x_1139.w, x_1139.w, x_1139.w) * x_1141);
        let x_1144 : vec4<f32> = u_xlat11;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.x, x_1144.y);
        let x_1147 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec13;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1154.xy, x_1154.z);
        u_xlat82 = x_1156;
        let x_1158 : vec4<f32> = u_xlat11;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.z, x_1158.w);
        let x_1161 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec14;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1168.xy, x_1168.z);
        u_xlat7.x = x_1170;
        let x_1173 : f32 = u_xlat7.x;
        let x_1175 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1173 * x_1175);
        let x_1179 : f32 = u_xlat16.x;
        let x_1180 : f32 = u_xlat82;
        let x_1183 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1179 * x_1180) + x_1183);
        let x_1186 : vec2<f32> = u_xlat57;
        let x_1188 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1186.x, x_1186.y, x_1188);
        let x_1195 : vec3<f32> = txVec15;
        let x_1197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1195.xy, x_1195.z);
        u_xlat57.x = x_1197;
        let x_1200 : f32 = u_xlat16.z;
        let x_1202 : f32 = u_xlat57.x;
        let x_1204 : f32 = u_xlat82;
        u_xlat82 = ((x_1200 * x_1202) + x_1204);
        let x_1207 : vec4<f32> = u_xlat14;
        let x_1208 : vec2<f32> = vec2<f32>(x_1207.x, x_1207.y);
        let x_1210 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1208.x, x_1208.y, x_1210);
        let x_1217 : vec3<f32> = txVec16;
        let x_1219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1217.xy, x_1217.z);
        u_xlat57.x = x_1219;
        let x_1222 : f32 = u_xlat16.w;
        let x_1224 : f32 = u_xlat57.x;
        let x_1226 : f32 = u_xlat82;
        u_xlat82 = ((x_1222 * x_1224) + x_1226);
        let x_1229 : vec4<f32> = u_xlat12;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.x, x_1229.y);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec17;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat57.x = x_1241;
        let x_1244 : f32 = u_xlat17.x;
        let x_1246 : f32 = u_xlat57.x;
        let x_1248 : f32 = u_xlat82;
        u_xlat82 = ((x_1244 * x_1246) + x_1248);
        let x_1251 : vec4<f32> = u_xlat12;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.z, x_1251.w);
        let x_1254 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec18;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1261.xy, x_1261.z);
        u_xlat57.x = x_1263;
        let x_1266 : f32 = u_xlat17.y;
        let x_1268 : f32 = u_xlat57.x;
        let x_1270 : f32 = u_xlat82;
        u_xlat82 = ((x_1266 * x_1268) + x_1270);
        let x_1273 : vec4<f32> = u_xlat13;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.x, x_1273.y);
        let x_1276 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec19;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1283.xy, x_1283.z);
        u_xlat57.x = x_1285;
        let x_1288 : f32 = u_xlat17.z;
        let x_1290 : f32 = u_xlat57.x;
        let x_1292 : f32 = u_xlat82;
        u_xlat82 = ((x_1288 * x_1290) + x_1292);
        let x_1295 : vec4<f32> = u_xlat14;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.z, x_1295.w);
        let x_1298 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec20;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat57.x = x_1307;
        let x_1310 : f32 = u_xlat17.w;
        let x_1312 : f32 = u_xlat57.x;
        let x_1314 : f32 = u_xlat82;
        u_xlat82 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec4<f32> = u_xlat15;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec21;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat57.x = x_1329;
        let x_1332 : f32 = u_xlat18.x;
        let x_1334 : f32 = u_xlat57.x;
        let x_1336 : f32 = u_xlat82;
        u_xlat82 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat15;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.z, x_1339.w);
        let x_1342 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec22;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat57.x = x_1351;
        let x_1354 : f32 = u_xlat18.y;
        let x_1356 : f32 = u_xlat57.x;
        let x_1358 : f32 = u_xlat82;
        u_xlat82 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec2<f32> = u_xlat33;
        let x_1363 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec23;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat57.x = x_1372;
        let x_1375 : f32 = u_xlat18.z;
        let x_1377 : f32 = u_xlat57.x;
        let x_1379 : f32 = u_xlat82;
        u_xlat82 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec2<f32> = u_xlat65;
        let x_1384 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec24;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat57.x = x_1393;
        let x_1396 : f32 = u_xlat18.w;
        let x_1398 : f32 = u_xlat57.x;
        let x_1400 : f32 = u_xlat82;
        u_xlat82 = ((x_1396 * x_1398) + x_1400);
        let x_1403 : vec4<f32> = u_xlat10;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec25;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat57.x = x_1415;
        let x_1418 : f32 = u_xlat6.x;
        let x_1420 : f32 = u_xlat57.x;
        let x_1422 : f32 = u_xlat82;
        u_xlat82 = ((x_1418 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat10;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec26;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1435.xy, x_1435.z);
        u_xlat57.x = x_1437;
        let x_1440 : f32 = u_xlat6.y;
        let x_1442 : f32 = u_xlat57.x;
        let x_1444 : f32 = u_xlat82;
        u_xlat82 = ((x_1440 * x_1442) + x_1444);
        let x_1447 : vec2<f32> = u_xlat60;
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec27;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat57.x = x_1458;
        let x_1461 : f32 = u_xlat6.z;
        let x_1463 : f32 = u_xlat57.x;
        let x_1465 : f32 = u_xlat82;
        u_xlat82 = ((x_1461 * x_1463) + x_1465);
        let x_1468 : vec4<f32> = u_xlat5;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.x, x_1468.y);
        let x_1471 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec28;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1478.xy, x_1478.z);
        u_xlat5.x = x_1480;
        let x_1483 : f32 = u_xlat6.w;
        let x_1485 : f32 = u_xlat5.x;
        let x_1487 : f32 = u_xlat82;
        u_xlat56 = ((x_1483 * x_1485) + x_1487);
      }
    }
  } else {
    let x_1491 : vec4<f32> = vs_TEXCOORD8;
    let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
    let x_1494 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
    let x_1501 : vec3<f32> = txVec29;
    let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
    u_xlat56 = x_1503;
  }
  let x_1505 : f32 = x_243.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1505) + 1.0f);
  let x_1508 : f32 = u_xlat56;
  let x_1510 : f32 = x_243.x_MainLightShadowParams.x;
  let x_1512 : f32 = u_xlat82;
  u_xlat56 = ((x_1508 * x_1510) + x_1512);
  let x_1515 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (0.0f >= x_1515);
  let x_1519 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1519 >= 1.0f);
  let x_1521 : bool = u_xlatb82;
  let x_1522 : bool = u_xlatb5;
  u_xlatb82 = (x_1521 | x_1522);
  let x_1524 : bool = u_xlatb82;
  let x_1525 : f32 = u_xlat56;
  u_xlat56 = select(x_1525, 1.0f, x_1524);
  let x_1527 : vec3<f32> = vs_TEXCOORD7;
  let x_1531 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1533 : vec3<f32> = (x_1527 + -(x_1531));
  let x_1534 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1534.w);
  let x_1536 : vec4<f32> = u_xlat5;
  let x_1538 : vec4<f32> = u_xlat5;
  u_xlat82 = dot(vec3<f32>(x_1536.x, x_1536.y, x_1536.z), vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
  let x_1541 : f32 = u_xlat82;
  let x_1543 : f32 = x_243.x_MainLightShadowParams.z;
  let x_1546 : f32 = x_243.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1541 * x_1543) + x_1546);
  let x_1550 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1550, 0.0f, 1.0f);
  let x_1553 : f32 = u_xlat56;
  u_xlat31 = (-(x_1553) + 1.0f);
  let x_1557 : f32 = u_xlat5.x;
  let x_1558 : f32 = u_xlat31;
  let x_1560 : f32 = u_xlat56;
  u_xlat56 = ((x_1557 * x_1558) + x_1560);
  let x_1569 : f32 = x_1567.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1569 == -1.0f));
  let x_1572 : bool = u_xlatb5;
  if (x_1572) {
    let x_1575 : vec3<f32> = vs_TEXCOORD7;
    let x_1578 : vec4<f32> = x_1567.x_MainLightWorldToLight[1i];
    let x_1580 : vec2<f32> = (vec2<f32>(x_1575.y, x_1575.y) * vec2<f32>(x_1578.x, x_1578.y));
    let x_1581 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
    let x_1584 : vec4<f32> = x_1567.x_MainLightWorldToLight[0i];
    let x_1586 : vec3<f32> = vs_TEXCOORD7;
    let x_1589 : vec4<f32> = u_xlat5;
    let x_1591 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(x_1586.x, x_1586.x)) + vec2<f32>(x_1589.x, x_1589.y));
    let x_1592 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
    let x_1595 : vec4<f32> = x_1567.x_MainLightWorldToLight[2i];
    let x_1597 : vec3<f32> = vs_TEXCOORD7;
    let x_1600 : vec4<f32> = u_xlat5;
    let x_1602 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.y) * vec2<f32>(x_1597.z, x_1597.z)) + vec2<f32>(x_1600.x, x_1600.y));
    let x_1603 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
    let x_1605 : vec4<f32> = u_xlat5;
    let x_1608 : vec4<f32> = x_1567.x_MainLightWorldToLight[3i];
    let x_1610 : vec2<f32> = (vec2<f32>(x_1605.x, x_1605.y) + vec2<f32>(x_1608.x, x_1608.y));
    let x_1611 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
    let x_1613 : vec4<f32> = u_xlat5;
    let x_1616 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1617 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
    let x_1624 : vec4<f32> = u_xlat5;
    let x_1627 : f32 = x_29.x_GlobalMipBias.x;
    let x_1628 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1624.x, x_1624.y), x_1627);
    u_xlat5 = x_1628;
    let x_1633 : f32 = x_1567.x_MainLightCookieTextureFormat;
    let x_1635 : f32 = x_1567.x_MainLightCookieTextureFormat;
    let x_1637 : f32 = x_1567.x_MainLightCookieTextureFormat;
    let x_1639 : f32 = x_1567.x_MainLightCookieTextureFormat;
    let x_1640 : vec4<f32> = vec4<f32>(x_1633, x_1635, x_1637, x_1639);
    let x_1648 : vec4<bool> = (vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1640.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1648.x, x_1648.y);
    let x_1652 : bool = u_xlatb6.y;
    if (x_1652) {
      let x_1658 : f32 = u_xlat5.w;
      x_1654 = x_1658;
    } else {
      let x_1661 : f32 = u_xlat5.x;
      x_1654 = x_1661;
    }
    let x_1662 : f32 = x_1654;
    u_xlat83 = x_1662;
    let x_1664 : bool = u_xlatb6.x;
    if (x_1664) {
      let x_1668 : vec4<f32> = u_xlat5;
      x_1665 = vec3<f32>(x_1668.x, x_1668.y, x_1668.z);
    } else {
      let x_1671 : f32 = u_xlat83;
      x_1665 = vec3<f32>(x_1671, x_1671, x_1671);
    }
    let x_1673 : vec3<f32> = x_1665;
    let x_1674 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1680 : vec4<f32> = u_xlat5;
  let x_1683 : vec4<f32> = x_29.x_MainLightColor;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1680.x, x_1680.y, x_1680.z) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1689 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1689;
  let x_1693 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1693;
  let x_1697 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1697;
  let x_1699 : vec4<f32> = u_xlat6;
  let x_1702 : vec3<f32> = u_xlat27;
  u_xlat83 = dot(-(vec3<f32>(x_1699.x, x_1699.y, x_1699.z)), x_1702);
  let x_1704 : f32 = u_xlat83;
  let x_1705 : f32 = u_xlat83;
  u_xlat83 = (x_1704 + x_1705);
  let x_1707 : vec3<f32> = u_xlat27;
  let x_1708 : f32 = u_xlat83;
  let x_1712 : vec4<f32> = u_xlat6;
  let x_1715 : vec3<f32> = ((x_1707 * -(vec3<f32>(x_1708, x_1708, x_1708))) + -(vec3<f32>(x_1712.x, x_1712.y, x_1712.z)));
  let x_1716 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
  let x_1718 : vec3<f32> = u_xlat27;
  let x_1719 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(x_1718, vec3<f32>(x_1719.x, x_1719.y, x_1719.z));
  let x_1722 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1722, 0.0f, 1.0f);
  let x_1724 : f32 = u_xlat83;
  u_xlat83 = (-(x_1724) + 1.0f);
  let x_1727 : f32 = u_xlat83;
  let x_1728 : f32 = u_xlat83;
  u_xlat83 = (x_1727 * x_1728);
  let x_1730 : f32 = u_xlat83;
  let x_1731 : f32 = u_xlat83;
  u_xlat83 = (x_1730 * x_1731);
  let x_1734 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1734) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1740 : f32 = u_xlat1;
  let x_1741 : f32 = u_xlat84;
  u_xlat1 = (x_1740 * x_1741);
  let x_1743 : f32 = u_xlat1;
  u_xlat1 = (x_1743 * 6.0f);
  let x_1754 : vec4<f32> = u_xlat7;
  let x_1756 : f32 = u_xlat1;
  let x_1757 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1754.x, x_1754.y, x_1754.z), x_1756);
  u_xlat7 = x_1757;
  let x_1759 : f32 = u_xlat7.w;
  u_xlat1 = (x_1759 + -1.0f);
  let x_1766 : f32 = x_1764.unity_SpecCube0_HDR.w;
  let x_1767 : f32 = u_xlat1;
  u_xlat1 = ((x_1766 * x_1767) + 1.0f);
  let x_1770 : f32 = u_xlat1;
  u_xlat1 = max(x_1770, 0.0f);
  let x_1772 : f32 = u_xlat1;
  u_xlat1 = log2(x_1772);
  let x_1774 : f32 = u_xlat1;
  let x_1776 : f32 = x_1764.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1774 * x_1776);
  let x_1778 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1778);
  let x_1780 : f32 = u_xlat1;
  let x_1782 : f32 = x_1764.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1780 * x_1782);
  let x_1784 : vec4<f32> = u_xlat7;
  let x_1786 : f32 = u_xlat1;
  let x_1788 : vec3<f32> = (vec3<f32>(x_1784.x, x_1784.y, x_1784.z) * vec3<f32>(x_1786, x_1786, x_1786));
  let x_1789 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1791 : f32 = u_xlat4;
  let x_1793 : f32 = u_xlat4;
  let x_1797 : vec2<f32> = ((vec2<f32>(x_1791, x_1791) * vec2<f32>(x_1793, x_1793)) + vec2<f32>(-1.0f, 1.0f));
  let x_1798 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
  let x_1801 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1801);
  let x_1804 : vec4<f32> = u_xlat0;
  let x_1807 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1804.x, x_1804.y, x_1804.z)) + vec3<f32>(x_1807, x_1807, x_1807));
  let x_1810 : f32 = u_xlat83;
  let x_1812 : vec3<f32> = u_xlat34;
  let x_1814 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1810, x_1810, x_1810) * x_1812) + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : f32 = u_xlat1;
  let x_1819 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1817, x_1817, x_1817) * x_1819);
  let x_1821 : vec4<f32> = u_xlat7;
  let x_1823 : vec3<f32> = u_xlat34;
  let x_1824 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.y, x_1821.z) * x_1823);
  let x_1825 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
  let x_1827 : vec3<f32> = u_xlat28;
  let x_1828 : vec4<f32> = u_xlat3;
  let x_1831 : vec4<f32> = u_xlat7;
  u_xlat28 = ((x_1827 * vec3<f32>(x_1828.x, x_1828.z, x_1828.w)) + vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
  let x_1834 : f32 = u_xlat56;
  let x_1836 : f32 = x_1764.unity_LightData.z;
  u_xlat78 = (x_1834 * x_1836);
  let x_1838 : vec3<f32> = u_xlat27;
  let x_1840 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1838, vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
  let x_1843 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1843, 0.0f, 1.0f);
  let x_1845 : f32 = u_xlat78;
  let x_1846 : f32 = u_xlat1;
  u_xlat78 = (x_1845 * x_1846);
  let x_1848 : f32 = u_xlat78;
  let x_1850 : vec4<f32> = u_xlat5;
  let x_1852 : vec3<f32> = (vec3<f32>(x_1848, x_1848, x_1848) * vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
  let x_1853 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
  let x_1855 : vec4<f32> = u_xlat6;
  let x_1858 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1855.x, x_1855.y, x_1855.z) + vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : vec4<f32> = u_xlat7;
  let x_1865 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1863.x, x_1863.y, x_1863.z), vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1868 : f32 = u_xlat78;
  u_xlat78 = max(x_1868, 1.17549435e-38f);
  let x_1871 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1871);
  let x_1873 : f32 = u_xlat78;
  let x_1875 : vec4<f32> = u_xlat7;
  let x_1877 : vec3<f32> = (vec3<f32>(x_1873, x_1873, x_1873) * vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
  let x_1880 : vec3<f32> = u_xlat27;
  let x_1881 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1880, vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
  let x_1884 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1884, 0.0f, 1.0f);
  let x_1887 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1889 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1887.x, x_1887.y, x_1887.z), vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1892, 0.0f, 1.0f);
  let x_1894 : f32 = u_xlat78;
  let x_1895 : f32 = u_xlat78;
  u_xlat78 = (x_1894 * x_1895);
  let x_1897 : f32 = u_xlat78;
  let x_1899 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1897 * x_1899) + 1.00001001358032226562f);
  let x_1903 : f32 = u_xlat1;
  let x_1904 : f32 = u_xlat1;
  u_xlat1 = (x_1903 * x_1904);
  let x_1906 : f32 = u_xlat78;
  let x_1907 : f32 = u_xlat78;
  u_xlat78 = (x_1906 * x_1907);
  let x_1909 : f32 = u_xlat1;
  u_xlat1 = max(x_1909, 0.10000000149011611938f);
  let x_1912 : f32 = u_xlat78;
  let x_1913 : f32 = u_xlat1;
  u_xlat78 = (x_1912 * x_1913);
  let x_1915 : f32 = u_xlat29;
  let x_1916 : f32 = u_xlat78;
  u_xlat78 = (x_1915 * x_1916);
  let x_1918 : f32 = u_xlat30;
  let x_1919 : f32 = u_xlat78;
  u_xlat78 = (x_1918 / x_1919);
  let x_1921 : vec4<f32> = u_xlat0;
  let x_1923 : f32 = u_xlat78;
  let x_1926 : vec4<f32> = u_xlat3;
  let x_1928 : vec3<f32> = ((vec3<f32>(x_1921.x, x_1921.y, x_1921.z) * vec3<f32>(x_1923, x_1923, x_1923)) + vec3<f32>(x_1926.x, x_1926.z, x_1926.w));
  let x_1929 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);
  let x_1932 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1934 : f32 = x_1764.unity_LightData.y;
  u_xlat78 = min(x_1932, x_1934);
  let x_1938 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1938));
  let x_1941 : f32 = u_xlat82;
  let x_1944 : f32 = x_243.x_AdditionalShadowFadeParams.x;
  let x_1947 : f32 = x_243.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1941 * x_1944) + x_1947);
  let x_1949 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1949, 0.0f, 1.0f);
  let x_1955 : f32 = x_1567.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1957 : f32 = x_1567.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1959 : f32 = x_1567.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1961 : f32 = x_1567.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1962 : vec4<f32> = vec4<f32>(x_1955, x_1957, x_1959, x_1961);
  let x_1969 : vec4<bool> = (vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1962.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1970 : vec2<bool> = vec2<bool>(x_1969.x, x_1969.z);
  let x_1971 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1970.x, x_1971.y, x_1970.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1983 : u32 = u_xlatu_loop_1;
    let x_1984 : u32 = u_xlatu78;
    if ((x_1983 < x_1984)) {
    } else {
      break;
    }
    let x_1987 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_1987 >> 2u);
    let x_1991 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_1991 & 3u));
    let x_1994 : u32 = u_xlatu83;
    let x_1997 : vec4<f32> = x_1764.unity_LightIndices[bitcast<i32>(x_1994)];
    let x_2007 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2012 : vec4<u32> = indexable[x_2007];
    u_xlat83 = dot(x_1997, bitcast<vec4<f32>>(x_2012));
    let x_2016 : f32 = u_xlat83;
    u_xlati83 = i32(x_2016);
    let x_2018 : vec3<f32> = vs_TEXCOORD7;
    let x_2029 : i32 = u_xlati83;
    let x_2031 : vec4<f32> = x_2028.x_AdditionalLightsPosition[x_2029];
    let x_2034 : i32 = u_xlati83;
    let x_2036 : vec4<f32> = x_2028.x_AdditionalLightsPosition[x_2034];
    let x_2038 : vec3<f32> = ((-(x_2018) * vec3<f32>(x_2031.w, x_2031.w, x_2031.w)) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
    let x_2041 : vec4<f32> = u_xlat9;
    let x_2043 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2041.x, x_2041.y, x_2041.z), vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : f32 = u_xlat84;
    u_xlat84 = max(x_2046, 0.00006103515625f);
    let x_2050 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2050);
    let x_2052 : f32 = u_xlat85;
    let x_2054 : vec4<f32> = u_xlat9;
    let x_2056 : vec3<f32> = (vec3<f32>(x_2052, x_2052, x_2052) * vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
    let x_2057 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
    let x_2060 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2060);
    let x_2062 : f32 = u_xlat84;
    let x_2063 : i32 = u_xlati83;
    let x_2065 : f32 = x_2028.x_AdditionalLightsAttenuation[x_2063].x;
    u_xlat84 = (x_2062 * x_2065);
    let x_2067 : f32 = u_xlat84;
    let x_2069 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2067) * x_2069) + 1.0f);
    let x_2072 : f32 = u_xlat84;
    u_xlat84 = max(x_2072, 0.0f);
    let x_2074 : f32 = u_xlat84;
    let x_2075 : f32 = u_xlat84;
    u_xlat84 = (x_2074 * x_2075);
    let x_2077 : f32 = u_xlat84;
    let x_2078 : f32 = u_xlat87;
    u_xlat84 = (x_2077 * x_2078);
    let x_2080 : i32 = u_xlati83;
    let x_2082 : vec4<f32> = x_2028.x_AdditionalLightsSpotDir[x_2080];
    let x_2084 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2082.x, x_2082.y, x_2082.z), vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
    let x_2087 : f32 = u_xlat87;
    let x_2088 : i32 = u_xlati83;
    let x_2090 : f32 = x_2028.x_AdditionalLightsAttenuation[x_2088].z;
    let x_2092 : i32 = u_xlati83;
    let x_2094 : f32 = x_2028.x_AdditionalLightsAttenuation[x_2092].w;
    u_xlat87 = ((x_2087 * x_2090) + x_2094);
    let x_2096 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2096, 0.0f, 1.0f);
    let x_2098 : f32 = u_xlat87;
    let x_2099 : f32 = u_xlat87;
    u_xlat87 = (x_2098 * x_2099);
    let x_2101 : f32 = u_xlat84;
    let x_2102 : f32 = u_xlat87;
    u_xlat84 = (x_2101 * x_2102);
    let x_2106 : i32 = u_xlati83;
    let x_2108 : f32 = x_243.x_AdditionalShadowParams[x_2106].w;
    u_xlati87 = i32(x_2108);
    let x_2111 : i32 = u_xlati87;
    u_xlatb88 = (x_2111 >= 0i);
    let x_2113 : bool = u_xlatb88;
    if (x_2113) {
      let x_2117 : i32 = u_xlati83;
      let x_2119 : f32 = x_243.x_AdditionalShadowParams[x_2117].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2119, x_2119, x_2119, x_2119))));
      let x_2123 : bool = u_xlatb88;
      if (x_2123) {
        let x_2128 : vec4<f32> = u_xlat10;
        let x_2131 : vec4<f32> = u_xlat10;
        let x_2134 : vec4<bool> = (abs(vec4<f32>(x_2128.z, x_2128.z, x_2128.y, x_2128.z)) >= abs(vec4<f32>(x_2131.x, x_2131.y, x_2131.x, x_2131.x)));
        let x_2135 : vec3<bool> = vec3<bool>(x_2134.x, x_2134.y, x_2134.z);
        let x_2136 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
        let x_2139 : bool = u_xlatb11.y;
        let x_2141 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2139 & x_2141);
        let x_2143 : vec4<f32> = u_xlat10;
        let x_2146 : vec4<bool> = (-(vec4<f32>(x_2143.z, x_2143.y, x_2143.z, x_2143.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2147 : vec3<bool> = vec3<bool>(x_2146.x, x_2146.y, x_2146.w);
        let x_2148 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2147.x, x_2147.y, x_2148.z, x_2147.z);
        let x_2151 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2151);
        let x_2156 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2156);
        let x_2162 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2162);
        let x_2166 : bool = u_xlatb11.z;
        if (x_2166) {
          let x_2171 : f32 = u_xlat11.y;
          x_2167 = x_2171;
        } else {
          let x_2173 : f32 = u_xlat89;
          x_2167 = x_2173;
        }
        let x_2174 : f32 = x_2167;
        u_xlat37.x = x_2174;
        let x_2177 : bool = u_xlatb88;
        if (x_2177) {
          let x_2182 : f32 = u_xlat11.x;
          x_2178 = x_2182;
        } else {
          let x_2185 : f32 = u_xlat37.x;
          x_2178 = x_2185;
        }
        let x_2186 : f32 = x_2178;
        u_xlat88 = x_2186;
        let x_2187 : i32 = u_xlati83;
        let x_2189 : f32 = x_243.x_AdditionalShadowParams[x_2187].w;
        u_xlat11.x = trunc(x_2189);
        let x_2192 : f32 = u_xlat88;
        let x_2194 : f32 = u_xlat11.x;
        u_xlat88 = (x_2192 + x_2194);
        let x_2196 : f32 = u_xlat88;
        u_xlati87 = i32(x_2196);
      }
      let x_2198 : i32 = u_xlati87;
      u_xlati87 = (x_2198 << bitcast<u32>(2i));
      let x_2200 : vec3<f32> = vs_TEXCOORD7;
      let x_2203 : i32 = u_xlati87;
      let x_2206 : i32 = u_xlati87;
      let x_2210 : vec4<f32> = x_243.x_AdditionalLightsWorldToShadow[((x_2203 + 1i) / 4i)][((x_2206 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2200.y, x_2200.y, x_2200.y, x_2200.y) * x_2210);
      let x_2212 : i32 = u_xlati87;
      let x_2214 : i32 = u_xlati87;
      let x_2217 : vec4<f32> = x_243.x_AdditionalLightsWorldToShadow[(x_2212 / 4i)][(x_2214 % 4i)];
      let x_2218 : vec3<f32> = vs_TEXCOORD7;
      let x_2221 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2217 * vec4<f32>(x_2218.x, x_2218.x, x_2218.x, x_2218.x)) + x_2221);
      let x_2223 : i32 = u_xlati87;
      let x_2226 : i32 = u_xlati87;
      let x_2230 : vec4<f32> = x_243.x_AdditionalLightsWorldToShadow[((x_2223 + 2i) / 4i)][((x_2226 + 2i) % 4i)];
      let x_2231 : vec3<f32> = vs_TEXCOORD7;
      let x_2234 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2230 * vec4<f32>(x_2231.z, x_2231.z, x_2231.z, x_2231.z)) + x_2234);
      let x_2236 : vec4<f32> = u_xlat11;
      let x_2237 : i32 = u_xlati87;
      let x_2240 : i32 = u_xlati87;
      let x_2244 : vec4<f32> = x_243.x_AdditionalLightsWorldToShadow[((x_2237 + 3i) / 4i)][((x_2240 + 3i) % 4i)];
      u_xlat11 = (x_2236 + x_2244);
      let x_2246 : vec4<f32> = u_xlat11;
      let x_2248 : vec4<f32> = u_xlat11;
      let x_2250 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.y, x_2246.z) / vec3<f32>(x_2248.w, x_2248.w, x_2248.w));
      let x_2251 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
      let x_2254 : i32 = u_xlati83;
      let x_2256 : f32 = x_243.x_AdditionalShadowParams[x_2254].y;
      u_xlatb87 = (0.0f < x_2256);
      let x_2258 : bool = u_xlatb87;
      if (x_2258) {
        let x_2261 : i32 = u_xlati83;
        let x_2263 : f32 = x_243.x_AdditionalShadowParams[x_2261].y;
        u_xlatb87 = (1.0f == x_2263);
        let x_2265 : bool = u_xlatb87;
        if (x_2265) {
          let x_2268 : vec4<f32> = u_xlat11;
          let x_2272 : vec4<f32> = x_243.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2268.x, x_2268.y, x_2268.x, x_2268.y) + x_2272);
          let x_2275 : vec4<f32> = u_xlat12;
          let x_2276 : vec2<f32> = vec2<f32>(x_2275.x, x_2275.y);
          let x_2278 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2276.x, x_2276.y, x_2278);
          let x_2286 : vec3<f32> = txVec30;
          let x_2288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2286.xy, x_2286.z);
          u_xlat13.x = x_2288;
          let x_2291 : vec4<f32> = u_xlat12;
          let x_2292 : vec2<f32> = vec2<f32>(x_2291.z, x_2291.w);
          let x_2294 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2292.x, x_2292.y, x_2294);
          let x_2301 : vec3<f32> = txVec31;
          let x_2303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2301.xy, x_2301.z);
          u_xlat13.y = x_2303;
          let x_2305 : vec4<f32> = u_xlat11;
          let x_2309 : vec4<f32> = x_243.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y) + x_2309);
          let x_2312 : vec4<f32> = u_xlat12;
          let x_2313 : vec2<f32> = vec2<f32>(x_2312.x, x_2312.y);
          let x_2315 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2313.x, x_2313.y, x_2315);
          let x_2322 : vec3<f32> = txVec32;
          let x_2324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2322.xy, x_2322.z);
          u_xlat13.z = x_2324;
          let x_2327 : vec4<f32> = u_xlat12;
          let x_2328 : vec2<f32> = vec2<f32>(x_2327.z, x_2327.w);
          let x_2330 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
          let x_2337 : vec3<f32> = txVec33;
          let x_2339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2337.xy, x_2337.z);
          u_xlat13.w = x_2339;
          let x_2341 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2341, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2344 : i32 = u_xlati83;
          let x_2346 : f32 = x_243.x_AdditionalShadowParams[x_2344].y;
          u_xlatb88 = (2.0f == x_2346);
          let x_2348 : bool = u_xlatb88;
          if (x_2348) {
            let x_2351 : vec4<f32> = u_xlat11;
            let x_2355 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2358 : vec2<f32> = ((vec2<f32>(x_2351.x, x_2351.y) * vec2<f32>(x_2355.z, x_2355.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2359 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
            let x_2361 : vec4<f32> = u_xlat12;
            let x_2363 : vec2<f32> = floor(vec2<f32>(x_2361.x, x_2361.y));
            let x_2364 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
            let x_2367 : vec4<f32> = u_xlat11;
            let x_2370 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2373 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2370.z, x_2370.w)) + -(vec2<f32>(x_2373.x, x_2373.y)));
            let x_2377 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2377.x, x_2377.x, x_2377.y, x_2377.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2380 : vec4<f32> = u_xlat13;
            let x_2382 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2380.x, x_2380.x, x_2380.z, x_2380.z) * vec4<f32>(x_2382.x, x_2382.x, x_2382.z, x_2382.z));
            let x_2385 : vec4<f32> = u_xlat14;
            let x_2387 : vec2<f32> = (vec2<f32>(x_2385.y, x_2385.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2388 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2387.x, x_2388.y, x_2387.y, x_2388.w);
            let x_2390 : vec4<f32> = u_xlat14;
            let x_2393 : vec2<f32> = u_xlat64;
            let x_2395 : vec2<f32> = ((vec2<f32>(x_2390.x, x_2390.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2393));
            let x_2396 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
            let x_2399 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2399) + vec2<f32>(1.0f, 1.0f));
            let x_2402 : vec2<f32> = u_xlat64;
            let x_2403 : vec2<f32> = min(x_2402, vec2<f32>(0.0f, 0.0f));
            let x_2404 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
            let x_2406 : vec4<f32> = u_xlat15;
            let x_2409 : vec4<f32> = u_xlat15;
            let x_2412 : vec2<f32> = u_xlat66;
            let x_2413 : vec2<f32> = ((-(vec2<f32>(x_2406.x, x_2406.y)) * vec2<f32>(x_2409.x, x_2409.y)) + x_2412);
            let x_2414 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2416 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2416, vec2<f32>(0.0f, 0.0f));
            let x_2418 : vec2<f32> = u_xlat64;
            let x_2420 : vec2<f32> = u_xlat64;
            let x_2422 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2418) * x_2420) + vec2<f32>(x_2422.y, x_2422.w));
            let x_2425 : vec4<f32> = u_xlat15;
            let x_2427 : vec2<f32> = (vec2<f32>(x_2425.x, x_2425.y) + vec2<f32>(1.0f, 1.0f));
            let x_2428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
            let x_2430 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2430 + vec2<f32>(1.0f, 1.0f));
            let x_2432 : vec4<f32> = u_xlat14;
            let x_2434 : vec2<f32> = (vec2<f32>(x_2432.x, x_2432.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2435 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2434.x, x_2434.y, x_2435.z, x_2435.w);
            let x_2437 : vec2<f32> = u_xlat66;
            let x_2438 : vec2<f32> = (x_2437 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2439 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
            let x_2441 : vec4<f32> = u_xlat15;
            let x_2443 : vec2<f32> = (vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2444 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
            let x_2446 : vec2<f32> = u_xlat64;
            let x_2447 : vec2<f32> = (x_2446 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2448 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2450.y, x_2450.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2454 : f32 = u_xlat15.x;
            u_xlat16.z = x_2454;
            let x_2457 : f32 = u_xlat64.x;
            u_xlat16.w = x_2457;
            let x_2460 : f32 = u_xlat17.x;
            u_xlat14.z = x_2460;
            let x_2463 : f32 = u_xlat13.x;
            u_xlat14.w = x_2463;
            let x_2465 : vec4<f32> = u_xlat14;
            let x_2467 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2465.z, x_2465.w, x_2465.x, x_2465.z) + vec4<f32>(x_2467.z, x_2467.w, x_2467.x, x_2467.z));
            let x_2471 : f32 = u_xlat16.y;
            u_xlat15.z = x_2471;
            let x_2474 : f32 = u_xlat64.y;
            u_xlat15.w = x_2474;
            let x_2477 : f32 = u_xlat14.y;
            u_xlat17.z = x_2477;
            let x_2480 : f32 = u_xlat13.z;
            u_xlat17.w = x_2480;
            let x_2482 : vec4<f32> = u_xlat15;
            let x_2484 : vec4<f32> = u_xlat17;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2482.z, x_2482.y, x_2482.w) + vec3<f32>(x_2484.z, x_2484.y, x_2484.w));
            let x_2487 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat14;
            let x_2491 : vec4<f32> = u_xlat18;
            let x_2493 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.z, x_2489.w) / vec3<f32>(x_2491.z, x_2491.w, x_2491.y));
            let x_2494 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
            let x_2496 : vec4<f32> = u_xlat14;
            let x_2498 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2499 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
            let x_2501 : vec4<f32> = u_xlat17;
            let x_2503 : vec4<f32> = u_xlat13;
            let x_2505 : vec3<f32> = (vec3<f32>(x_2501.z, x_2501.y, x_2501.w) / vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
            let x_2506 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
            let x_2508 : vec4<f32> = u_xlat15;
            let x_2510 : vec3<f32> = (vec3<f32>(x_2508.x, x_2508.y, x_2508.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2511 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2516 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2518 : vec3<f32> = (vec3<f32>(x_2513.y, x_2513.x, x_2513.z) * vec3<f32>(x_2516.x, x_2516.x, x_2516.x));
            let x_2519 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
            let x_2521 : vec4<f32> = u_xlat15;
            let x_2524 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2526 : vec3<f32> = (vec3<f32>(x_2521.x, x_2521.y, x_2521.z) * vec3<f32>(x_2524.y, x_2524.y, x_2524.y));
            let x_2527 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
            let x_2530 : f32 = u_xlat15.x;
            u_xlat14.w = x_2530;
            let x_2532 : vec4<f32> = u_xlat12;
            let x_2535 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2538 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y) * vec4<f32>(x_2535.x, x_2535.y, x_2535.x, x_2535.y)) + vec4<f32>(x_2538.y, x_2538.w, x_2538.x, x_2538.w));
            let x_2541 : vec4<f32> = u_xlat12;
            let x_2544 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2547 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(x_2544.x, x_2544.y)) + vec2<f32>(x_2547.z, x_2547.w));
            let x_2551 : f32 = u_xlat14.y;
            u_xlat15.w = x_2551;
            let x_2553 : vec4<f32> = u_xlat15;
            let x_2554 : vec2<f32> = vec2<f32>(x_2553.y, x_2553.z);
            let x_2555 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2555.x, x_2554.x, x_2555.z, x_2554.y);
            let x_2557 : vec4<f32> = u_xlat12;
            let x_2560 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2563 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y) * vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y)) + vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2563.y));
            let x_2566 : vec4<f32> = u_xlat12;
            let x_2569 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2572 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.w, x_2572.y, x_2572.w, x_2572.z));
            let x_2575 : vec4<f32> = u_xlat12;
            let x_2578 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y) * vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.y)) + vec4<f32>(x_2581.x, x_2581.w, x_2581.z, x_2581.w));
            let x_2585 : vec4<f32> = u_xlat13;
            let x_2587 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2585.x, x_2585.x, x_2585.x, x_2585.y) * vec4<f32>(x_2587.z, x_2587.w, x_2587.y, x_2587.z));
            let x_2591 : vec4<f32> = u_xlat13;
            let x_2593 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2591.y, x_2591.y, x_2591.z, x_2591.z) * x_2593);
            let x_2596 : f32 = u_xlat13.z;
            let x_2598 : f32 = u_xlat18.y;
            u_xlat88 = (x_2596 * x_2598);
            let x_2601 : vec4<f32> = u_xlat16;
            let x_2602 : vec2<f32> = vec2<f32>(x_2601.x, x_2601.y);
            let x_2604 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
            let x_2611 : vec3<f32> = txVec34;
            let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
            u_xlat89 = x_2613;
            let x_2615 : vec4<f32> = u_xlat16;
            let x_2616 : vec2<f32> = vec2<f32>(x_2615.z, x_2615.w);
            let x_2618 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2616.x, x_2616.y, x_2618);
            let x_2625 : vec3<f32> = txVec35;
            let x_2627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2625.xy, x_2625.z);
            u_xlat12.x = x_2627;
            let x_2630 : f32 = u_xlat12.x;
            let x_2632 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2630 * x_2632);
            let x_2636 : f32 = u_xlat19.x;
            let x_2637 : f32 = u_xlat89;
            let x_2640 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2636 * x_2637) + x_2640);
            let x_2643 : vec2<f32> = u_xlat64;
            let x_2645 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
            let x_2652 : vec3<f32> = txVec36;
            let x_2654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
            u_xlat12.x = x_2654;
            let x_2657 : f32 = u_xlat19.z;
            let x_2659 : f32 = u_xlat12.x;
            let x_2661 : f32 = u_xlat89;
            u_xlat89 = ((x_2657 * x_2659) + x_2661);
            let x_2664 : vec4<f32> = u_xlat15;
            let x_2665 : vec2<f32> = vec2<f32>(x_2664.x, x_2664.y);
            let x_2667 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2665.x, x_2665.y, x_2667);
            let x_2674 : vec3<f32> = txVec37;
            let x_2676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2674.xy, x_2674.z);
            u_xlat12.x = x_2676;
            let x_2679 : f32 = u_xlat19.w;
            let x_2681 : f32 = u_xlat12.x;
            let x_2683 : f32 = u_xlat89;
            u_xlat89 = ((x_2679 * x_2681) + x_2683);
            let x_2686 : vec4<f32> = u_xlat17;
            let x_2687 : vec2<f32> = vec2<f32>(x_2686.x, x_2686.y);
            let x_2689 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2687.x, x_2687.y, x_2689);
            let x_2696 : vec3<f32> = txVec38;
            let x_2698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2696.xy, x_2696.z);
            u_xlat12.x = x_2698;
            let x_2701 : f32 = u_xlat20.x;
            let x_2703 : f32 = u_xlat12.x;
            let x_2705 : f32 = u_xlat89;
            u_xlat89 = ((x_2701 * x_2703) + x_2705);
            let x_2708 : vec4<f32> = u_xlat17;
            let x_2709 : vec2<f32> = vec2<f32>(x_2708.z, x_2708.w);
            let x_2711 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2709.x, x_2709.y, x_2711);
            let x_2718 : vec3<f32> = txVec39;
            let x_2720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
            u_xlat12.x = x_2720;
            let x_2723 : f32 = u_xlat20.y;
            let x_2725 : f32 = u_xlat12.x;
            let x_2727 : f32 = u_xlat89;
            u_xlat89 = ((x_2723 * x_2725) + x_2727);
            let x_2730 : vec4<f32> = u_xlat15;
            let x_2731 : vec2<f32> = vec2<f32>(x_2730.z, x_2730.w);
            let x_2733 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2731.x, x_2731.y, x_2733);
            let x_2740 : vec3<f32> = txVec40;
            let x_2742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2740.xy, x_2740.z);
            u_xlat12.x = x_2742;
            let x_2745 : f32 = u_xlat20.z;
            let x_2747 : f32 = u_xlat12.x;
            let x_2749 : f32 = u_xlat89;
            u_xlat89 = ((x_2745 * x_2747) + x_2749);
            let x_2752 : vec4<f32> = u_xlat14;
            let x_2753 : vec2<f32> = vec2<f32>(x_2752.x, x_2752.y);
            let x_2755 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
            let x_2762 : vec3<f32> = txVec41;
            let x_2764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
            u_xlat12.x = x_2764;
            let x_2767 : f32 = u_xlat20.w;
            let x_2769 : f32 = u_xlat12.x;
            let x_2771 : f32 = u_xlat89;
            u_xlat89 = ((x_2767 * x_2769) + x_2771);
            let x_2774 : vec4<f32> = u_xlat14;
            let x_2775 : vec2<f32> = vec2<f32>(x_2774.z, x_2774.w);
            let x_2777 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2775.x, x_2775.y, x_2777);
            let x_2784 : vec3<f32> = txVec42;
            let x_2786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2784.xy, x_2784.z);
            u_xlat12.x = x_2786;
            let x_2788 : f32 = u_xlat88;
            let x_2790 : f32 = u_xlat12.x;
            let x_2792 : f32 = u_xlat89;
            u_xlat87 = ((x_2788 * x_2790) + x_2792);
          } else {
            let x_2795 : vec4<f32> = u_xlat11;
            let x_2798 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2801 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(x_2798.z, x_2798.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2802 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat12;
            let x_2806 : vec2<f32> = floor(vec2<f32>(x_2804.x, x_2804.y));
            let x_2807 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
            let x_2809 : vec4<f32> = u_xlat11;
            let x_2812 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2815 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2809.x, x_2809.y) * vec2<f32>(x_2812.z, x_2812.w)) + -(vec2<f32>(x_2815.x, x_2815.y)));
            let x_2819 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2819.x, x_2819.x, x_2819.y, x_2819.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2822 : vec4<f32> = u_xlat13;
            let x_2824 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2822.x, x_2822.x, x_2822.z, x_2822.z) * vec4<f32>(x_2824.x, x_2824.x, x_2824.z, x_2824.z));
            let x_2827 : vec4<f32> = u_xlat14;
            let x_2829 : vec2<f32> = (vec2<f32>(x_2827.y, x_2827.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2830 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2830.x, x_2829.x, x_2830.z, x_2829.y);
            let x_2832 : vec4<f32> = u_xlat14;
            let x_2835 : vec2<f32> = u_xlat64;
            let x_2837 : vec2<f32> = ((vec2<f32>(x_2832.x, x_2832.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2835));
            let x_2838 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2837.x, x_2838.y, x_2837.y, x_2838.w);
            let x_2840 : vec2<f32> = u_xlat64;
            let x_2842 : vec2<f32> = (-(x_2840) + vec2<f32>(1.0f, 1.0f));
            let x_2843 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
            let x_2845 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2845, vec2<f32>(0.0f, 0.0f));
            let x_2847 : vec2<f32> = u_xlat66;
            let x_2849 : vec2<f32> = u_xlat66;
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2853 : vec2<f32> = ((-(x_2847) * x_2849) + vec2<f32>(x_2851.x, x_2851.y));
            let x_2854 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2856 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2856, vec2<f32>(0.0f, 0.0f));
            let x_2859 : vec2<f32> = u_xlat66;
            let x_2861 : vec2<f32> = u_xlat66;
            let x_2863 : vec4<f32> = u_xlat13;
            let x_2865 : vec2<f32> = ((-(x_2859) * x_2861) + vec2<f32>(x_2863.y, x_2863.w));
            let x_2866 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2865.x, x_2866.y, x_2865.y);
            let x_2868 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = (vec2<f32>(x_2868.x, x_2868.y) + vec2<f32>(2.0f, 2.0f));
            let x_2871 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2870.x, x_2870.y, x_2871.z, x_2871.w);
            let x_2873 : vec3<f32> = u_xlat39;
            let x_2875 : vec2<f32> = (vec2<f32>(x_2873.x, x_2873.z) + vec2<f32>(2.0f, 2.0f));
            let x_2876 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2876.x, x_2875.x, x_2876.z, x_2875.y);
            let x_2879 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2879 * 0.08163200318813323975f);
            let x_2882 : vec4<f32> = u_xlat13;
            let x_2884 : vec3<f32> = (vec3<f32>(x_2882.z, x_2882.x, x_2882.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2885 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2884.x, x_2884.y, x_2884.z, x_2885.w);
            let x_2887 : vec4<f32> = u_xlat14;
            let x_2889 : vec2<f32> = (vec2<f32>(x_2887.x, x_2887.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2889.x, x_2889.y, x_2890.z, x_2890.w);
            let x_2893 : f32 = u_xlat17.y;
            u_xlat16.x = x_2893;
            let x_2895 : vec2<f32> = u_xlat64;
            let x_2898 : vec2<f32> = ((vec2<f32>(x_2895.x, x_2895.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2899 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2899.x, x_2898.x, x_2899.z, x_2898.y);
            let x_2901 : vec2<f32> = u_xlat64;
            let x_2904 : vec2<f32> = ((vec2<f32>(x_2901.x, x_2901.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2905 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2904.x, x_2905.y, x_2904.y, x_2905.w);
            let x_2908 : f32 = u_xlat13.x;
            u_xlat14.y = x_2908;
            let x_2911 : f32 = u_xlat15.y;
            u_xlat14.w = x_2911;
            let x_2913 : vec4<f32> = u_xlat14;
            let x_2914 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2913 + x_2914);
            let x_2916 : vec2<f32> = u_xlat64;
            let x_2919 : vec2<f32> = ((vec2<f32>(x_2916.y, x_2916.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2920 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2920.x, x_2919.x, x_2920.z, x_2919.y);
            let x_2922 : vec2<f32> = u_xlat64;
            let x_2925 : vec2<f32> = ((vec2<f32>(x_2922.y, x_2922.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2926 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2925.x, x_2926.y, x_2925.y, x_2926.w);
            let x_2929 : f32 = u_xlat13.y;
            u_xlat15.y = x_2929;
            let x_2931 : vec4<f32> = u_xlat15;
            let x_2932 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2931 + x_2932);
            let x_2934 : vec4<f32> = u_xlat14;
            let x_2935 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2934 / x_2935);
            let x_2937 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2937 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2939 : vec4<f32> = u_xlat15;
            let x_2940 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2939 / x_2940);
            let x_2942 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2942 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2944 : vec4<f32> = u_xlat14;
            let x_2947 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2944.w, x_2944.x, x_2944.y, x_2944.z) * vec4<f32>(x_2947.x, x_2947.x, x_2947.x, x_2947.x));
            let x_2950 : vec4<f32> = u_xlat15;
            let x_2953 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2950.x, x_2950.w, x_2950.y, x_2950.z) * vec4<f32>(x_2953.y, x_2953.y, x_2953.y, x_2953.y));
            let x_2956 : vec4<f32> = u_xlat14;
            let x_2957 : vec3<f32> = vec3<f32>(x_2956.y, x_2956.z, x_2956.w);
            let x_2958 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2957.x, x_2958.y, x_2957.y, x_2957.z);
            let x_2961 : f32 = u_xlat15.x;
            u_xlat17.y = x_2961;
            let x_2963 : vec4<f32> = u_xlat12;
            let x_2966 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2969 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2963.x, x_2963.y, x_2963.x, x_2963.y) * vec4<f32>(x_2966.x, x_2966.y, x_2966.x, x_2966.y)) + vec4<f32>(x_2969.x, x_2969.y, x_2969.z, x_2969.y));
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2975 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2972.x, x_2972.y) * vec2<f32>(x_2975.x, x_2975.y)) + vec2<f32>(x_2978.w, x_2978.y));
            let x_2982 : f32 = u_xlat17.y;
            u_xlat14.y = x_2982;
            let x_2985 : f32 = u_xlat15.z;
            u_xlat17.y = x_2985;
            let x_2987 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.y) * vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y)) + vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2993.y));
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2999 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3002 : vec4<f32> = u_xlat17;
            let x_3004 : vec2<f32> = ((vec2<f32>(x_2996.x, x_2996.y) * vec2<f32>(x_2999.x, x_2999.y)) + vec2<f32>(x_3002.w, x_3002.y));
            let x_3005 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
            let x_3008 : f32 = u_xlat17.y;
            u_xlat14.z = x_3008;
            let x_3011 : vec4<f32> = u_xlat12;
            let x_3014 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3011.x, x_3011.y, x_3011.x, x_3011.y) * vec4<f32>(x_3014.x, x_3014.y, x_3014.x, x_3014.y)) + vec4<f32>(x_3017.x, x_3017.y, x_3017.x, x_3017.z));
            let x_3021 : f32 = u_xlat15.w;
            u_xlat17.y = x_3021;
            let x_3024 : vec4<f32> = u_xlat12;
            let x_3027 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y) * vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y)) + vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3030.y));
            let x_3034 : vec4<f32> = u_xlat12;
            let x_3037 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3040 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3034.x, x_3034.y) * vec2<f32>(x_3037.x, x_3037.y)) + vec2<f32>(x_3040.w, x_3040.y));
            let x_3044 : f32 = u_xlat17.y;
            u_xlat14.w = x_3044;
            let x_3047 : vec4<f32> = u_xlat12;
            let x_3050 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3047.x, x_3047.y) * vec2<f32>(x_3050.x, x_3050.y)) + vec2<f32>(x_3053.x, x_3053.w));
            let x_3056 : vec4<f32> = u_xlat17;
            let x_3057 : vec3<f32> = vec3<f32>(x_3056.x, x_3056.z, x_3056.w);
            let x_3058 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3057.x, x_3058.y, x_3057.y, x_3057.z);
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3063 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y) * vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y)) + vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3066.y));
            let x_3070 : vec4<f32> = u_xlat12;
            let x_3073 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3076 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3073.x, x_3073.y)) + vec2<f32>(x_3076.w, x_3076.y));
            let x_3080 : f32 = u_xlat14.x;
            u_xlat15.x = x_3080;
            let x_3082 : vec4<f32> = u_xlat12;
            let x_3085 : vec4<f32> = x_243.x_AdditionalShadowmapSize;
            let x_3088 : vec4<f32> = u_xlat15;
            let x_3090 : vec2<f32> = ((vec2<f32>(x_3082.x, x_3082.y) * vec2<f32>(x_3085.x, x_3085.y)) + vec2<f32>(x_3088.x, x_3088.y));
            let x_3091 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3090.x, x_3090.y, x_3091.z, x_3091.w);
            let x_3094 : vec4<f32> = u_xlat13;
            let x_3096 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3094.x, x_3094.x, x_3094.x, x_3094.x) * x_3096);
            let x_3099 : vec4<f32> = u_xlat13;
            let x_3101 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3099.y, x_3099.y, x_3099.y, x_3099.y) * x_3101);
            let x_3104 : vec4<f32> = u_xlat13;
            let x_3106 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3104.z, x_3104.z, x_3104.z, x_3104.z) * x_3106);
            let x_3108 : vec4<f32> = u_xlat13;
            let x_3110 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3108.w, x_3108.w, x_3108.w, x_3108.w) * x_3110);
            let x_3113 : vec4<f32> = u_xlat18;
            let x_3114 : vec2<f32> = vec2<f32>(x_3113.x, x_3113.y);
            let x_3116 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3123 : vec3<f32> = txVec43;
            let x_3125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
            u_xlat88 = x_3125;
            let x_3127 : vec4<f32> = u_xlat18;
            let x_3128 : vec2<f32> = vec2<f32>(x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
            let x_3137 : vec3<f32> = txVec44;
            let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
            u_xlat89 = x_3139;
            let x_3140 : f32 = u_xlat89;
            let x_3142 : f32 = u_xlat23.y;
            u_xlat89 = (x_3140 * x_3142);
            let x_3145 : f32 = u_xlat23.x;
            let x_3146 : f32 = u_xlat88;
            let x_3148 : f32 = u_xlat89;
            u_xlat88 = ((x_3145 * x_3146) + x_3148);
            let x_3151 : vec2<f32> = u_xlat64;
            let x_3153 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec45;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat89 = x_3162;
            let x_3164 : f32 = u_xlat23.z;
            let x_3165 : f32 = u_xlat89;
            let x_3167 : f32 = u_xlat88;
            u_xlat88 = ((x_3164 * x_3165) + x_3167);
            let x_3170 : vec4<f32> = u_xlat21;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.x, x_3170.y);
            let x_3173 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3171.x, x_3171.y, x_3173);
            let x_3180 : vec3<f32> = txVec46;
            let x_3182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3180.xy, x_3180.z);
            u_xlat89 = x_3182;
            let x_3184 : f32 = u_xlat23.w;
            let x_3185 : f32 = u_xlat89;
            let x_3187 : f32 = u_xlat88;
            u_xlat88 = ((x_3184 * x_3185) + x_3187);
            let x_3190 : vec4<f32> = u_xlat19;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.x, x_3190.y);
            let x_3193 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec47;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat89 = x_3202;
            let x_3204 : f32 = u_xlat24.x;
            let x_3205 : f32 = u_xlat89;
            let x_3207 : f32 = u_xlat88;
            u_xlat88 = ((x_3204 * x_3205) + x_3207);
            let x_3210 : vec4<f32> = u_xlat19;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.z, x_3210.w);
            let x_3213 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec48;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat89 = x_3222;
            let x_3224 : f32 = u_xlat24.y;
            let x_3225 : f32 = u_xlat89;
            let x_3227 : f32 = u_xlat88;
            u_xlat88 = ((x_3224 * x_3225) + x_3227);
            let x_3230 : vec4<f32> = u_xlat20;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
            let x_3233 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec49;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat89 = x_3242;
            let x_3244 : f32 = u_xlat24.z;
            let x_3245 : f32 = u_xlat89;
            let x_3247 : f32 = u_xlat88;
            u_xlat88 = ((x_3244 * x_3245) + x_3247);
            let x_3250 : vec4<f32> = u_xlat21;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.z, x_3250.w);
            let x_3253 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec50;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat89 = x_3262;
            let x_3264 : f32 = u_xlat24.w;
            let x_3265 : f32 = u_xlat89;
            let x_3267 : f32 = u_xlat88;
            u_xlat88 = ((x_3264 * x_3265) + x_3267);
            let x_3270 : vec4<f32> = u_xlat22;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.x, x_3270.y);
            let x_3273 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec51;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat89 = x_3282;
            let x_3284 : f32 = u_xlat25.x;
            let x_3285 : f32 = u_xlat89;
            let x_3287 : f32 = u_xlat88;
            u_xlat88 = ((x_3284 * x_3285) + x_3287);
            let x_3290 : vec4<f32> = u_xlat22;
            let x_3291 : vec2<f32> = vec2<f32>(x_3290.z, x_3290.w);
            let x_3293 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec52;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat89 = x_3302;
            let x_3304 : f32 = u_xlat25.y;
            let x_3305 : f32 = u_xlat89;
            let x_3307 : f32 = u_xlat88;
            u_xlat88 = ((x_3304 * x_3305) + x_3307);
            let x_3310 : vec2<f32> = u_xlat40;
            let x_3312 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec53;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat89 = x_3321;
            let x_3323 : f32 = u_xlat25.z;
            let x_3324 : f32 = u_xlat89;
            let x_3326 : f32 = u_xlat88;
            u_xlat88 = ((x_3323 * x_3324) + x_3326);
            let x_3329 : vec2<f32> = u_xlat72;
            let x_3331 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec54;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat89 = x_3340;
            let x_3342 : f32 = u_xlat25.w;
            let x_3343 : f32 = u_xlat89;
            let x_3345 : f32 = u_xlat88;
            u_xlat88 = ((x_3342 * x_3343) + x_3345);
            let x_3348 : vec4<f32> = u_xlat17;
            let x_3349 : vec2<f32> = vec2<f32>(x_3348.x, x_3348.y);
            let x_3351 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
            let x_3358 : vec3<f32> = txVec55;
            let x_3360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
            u_xlat89 = x_3360;
            let x_3362 : f32 = u_xlat13.x;
            let x_3363 : f32 = u_xlat89;
            let x_3365 : f32 = u_xlat88;
            u_xlat88 = ((x_3362 * x_3363) + x_3365);
            let x_3368 : vec4<f32> = u_xlat17;
            let x_3369 : vec2<f32> = vec2<f32>(x_3368.z, x_3368.w);
            let x_3371 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3369.x, x_3369.y, x_3371);
            let x_3378 : vec3<f32> = txVec56;
            let x_3380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3378.xy, x_3378.z);
            u_xlat89 = x_3380;
            let x_3382 : f32 = u_xlat13.y;
            let x_3383 : f32 = u_xlat89;
            let x_3385 : f32 = u_xlat88;
            u_xlat88 = ((x_3382 * x_3383) + x_3385);
            let x_3388 : vec2<f32> = u_xlat67;
            let x_3390 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec57;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat89 = x_3399;
            let x_3401 : f32 = u_xlat13.z;
            let x_3402 : f32 = u_xlat89;
            let x_3404 : f32 = u_xlat88;
            u_xlat88 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
            let x_3410 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec58;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat89 = x_3419;
            let x_3421 : f32 = u_xlat13.w;
            let x_3422 : f32 = u_xlat89;
            let x_3424 : f32 = u_xlat88;
            u_xlat87 = ((x_3421 * x_3422) + x_3424);
          }
        }
      } else {
        let x_3428 : vec4<f32> = u_xlat11;
        let x_3429 : vec2<f32> = vec2<f32>(x_3428.x, x_3428.y);
        let x_3431 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3429.x, x_3429.y, x_3431);
        let x_3438 : vec3<f32> = txVec59;
        let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
        u_xlat87 = x_3440;
      }
      let x_3441 : i32 = u_xlati83;
      let x_3443 : f32 = x_243.x_AdditionalShadowParams[x_3441].x;
      u_xlat88 = (1.0f + -(x_3443));
      let x_3446 : f32 = u_xlat87;
      let x_3447 : i32 = u_xlati83;
      let x_3449 : f32 = x_243.x_AdditionalShadowParams[x_3447].x;
      let x_3451 : f32 = u_xlat88;
      u_xlat87 = ((x_3446 * x_3449) + x_3451);
      let x_3454 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3454);
      let x_3457 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3457 >= 1.0f);
      let x_3460 : bool = u_xlatb88;
      let x_3462 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3460 | x_3462);
      let x_3464 : bool = u_xlatb88;
      let x_3465 : f32 = u_xlat87;
      u_xlat87 = select(x_3465, 1.0f, x_3464);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3468 : f32 = u_xlat87;
    u_xlat88 = (-(x_3468) + 1.0f);
    let x_3471 : f32 = u_xlat1;
    let x_3472 : f32 = u_xlat88;
    let x_3474 : f32 = u_xlat87;
    u_xlat87 = ((x_3471 * x_3472) + x_3474);
    let x_3477 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3477 & 31i)));
    let x_3481 : i32 = u_xlati88;
    let x_3484 : f32 = x_1567.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3481) & bitcast<u32>(x_3484)));
    let x_3488 : i32 = u_xlati88;
    if ((x_3488 != 0i)) {
      let x_3492 : i32 = u_xlati83;
      let x_3494 : f32 = x_1567.x_AdditionalLightsLightTypes[x_3492].el;
      u_xlati88 = i32(x_3494);
      let x_3497 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3497 != 0i));
      let x_3501 : i32 = u_xlati83;
      u_xlati37 = (x_3501 << bitcast<u32>(2i));
      let x_3503 : i32 = u_xlati11;
      if ((x_3503 != 0i)) {
        let x_3507 : vec3<f32> = vs_TEXCOORD7;
        let x_3509 : i32 = u_xlati37;
        let x_3512 : i32 = u_xlati37;
        let x_3516 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3509 + 1i) / 4i)][((x_3512 + 1i) % 4i)];
        let x_3518 : vec3<f32> = (vec3<f32>(x_3507.y, x_3507.y, x_3507.y) * vec3<f32>(x_3516.x, x_3516.y, x_3516.w));
        let x_3519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3518.x, x_3519.y, x_3518.y, x_3518.z);
        let x_3521 : i32 = u_xlati37;
        let x_3523 : i32 = u_xlati37;
        let x_3526 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[(x_3521 / 4i)][(x_3523 % 4i)];
        let x_3528 : vec3<f32> = vs_TEXCOORD7;
        let x_3531 : vec4<f32> = u_xlat11;
        let x_3533 : vec3<f32> = ((vec3<f32>(x_3526.x, x_3526.y, x_3526.w) * vec3<f32>(x_3528.x, x_3528.x, x_3528.x)) + vec3<f32>(x_3531.x, x_3531.z, x_3531.w));
        let x_3534 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3533.x, x_3534.y, x_3533.y, x_3533.z);
        let x_3536 : i32 = u_xlati37;
        let x_3539 : i32 = u_xlati37;
        let x_3543 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3536 + 2i) / 4i)][((x_3539 + 2i) % 4i)];
        let x_3545 : vec3<f32> = vs_TEXCOORD7;
        let x_3548 : vec4<f32> = u_xlat11;
        let x_3550 : vec3<f32> = ((vec3<f32>(x_3543.x, x_3543.y, x_3543.w) * vec3<f32>(x_3545.z, x_3545.z, x_3545.z)) + vec3<f32>(x_3548.x, x_3548.z, x_3548.w));
        let x_3551 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3550.x, x_3551.y, x_3550.y, x_3550.z);
        let x_3553 : vec4<f32> = u_xlat11;
        let x_3555 : i32 = u_xlati37;
        let x_3558 : i32 = u_xlati37;
        let x_3562 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3555 + 3i) / 4i)][((x_3558 + 3i) % 4i)];
        let x_3564 : vec3<f32> = (vec3<f32>(x_3553.x, x_3553.z, x_3553.w) + vec3<f32>(x_3562.x, x_3562.y, x_3562.w));
        let x_3565 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3564.x, x_3565.y, x_3564.y, x_3564.z);
        let x_3567 : vec4<f32> = u_xlat11;
        let x_3569 : vec4<f32> = u_xlat11;
        let x_3571 : vec2<f32> = (vec2<f32>(x_3567.x, x_3567.z) / vec2<f32>(x_3569.w, x_3569.w));
        let x_3572 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3571.x, x_3572.y, x_3571.y, x_3572.w);
        let x_3574 : vec4<f32> = u_xlat11;
        let x_3577 : vec2<f32> = ((vec2<f32>(x_3574.x, x_3574.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3577.x, x_3578.y, x_3577.y, x_3578.w);
        let x_3580 : vec4<f32> = u_xlat11;
        let x_3584 : vec2<f32> = clamp(vec2<f32>(x_3580.x, x_3580.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3585 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3584.x, x_3585.y, x_3584.y, x_3585.w);
        let x_3587 : i32 = u_xlati83;
        let x_3589 : vec4<f32> = x_1567.x_AdditionalLightsCookieAtlasUVRects[x_3587];
        let x_3591 : vec4<f32> = u_xlat11;
        let x_3594 : i32 = u_xlati83;
        let x_3596 : vec4<f32> = x_1567.x_AdditionalLightsCookieAtlasUVRects[x_3594];
        let x_3598 : vec2<f32> = ((vec2<f32>(x_3589.x, x_3589.y) * vec2<f32>(x_3591.x, x_3591.z)) + vec2<f32>(x_3596.z, x_3596.w));
        let x_3599 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3598.x, x_3599.y, x_3598.y, x_3599.w);
      } else {
        let x_3602 : i32 = u_xlati88;
        u_xlatb88 = (x_3602 == 1i);
        let x_3604 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3604);
        let x_3606 : i32 = u_xlati88;
        if ((x_3606 != 0i)) {
          let x_3610 : vec3<f32> = vs_TEXCOORD7;
          let x_3612 : i32 = u_xlati37;
          let x_3615 : i32 = u_xlati37;
          let x_3619 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3612 + 1i) / 4i)][((x_3615 + 1i) % 4i)];
          let x_3621 : vec2<f32> = (vec2<f32>(x_3610.y, x_3610.y) * vec2<f32>(x_3619.x, x_3619.y));
          let x_3622 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3621.x, x_3621.y, x_3622.z, x_3622.w);
          let x_3624 : i32 = u_xlati37;
          let x_3626 : i32 = u_xlati37;
          let x_3629 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[(x_3624 / 4i)][(x_3626 % 4i)];
          let x_3631 : vec3<f32> = vs_TEXCOORD7;
          let x_3634 : vec4<f32> = u_xlat12;
          let x_3636 : vec2<f32> = ((vec2<f32>(x_3629.x, x_3629.y) * vec2<f32>(x_3631.x, x_3631.x)) + vec2<f32>(x_3634.x, x_3634.y));
          let x_3637 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3636.x, x_3636.y, x_3637.z, x_3637.w);
          let x_3639 : i32 = u_xlati37;
          let x_3642 : i32 = u_xlati37;
          let x_3646 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3639 + 2i) / 4i)][((x_3642 + 2i) % 4i)];
          let x_3648 : vec3<f32> = vs_TEXCOORD7;
          let x_3651 : vec4<f32> = u_xlat12;
          let x_3653 : vec2<f32> = ((vec2<f32>(x_3646.x, x_3646.y) * vec2<f32>(x_3648.z, x_3648.z)) + vec2<f32>(x_3651.x, x_3651.y));
          let x_3654 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3653.x, x_3653.y, x_3654.z, x_3654.w);
          let x_3656 : vec4<f32> = u_xlat12;
          let x_3658 : i32 = u_xlati37;
          let x_3661 : i32 = u_xlati37;
          let x_3665 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3658 + 3i) / 4i)][((x_3661 + 3i) % 4i)];
          let x_3667 : vec2<f32> = (vec2<f32>(x_3656.x, x_3656.y) + vec2<f32>(x_3665.x, x_3665.y));
          let x_3668 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3667.x, x_3667.y, x_3668.z, x_3668.w);
          let x_3670 : vec4<f32> = u_xlat12;
          let x_3673 : vec2<f32> = ((vec2<f32>(x_3670.x, x_3670.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3674 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3673.x, x_3673.y, x_3674.z, x_3674.w);
          let x_3676 : vec4<f32> = u_xlat12;
          let x_3678 : vec2<f32> = fract(vec2<f32>(x_3676.x, x_3676.y));
          let x_3679 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3678.x, x_3678.y, x_3679.z, x_3679.w);
          let x_3681 : i32 = u_xlati83;
          let x_3683 : vec4<f32> = x_1567.x_AdditionalLightsCookieAtlasUVRects[x_3681];
          let x_3685 : vec4<f32> = u_xlat12;
          let x_3688 : i32 = u_xlati83;
          let x_3690 : vec4<f32> = x_1567.x_AdditionalLightsCookieAtlasUVRects[x_3688];
          let x_3692 : vec2<f32> = ((vec2<f32>(x_3683.x, x_3683.y) * vec2<f32>(x_3685.x, x_3685.y)) + vec2<f32>(x_3690.z, x_3690.w));
          let x_3693 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3692.x, x_3693.y, x_3692.y, x_3693.w);
        } else {
          let x_3696 : vec3<f32> = vs_TEXCOORD7;
          let x_3698 : i32 = u_xlati37;
          let x_3701 : i32 = u_xlati37;
          let x_3705 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3698 + 1i) / 4i)][((x_3701 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3696.y, x_3696.y, x_3696.y, x_3696.y) * x_3705);
          let x_3707 : i32 = u_xlati37;
          let x_3709 : i32 = u_xlati37;
          let x_3712 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[(x_3707 / 4i)][(x_3709 % 4i)];
          let x_3713 : vec3<f32> = vs_TEXCOORD7;
          let x_3716 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3712 * vec4<f32>(x_3713.x, x_3713.x, x_3713.x, x_3713.x)) + x_3716);
          let x_3718 : i32 = u_xlati37;
          let x_3721 : i32 = u_xlati37;
          let x_3725 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3718 + 2i) / 4i)][((x_3721 + 2i) % 4i)];
          let x_3726 : vec3<f32> = vs_TEXCOORD7;
          let x_3729 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3725 * vec4<f32>(x_3726.z, x_3726.z, x_3726.z, x_3726.z)) + x_3729);
          let x_3731 : vec4<f32> = u_xlat12;
          let x_3732 : i32 = u_xlati37;
          let x_3735 : i32 = u_xlati37;
          let x_3739 : vec4<f32> = x_1567.x_AdditionalLightsWorldToLights[((x_3732 + 3i) / 4i)][((x_3735 + 3i) % 4i)];
          u_xlat12 = (x_3731 + x_3739);
          let x_3741 : vec4<f32> = u_xlat12;
          let x_3743 : vec4<f32> = u_xlat12;
          let x_3745 : vec3<f32> = (vec3<f32>(x_3741.x, x_3741.y, x_3741.z) / vec3<f32>(x_3743.w, x_3743.w, x_3743.w));
          let x_3746 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3745.x, x_3745.y, x_3745.z, x_3746.w);
          let x_3748 : vec4<f32> = u_xlat12;
          let x_3750 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3748.x, x_3748.y, x_3748.z), vec3<f32>(x_3750.x, x_3750.y, x_3750.z));
          let x_3753 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3753);
          let x_3755 : f32 = u_xlat88;
          let x_3757 : vec4<f32> = u_xlat12;
          let x_3759 : vec3<f32> = (vec3<f32>(x_3755, x_3755, x_3755) * vec3<f32>(x_3757.x, x_3757.y, x_3757.z));
          let x_3760 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3759.x, x_3759.y, x_3759.z, x_3760.w);
          let x_3762 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3762.x, x_3762.y, x_3762.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3767 : f32 = u_xlat88;
          u_xlat88 = max(x_3767, 0.00000099999999747524f);
          let x_3770 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3770);
          let x_3772 : f32 = u_xlat88;
          let x_3774 : vec4<f32> = u_xlat12;
          let x_3776 : vec3<f32> = (vec3<f32>(x_3772, x_3772, x_3772) * vec3<f32>(x_3774.z, x_3774.x, x_3774.y));
          let x_3777 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3776.x, x_3776.y, x_3776.z, x_3777.w);
          let x_3780 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3780);
          let x_3784 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3784, 0.0f, 1.0f);
          let x_3788 : vec4<f32> = u_xlat13;
          let x_3790 : vec4<bool> = (vec4<f32>(x_3788.y, x_3788.y, x_3788.z, x_3788.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3791 : vec2<bool> = vec2<bool>(x_3790.x, x_3790.z);
          let x_3792 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3791.x, x_3792.y, x_3791.y);
          let x_3795 : bool = u_xlatb37.x;
          if (x_3795) {
            let x_3800 : f32 = u_xlat13.x;
            x_3796 = x_3800;
          } else {
            let x_3803 : f32 = u_xlat13.x;
            x_3796 = -(x_3803);
          }
          let x_3805 : f32 = x_3796;
          u_xlat37.x = x_3805;
          let x_3808 : bool = u_xlatb37.z;
          if (x_3808) {
            let x_3813 : f32 = u_xlat13.x;
            x_3809 = x_3813;
          } else {
            let x_3816 : f32 = u_xlat13.x;
            x_3809 = -(x_3816);
          }
          let x_3818 : f32 = x_3809;
          u_xlat37.z = x_3818;
          let x_3820 : vec4<f32> = u_xlat12;
          let x_3822 : f32 = u_xlat88;
          let x_3825 : vec3<f32> = u_xlat37;
          let x_3827 : vec2<f32> = ((vec2<f32>(x_3820.x, x_3820.y) * vec2<f32>(x_3822, x_3822)) + vec2<f32>(x_3825.x, x_3825.z));
          let x_3828 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3827.x, x_3828.y, x_3827.y);
          let x_3830 : vec3<f32> = u_xlat37;
          let x_3833 : vec2<f32> = ((vec2<f32>(x_3830.x, x_3830.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3834 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3833.x, x_3834.y, x_3833.y);
          let x_3836 : vec3<f32> = u_xlat37;
          let x_3840 : vec2<f32> = clamp(vec2<f32>(x_3836.x, x_3836.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3841 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3840.x, x_3841.y, x_3840.y);
          let x_3843 : i32 = u_xlati83;
          let x_3845 : vec4<f32> = x_1567.x_AdditionalLightsCookieAtlasUVRects[x_3843];
          let x_3847 : vec3<f32> = u_xlat37;
          let x_3850 : i32 = u_xlati83;
          let x_3852 : vec4<f32> = x_1567.x_AdditionalLightsCookieAtlasUVRects[x_3850];
          let x_3854 : vec2<f32> = ((vec2<f32>(x_3845.x, x_3845.y) * vec2<f32>(x_3847.x, x_3847.z)) + vec2<f32>(x_3852.z, x_3852.w));
          let x_3855 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3854.x, x_3855.y, x_3854.y, x_3855.w);
        }
      }
      let x_3862 : vec4<f32> = u_xlat11;
      let x_3864 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3862.x, x_3862.z), 0.0f);
      u_xlat11 = x_3864;
      let x_3866 : bool = u_xlatb4.z;
      if (x_3866) {
        let x_3871 : f32 = u_xlat11.w;
        x_3867 = x_3871;
      } else {
        let x_3874 : f32 = u_xlat11.x;
        x_3867 = x_3874;
      }
      let x_3875 : f32 = x_3867;
      u_xlat88 = x_3875;
      let x_3877 : bool = u_xlatb4.x;
      if (x_3877) {
        let x_3881 : vec4<f32> = u_xlat11;
        x_3878 = vec3<f32>(x_3881.x, x_3881.y, x_3881.z);
      } else {
        let x_3884 : f32 = u_xlat88;
        x_3878 = vec3<f32>(x_3884, x_3884, x_3884);
      }
      let x_3886 : vec3<f32> = x_3878;
      let x_3887 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3886.x, x_3886.y, x_3886.z, x_3887.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3893 : vec4<f32> = u_xlat11;
    let x_3895 : i32 = u_xlati83;
    let x_3897 : vec4<f32> = x_2028.x_AdditionalLightsColor[x_3895];
    let x_3899 : vec3<f32> = (vec3<f32>(x_3893.x, x_3893.y, x_3893.z) * vec3<f32>(x_3897.x, x_3897.y, x_3897.z));
    let x_3900 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3899.x, x_3899.y, x_3899.z, x_3900.w);
    let x_3902 : f32 = u_xlat84;
    let x_3903 : f32 = u_xlat87;
    u_xlat83 = (x_3902 * x_3903);
    let x_3905 : vec3<f32> = u_xlat27;
    let x_3906 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3905, vec3<f32>(x_3906.x, x_3906.y, x_3906.z));
    let x_3909 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3909, 0.0f, 1.0f);
    let x_3911 : f32 = u_xlat83;
    let x_3912 : f32 = u_xlat84;
    u_xlat83 = (x_3911 * x_3912);
    let x_3914 : f32 = u_xlat83;
    let x_3916 : vec4<f32> = u_xlat11;
    let x_3918 : vec3<f32> = (vec3<f32>(x_3914, x_3914, x_3914) * vec3<f32>(x_3916.x, x_3916.y, x_3916.z));
    let x_3919 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3918.x, x_3918.y, x_3918.z, x_3919.w);
    let x_3921 : vec4<f32> = u_xlat9;
    let x_3923 : f32 = u_xlat85;
    let x_3926 : vec4<f32> = u_xlat6;
    let x_3928 : vec3<f32> = ((vec3<f32>(x_3921.x, x_3921.y, x_3921.z) * vec3<f32>(x_3923, x_3923, x_3923)) + vec3<f32>(x_3926.x, x_3926.y, x_3926.z));
    let x_3929 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3928.x, x_3928.y, x_3928.z, x_3929.w);
    let x_3931 : vec4<f32> = u_xlat9;
    let x_3933 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3931.x, x_3931.y, x_3931.z), vec3<f32>(x_3933.x, x_3933.y, x_3933.z));
    let x_3936 : f32 = u_xlat83;
    u_xlat83 = max(x_3936, 1.17549435e-38f);
    let x_3938 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3938);
    let x_3940 : f32 = u_xlat83;
    let x_3942 : vec4<f32> = u_xlat9;
    let x_3944 : vec3<f32> = (vec3<f32>(x_3940, x_3940, x_3940) * vec3<f32>(x_3942.x, x_3942.y, x_3942.z));
    let x_3945 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
    let x_3947 : vec3<f32> = u_xlat27;
    let x_3948 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_3947, vec3<f32>(x_3948.x, x_3948.y, x_3948.z));
    let x_3951 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3951, 0.0f, 1.0f);
    let x_3953 : vec4<f32> = u_xlat10;
    let x_3955 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3953.x, x_3953.y, x_3953.z), vec3<f32>(x_3955.x, x_3955.y, x_3955.z));
    let x_3958 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3958, 0.0f, 1.0f);
    let x_3960 : f32 = u_xlat83;
    let x_3961 : f32 = u_xlat83;
    u_xlat83 = (x_3960 * x_3961);
    let x_3963 : f32 = u_xlat83;
    let x_3965 : f32 = u_xlat8.x;
    u_xlat83 = ((x_3963 * x_3965) + 1.00001001358032226562f);
    let x_3968 : f32 = u_xlat84;
    let x_3969 : f32 = u_xlat84;
    u_xlat84 = (x_3968 * x_3969);
    let x_3971 : f32 = u_xlat83;
    let x_3972 : f32 = u_xlat83;
    u_xlat83 = (x_3971 * x_3972);
    let x_3974 : f32 = u_xlat84;
    u_xlat84 = max(x_3974, 0.10000000149011611938f);
    let x_3976 : f32 = u_xlat83;
    let x_3977 : f32 = u_xlat84;
    u_xlat83 = (x_3976 * x_3977);
    let x_3979 : f32 = u_xlat29;
    let x_3980 : f32 = u_xlat83;
    u_xlat83 = (x_3979 * x_3980);
    let x_3982 : f32 = u_xlat30;
    let x_3983 : f32 = u_xlat83;
    u_xlat83 = (x_3982 / x_3983);
    let x_3985 : vec4<f32> = u_xlat0;
    let x_3987 : f32 = u_xlat83;
    let x_3990 : vec4<f32> = u_xlat3;
    let x_3992 : vec3<f32> = ((vec3<f32>(x_3985.x, x_3985.y, x_3985.z) * vec3<f32>(x_3987, x_3987, x_3987)) + vec3<f32>(x_3990.x, x_3990.z, x_3990.w));
    let x_3993 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3992.x, x_3992.y, x_3992.z, x_3993.w);
    let x_3995 : vec4<f32> = u_xlat9;
    let x_3997 : vec4<f32> = u_xlat11;
    let x_4000 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3995.x, x_3995.y, x_3995.z) * vec3<f32>(x_3997.x, x_3997.y, x_3997.z)) + x_4000);

    continuing {
      let x_4002 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4002 + bitcast<u32>(1i));
    }
  }
  let x_4004 : vec4<f32> = u_xlat7;
  let x_4006 : vec4<f32> = u_xlat5;
  let x_4009 : vec3<f32> = u_xlat28;
  let x_4010 : vec3<f32> = ((vec3<f32>(x_4004.x, x_4004.y, x_4004.z) * vec3<f32>(x_4006.x, x_4006.y, x_4006.z)) + x_4009);
  let x_4011 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4010.x, x_4010.y, x_4010.z, x_4011.w);
  let x_4013 : vec3<f32> = u_xlat34;
  let x_4014 : vec4<f32> = u_xlat0;
  let x_4016 : vec3<f32> = (x_4013 + vec3<f32>(x_4014.x, x_4014.y, x_4014.z));
  let x_4017 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);
  let x_4019 : f32 = u_xlat2;
  let x_4020 : f32 = u_xlat2;
  u_xlat78 = (x_4019 * -(x_4020));
  let x_4023 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4023);
  let x_4025 : vec4<f32> = u_xlat0;
  let x_4028 : vec4<f32> = x_29.unity_FogColor;
  let x_4031 : vec3<f32> = (vec3<f32>(x_4025.x, x_4025.y, x_4025.z) + -(vec3<f32>(x_4028.x, x_4028.y, x_4028.z)));
  let x_4032 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4031.x, x_4031.y, x_4031.z, x_4032.w);
  let x_4036 : f32 = u_xlat78;
  let x_4038 : vec4<f32> = u_xlat0;
  let x_4042 : vec4<f32> = x_29.unity_FogColor;
  let x_4044 : vec3<f32> = ((vec3<f32>(x_4036, x_4036, x_4036) * vec3<f32>(x_4038.x, x_4038.y, x_4038.z)) + vec3<f32>(x_4042.x, x_4042.y, x_4042.z));
  let x_4045 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
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


