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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb30 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_262 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

var<private> u_xlatb56 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb82 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1609 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat83 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2087 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

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
  var x_1695 : f32;
  var x_1706 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2225 : f32;
  var x_2235 : f32;
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
  var x_3823 : f32;
  var x_3836 : f32;
  var x_3894 : f32;
  var x_3905 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_28.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1.x = x_77.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_89);
  let x_93 : vec3<f32> = u_xlat27;
  let x_95 : vec4<f32> = vs_TEXCOORD3;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  u_xlat2.w = 1.0f;
  let x_113 : vec4<f32> = x_109.unity_SHAr;
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_113, x_114);
  let x_119 : vec4<f32> = x_109.unity_SHAg;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_119, x_120);
  let x_126 : vec4<f32> = x_109.unity_SHAb;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_126, x_127);
  let x_131 : vec4<f32> = u_xlat2;
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_131.y, x_131.z, x_131.z, x_131.x) * vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.z));
  let x_139 : vec4<f32> = x_109.unity_SHBr;
  let x_140 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_139, x_140);
  let x_145 : vec4<f32> = x_109.unity_SHBg;
  let x_146 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_145, x_146);
  let x_151 : vec4<f32> = x_109.unity_SHBb;
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_151, x_152);
  let x_156 : f32 = u_xlat2.y;
  let x_158 : f32 = u_xlat2.y;
  u_xlat27.x = (x_156 * x_158);
  let x_162 : f32 = u_xlat2.x;
  let x_164 : f32 = u_xlat2.x;
  let x_167 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_162 * x_164) + -(x_167));
  let x_173 : vec4<f32> = x_109.unity_SHC;
  let x_175 : vec3<f32> = u_xlat27;
  let x_178 : vec4<f32> = u_xlat5;
  u_xlat27 = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.x, x_175.x, x_175.x)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec3<f32> = u_xlat27;
  let x_182 : vec3<f32> = u_xlat3;
  u_xlat27 = (x_181 + x_182);
  let x_184 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_184, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_189 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_189) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_194 : f32 = u_xlat80;
  u_xlat3.x = (-(x_194) + 1.0f);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : f32 = u_xlat80;
  u_xlat29 = (vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201, x_201, x_201));
  let x_204 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec3<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat0;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.x, x_211.x) * vec3<f32>(x_213.x, x_213.y, x_213.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_222 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_222) + 1.0f);
  let x_227 : f32 = u_xlat1.x;
  let x_229 : f32 = u_xlat1.x;
  u_xlat80 = (x_227 * x_229);
  let x_231 : f32 = u_xlat80;
  u_xlat80 = max(x_231, 0.0078125f);
  let x_234 : f32 = u_xlat80;
  let x_235 : f32 = u_xlat80;
  u_xlat4.x = (x_234 * x_235);
  let x_240 : f32 = u_xlat0.w;
  let x_242 : f32 = u_xlat3.x;
  u_xlat78 = (x_240 + x_242);
  let x_244 : f32 = u_xlat78;
  u_xlat78 = clamp(x_244, 0.0f, 1.0f);
  let x_246 : f32 = u_xlat80;
  u_xlat3.x = ((x_246 * 4.0f) + 2.0f);
  let x_265 : f32 = x_262.x_MainLightShadowParams.y;
  u_xlatb30.x = (0.0f < x_265);
  let x_269 : bool = u_xlatb30.x;
  if (x_269) {
    let x_273 : f32 = x_262.x_MainLightShadowParams.y;
    u_xlatb30.x = (x_273 == 1.0f);
    let x_277 : bool = u_xlatb30.x;
    if (x_277) {
      let x_281 : vec4<f32> = vs_TEXCOORD8;
      let x_285 : vec4<f32> = x_262.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_281.x, x_281.y, x_281.x, x_281.y) + x_285);
      let x_289 : vec4<f32> = u_xlat5;
      let x_290 : vec2<f32> = vec2<f32>(x_289.x, x_289.y);
      let x_293 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_290.x, x_290.y, x_293);
      let x_306 : vec3<f32> = txVec0;
      let x_308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_306.xy, x_306.z);
      u_xlat6.x = x_308;
      let x_311 : vec4<f32> = u_xlat5;
      let x_312 : vec2<f32> = vec2<f32>(x_311.z, x_311.w);
      let x_314 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_321 : vec3<f32> = txVec1;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat6.y = x_323;
      let x_325 : vec4<f32> = vs_TEXCOORD8;
      let x_329 : vec4<f32> = x_262.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.y) + x_329);
      let x_332 : vec4<f32> = u_xlat5;
      let x_333 : vec2<f32> = vec2<f32>(x_332.x, x_332.y);
      let x_335 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_333.x, x_333.y, x_335);
      let x_342 : vec3<f32> = txVec2;
      let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_342.xy, x_342.z);
      u_xlat6.z = x_344;
      let x_347 : vec4<f32> = u_xlat5;
      let x_348 : vec2<f32> = vec2<f32>(x_347.z, x_347.w);
      let x_350 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_357 : vec3<f32> = txVec3;
      let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_357.xy, x_357.z);
      u_xlat6.w = x_359;
      let x_362 : vec4<f32> = u_xlat6;
      u_xlat30 = dot(x_362, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_369 : f32 = x_262.x_MainLightShadowParams.y;
      u_xlatb56 = (x_369 == 2.0f);
      let x_371 : bool = u_xlatb56;
      if (x_371) {
        let x_376 : vec4<f32> = vs_TEXCOORD8;
        let x_380 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_376.x, x_376.y) * vec2<f32>(x_380.z, x_380.w)) + vec2<f32>(0.5f, 0.5f));
        let x_386 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_386);
        let x_388 : vec4<f32> = vs_TEXCOORD8;
        let x_391 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_394 : vec2<f32> = u_xlat56;
        let x_396 : vec2<f32> = ((vec2<f32>(x_388.x, x_388.y) * vec2<f32>(x_391.z, x_391.w)) + -(x_394));
        let x_397 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
        let x_399 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_399.x, x_399.x, x_399.y, x_399.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_404 : vec4<f32> = u_xlat6;
        let x_406 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_404.x, x_404.x, x_404.z, x_404.z) * vec4<f32>(x_406.x, x_406.x, x_406.z, x_406.z));
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat57 = (vec2<f32>(x_410.y, x_410.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_415 : vec4<f32> = u_xlat7;
        let x_418 : vec4<f32> = u_xlat5;
        let x_421 : vec2<f32> = ((vec2<f32>(x_415.x, x_415.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_418.x, x_418.y)));
        let x_422 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_422.w);
        let x_424 : vec4<f32> = u_xlat5;
        let x_428 : vec2<f32> = (-(vec2<f32>(x_424.x, x_424.y)) + vec2<f32>(1.0f, 1.0f));
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_432 : vec4<f32> = u_xlat5;
        u_xlat59 = min(vec2<f32>(x_432.x, x_432.y), vec2<f32>(0.0f, 0.0f));
        let x_436 : vec2<f32> = u_xlat59;
        let x_438 : vec2<f32> = u_xlat59;
        let x_440 : vec4<f32> = u_xlat7;
        u_xlat59 = ((-(x_436) * x_438) + vec2<f32>(x_440.x, x_440.y));
        let x_443 : vec4<f32> = u_xlat5;
        let x_445 : vec2<f32> = max(vec2<f32>(x_443.x, x_443.y), vec2<f32>(0.0f, 0.0f));
        let x_446 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec4<f32> = u_xlat5;
        let x_451 : vec4<f32> = u_xlat5;
        let x_454 : vec4<f32> = u_xlat6;
        let x_456 : vec2<f32> = ((-(vec2<f32>(x_448.x, x_448.y)) * vec2<f32>(x_451.x, x_451.y)) + vec2<f32>(x_454.y, x_454.w));
        let x_457 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
        let x_459 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_459 + vec2<f32>(1.0f, 1.0f));
        let x_461 : vec4<f32> = u_xlat5;
        let x_463 : vec2<f32> = (vec2<f32>(x_461.x, x_461.y) + vec2<f32>(1.0f, 1.0f));
        let x_464 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_467 : vec4<f32> = u_xlat6;
        let x_471 : vec2<f32> = (vec2<f32>(x_467.x, x_467.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_472 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_475 : vec4<f32> = u_xlat7;
        let x_477 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_478 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec2<f32> = u_xlat59;
        let x_481 : vec2<f32> = (x_480 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_485 : vec4<f32> = u_xlat5;
        let x_487 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_488 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec4<f32> = u_xlat6;
        let x_492 : vec2<f32> = (vec2<f32>(x_490.y, x_490.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_493 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_496 : f32 = u_xlat7.x;
        u_xlat8.z = x_496;
        let x_499 : f32 = u_xlat5.x;
        u_xlat8.w = x_499;
        let x_502 : f32 = u_xlat10.x;
        u_xlat9.z = x_502;
        let x_505 : f32 = u_xlat57.x;
        u_xlat9.w = x_505;
        let x_507 : vec4<f32> = u_xlat8;
        let x_509 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_507.z, x_507.w, x_507.x, x_507.z) + vec4<f32>(x_509.z, x_509.w, x_509.x, x_509.z));
        let x_513 : f32 = u_xlat8.y;
        u_xlat7.z = x_513;
        let x_516 : f32 = u_xlat5.y;
        u_xlat7.w = x_516;
        let x_519 : f32 = u_xlat9.y;
        u_xlat10.z = x_519;
        let x_522 : f32 = u_xlat57.y;
        u_xlat10.w = x_522;
        let x_524 : vec4<f32> = u_xlat7;
        let x_526 : vec4<f32> = u_xlat10;
        let x_528 : vec3<f32> = (vec3<f32>(x_524.z, x_524.y, x_524.w) + vec3<f32>(x_526.z, x_526.y, x_526.w));
        let x_529 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat9;
        let x_533 : vec4<f32> = u_xlat6;
        let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.z, x_531.w) / vec3<f32>(x_533.z, x_533.w, x_533.y));
        let x_536 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat7;
        let x_544 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_545 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
        let x_547 : vec4<f32> = u_xlat10;
        let x_549 : vec4<f32> = u_xlat5;
        let x_551 : vec3<f32> = (vec3<f32>(x_547.z, x_547.y, x_547.w) / vec3<f32>(x_549.x, x_549.y, x_549.z));
        let x_552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat8;
        let x_556 : vec3<f32> = (vec3<f32>(x_554.x, x_554.y, x_554.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat7;
        let x_562 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_564 : vec3<f32> = (vec3<f32>(x_559.y, x_559.x, x_559.z) * vec3<f32>(x_562.x, x_562.x, x_562.x));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat8;
        let x_570 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_572 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_570.y, x_570.y, x_570.y));
        let x_573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_576 : f32 = u_xlat8.x;
        u_xlat7.w = x_576;
        let x_578 : vec2<f32> = u_xlat56;
        let x_581 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_584 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y) * vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y)) + vec4<f32>(x_584.y, x_584.w, x_584.x, x_584.w));
        let x_587 : vec2<f32> = u_xlat56;
        let x_589 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_592 : vec4<f32> = u_xlat7;
        let x_594 : vec2<f32> = ((x_587 * vec2<f32>(x_589.x, x_589.y)) + vec2<f32>(x_592.z, x_592.w));
        let x_595 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_598 : f32 = u_xlat7.y;
        u_xlat8.w = x_598;
        let x_600 : vec4<f32> = u_xlat8;
        let x_601 : vec2<f32> = vec2<f32>(x_600.y, x_600.z);
        let x_602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_602.x, x_601.x, x_602.z, x_601.y);
        let x_605 : vec2<f32> = u_xlat56;
        let x_608 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y) * vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y)) + vec4<f32>(x_611.x, x_611.y, x_611.z, x_611.y));
        let x_614 : vec2<f32> = u_xlat56;
        let x_617 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) * vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y)) + vec4<f32>(x_620.w, x_620.y, x_620.w, x_620.z));
        let x_623 : vec2<f32> = u_xlat56;
        let x_626 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y) * vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y)) + vec4<f32>(x_629.x, x_629.w, x_629.z, x_629.w));
        let x_633 : vec4<f32> = u_xlat5;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_633.x, x_633.x, x_633.x, x_633.y) * vec4<f32>(x_635.z, x_635.w, x_635.y, x_635.z));
        let x_639 : vec4<f32> = u_xlat5;
        let x_641 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_639.y, x_639.y, x_639.z, x_639.z) * x_641);
        let x_644 : f32 = u_xlat5.z;
        let x_646 : f32 = u_xlat6.y;
        u_xlat56.x = (x_644 * x_646);
        let x_650 : vec4<f32> = u_xlat9;
        let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
        let x_653 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_651.x, x_651.y, x_653);
        let x_661 : vec3<f32> = txVec4;
        let x_663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_661.xy, x_661.z);
        u_xlat82 = x_663;
        let x_665 : vec4<f32> = u_xlat9;
        let x_666 : vec2<f32> = vec2<f32>(x_665.z, x_665.w);
        let x_668 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_666.x, x_666.y, x_668);
        let x_675 : vec3<f32> = txVec5;
        let x_677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_675.xy, x_675.z);
        u_xlat5.x = x_677;
        let x_680 : f32 = u_xlat5.x;
        let x_682 : f32 = u_xlat12.y;
        u_xlat5.x = (x_680 * x_682);
        let x_686 : f32 = u_xlat12.x;
        let x_687 : f32 = u_xlat82;
        let x_690 : f32 = u_xlat5.x;
        u_xlat82 = ((x_686 * x_687) + x_690);
        let x_693 : vec4<f32> = u_xlat10;
        let x_694 : vec2<f32> = vec2<f32>(x_693.x, x_693.y);
        let x_696 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_694.x, x_694.y, x_696);
        let x_703 : vec3<f32> = txVec6;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat5.x = x_705;
        let x_708 : f32 = u_xlat12.z;
        let x_710 : f32 = u_xlat5.x;
        let x_712 : f32 = u_xlat82;
        u_xlat82 = ((x_708 * x_710) + x_712);
        let x_715 : vec4<f32> = u_xlat8;
        let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
        let x_718 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec7;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat5.x = x_727;
        let x_730 : f32 = u_xlat12.w;
        let x_732 : f32 = u_xlat5.x;
        let x_734 : f32 = u_xlat82;
        u_xlat82 = ((x_730 * x_732) + x_734);
        let x_737 : vec4<f32> = u_xlat11;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec8;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat5.x = x_749;
        let x_752 : f32 = u_xlat13.x;
        let x_754 : f32 = u_xlat5.x;
        let x_756 : f32 = u_xlat82;
        u_xlat82 = ((x_752 * x_754) + x_756);
        let x_759 : vec4<f32> = u_xlat11;
        let x_760 : vec2<f32> = vec2<f32>(x_759.z, x_759.w);
        let x_762 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec9;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat5.x = x_771;
        let x_774 : f32 = u_xlat13.y;
        let x_776 : f32 = u_xlat5.x;
        let x_778 : f32 = u_xlat82;
        u_xlat82 = ((x_774 * x_776) + x_778);
        let x_781 : vec4<f32> = u_xlat8;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec10;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat5.x = x_793;
        let x_796 : f32 = u_xlat13.z;
        let x_798 : f32 = u_xlat5.x;
        let x_800 : f32 = u_xlat82;
        u_xlat82 = ((x_796 * x_798) + x_800);
        let x_803 : vec4<f32> = u_xlat7;
        let x_804 : vec2<f32> = vec2<f32>(x_803.x, x_803.y);
        let x_806 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec11;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
        u_xlat5.x = x_815;
        let x_818 : f32 = u_xlat13.w;
        let x_820 : f32 = u_xlat5.x;
        let x_822 : f32 = u_xlat82;
        u_xlat82 = ((x_818 * x_820) + x_822);
        let x_825 : vec4<f32> = u_xlat7;
        let x_826 : vec2<f32> = vec2<f32>(x_825.z, x_825.w);
        let x_828 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec12;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat5.x = x_837;
        let x_840 : f32 = u_xlat56.x;
        let x_842 : f32 = u_xlat5.x;
        let x_844 : f32 = u_xlat82;
        u_xlat30 = ((x_840 * x_842) + x_844);
      } else {
        let x_847 : vec4<f32> = vs_TEXCOORD8;
        let x_850 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_847.x, x_847.y) * vec2<f32>(x_850.z, x_850.w)) + vec2<f32>(0.5f, 0.5f));
        let x_854 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_854);
        let x_856 : vec4<f32> = vs_TEXCOORD8;
        let x_859 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_862 : vec2<f32> = u_xlat56;
        let x_864 : vec2<f32> = ((vec2<f32>(x_856.x, x_856.y) * vec2<f32>(x_859.z, x_859.w)) + -(x_862));
        let x_865 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_867.x, x_867.x, x_867.y, x_867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_870 : vec4<f32> = u_xlat6;
        let x_872 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z) * vec4<f32>(x_872.x, x_872.x, x_872.z, x_872.z));
        let x_875 : vec4<f32> = u_xlat7;
        let x_879 : vec2<f32> = (vec2<f32>(x_875.y, x_875.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_880 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_880.x, x_879.x, x_880.z, x_879.y);
        let x_882 : vec4<f32> = u_xlat7;
        let x_885 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_882.x, x_882.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_885.x, x_885.y)));
        let x_889 : vec4<f32> = u_xlat5;
        let x_892 : vec2<f32> = (-(vec2<f32>(x_889.x, x_889.y)) + vec2<f32>(1.0f, 1.0f));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_893.y, x_892.y, x_893.w);
        let x_895 : vec4<f32> = u_xlat5;
        let x_897 : vec2<f32> = min(vec2<f32>(x_895.x, x_895.y), vec2<f32>(0.0f, 0.0f));
        let x_898 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = u_xlat7;
        let x_906 : vec4<f32> = u_xlat6;
        let x_908 : vec2<f32> = ((-(vec2<f32>(x_900.x, x_900.y)) * vec2<f32>(x_903.x, x_903.y)) + vec2<f32>(x_906.x, x_906.z));
        let x_909 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_908.x, x_909.y, x_908.y, x_909.w);
        let x_911 : vec4<f32> = u_xlat5;
        let x_913 : vec2<f32> = max(vec2<f32>(x_911.x, x_911.y), vec2<f32>(0.0f, 0.0f));
        let x_914 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = u_xlat7;
        let x_922 : vec4<f32> = u_xlat6;
        let x_924 : vec2<f32> = ((-(vec2<f32>(x_916.x, x_916.y)) * vec2<f32>(x_919.x, x_919.y)) + vec2<f32>(x_922.y, x_922.w));
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_927 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_927 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_931 : f32 = u_xlat6.y;
        u_xlat7.z = (x_931 * 0.08163200318813323975f);
        let x_935 : vec2<f32> = u_xlat57;
        let x_938 : vec2<f32> = (vec2<f32>(x_935.y, x_935.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_939 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_941.x, x_941.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_945 : f32 = u_xlat6.w;
        u_xlat9.z = (x_945 * 0.08163200318813323975f);
        let x_949 : f32 = u_xlat9.y;
        u_xlat7.x = x_949;
        let x_951 : vec4<f32> = u_xlat5;
        let x_958 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_959 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_958.x, x_959.z, x_958.y);
        let x_961 : vec4<f32> = u_xlat5;
        let x_965 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_966 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_965.x, x_966.y, x_965.y, x_966.w);
        let x_969 : f32 = u_xlat57.x;
        u_xlat6.y = x_969;
        let x_972 : f32 = u_xlat8.y;
        u_xlat6.w = x_972;
        let x_974 : vec4<f32> = u_xlat6;
        let x_975 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_974 + x_975);
        let x_977 : vec4<f32> = u_xlat5;
        let x_980 : vec2<f32> = ((vec2<f32>(x_977.y, x_977.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_981.x, x_980.x, x_981.z, x_980.y);
        let x_983 : vec4<f32> = u_xlat5;
        let x_986 : vec2<f32> = ((vec2<f32>(x_983.y, x_983.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_990 : f32 = u_xlat57.y;
        u_xlat8.y = x_990;
        let x_992 : vec4<f32> = u_xlat8;
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_992 + x_993);
        let x_995 : vec4<f32> = u_xlat6;
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_995 / x_996);
        let x_998 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_998 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1005 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1004 / x_1005);
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1007 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1012 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1009.w, x_1009.x, x_1009.y, x_1009.z) * vec4<f32>(x_1012.x, x_1012.x, x_1012.x, x_1012.x));
        let x_1015 : vec4<f32> = u_xlat8;
        let x_1018 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1015.x, x_1015.w, x_1015.y, x_1015.z) * vec4<f32>(x_1018.y, x_1018.y, x_1018.y, x_1018.y));
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1022 : vec3<f32> = vec3<f32>(x_1021.y, x_1021.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1022.z);
        let x_1026 : f32 = u_xlat8.x;
        u_xlat9.y = x_1026;
        let x_1028 : vec2<f32> = u_xlat56;
        let x_1031 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y) * vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y)) + vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1034.y));
        let x_1037 : vec2<f32> = u_xlat56;
        let x_1039 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = ((x_1037 * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1048 : f32 = u_xlat9.y;
        u_xlat6.y = x_1048;
        let x_1051 : f32 = u_xlat8.z;
        u_xlat9.y = x_1051;
        let x_1053 : vec2<f32> = u_xlat56;
        let x_1056 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y) * vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y)) + vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.y));
        let x_1063 : vec2<f32> = u_xlat56;
        let x_1065 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat63 = ((x_1063 * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1072 : f32 = u_xlat9.y;
        u_xlat6.z = x_1072;
        let x_1074 : vec2<f32> = u_xlat56;
        let x_1077 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.z));
        let x_1084 : f32 = u_xlat8.w;
        u_xlat9.y = x_1084;
        let x_1087 : vec2<f32> = u_xlat56;
        let x_1090 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec2<f32> = u_xlat56;
        let x_1099 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat32 = ((x_1097 * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1102.w, x_1102.y));
        let x_1106 : f32 = u_xlat9.y;
        u_xlat6.w = x_1106;
        let x_1109 : vec2<f32> = u_xlat56;
        let x_1111 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat6;
        let x_1116 : vec2<f32> = ((x_1109 * vec2<f32>(x_1111.x, x_1111.y)) + vec2<f32>(x_1114.x, x_1114.w));
        let x_1117 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec2<f32> = u_xlat56;
        let x_1126 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec2<f32> = u_xlat56;
        let x_1135 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat60 = ((x_1133 * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.w, x_1138.y));
        let x_1142 : f32 = u_xlat6.x;
        u_xlat8.x = x_1142;
        let x_1144 : vec2<f32> = u_xlat56;
        let x_1146 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat56 = ((x_1144 * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.x, x_1149.y));
        let x_1153 : vec4<f32> = u_xlat5;
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.x, x_1153.x) * x_1155);
        let x_1158 : vec4<f32> = u_xlat5;
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1158.y, x_1158.y, x_1158.y, x_1158.y) * x_1160);
        let x_1163 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1163.z, x_1163.z, x_1163.z, x_1163.z) * x_1165);
        let x_1167 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1167.w, x_1167.w, x_1167.w, x_1167.w) * x_1169);
        let x_1172 : vec4<f32> = u_xlat10;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec13;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1182.xy, x_1182.z);
        u_xlat6.x = x_1184;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = vec2<f32>(x_1187.z, x_1187.w);
        let x_1190 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
        let x_1198 : vec3<f32> = txVec14;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
        u_xlat84 = x_1200;
        let x_1201 : f32 = u_xlat84;
        let x_1203 : f32 = u_xlat16.y;
        u_xlat84 = (x_1201 * x_1203);
        let x_1206 : f32 = u_xlat16.x;
        let x_1208 : f32 = u_xlat6.x;
        let x_1210 : f32 = u_xlat84;
        u_xlat6.x = ((x_1206 * x_1208) + x_1210);
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec15;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat84 = x_1226;
        let x_1228 : f32 = u_xlat16.z;
        let x_1229 : f32 = u_xlat84;
        let x_1232 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1228 * x_1229) + x_1232);
        let x_1236 : vec4<f32> = u_xlat13;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec16;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
        u_xlat84 = x_1248;
        let x_1250 : f32 = u_xlat16.w;
        let x_1251 : f32 = u_xlat84;
        let x_1254 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1250 * x_1251) + x_1254);
        let x_1258 : vec4<f32> = u_xlat12;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
        let x_1261 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec17;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat84 = x_1270;
        let x_1272 : f32 = u_xlat17.x;
        let x_1273 : f32 = u_xlat84;
        let x_1276 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1272 * x_1273) + x_1276);
        let x_1280 : vec4<f32> = u_xlat12;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec18;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat84 = x_1292;
        let x_1294 : f32 = u_xlat17.y;
        let x_1295 : f32 = u_xlat84;
        let x_1298 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1294 * x_1295) + x_1298);
        let x_1302 : vec2<f32> = u_xlat63;
        let x_1304 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec19;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat84 = x_1313;
        let x_1315 : f32 = u_xlat17.z;
        let x_1316 : f32 = u_xlat84;
        let x_1319 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec4<f32> = u_xlat13;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec20;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat84 = x_1335;
        let x_1337 : f32 = u_xlat17.w;
        let x_1338 : f32 = u_xlat84;
        let x_1341 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1337 * x_1338) + x_1341);
        let x_1345 : vec4<f32> = u_xlat14;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec21;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat84 = x_1357;
        let x_1359 : f32 = u_xlat18.x;
        let x_1360 : f32 = u_xlat84;
        let x_1363 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat14;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec22;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat84 = x_1379;
        let x_1381 : f32 = u_xlat18.y;
        let x_1382 : f32 = u_xlat84;
        let x_1385 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec2<f32> = u_xlat32;
        let x_1391 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec23;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat32.x = x_1400;
        let x_1403 : f32 = u_xlat18.z;
        let x_1405 : f32 = u_xlat32.x;
        let x_1408 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1403 * x_1405) + x_1408);
        let x_1412 : vec4<f32> = u_xlat15;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec24;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
        u_xlat32.x = x_1424;
        let x_1427 : f32 = u_xlat18.w;
        let x_1429 : f32 = u_xlat32.x;
        let x_1432 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1427 * x_1429) + x_1432);
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec25;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat32.x = x_1448;
        let x_1451 : f32 = u_xlat5.x;
        let x_1453 : f32 = u_xlat32.x;
        let x_1456 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1451 * x_1453) + x_1456);
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec26;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
        u_xlat6.x = x_1472;
        let x_1475 : f32 = u_xlat5.y;
        let x_1477 : f32 = u_xlat6.x;
        let x_1480 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1475 * x_1477) + x_1480);
        let x_1484 : vec2<f32> = u_xlat60;
        let x_1486 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1494 : vec3<f32> = txVec27;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat31 = x_1496;
        let x_1498 : f32 = u_xlat5.z;
        let x_1499 : f32 = u_xlat31;
        let x_1502 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec2<f32> = u_xlat56;
        let x_1508 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec28;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat56.x = x_1517;
        let x_1520 : f32 = u_xlat5.w;
        let x_1522 : f32 = u_xlat56.x;
        let x_1525 : f32 = u_xlat5.x;
        u_xlat30 = ((x_1520 * x_1522) + x_1525);
      }
    }
  } else {
    let x_1529 : vec4<f32> = vs_TEXCOORD8;
    let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
    let x_1532 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
    let x_1539 : vec3<f32> = txVec29;
    let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
    u_xlat30 = x_1541;
  }
  let x_1543 : f32 = x_262.x_MainLightShadowParams.x;
  u_xlat56.x = (-(x_1543) + 1.0f);
  let x_1547 : f32 = u_xlat30;
  let x_1549 : f32 = x_262.x_MainLightShadowParams.x;
  let x_1552 : f32 = u_xlat56.x;
  u_xlat30 = ((x_1547 * x_1549) + x_1552);
  let x_1555 : f32 = vs_TEXCOORD8.z;
  u_xlatb56 = (0.0f >= x_1555);
  let x_1559 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (x_1559 >= 1.0f);
  let x_1561 : bool = u_xlatb82;
  let x_1562 : bool = u_xlatb56;
  u_xlatb56 = (x_1561 | x_1562);
  let x_1564 : bool = u_xlatb56;
  let x_1565 : f32 = u_xlat30;
  u_xlat30 = select(x_1565, 1.0f, x_1564);
  let x_1569 : vec3<f32> = vs_TEXCOORD7;
  let x_1573 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1575 : vec3<f32> = (x_1569 + -(x_1573));
  let x_1576 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
  let x_1578 : vec4<f32> = u_xlat5;
  let x_1580 : vec4<f32> = u_xlat5;
  u_xlat56.x = dot(vec3<f32>(x_1578.x, x_1578.y, x_1578.z), vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
  let x_1585 : f32 = u_xlat56.x;
  let x_1587 : f32 = x_262.x_MainLightShadowParams.z;
  let x_1590 : f32 = x_262.x_MainLightShadowParams.w;
  u_xlat82 = ((x_1585 * x_1587) + x_1590);
  let x_1592 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1592, 0.0f, 1.0f);
  let x_1594 : f32 = u_xlat30;
  u_xlat5.x = (-(x_1594) + 1.0f);
  let x_1598 : f32 = u_xlat82;
  let x_1600 : f32 = u_xlat5.x;
  let x_1602 : f32 = u_xlat30;
  u_xlat30 = ((x_1598 * x_1600) + x_1602);
  let x_1612 : f32 = x_1609.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_1612 == -1.0f));
  let x_1615 : bool = u_xlatb82;
  if (x_1615) {
    let x_1618 : vec3<f32> = vs_TEXCOORD7;
    let x_1621 : vec4<f32> = x_1609.x_MainLightWorldToLight[1i];
    let x_1623 : vec2<f32> = (vec2<f32>(x_1618.y, x_1618.y) * vec2<f32>(x_1621.x, x_1621.y));
    let x_1624 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
    let x_1627 : vec4<f32> = x_1609.x_MainLightWorldToLight[0i];
    let x_1629 : vec3<f32> = vs_TEXCOORD7;
    let x_1632 : vec4<f32> = u_xlat5;
    let x_1634 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(x_1629.x, x_1629.x)) + vec2<f32>(x_1632.x, x_1632.y));
    let x_1635 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
    let x_1638 : vec4<f32> = x_1609.x_MainLightWorldToLight[2i];
    let x_1640 : vec3<f32> = vs_TEXCOORD7;
    let x_1643 : vec4<f32> = u_xlat5;
    let x_1645 : vec2<f32> = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1640.z, x_1640.z)) + vec2<f32>(x_1643.x, x_1643.y));
    let x_1646 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
    let x_1648 : vec4<f32> = u_xlat5;
    let x_1652 : vec4<f32> = x_1609.x_MainLightWorldToLight[3i];
    let x_1654 : vec2<f32> = (vec2<f32>(x_1648.x, x_1648.y) + vec2<f32>(x_1652.x, x_1652.y));
    let x_1655 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1654.x, x_1654.y, x_1655.z, x_1655.w);
    let x_1657 : vec4<f32> = u_xlat5;
    let x_1660 : vec2<f32> = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1661 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
    let x_1668 : vec4<f32> = u_xlat5;
    let x_1671 : f32 = x_28.x_GlobalMipBias.x;
    let x_1672 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1668.x, x_1668.y), x_1671);
    u_xlat5 = x_1672;
    let x_1675 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1677 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1679 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1681 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1682 : vec4<f32> = vec4<f32>(x_1675, x_1677, x_1679, x_1681);
    let x_1690 : vec4<bool> = (vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1682.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1690.x, x_1690.y);
    let x_1693 : bool = u_xlatb6.y;
    if (x_1693) {
      let x_1699 : f32 = u_xlat5.w;
      x_1695 = x_1699;
    } else {
      let x_1702 : f32 = u_xlat5.x;
      x_1695 = x_1702;
    }
    let x_1703 : f32 = x_1695;
    u_xlat82 = x_1703;
    let x_1705 : bool = u_xlatb6.x;
    if (x_1705) {
      let x_1709 : vec4<f32> = u_xlat5;
      x_1706 = vec3<f32>(x_1709.x, x_1709.y, x_1709.z);
    } else {
      let x_1712 : f32 = u_xlat82;
      x_1706 = vec3<f32>(x_1712, x_1712, x_1712);
    }
    let x_1714 : vec3<f32> = x_1706;
    let x_1715 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1721 : vec4<f32> = u_xlat5;
  let x_1724 : vec4<f32> = x_28.x_MainLightColor;
  let x_1726 : vec3<f32> = (vec3<f32>(x_1721.x, x_1721.y, x_1721.z) * vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  let x_1730 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1730;
  let x_1734 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1734;
  let x_1738 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1738;
  let x_1740 : vec4<f32> = u_xlat6;
  let x_1743 : vec4<f32> = u_xlat2;
  u_xlat82 = dot(-(vec3<f32>(x_1740.x, x_1740.y, x_1740.z)), vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : f32 = u_xlat82;
  let x_1747 : f32 = u_xlat82;
  u_xlat82 = (x_1746 + x_1747);
  let x_1749 : vec4<f32> = u_xlat2;
  let x_1751 : f32 = u_xlat82;
  let x_1755 : vec4<f32> = u_xlat6;
  let x_1758 : vec3<f32> = ((vec3<f32>(x_1749.x, x_1749.y, x_1749.z) * -(vec3<f32>(x_1751, x_1751, x_1751))) + -(vec3<f32>(x_1755.x, x_1755.y, x_1755.z)));
  let x_1759 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec4<f32> = u_xlat2;
  let x_1763 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_1761.x, x_1761.y, x_1761.z), vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1766, 0.0f, 1.0f);
  let x_1768 : f32 = u_xlat82;
  u_xlat82 = (-(x_1768) + 1.0f);
  let x_1771 : f32 = u_xlat82;
  let x_1772 : f32 = u_xlat82;
  u_xlat82 = (x_1771 * x_1772);
  let x_1774 : f32 = u_xlat82;
  let x_1775 : f32 = u_xlat82;
  u_xlat82 = (x_1774 * x_1775);
  let x_1779 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1779) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1786 : f32 = u_xlat1.x;
  let x_1787 : f32 = u_xlat83;
  u_xlat1.x = (x_1786 * x_1787);
  let x_1791 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1791 * 6.0f);
  let x_1803 : vec4<f32> = u_xlat7;
  let x_1806 : f32 = u_xlat1.x;
  let x_1807 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1803.x, x_1803.y, x_1803.z), x_1806);
  u_xlat7 = x_1807;
  let x_1809 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1809 + -1.0f);
  let x_1813 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_1815 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1813 * x_1815) + 1.0f);
  let x_1820 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1820, 0.0f);
  let x_1824 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1824);
  let x_1828 : f32 = u_xlat1.x;
  let x_1830 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1828 * x_1830);
  let x_1834 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1834);
  let x_1838 : f32 = u_xlat1.x;
  let x_1840 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1838 * x_1840);
  let x_1843 : vec4<f32> = u_xlat7;
  let x_1845 : vec3<f32> = u_xlat1;
  let x_1847 : vec3<f32> = (vec3<f32>(x_1843.x, x_1843.y, x_1843.z) * vec3<f32>(x_1845.x, x_1845.x, x_1845.x));
  let x_1848 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : f32 = u_xlat80;
  let x_1852 : f32 = u_xlat80;
  let x_1856 : vec2<f32> = ((vec2<f32>(x_1850, x_1850) * vec2<f32>(x_1852, x_1852)) + vec2<f32>(-1.0f, 1.0f));
  let x_1857 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
  let x_1860 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_1860);
  let x_1864 : vec4<f32> = u_xlat0;
  let x_1867 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1864.x, x_1864.y, x_1864.z)) + vec3<f32>(x_1867, x_1867, x_1867));
  let x_1870 : f32 = u_xlat82;
  let x_1872 : vec3<f32> = u_xlat34;
  let x_1874 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1870, x_1870, x_1870) * x_1872) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : vec3<f32> = u_xlat1;
  let x_1879 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1877.x, x_1877.x, x_1877.x) * x_1879);
  let x_1881 : vec4<f32> = u_xlat7;
  let x_1883 : vec3<f32> = u_xlat34;
  let x_1884 : vec3<f32> = (vec3<f32>(x_1881.x, x_1881.y, x_1881.z) * x_1883);
  let x_1885 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1887 : vec3<f32> = u_xlat27;
  let x_1888 : vec3<f32> = u_xlat29;
  let x_1890 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1887 * x_1888) + vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
  let x_1893 : f32 = u_xlat30;
  let x_1896 : f32 = x_109.unity_LightData.z;
  u_xlat78 = (x_1893 * x_1896);
  let x_1899 : vec4<f32> = u_xlat2;
  let x_1902 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_1899.x, x_1899.y, x_1899.z), vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1905, 0.0f, 1.0f);
  let x_1907 : f32 = u_xlat78;
  let x_1908 : f32 = u_xlat79;
  u_xlat78 = (x_1907 * x_1908);
  let x_1910 : f32 = u_xlat78;
  let x_1912 : vec4<f32> = u_xlat5;
  let x_1914 : vec3<f32> = (vec3<f32>(x_1910, x_1910, x_1910) * vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
  let x_1917 : vec4<f32> = u_xlat6;
  let x_1920 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1917.x, x_1917.y, x_1917.z) + vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec4<f32> = u_xlat7;
  let x_1927 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1925.x, x_1925.y, x_1925.z), vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat78;
  u_xlat78 = max(x_1930, 1.17549435e-38f);
  let x_1933 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1933);
  let x_1935 : f32 = u_xlat78;
  let x_1937 : vec4<f32> = u_xlat7;
  let x_1939 : vec3<f32> = (vec3<f32>(x_1935, x_1935, x_1935) * vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
  let x_1942 : vec4<f32> = u_xlat2;
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1942.x, x_1942.y, x_1942.z), vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
  let x_1947 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1947, 0.0f, 1.0f);
  let x_1950 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1952 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_1950.x, x_1950.y, x_1950.z), vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1955, 0.0f, 1.0f);
  let x_1957 : f32 = u_xlat78;
  let x_1958 : f32 = u_xlat78;
  u_xlat78 = (x_1957 * x_1958);
  let x_1960 : f32 = u_xlat78;
  let x_1962 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1960 * x_1962) + 1.00001001358032226562f);
  let x_1966 : f32 = u_xlat79;
  let x_1967 : f32 = u_xlat79;
  u_xlat79 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat78;
  let x_1970 : f32 = u_xlat78;
  u_xlat78 = (x_1969 * x_1970);
  let x_1972 : f32 = u_xlat79;
  u_xlat79 = max(x_1972, 0.10000000149011611938f);
  let x_1975 : f32 = u_xlat78;
  let x_1976 : f32 = u_xlat79;
  u_xlat78 = (x_1975 * x_1976);
  let x_1979 : f32 = u_xlat3.x;
  let x_1980 : f32 = u_xlat78;
  u_xlat78 = (x_1979 * x_1980);
  let x_1983 : f32 = u_xlat4.x;
  let x_1984 : f32 = u_xlat78;
  u_xlat78 = (x_1983 / x_1984);
  let x_1986 : vec4<f32> = u_xlat0;
  let x_1988 : f32 = u_xlat78;
  let x_1991 : vec3<f32> = u_xlat29;
  let x_1992 : vec3<f32> = ((vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988, x_1988, x_1988)) + x_1991);
  let x_1993 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1996 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1998 : f32 = x_109.unity_LightData.y;
  u_xlat78 = min(x_1996, x_1998);
  let x_2002 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2002));
  let x_2006 : f32 = u_xlat56.x;
  let x_2009 : f32 = x_262.x_AdditionalShadowFadeParams.x;
  let x_2012 : f32 = x_262.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2006 * x_2009) + x_2012);
  let x_2014 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2014, 0.0f, 1.0f);
  let x_2017 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2019 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2021 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2023 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2024 : vec4<f32> = vec4<f32>(x_2017, x_2019, x_2021, x_2023);
  let x_2030 : vec4<bool> = (vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2024.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb30 = vec2<bool>(x_2030.x, x_2030.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2042 : u32 = u_xlatu_loop_1;
    let x_2043 : u32 = u_xlatu78;
    if ((x_2042 < x_2043)) {
    } else {
      break;
    }
    let x_2046 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2046 >> 2u);
    let x_2050 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2050 & 3u));
    let x_2053 : u32 = u_xlatu82;
    let x_2056 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_2053)];
    let x_2066 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2071 : vec4<u32> = indexable[x_2066];
    u_xlat82 = dot(x_2056, bitcast<vec4<f32>>(x_2071));
    let x_2075 : f32 = u_xlat82;
    u_xlati82 = i32(x_2075);
    let x_2077 : vec3<f32> = vs_TEXCOORD7;
    let x_2088 : i32 = u_xlati82;
    let x_2090 : vec4<f32> = x_2087.x_AdditionalLightsPosition[x_2088];
    let x_2093 : i32 = u_xlati82;
    let x_2095 : vec4<f32> = x_2087.x_AdditionalLightsPosition[x_2093];
    let x_2097 : vec3<f32> = ((-(x_2077) * vec3<f32>(x_2090.w, x_2090.w, x_2090.w)) + vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
    let x_2098 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
    let x_2100 : vec4<f32> = u_xlat9;
    let x_2102 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : f32 = u_xlat83;
    u_xlat83 = max(x_2105, 0.00006103515625f);
    let x_2108 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2108);
    let x_2110 : f32 = u_xlat84;
    let x_2112 : vec4<f32> = u_xlat9;
    let x_2114 : vec3<f32> = (vec3<f32>(x_2110, x_2110, x_2110) * vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
    let x_2115 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
    let x_2118 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2118);
    let x_2120 : f32 = u_xlat83;
    let x_2121 : i32 = u_xlati82;
    let x_2123 : f32 = x_2087.x_AdditionalLightsAttenuation[x_2121].x;
    u_xlat83 = (x_2120 * x_2123);
    let x_2125 : f32 = u_xlat83;
    let x_2127 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2125) * x_2127) + 1.0f);
    let x_2130 : f32 = u_xlat83;
    u_xlat83 = max(x_2130, 0.0f);
    let x_2132 : f32 = u_xlat83;
    let x_2133 : f32 = u_xlat83;
    u_xlat83 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat83;
    let x_2136 : f32 = u_xlat85;
    u_xlat83 = (x_2135 * x_2136);
    let x_2138 : i32 = u_xlati82;
    let x_2140 : vec4<f32> = x_2087.x_AdditionalLightsSpotDir[x_2138];
    let x_2142 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : f32 = u_xlat85;
    let x_2146 : i32 = u_xlati82;
    let x_2148 : f32 = x_2087.x_AdditionalLightsAttenuation[x_2146].z;
    let x_2150 : i32 = u_xlati82;
    let x_2152 : f32 = x_2087.x_AdditionalLightsAttenuation[x_2150].w;
    u_xlat85 = ((x_2145 * x_2148) + x_2152);
    let x_2154 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2154, 0.0f, 1.0f);
    let x_2156 : f32 = u_xlat85;
    let x_2157 : f32 = u_xlat85;
    u_xlat85 = (x_2156 * x_2157);
    let x_2159 : f32 = u_xlat83;
    let x_2160 : f32 = u_xlat85;
    u_xlat83 = (x_2159 * x_2160);
    let x_2164 : i32 = u_xlati82;
    let x_2166 : f32 = x_262.x_AdditionalShadowParams[x_2164].w;
    u_xlati85 = i32(x_2166);
    let x_2169 : i32 = u_xlati85;
    u_xlatb87 = (x_2169 >= 0i);
    let x_2171 : bool = u_xlatb87;
    if (x_2171) {
      let x_2175 : i32 = u_xlati82;
      let x_2177 : f32 = x_262.x_AdditionalShadowParams[x_2175].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2177, x_2177, x_2177, x_2177))));
      let x_2181 : bool = u_xlatb87;
      if (x_2181) {
        let x_2186 : vec4<f32> = u_xlat10;
        let x_2189 : vec4<f32> = u_xlat10;
        let x_2192 : vec4<bool> = (abs(vec4<f32>(x_2186.z, x_2186.z, x_2186.y, x_2186.z)) >= abs(vec4<f32>(x_2189.x, x_2189.y, x_2189.x, x_2189.x)));
        let x_2194 : vec3<bool> = vec3<bool>(x_2192.x, x_2192.y, x_2192.z);
        let x_2195 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
        let x_2198 : bool = u_xlatb11.y;
        let x_2200 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2198 & x_2200);
        let x_2202 : vec4<f32> = u_xlat10;
        let x_2205 : vec4<bool> = (-(vec4<f32>(x_2202.z, x_2202.y, x_2202.z, x_2202.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2206 : vec3<bool> = vec3<bool>(x_2205.x, x_2205.y, x_2205.w);
        let x_2207 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2206.x, x_2206.y, x_2207.z, x_2206.z);
        let x_2210 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2210);
        let x_2215 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2215);
        let x_2221 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2221);
        let x_2224 : bool = u_xlatb11.z;
        if (x_2224) {
          let x_2229 : f32 = u_xlat11.y;
          x_2225 = x_2229;
        } else {
          let x_2231 : f32 = u_xlat88;
          x_2225 = x_2231;
        }
        let x_2232 : f32 = x_2225;
        u_xlat88 = x_2232;
        let x_2234 : bool = u_xlatb87;
        if (x_2234) {
          let x_2239 : f32 = u_xlat11.x;
          x_2235 = x_2239;
        } else {
          let x_2241 : f32 = u_xlat88;
          x_2235 = x_2241;
        }
        let x_2242 : f32 = x_2235;
        u_xlat87 = x_2242;
        let x_2243 : i32 = u_xlati82;
        let x_2245 : f32 = x_262.x_AdditionalShadowParams[x_2243].w;
        u_xlat88 = trunc(x_2245);
        let x_2247 : f32 = u_xlat87;
        let x_2248 : f32 = u_xlat88;
        u_xlat87 = (x_2247 + x_2248);
        let x_2250 : f32 = u_xlat87;
        u_xlati85 = i32(x_2250);
      }
      let x_2252 : i32 = u_xlati85;
      u_xlati85 = (x_2252 << bitcast<u32>(2i));
      let x_2254 : vec3<f32> = vs_TEXCOORD7;
      let x_2257 : i32 = u_xlati85;
      let x_2260 : i32 = u_xlati85;
      let x_2264 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_2257 + 1i) / 4i)][((x_2260 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2254.y, x_2254.y, x_2254.y, x_2254.y) * x_2264);
      let x_2266 : i32 = u_xlati85;
      let x_2268 : i32 = u_xlati85;
      let x_2271 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[(x_2266 / 4i)][(x_2268 % 4i)];
      let x_2272 : vec3<f32> = vs_TEXCOORD7;
      let x_2275 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2271 * vec4<f32>(x_2272.x, x_2272.x, x_2272.x, x_2272.x)) + x_2275);
      let x_2277 : i32 = u_xlati85;
      let x_2280 : i32 = u_xlati85;
      let x_2284 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_2277 + 2i) / 4i)][((x_2280 + 2i) % 4i)];
      let x_2285 : vec3<f32> = vs_TEXCOORD7;
      let x_2288 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2284 * vec4<f32>(x_2285.z, x_2285.z, x_2285.z, x_2285.z)) + x_2288);
      let x_2290 : vec4<f32> = u_xlat11;
      let x_2291 : i32 = u_xlati85;
      let x_2294 : i32 = u_xlati85;
      let x_2298 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_2291 + 3i) / 4i)][((x_2294 + 3i) % 4i)];
      u_xlat11 = (x_2290 + x_2298);
      let x_2300 : vec4<f32> = u_xlat11;
      let x_2302 : vec4<f32> = u_xlat11;
      let x_2304 : vec3<f32> = (vec3<f32>(x_2300.x, x_2300.y, x_2300.z) / vec3<f32>(x_2302.w, x_2302.w, x_2302.w));
      let x_2305 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
      let x_2308 : i32 = u_xlati82;
      let x_2310 : f32 = x_262.x_AdditionalShadowParams[x_2308].y;
      u_xlatb85 = (0.0f < x_2310);
      let x_2312 : bool = u_xlatb85;
      if (x_2312) {
        let x_2315 : i32 = u_xlati82;
        let x_2317 : f32 = x_262.x_AdditionalShadowParams[x_2315].y;
        u_xlatb85 = (1.0f == x_2317);
        let x_2319 : bool = u_xlatb85;
        if (x_2319) {
          let x_2322 : vec4<f32> = u_xlat11;
          let x_2326 : vec4<f32> = x_262.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2322.x, x_2322.y, x_2322.x, x_2322.y) + x_2326);
          let x_2329 : vec4<f32> = u_xlat12;
          let x_2330 : vec2<f32> = vec2<f32>(x_2329.x, x_2329.y);
          let x_2332 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2330.x, x_2330.y, x_2332);
          let x_2340 : vec3<f32> = txVec30;
          let x_2342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2340.xy, x_2340.z);
          u_xlat13.x = x_2342;
          let x_2345 : vec4<f32> = u_xlat12;
          let x_2346 : vec2<f32> = vec2<f32>(x_2345.z, x_2345.w);
          let x_2348 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2346.x, x_2346.y, x_2348);
          let x_2355 : vec3<f32> = txVec31;
          let x_2357 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2355.xy, x_2355.z);
          u_xlat13.y = x_2357;
          let x_2359 : vec4<f32> = u_xlat11;
          let x_2363 : vec4<f32> = x_262.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2359.x, x_2359.y, x_2359.x, x_2359.y) + x_2363);
          let x_2366 : vec4<f32> = u_xlat12;
          let x_2367 : vec2<f32> = vec2<f32>(x_2366.x, x_2366.y);
          let x_2369 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
          let x_2376 : vec3<f32> = txVec32;
          let x_2378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2376.xy, x_2376.z);
          u_xlat13.z = x_2378;
          let x_2381 : vec4<f32> = u_xlat12;
          let x_2382 : vec2<f32> = vec2<f32>(x_2381.z, x_2381.w);
          let x_2384 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
          let x_2391 : vec3<f32> = txVec33;
          let x_2393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
          u_xlat13.w = x_2393;
          let x_2395 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2395, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2398 : i32 = u_xlati82;
          let x_2400 : f32 = x_262.x_AdditionalShadowParams[x_2398].y;
          u_xlatb87 = (2.0f == x_2400);
          let x_2402 : bool = u_xlatb87;
          if (x_2402) {
            let x_2405 : vec4<f32> = u_xlat11;
            let x_2409 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2412 : vec2<f32> = ((vec2<f32>(x_2405.x, x_2405.y) * vec2<f32>(x_2409.z, x_2409.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2413 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2412.x, x_2412.y, x_2413.z, x_2413.w);
            let x_2415 : vec4<f32> = u_xlat12;
            let x_2417 : vec2<f32> = floor(vec2<f32>(x_2415.x, x_2415.y));
            let x_2418 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2421 : vec4<f32> = u_xlat11;
            let x_2424 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2427 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2421.x, x_2421.y) * vec2<f32>(x_2424.z, x_2424.w)) + -(vec2<f32>(x_2427.x, x_2427.y)));
            let x_2431 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2431.x, x_2431.x, x_2431.y, x_2431.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2434 : vec4<f32> = u_xlat13;
            let x_2436 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2434.x, x_2434.x, x_2434.z, x_2434.z) * vec4<f32>(x_2436.x, x_2436.x, x_2436.z, x_2436.z));
            let x_2439 : vec4<f32> = u_xlat14;
            let x_2441 : vec2<f32> = (vec2<f32>(x_2439.y, x_2439.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2442 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2441.x, x_2442.y, x_2441.y, x_2442.w);
            let x_2444 : vec4<f32> = u_xlat14;
            let x_2447 : vec2<f32> = u_xlat64;
            let x_2449 : vec2<f32> = ((vec2<f32>(x_2444.x, x_2444.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2447));
            let x_2450 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2453 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2453) + vec2<f32>(1.0f, 1.0f));
            let x_2456 : vec2<f32> = u_xlat64;
            let x_2457 : vec2<f32> = min(x_2456, vec2<f32>(0.0f, 0.0f));
            let x_2458 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
            let x_2460 : vec4<f32> = u_xlat15;
            let x_2463 : vec4<f32> = u_xlat15;
            let x_2466 : vec2<f32> = u_xlat66;
            let x_2467 : vec2<f32> = ((-(vec2<f32>(x_2460.x, x_2460.y)) * vec2<f32>(x_2463.x, x_2463.y)) + x_2466);
            let x_2468 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2467.x, x_2467.y, x_2468.z, x_2468.w);
            let x_2470 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2470, vec2<f32>(0.0f, 0.0f));
            let x_2472 : vec2<f32> = u_xlat64;
            let x_2474 : vec2<f32> = u_xlat64;
            let x_2476 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2472) * x_2474) + vec2<f32>(x_2476.y, x_2476.w));
            let x_2479 : vec4<f32> = u_xlat15;
            let x_2481 : vec2<f32> = (vec2<f32>(x_2479.x, x_2479.y) + vec2<f32>(1.0f, 1.0f));
            let x_2482 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
            let x_2484 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2484 + vec2<f32>(1.0f, 1.0f));
            let x_2486 : vec4<f32> = u_xlat14;
            let x_2488 : vec2<f32> = (vec2<f32>(x_2486.x, x_2486.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2489 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2488.x, x_2488.y, x_2489.z, x_2489.w);
            let x_2491 : vec2<f32> = u_xlat66;
            let x_2492 : vec2<f32> = (x_2491 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2493 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat15;
            let x_2497 : vec2<f32> = (vec2<f32>(x_2495.x, x_2495.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2498 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
            let x_2500 : vec2<f32> = u_xlat64;
            let x_2501 : vec2<f32> = (x_2500 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2502 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
            let x_2504 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2504.y, x_2504.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2508 : f32 = u_xlat15.x;
            u_xlat16.z = x_2508;
            let x_2511 : f32 = u_xlat64.x;
            u_xlat16.w = x_2511;
            let x_2514 : f32 = u_xlat17.x;
            u_xlat14.z = x_2514;
            let x_2517 : f32 = u_xlat13.x;
            u_xlat14.w = x_2517;
            let x_2519 : vec4<f32> = u_xlat14;
            let x_2521 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2519.z, x_2519.w, x_2519.x, x_2519.z) + vec4<f32>(x_2521.z, x_2521.w, x_2521.x, x_2521.z));
            let x_2525 : f32 = u_xlat16.y;
            u_xlat15.z = x_2525;
            let x_2528 : f32 = u_xlat64.y;
            u_xlat15.w = x_2528;
            let x_2531 : f32 = u_xlat14.y;
            u_xlat17.z = x_2531;
            let x_2534 : f32 = u_xlat13.z;
            u_xlat17.w = x_2534;
            let x_2536 : vec4<f32> = u_xlat15;
            let x_2538 : vec4<f32> = u_xlat17;
            let x_2540 : vec3<f32> = (vec3<f32>(x_2536.z, x_2536.y, x_2536.w) + vec3<f32>(x_2538.z, x_2538.y, x_2538.w));
            let x_2541 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat14;
            let x_2545 : vec4<f32> = u_xlat18;
            let x_2547 : vec3<f32> = (vec3<f32>(x_2543.x, x_2543.z, x_2543.w) / vec3<f32>(x_2545.z, x_2545.w, x_2545.y));
            let x_2548 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
            let x_2550 : vec4<f32> = u_xlat14;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2550.x, x_2550.y, x_2550.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2553 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat17;
            let x_2557 : vec4<f32> = u_xlat13;
            let x_2559 : vec3<f32> = (vec3<f32>(x_2555.z, x_2555.y, x_2555.w) / vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
            let x_2560 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
            let x_2562 : vec4<f32> = u_xlat15;
            let x_2564 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.y, x_2562.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2565 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
            let x_2567 : vec4<f32> = u_xlat14;
            let x_2570 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2572 : vec3<f32> = (vec3<f32>(x_2567.y, x_2567.x, x_2567.z) * vec3<f32>(x_2570.x, x_2570.x, x_2570.x));
            let x_2573 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2573.w);
            let x_2575 : vec4<f32> = u_xlat15;
            let x_2578 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2580 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.y, x_2575.z) * vec3<f32>(x_2578.y, x_2578.y, x_2578.y));
            let x_2581 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
            let x_2584 : f32 = u_xlat15.x;
            u_xlat14.w = x_2584;
            let x_2586 : vec4<f32> = u_xlat12;
            let x_2589 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2592 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2586.x, x_2586.y, x_2586.x, x_2586.y) * vec4<f32>(x_2589.x, x_2589.y, x_2589.x, x_2589.y)) + vec4<f32>(x_2592.y, x_2592.w, x_2592.x, x_2592.w));
            let x_2595 : vec4<f32> = u_xlat12;
            let x_2598 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2601 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2595.x, x_2595.y) * vec2<f32>(x_2598.x, x_2598.y)) + vec2<f32>(x_2601.z, x_2601.w));
            let x_2605 : f32 = u_xlat14.y;
            u_xlat15.w = x_2605;
            let x_2607 : vec4<f32> = u_xlat15;
            let x_2608 : vec2<f32> = vec2<f32>(x_2607.y, x_2607.z);
            let x_2609 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2609.x, x_2608.x, x_2609.z, x_2608.y);
            let x_2611 : vec4<f32> = u_xlat12;
            let x_2614 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2617 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y) * vec4<f32>(x_2614.x, x_2614.y, x_2614.x, x_2614.y)) + vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2617.y));
            let x_2620 : vec4<f32> = u_xlat12;
            let x_2623 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2626 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y) * vec4<f32>(x_2623.x, x_2623.y, x_2623.x, x_2623.y)) + vec4<f32>(x_2626.w, x_2626.y, x_2626.w, x_2626.z));
            let x_2629 : vec4<f32> = u_xlat12;
            let x_2632 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2635 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2629.x, x_2629.y, x_2629.x, x_2629.y) * vec4<f32>(x_2632.x, x_2632.y, x_2632.x, x_2632.y)) + vec4<f32>(x_2635.x, x_2635.w, x_2635.z, x_2635.w));
            let x_2639 : vec4<f32> = u_xlat13;
            let x_2641 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2639.x, x_2639.x, x_2639.x, x_2639.y) * vec4<f32>(x_2641.z, x_2641.w, x_2641.y, x_2641.z));
            let x_2645 : vec4<f32> = u_xlat13;
            let x_2647 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2645.y, x_2645.y, x_2645.z, x_2645.z) * x_2647);
            let x_2650 : f32 = u_xlat13.z;
            let x_2652 : f32 = u_xlat18.y;
            u_xlat87 = (x_2650 * x_2652);
            let x_2655 : vec4<f32> = u_xlat16;
            let x_2656 : vec2<f32> = vec2<f32>(x_2655.x, x_2655.y);
            let x_2658 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2656.x, x_2656.y, x_2658);
            let x_2665 : vec3<f32> = txVec34;
            let x_2667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2665.xy, x_2665.z);
            u_xlat88 = x_2667;
            let x_2669 : vec4<f32> = u_xlat16;
            let x_2670 : vec2<f32> = vec2<f32>(x_2669.z, x_2669.w);
            let x_2672 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2670.x, x_2670.y, x_2672);
            let x_2680 : vec3<f32> = txVec35;
            let x_2682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2680.xy, x_2680.z);
            u_xlat89 = x_2682;
            let x_2683 : f32 = u_xlat89;
            let x_2685 : f32 = u_xlat19.y;
            u_xlat89 = (x_2683 * x_2685);
            let x_2688 : f32 = u_xlat19.x;
            let x_2689 : f32 = u_xlat88;
            let x_2691 : f32 = u_xlat89;
            u_xlat88 = ((x_2688 * x_2689) + x_2691);
            let x_2694 : vec2<f32> = u_xlat64;
            let x_2696 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
            let x_2703 : vec3<f32> = txVec36;
            let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
            u_xlat89 = x_2705;
            let x_2707 : f32 = u_xlat19.z;
            let x_2708 : f32 = u_xlat89;
            let x_2710 : f32 = u_xlat88;
            u_xlat88 = ((x_2707 * x_2708) + x_2710);
            let x_2713 : vec4<f32> = u_xlat15;
            let x_2714 : vec2<f32> = vec2<f32>(x_2713.x, x_2713.y);
            let x_2716 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2714.x, x_2714.y, x_2716);
            let x_2723 : vec3<f32> = txVec37;
            let x_2725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2723.xy, x_2723.z);
            u_xlat89 = x_2725;
            let x_2727 : f32 = u_xlat19.w;
            let x_2728 : f32 = u_xlat89;
            let x_2730 : f32 = u_xlat88;
            u_xlat88 = ((x_2727 * x_2728) + x_2730);
            let x_2733 : vec4<f32> = u_xlat17;
            let x_2734 : vec2<f32> = vec2<f32>(x_2733.x, x_2733.y);
            let x_2736 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2734.x, x_2734.y, x_2736);
            let x_2743 : vec3<f32> = txVec38;
            let x_2745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2743.xy, x_2743.z);
            u_xlat89 = x_2745;
            let x_2747 : f32 = u_xlat20.x;
            let x_2748 : f32 = u_xlat89;
            let x_2750 : f32 = u_xlat88;
            u_xlat88 = ((x_2747 * x_2748) + x_2750);
            let x_2753 : vec4<f32> = u_xlat17;
            let x_2754 : vec2<f32> = vec2<f32>(x_2753.z, x_2753.w);
            let x_2756 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2754.x, x_2754.y, x_2756);
            let x_2763 : vec3<f32> = txVec39;
            let x_2765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2763.xy, x_2763.z);
            u_xlat89 = x_2765;
            let x_2767 : f32 = u_xlat20.y;
            let x_2768 : f32 = u_xlat89;
            let x_2770 : f32 = u_xlat88;
            u_xlat88 = ((x_2767 * x_2768) + x_2770);
            let x_2773 : vec4<f32> = u_xlat15;
            let x_2774 : vec2<f32> = vec2<f32>(x_2773.z, x_2773.w);
            let x_2776 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2774.x, x_2774.y, x_2776);
            let x_2783 : vec3<f32> = txVec40;
            let x_2785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
            u_xlat89 = x_2785;
            let x_2787 : f32 = u_xlat20.z;
            let x_2788 : f32 = u_xlat89;
            let x_2790 : f32 = u_xlat88;
            u_xlat88 = ((x_2787 * x_2788) + x_2790);
            let x_2793 : vec4<f32> = u_xlat14;
            let x_2794 : vec2<f32> = vec2<f32>(x_2793.x, x_2793.y);
            let x_2796 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
            let x_2803 : vec3<f32> = txVec41;
            let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
            u_xlat89 = x_2805;
            let x_2807 : f32 = u_xlat20.w;
            let x_2808 : f32 = u_xlat89;
            let x_2810 : f32 = u_xlat88;
            u_xlat88 = ((x_2807 * x_2808) + x_2810);
            let x_2813 : vec4<f32> = u_xlat14;
            let x_2814 : vec2<f32> = vec2<f32>(x_2813.z, x_2813.w);
            let x_2816 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2814.x, x_2814.y, x_2816);
            let x_2823 : vec3<f32> = txVec42;
            let x_2825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2823.xy, x_2823.z);
            u_xlat89 = x_2825;
            let x_2826 : f32 = u_xlat87;
            let x_2827 : f32 = u_xlat89;
            let x_2829 : f32 = u_xlat88;
            u_xlat85 = ((x_2826 * x_2827) + x_2829);
          } else {
            let x_2832 : vec4<f32> = u_xlat11;
            let x_2835 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2838 : vec2<f32> = ((vec2<f32>(x_2832.x, x_2832.y) * vec2<f32>(x_2835.z, x_2835.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2839 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2838.x, x_2838.y, x_2839.z, x_2839.w);
            let x_2841 : vec4<f32> = u_xlat12;
            let x_2843 : vec2<f32> = floor(vec2<f32>(x_2841.x, x_2841.y));
            let x_2844 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2843.x, x_2843.y, x_2844.z, x_2844.w);
            let x_2846 : vec4<f32> = u_xlat11;
            let x_2849 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_2852 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2846.x, x_2846.y) * vec2<f32>(x_2849.z, x_2849.w)) + -(vec2<f32>(x_2852.x, x_2852.y)));
            let x_2856 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2856.x, x_2856.x, x_2856.y, x_2856.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2859 : vec4<f32> = u_xlat13;
            let x_2861 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2859.x, x_2859.x, x_2859.z, x_2859.z) * vec4<f32>(x_2861.x, x_2861.x, x_2861.z, x_2861.z));
            let x_2864 : vec4<f32> = u_xlat14;
            let x_2866 : vec2<f32> = (vec2<f32>(x_2864.y, x_2864.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2867 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2867.x, x_2866.x, x_2867.z, x_2866.y);
            let x_2869 : vec4<f32> = u_xlat14;
            let x_2872 : vec2<f32> = u_xlat64;
            let x_2874 : vec2<f32> = ((vec2<f32>(x_2869.x, x_2869.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2872));
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2874.x, x_2875.y, x_2874.y, x_2875.w);
            let x_2877 : vec2<f32> = u_xlat64;
            let x_2879 : vec2<f32> = (-(x_2877) + vec2<f32>(1.0f, 1.0f));
            let x_2880 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2879.x, x_2879.y, x_2880.z, x_2880.w);
            let x_2882 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2882, vec2<f32>(0.0f, 0.0f));
            let x_2884 : vec2<f32> = u_xlat66;
            let x_2886 : vec2<f32> = u_xlat66;
            let x_2888 : vec4<f32> = u_xlat14;
            let x_2890 : vec2<f32> = ((-(x_2884) * x_2886) + vec2<f32>(x_2888.x, x_2888.y));
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2893, vec2<f32>(0.0f, 0.0f));
            let x_2896 : vec2<f32> = u_xlat66;
            let x_2898 : vec2<f32> = u_xlat66;
            let x_2900 : vec4<f32> = u_xlat13;
            let x_2902 : vec2<f32> = ((-(x_2896) * x_2898) + vec2<f32>(x_2900.y, x_2900.w));
            let x_2903 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2902.x, x_2903.y, x_2902.y);
            let x_2905 : vec4<f32> = u_xlat14;
            let x_2908 : vec2<f32> = (vec2<f32>(x_2905.x, x_2905.y) + vec2<f32>(2.0f, 2.0f));
            let x_2909 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2911 : vec3<f32> = u_xlat39;
            let x_2913 : vec2<f32> = (vec2<f32>(x_2911.x, x_2911.z) + vec2<f32>(2.0f, 2.0f));
            let x_2914 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2914.x, x_2913.x, x_2914.z, x_2913.y);
            let x_2917 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2917 * 0.08163200318813323975f);
            let x_2920 : vec4<f32> = u_xlat13;
            let x_2923 : vec3<f32> = (vec3<f32>(x_2920.z, x_2920.x, x_2920.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2924 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2923.x, x_2923.y, x_2923.z, x_2924.w);
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2928 : vec2<f32> = (vec2<f32>(x_2926.x, x_2926.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2929 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
            let x_2932 : f32 = u_xlat17.y;
            u_xlat16.x = x_2932;
            let x_2934 : vec2<f32> = u_xlat64;
            let x_2937 : vec2<f32> = ((vec2<f32>(x_2934.x, x_2934.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2938 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2938.x, x_2937.x, x_2938.z, x_2937.y);
            let x_2940 : vec2<f32> = u_xlat64;
            let x_2943 : vec2<f32> = ((vec2<f32>(x_2940.x, x_2940.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2944 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2943.x, x_2944.y, x_2943.y, x_2944.w);
            let x_2947 : f32 = u_xlat13.x;
            u_xlat14.y = x_2947;
            let x_2950 : f32 = u_xlat15.y;
            u_xlat14.w = x_2950;
            let x_2952 : vec4<f32> = u_xlat14;
            let x_2953 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2952 + x_2953);
            let x_2955 : vec2<f32> = u_xlat64;
            let x_2958 : vec2<f32> = ((vec2<f32>(x_2955.y, x_2955.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2959 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2959.x, x_2958.x, x_2959.z, x_2958.y);
            let x_2961 : vec2<f32> = u_xlat64;
            let x_2964 : vec2<f32> = ((vec2<f32>(x_2961.y, x_2961.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2965 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2964.x, x_2965.y, x_2964.y, x_2965.w);
            let x_2968 : f32 = u_xlat13.y;
            u_xlat15.y = x_2968;
            let x_2970 : vec4<f32> = u_xlat15;
            let x_2971 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2970 + x_2971);
            let x_2973 : vec4<f32> = u_xlat14;
            let x_2974 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2973 / x_2974);
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2976 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2978 : vec4<f32> = u_xlat15;
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2978 / x_2979);
            let x_2981 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2981 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2983 : vec4<f32> = u_xlat14;
            let x_2986 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2983.w, x_2983.x, x_2983.y, x_2983.z) * vec4<f32>(x_2986.x, x_2986.x, x_2986.x, x_2986.x));
            let x_2989 : vec4<f32> = u_xlat15;
            let x_2992 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2989.x, x_2989.w, x_2989.y, x_2989.z) * vec4<f32>(x_2992.y, x_2992.y, x_2992.y, x_2992.y));
            let x_2995 : vec4<f32> = u_xlat14;
            let x_2996 : vec3<f32> = vec3<f32>(x_2995.y, x_2995.z, x_2995.w);
            let x_2997 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2996.x, x_2997.y, x_2996.y, x_2996.z);
            let x_3000 : f32 = u_xlat15.x;
            u_xlat17.y = x_3000;
            let x_3002 : vec4<f32> = u_xlat12;
            let x_3005 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3008 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3002.x, x_3002.y, x_3002.x, x_3002.y) * vec4<f32>(x_3005.x, x_3005.y, x_3005.x, x_3005.y)) + vec4<f32>(x_3008.x, x_3008.y, x_3008.z, x_3008.y));
            let x_3011 : vec4<f32> = u_xlat12;
            let x_3014 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3017 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3011.x, x_3011.y) * vec2<f32>(x_3014.x, x_3014.y)) + vec2<f32>(x_3017.w, x_3017.y));
            let x_3021 : f32 = u_xlat17.y;
            u_xlat14.y = x_3021;
            let x_3024 : f32 = u_xlat15.z;
            u_xlat17.y = x_3024;
            let x_3026 : vec4<f32> = u_xlat12;
            let x_3029 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y) * vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y)) + vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3032.y));
            let x_3035 : vec4<f32> = u_xlat12;
            let x_3038 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3041 : vec4<f32> = u_xlat17;
            let x_3043 : vec2<f32> = ((vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(x_3038.x, x_3038.y)) + vec2<f32>(x_3041.w, x_3041.y));
            let x_3044 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3043.x, x_3043.y, x_3044.z, x_3044.w);
            let x_3047 : f32 = u_xlat17.y;
            u_xlat14.z = x_3047;
            let x_3050 : vec4<f32> = u_xlat12;
            let x_3053 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.y) * vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y)) + vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.z));
            let x_3060 : f32 = u_xlat15.w;
            u_xlat17.y = x_3060;
            let x_3063 : vec4<f32> = u_xlat12;
            let x_3066 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3069 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y) * vec4<f32>(x_3066.x, x_3066.y, x_3066.x, x_3066.y)) + vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3069.y));
            let x_3073 : vec4<f32> = u_xlat12;
            let x_3076 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.x, x_3076.y)) + vec2<f32>(x_3079.w, x_3079.y));
            let x_3083 : f32 = u_xlat17.y;
            u_xlat14.w = x_3083;
            let x_3086 : vec4<f32> = u_xlat12;
            let x_3089 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3092 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3086.x, x_3086.y) * vec2<f32>(x_3089.x, x_3089.y)) + vec2<f32>(x_3092.x, x_3092.w));
            let x_3095 : vec4<f32> = u_xlat17;
            let x_3096 : vec3<f32> = vec3<f32>(x_3095.x, x_3095.z, x_3095.w);
            let x_3097 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3096.x, x_3097.y, x_3096.y, x_3096.z);
            let x_3099 : vec4<f32> = u_xlat12;
            let x_3102 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3105 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y) * vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y)) + vec4<f32>(x_3105.x, x_3105.y, x_3105.z, x_3105.y));
            let x_3109 : vec4<f32> = u_xlat12;
            let x_3112 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3109.x, x_3109.y) * vec2<f32>(x_3112.x, x_3112.y)) + vec2<f32>(x_3115.w, x_3115.y));
            let x_3119 : f32 = u_xlat14.x;
            u_xlat15.x = x_3119;
            let x_3121 : vec4<f32> = u_xlat12;
            let x_3124 : vec4<f32> = x_262.x_AdditionalShadowmapSize;
            let x_3127 : vec4<f32> = u_xlat15;
            let x_3129 : vec2<f32> = ((vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(x_3124.x, x_3124.y)) + vec2<f32>(x_3127.x, x_3127.y));
            let x_3130 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3129.x, x_3129.y, x_3130.z, x_3130.w);
            let x_3133 : vec4<f32> = u_xlat13;
            let x_3135 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3133.x, x_3133.x, x_3133.x, x_3133.x) * x_3135);
            let x_3138 : vec4<f32> = u_xlat13;
            let x_3140 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3138.y, x_3138.y, x_3138.y, x_3138.y) * x_3140);
            let x_3143 : vec4<f32> = u_xlat13;
            let x_3145 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3143.z, x_3143.z, x_3143.z, x_3143.z) * x_3145);
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3149 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3147.w, x_3147.w, x_3147.w, x_3147.w) * x_3149);
            let x_3152 : vec4<f32> = u_xlat18;
            let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
            let x_3155 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec43;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat87 = x_3164;
            let x_3166 : vec4<f32> = u_xlat18;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.z, x_3166.w);
            let x_3169 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec44;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat88 = x_3178;
            let x_3179 : f32 = u_xlat88;
            let x_3181 : f32 = u_xlat23.y;
            u_xlat88 = (x_3179 * x_3181);
            let x_3184 : f32 = u_xlat23.x;
            let x_3185 : f32 = u_xlat87;
            let x_3187 : f32 = u_xlat88;
            u_xlat87 = ((x_3184 * x_3185) + x_3187);
            let x_3190 : vec2<f32> = u_xlat64;
            let x_3192 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec45;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat88 = x_3201;
            let x_3203 : f32 = u_xlat23.z;
            let x_3204 : f32 = u_xlat88;
            let x_3206 : f32 = u_xlat87;
            u_xlat87 = ((x_3203 * x_3204) + x_3206);
            let x_3209 : vec4<f32> = u_xlat21;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.x, x_3209.y);
            let x_3212 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec46;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat88 = x_3221;
            let x_3223 : f32 = u_xlat23.w;
            let x_3224 : f32 = u_xlat88;
            let x_3226 : f32 = u_xlat87;
            u_xlat87 = ((x_3223 * x_3224) + x_3226);
            let x_3229 : vec4<f32> = u_xlat19;
            let x_3230 : vec2<f32> = vec2<f32>(x_3229.x, x_3229.y);
            let x_3232 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
            let x_3239 : vec3<f32> = txVec47;
            let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
            u_xlat88 = x_3241;
            let x_3243 : f32 = u_xlat24.x;
            let x_3244 : f32 = u_xlat88;
            let x_3246 : f32 = u_xlat87;
            u_xlat87 = ((x_3243 * x_3244) + x_3246);
            let x_3249 : vec4<f32> = u_xlat19;
            let x_3250 : vec2<f32> = vec2<f32>(x_3249.z, x_3249.w);
            let x_3252 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3250.x, x_3250.y, x_3252);
            let x_3259 : vec3<f32> = txVec48;
            let x_3261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3259.xy, x_3259.z);
            u_xlat88 = x_3261;
            let x_3263 : f32 = u_xlat24.y;
            let x_3264 : f32 = u_xlat88;
            let x_3266 : f32 = u_xlat87;
            u_xlat87 = ((x_3263 * x_3264) + x_3266);
            let x_3269 : vec4<f32> = u_xlat20;
            let x_3270 : vec2<f32> = vec2<f32>(x_3269.x, x_3269.y);
            let x_3272 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3270.x, x_3270.y, x_3272);
            let x_3279 : vec3<f32> = txVec49;
            let x_3281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
            u_xlat88 = x_3281;
            let x_3283 : f32 = u_xlat24.z;
            let x_3284 : f32 = u_xlat88;
            let x_3286 : f32 = u_xlat87;
            u_xlat87 = ((x_3283 * x_3284) + x_3286);
            let x_3289 : vec4<f32> = u_xlat21;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.z, x_3289.w);
            let x_3292 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec50;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat88 = x_3301;
            let x_3303 : f32 = u_xlat24.w;
            let x_3304 : f32 = u_xlat88;
            let x_3306 : f32 = u_xlat87;
            u_xlat87 = ((x_3303 * x_3304) + x_3306);
            let x_3309 : vec4<f32> = u_xlat22;
            let x_3310 : vec2<f32> = vec2<f32>(x_3309.x, x_3309.y);
            let x_3312 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec51;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat88 = x_3321;
            let x_3323 : f32 = u_xlat25.x;
            let x_3324 : f32 = u_xlat88;
            let x_3326 : f32 = u_xlat87;
            u_xlat87 = ((x_3323 * x_3324) + x_3326);
            let x_3329 : vec4<f32> = u_xlat22;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.z, x_3329.w);
            let x_3332 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec52;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat88 = x_3341;
            let x_3343 : f32 = u_xlat25.y;
            let x_3344 : f32 = u_xlat88;
            let x_3346 : f32 = u_xlat87;
            u_xlat87 = ((x_3343 * x_3344) + x_3346);
            let x_3349 : vec2<f32> = u_xlat40;
            let x_3351 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
            let x_3358 : vec3<f32> = txVec53;
            let x_3360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
            u_xlat88 = x_3360;
            let x_3362 : f32 = u_xlat25.z;
            let x_3363 : f32 = u_xlat88;
            let x_3365 : f32 = u_xlat87;
            u_xlat87 = ((x_3362 * x_3363) + x_3365);
            let x_3368 : vec2<f32> = u_xlat72;
            let x_3370 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec54;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat88 = x_3379;
            let x_3381 : f32 = u_xlat25.w;
            let x_3382 : f32 = u_xlat88;
            let x_3384 : f32 = u_xlat87;
            u_xlat87 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec4<f32> = u_xlat17;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.x, x_3387.y);
            let x_3390 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec55;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat88 = x_3399;
            let x_3401 : f32 = u_xlat13.x;
            let x_3402 : f32 = u_xlat88;
            let x_3404 : f32 = u_xlat87;
            u_xlat87 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat17;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.z, x_3407.w);
            let x_3410 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec56;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat88 = x_3419;
            let x_3421 : f32 = u_xlat13.y;
            let x_3422 : f32 = u_xlat88;
            let x_3424 : f32 = u_xlat87;
            u_xlat87 = ((x_3421 * x_3422) + x_3424);
            let x_3427 : vec2<f32> = u_xlat67;
            let x_3429 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec57;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat88 = x_3438;
            let x_3440 : f32 = u_xlat13.z;
            let x_3441 : f32 = u_xlat88;
            let x_3443 : f32 = u_xlat87;
            u_xlat87 = ((x_3440 * x_3441) + x_3443);
            let x_3446 : vec4<f32> = u_xlat12;
            let x_3447 : vec2<f32> = vec2<f32>(x_3446.x, x_3446.y);
            let x_3449 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec58;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat88 = x_3458;
            let x_3460 : f32 = u_xlat13.w;
            let x_3461 : f32 = u_xlat88;
            let x_3463 : f32 = u_xlat87;
            u_xlat85 = ((x_3460 * x_3461) + x_3463);
          }
        }
      } else {
        let x_3467 : vec4<f32> = u_xlat11;
        let x_3468 : vec2<f32> = vec2<f32>(x_3467.x, x_3467.y);
        let x_3470 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3468.x, x_3468.y, x_3470);
        let x_3477 : vec3<f32> = txVec59;
        let x_3479 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3477.xy, x_3477.z);
        u_xlat85 = x_3479;
      }
      let x_3480 : i32 = u_xlati82;
      let x_3482 : f32 = x_262.x_AdditionalShadowParams[x_3480].x;
      u_xlat87 = (1.0f + -(x_3482));
      let x_3485 : f32 = u_xlat85;
      let x_3486 : i32 = u_xlati82;
      let x_3488 : f32 = x_262.x_AdditionalShadowParams[x_3486].x;
      let x_3490 : f32 = u_xlat87;
      u_xlat85 = ((x_3485 * x_3488) + x_3490);
      let x_3493 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3493);
      let x_3497 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3497 >= 1.0f);
      let x_3499 : bool = u_xlatb87;
      let x_3500 : bool = u_xlatb88;
      u_xlatb87 = (x_3499 | x_3500);
      let x_3502 : bool = u_xlatb87;
      let x_3503 : f32 = u_xlat85;
      u_xlat85 = select(x_3503, 1.0f, x_3502);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3506 : f32 = u_xlat85;
    u_xlat87 = (-(x_3506) + 1.0f);
    let x_3509 : f32 = u_xlat79;
    let x_3510 : f32 = u_xlat87;
    let x_3512 : f32 = u_xlat85;
    u_xlat85 = ((x_3509 * x_3510) + x_3512);
    let x_3515 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_3515 & 31i)));
    let x_3519 : i32 = u_xlati87;
    let x_3522 : f32 = x_1609.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3519) & bitcast<u32>(x_3522)));
    let x_3526 : i32 = u_xlati87;
    if ((x_3526 != 0i)) {
      let x_3530 : i32 = u_xlati82;
      let x_3532 : f32 = x_1609.x_AdditionalLightsLightTypes[x_3530].el;
      u_xlati87 = i32(x_3532);
      let x_3535 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3535 != 0i));
      let x_3539 : i32 = u_xlati82;
      u_xlati11 = (x_3539 << bitcast<u32>(2i));
      let x_3541 : i32 = u_xlati88;
      if ((x_3541 != 0i)) {
        let x_3546 : vec3<f32> = vs_TEXCOORD7;
        let x_3548 : i32 = u_xlati11;
        let x_3551 : i32 = u_xlati11;
        let x_3555 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3548 + 1i) / 4i)][((x_3551 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3546.y, x_3546.y, x_3546.y) * vec3<f32>(x_3555.x, x_3555.y, x_3555.w));
        let x_3558 : i32 = u_xlati11;
        let x_3560 : i32 = u_xlati11;
        let x_3563 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_3558 / 4i)][(x_3560 % 4i)];
        let x_3565 : vec3<f32> = vs_TEXCOORD7;
        let x_3568 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3563.x, x_3563.y, x_3563.w) * vec3<f32>(x_3565.x, x_3565.x, x_3565.x)) + x_3568);
        let x_3570 : i32 = u_xlati11;
        let x_3573 : i32 = u_xlati11;
        let x_3577 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3570 + 2i) / 4i)][((x_3573 + 2i) % 4i)];
        let x_3579 : vec3<f32> = vs_TEXCOORD7;
        let x_3582 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3577.x, x_3577.y, x_3577.w) * vec3<f32>(x_3579.z, x_3579.z, x_3579.z)) + x_3582);
        let x_3584 : vec3<f32> = u_xlat37;
        let x_3585 : i32 = u_xlati11;
        let x_3588 : i32 = u_xlati11;
        let x_3592 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3585 + 3i) / 4i)][((x_3588 + 3i) % 4i)];
        u_xlat37 = (x_3584 + vec3<f32>(x_3592.x, x_3592.y, x_3592.w));
        let x_3595 : vec3<f32> = u_xlat37;
        let x_3597 : vec3<f32> = u_xlat37;
        let x_3599 : vec2<f32> = (vec2<f32>(x_3595.x, x_3595.y) / vec2<f32>(x_3597.z, x_3597.z));
        let x_3600 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3599.x, x_3599.y, x_3600.z);
        let x_3602 : vec3<f32> = u_xlat37;
        let x_3605 : vec2<f32> = ((vec2<f32>(x_3602.x, x_3602.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3606 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3605.x, x_3605.y, x_3606.z);
        let x_3608 : vec3<f32> = u_xlat37;
        let x_3612 : vec2<f32> = clamp(vec2<f32>(x_3608.x, x_3608.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3613 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3612.x, x_3612.y, x_3613.z);
        let x_3615 : i32 = u_xlati82;
        let x_3617 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3615];
        let x_3619 : vec3<f32> = u_xlat37;
        let x_3622 : i32 = u_xlati82;
        let x_3624 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3622];
        let x_3626 : vec2<f32> = ((vec2<f32>(x_3617.x, x_3617.y) * vec2<f32>(x_3619.x, x_3619.y)) + vec2<f32>(x_3624.z, x_3624.w));
        let x_3627 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3626.x, x_3626.y, x_3627.z);
      } else {
        let x_3630 : i32 = u_xlati87;
        u_xlatb87 = (x_3630 == 1i);
        let x_3632 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3632);
        let x_3634 : i32 = u_xlati87;
        if ((x_3634 != 0i)) {
          let x_3638 : vec3<f32> = vs_TEXCOORD7;
          let x_3640 : i32 = u_xlati11;
          let x_3643 : i32 = u_xlati11;
          let x_3647 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3640 + 1i) / 4i)][((x_3643 + 1i) % 4i)];
          let x_3649 : vec2<f32> = (vec2<f32>(x_3638.y, x_3638.y) * vec2<f32>(x_3647.x, x_3647.y));
          let x_3650 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3649.x, x_3649.y, x_3650.z, x_3650.w);
          let x_3652 : i32 = u_xlati11;
          let x_3654 : i32 = u_xlati11;
          let x_3657 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_3652 / 4i)][(x_3654 % 4i)];
          let x_3659 : vec3<f32> = vs_TEXCOORD7;
          let x_3662 : vec4<f32> = u_xlat12;
          let x_3664 : vec2<f32> = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3659.x, x_3659.x)) + vec2<f32>(x_3662.x, x_3662.y));
          let x_3665 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3664.x, x_3664.y, x_3665.z, x_3665.w);
          let x_3667 : i32 = u_xlati11;
          let x_3670 : i32 = u_xlati11;
          let x_3674 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3667 + 2i) / 4i)][((x_3670 + 2i) % 4i)];
          let x_3676 : vec3<f32> = vs_TEXCOORD7;
          let x_3679 : vec4<f32> = u_xlat12;
          let x_3681 : vec2<f32> = ((vec2<f32>(x_3674.x, x_3674.y) * vec2<f32>(x_3676.z, x_3676.z)) + vec2<f32>(x_3679.x, x_3679.y));
          let x_3682 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3681.x, x_3681.y, x_3682.z, x_3682.w);
          let x_3684 : vec4<f32> = u_xlat12;
          let x_3686 : i32 = u_xlati11;
          let x_3689 : i32 = u_xlati11;
          let x_3693 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3686 + 3i) / 4i)][((x_3689 + 3i) % 4i)];
          let x_3695 : vec2<f32> = (vec2<f32>(x_3684.x, x_3684.y) + vec2<f32>(x_3693.x, x_3693.y));
          let x_3696 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3695.x, x_3695.y, x_3696.z, x_3696.w);
          let x_3698 : vec4<f32> = u_xlat12;
          let x_3701 : vec2<f32> = ((vec2<f32>(x_3698.x, x_3698.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3702 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3701.x, x_3701.y, x_3702.z, x_3702.w);
          let x_3704 : vec4<f32> = u_xlat12;
          let x_3706 : vec2<f32> = fract(vec2<f32>(x_3704.x, x_3704.y));
          let x_3707 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3706.x, x_3706.y, x_3707.z, x_3707.w);
          let x_3709 : i32 = u_xlati82;
          let x_3711 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3709];
          let x_3713 : vec4<f32> = u_xlat12;
          let x_3716 : i32 = u_xlati82;
          let x_3718 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3716];
          let x_3720 : vec2<f32> = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(x_3713.x, x_3713.y)) + vec2<f32>(x_3718.z, x_3718.w));
          let x_3721 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3720.x, x_3720.y, x_3721.z);
        } else {
          let x_3724 : vec3<f32> = vs_TEXCOORD7;
          let x_3726 : i32 = u_xlati11;
          let x_3729 : i32 = u_xlati11;
          let x_3733 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3726 + 1i) / 4i)][((x_3729 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3724.y, x_3724.y, x_3724.y, x_3724.y) * x_3733);
          let x_3735 : i32 = u_xlati11;
          let x_3737 : i32 = u_xlati11;
          let x_3740 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_3735 / 4i)][(x_3737 % 4i)];
          let x_3741 : vec3<f32> = vs_TEXCOORD7;
          let x_3744 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3740 * vec4<f32>(x_3741.x, x_3741.x, x_3741.x, x_3741.x)) + x_3744);
          let x_3746 : i32 = u_xlati11;
          let x_3749 : i32 = u_xlati11;
          let x_3753 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3746 + 2i) / 4i)][((x_3749 + 2i) % 4i)];
          let x_3754 : vec3<f32> = vs_TEXCOORD7;
          let x_3757 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3753 * vec4<f32>(x_3754.z, x_3754.z, x_3754.z, x_3754.z)) + x_3757);
          let x_3759 : vec4<f32> = u_xlat12;
          let x_3760 : i32 = u_xlati11;
          let x_3763 : i32 = u_xlati11;
          let x_3767 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3760 + 3i) / 4i)][((x_3763 + 3i) % 4i)];
          u_xlat12 = (x_3759 + x_3767);
          let x_3769 : vec4<f32> = u_xlat12;
          let x_3771 : vec4<f32> = u_xlat12;
          let x_3773 : vec3<f32> = (vec3<f32>(x_3769.x, x_3769.y, x_3769.z) / vec3<f32>(x_3771.w, x_3771.w, x_3771.w));
          let x_3774 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3773.x, x_3773.y, x_3773.z, x_3774.w);
          let x_3776 : vec4<f32> = u_xlat12;
          let x_3778 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3776.x, x_3776.y, x_3776.z), vec3<f32>(x_3778.x, x_3778.y, x_3778.z));
          let x_3781 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3781);
          let x_3783 : f32 = u_xlat87;
          let x_3785 : vec4<f32> = u_xlat12;
          let x_3787 : vec3<f32> = (vec3<f32>(x_3783, x_3783, x_3783) * vec3<f32>(x_3785.x, x_3785.y, x_3785.z));
          let x_3788 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3787.x, x_3787.y, x_3787.z, x_3788.w);
          let x_3790 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3790.x, x_3790.y, x_3790.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3795 : f32 = u_xlat87;
          u_xlat87 = max(x_3795, 0.00000099999999747524f);
          let x_3798 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3798);
          let x_3800 : f32 = u_xlat87;
          let x_3802 : vec4<f32> = u_xlat12;
          let x_3804 : vec3<f32> = (vec3<f32>(x_3800, x_3800, x_3800) * vec3<f32>(x_3802.z, x_3802.x, x_3802.y));
          let x_3805 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3804.x, x_3804.y, x_3804.z, x_3805.w);
          let x_3808 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3808);
          let x_3812 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3812, 0.0f, 1.0f);
          let x_3815 : vec4<f32> = u_xlat13;
          let x_3817 : vec4<bool> = (vec4<f32>(x_3815.y, x_3815.y, x_3815.y, x_3815.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3818 : vec2<bool> = vec2<bool>(x_3817.x, x_3817.w);
          let x_3819 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3818.x, x_3819.y, x_3819.z, x_3818.y);
          let x_3822 : bool = u_xlatb11.x;
          if (x_3822) {
            let x_3827 : f32 = u_xlat13.x;
            x_3823 = x_3827;
          } else {
            let x_3830 : f32 = u_xlat13.x;
            x_3823 = -(x_3830);
          }
          let x_3832 : f32 = x_3823;
          u_xlat11.x = x_3832;
          let x_3835 : bool = u_xlatb11.w;
          if (x_3835) {
            let x_3840 : f32 = u_xlat13.x;
            x_3836 = x_3840;
          } else {
            let x_3843 : f32 = u_xlat13.x;
            x_3836 = -(x_3843);
          }
          let x_3845 : f32 = x_3836;
          u_xlat11.w = x_3845;
          let x_3847 : vec4<f32> = u_xlat12;
          let x_3849 : f32 = u_xlat87;
          let x_3852 : vec4<f32> = u_xlat11;
          let x_3854 : vec2<f32> = ((vec2<f32>(x_3847.x, x_3847.y) * vec2<f32>(x_3849, x_3849)) + vec2<f32>(x_3852.x, x_3852.w));
          let x_3855 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3854.x, x_3855.y, x_3855.z, x_3854.y);
          let x_3857 : vec4<f32> = u_xlat11;
          let x_3860 : vec2<f32> = ((vec2<f32>(x_3857.x, x_3857.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3861 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3860.x, x_3861.y, x_3861.z, x_3860.y);
          let x_3863 : vec4<f32> = u_xlat11;
          let x_3867 : vec2<f32> = clamp(vec2<f32>(x_3863.x, x_3863.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3868 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3867.x, x_3868.y, x_3868.z, x_3867.y);
          let x_3870 : i32 = u_xlati82;
          let x_3872 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3870];
          let x_3874 : vec4<f32> = u_xlat11;
          let x_3877 : i32 = u_xlati82;
          let x_3879 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3877];
          let x_3881 : vec2<f32> = ((vec2<f32>(x_3872.x, x_3872.y) * vec2<f32>(x_3874.x, x_3874.w)) + vec2<f32>(x_3879.z, x_3879.w));
          let x_3882 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3881.x, x_3881.y, x_3882.z);
        }
      }
      let x_3889 : vec3<f32> = u_xlat37;
      let x_3891 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3889.x, x_3889.y), 0.0f);
      u_xlat11 = x_3891;
      let x_3893 : bool = u_xlatb30.y;
      if (x_3893) {
        let x_3898 : f32 = u_xlat11.w;
        x_3894 = x_3898;
      } else {
        let x_3901 : f32 = u_xlat11.x;
        x_3894 = x_3901;
      }
      let x_3902 : f32 = x_3894;
      u_xlat87 = x_3902;
      let x_3904 : bool = u_xlatb30.x;
      if (x_3904) {
        let x_3908 : vec4<f32> = u_xlat11;
        x_3905 = vec3<f32>(x_3908.x, x_3908.y, x_3908.z);
      } else {
        let x_3911 : f32 = u_xlat87;
        x_3905 = vec3<f32>(x_3911, x_3911, x_3911);
      }
      let x_3913 : vec3<f32> = x_3905;
      let x_3914 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3913.x, x_3913.y, x_3913.z, x_3914.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3920 : vec4<f32> = u_xlat11;
    let x_3922 : i32 = u_xlati82;
    let x_3924 : vec4<f32> = x_2087.x_AdditionalLightsColor[x_3922];
    let x_3926 : vec3<f32> = (vec3<f32>(x_3920.x, x_3920.y, x_3920.z) * vec3<f32>(x_3924.x, x_3924.y, x_3924.z));
    let x_3927 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3926.x, x_3926.y, x_3926.z, x_3927.w);
    let x_3929 : f32 = u_xlat83;
    let x_3930 : f32 = u_xlat85;
    u_xlat82 = (x_3929 * x_3930);
    let x_3932 : vec4<f32> = u_xlat2;
    let x_3934 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_3932.x, x_3932.y, x_3932.z), vec3<f32>(x_3934.x, x_3934.y, x_3934.z));
    let x_3937 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3937, 0.0f, 1.0f);
    let x_3939 : f32 = u_xlat82;
    let x_3940 : f32 = u_xlat83;
    u_xlat82 = (x_3939 * x_3940);
    let x_3942 : f32 = u_xlat82;
    let x_3944 : vec4<f32> = u_xlat11;
    let x_3946 : vec3<f32> = (vec3<f32>(x_3942, x_3942, x_3942) * vec3<f32>(x_3944.x, x_3944.y, x_3944.z));
    let x_3947 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3946.x, x_3946.y, x_3946.z, x_3947.w);
    let x_3949 : vec4<f32> = u_xlat9;
    let x_3951 : f32 = u_xlat84;
    let x_3954 : vec4<f32> = u_xlat6;
    let x_3956 : vec3<f32> = ((vec3<f32>(x_3949.x, x_3949.y, x_3949.z) * vec3<f32>(x_3951, x_3951, x_3951)) + vec3<f32>(x_3954.x, x_3954.y, x_3954.z));
    let x_3957 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3956.x, x_3956.y, x_3956.z, x_3957.w);
    let x_3959 : vec4<f32> = u_xlat9;
    let x_3961 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3959.x, x_3959.y, x_3959.z), vec3<f32>(x_3961.x, x_3961.y, x_3961.z));
    let x_3964 : f32 = u_xlat82;
    u_xlat82 = max(x_3964, 1.17549435e-38f);
    let x_3966 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3966);
    let x_3968 : f32 = u_xlat82;
    let x_3970 : vec4<f32> = u_xlat9;
    let x_3972 : vec3<f32> = (vec3<f32>(x_3968, x_3968, x_3968) * vec3<f32>(x_3970.x, x_3970.y, x_3970.z));
    let x_3973 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
    let x_3975 : vec4<f32> = u_xlat2;
    let x_3977 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3975.x, x_3975.y, x_3975.z), vec3<f32>(x_3977.x, x_3977.y, x_3977.z));
    let x_3980 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3980, 0.0f, 1.0f);
    let x_3982 : vec4<f32> = u_xlat10;
    let x_3984 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3982.x, x_3982.y, x_3982.z), vec3<f32>(x_3984.x, x_3984.y, x_3984.z));
    let x_3987 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3987, 0.0f, 1.0f);
    let x_3989 : f32 = u_xlat82;
    let x_3990 : f32 = u_xlat82;
    u_xlat82 = (x_3989 * x_3990);
    let x_3992 : f32 = u_xlat82;
    let x_3994 : f32 = u_xlat8.x;
    u_xlat82 = ((x_3992 * x_3994) + 1.00001001358032226562f);
    let x_3997 : f32 = u_xlat83;
    let x_3998 : f32 = u_xlat83;
    u_xlat83 = (x_3997 * x_3998);
    let x_4000 : f32 = u_xlat82;
    let x_4001 : f32 = u_xlat82;
    u_xlat82 = (x_4000 * x_4001);
    let x_4003 : f32 = u_xlat83;
    u_xlat83 = max(x_4003, 0.10000000149011611938f);
    let x_4005 : f32 = u_xlat82;
    let x_4006 : f32 = u_xlat83;
    u_xlat82 = (x_4005 * x_4006);
    let x_4009 : f32 = u_xlat3.x;
    let x_4010 : f32 = u_xlat82;
    u_xlat82 = (x_4009 * x_4010);
    let x_4013 : f32 = u_xlat4.x;
    let x_4014 : f32 = u_xlat82;
    u_xlat82 = (x_4013 / x_4014);
    let x_4016 : vec4<f32> = u_xlat0;
    let x_4018 : f32 = u_xlat82;
    let x_4021 : vec3<f32> = u_xlat29;
    let x_4022 : vec3<f32> = ((vec3<f32>(x_4016.x, x_4016.y, x_4016.z) * vec3<f32>(x_4018, x_4018, x_4018)) + x_4021);
    let x_4023 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4022.x, x_4022.y, x_4022.z, x_4023.w);
    let x_4025 : vec4<f32> = u_xlat9;
    let x_4027 : vec4<f32> = u_xlat11;
    let x_4030 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4025.x, x_4025.y, x_4025.z) * vec3<f32>(x_4027.x, x_4027.y, x_4027.z)) + x_4030);

    continuing {
      let x_4032 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4032 + bitcast<u32>(1i));
    }
  }
  let x_4034 : vec4<f32> = u_xlat7;
  let x_4036 : vec4<f32> = u_xlat5;
  let x_4039 : vec3<f32> = u_xlat1;
  let x_4040 : vec3<f32> = ((vec3<f32>(x_4034.x, x_4034.y, x_4034.z) * vec3<f32>(x_4036.x, x_4036.y, x_4036.z)) + x_4039);
  let x_4041 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4040.x, x_4040.y, x_4040.z, x_4041.w);
  let x_4045 : vec3<f32> = u_xlat34;
  let x_4046 : vec4<f32> = u_xlat0;
  let x_4048 : vec3<f32> = (x_4045 + vec3<f32>(x_4046.x, x_4046.y, x_4046.z));
  let x_4049 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4048.x, x_4048.y, x_4048.z, x_4049.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


