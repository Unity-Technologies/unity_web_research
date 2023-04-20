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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb30 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_200 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_1550 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat83 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1747 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2009 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

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
  var x_1637 : f32;
  var x_1648 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2147 : f32;
  var x_2157 : f32;
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
  var x_3745 : f32;
  var x_3758 : f32;
  var x_3816 : f32;
  var x_3827 : vec3<f32>;
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
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_28.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_74.z, x_74.w), x_77);
  u_xlat2 = x_78;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : f32 = x_28.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_84.z, x_84.w), x_87);
  u_xlat3 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_90 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.y, x_90.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec3<f32> = u_xlat27;
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_97, vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_103 + 0.5f);
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = (vec3<f32>(x_107.x, x_107.x, x_107.x) * x_109);
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_116 : f32 = u_xlat2.w;
  u_xlat80 = max(x_116, 0.00009999999747378752f);
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : f32 = u_xlat80;
  let x_123 : vec3<f32> = (vec3<f32>(x_119.x, x_119.y, x_119.z) / vec3<f32>(x_121, x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : f32 = u_xlat1;
  u_xlat80 = ((-(x_126) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_131 : f32 = u_xlat80;
  u_xlat3.x = (-(x_131) + 1.0f);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : f32 = u_xlat80;
  u_xlat29 = (vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139, x_139, x_139));
  let x_142 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.y, x_142.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : f32 = u_xlat1;
  let x_151 : vec4<f32> = u_xlat0;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149, x_149, x_149) * vec3<f32>(x_151.x, x_151.y, x_151.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_160) + 1.0f);
  let x_163 : f32 = u_xlat1;
  let x_164 : f32 = u_xlat1;
  u_xlat80 = (x_163 * x_164);
  let x_166 : f32 = u_xlat80;
  u_xlat80 = max(x_166, 0.0078125f);
  let x_170 : f32 = u_xlat80;
  let x_171 : f32 = u_xlat80;
  u_xlat4 = (x_170 * x_171);
  let x_175 : f32 = u_xlat0.w;
  let x_177 : f32 = u_xlat3.x;
  u_xlat78 = (x_175 + x_177);
  let x_179 : f32 = u_xlat78;
  u_xlat78 = clamp(x_179, 0.0f, 1.0f);
  let x_182 : f32 = u_xlat80;
  u_xlat3.x = ((x_182 * 4.0f) + 2.0f);
  let x_204 : f32 = x_200.x_MainLightShadowParams.y;
  u_xlatb30.x = (0.0f < x_204);
  let x_209 : bool = u_xlatb30.x;
  if (x_209) {
    let x_213 : f32 = x_200.x_MainLightShadowParams.y;
    u_xlatb30.x = (x_213 == 1.0f);
    let x_217 : bool = u_xlatb30.x;
    if (x_217) {
      let x_222 : vec4<f32> = vs_TEXCOORD8;
      let x_227 : vec4<f32> = x_200.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_222.x, x_222.y, x_222.x, x_222.y) + x_227);
      let x_231 : vec4<f32> = u_xlat5;
      let x_232 : vec2<f32> = vec2<f32>(x_231.x, x_231.y);
      let x_236 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_232.x, x_232.y, x_236);
      let x_249 : vec3<f32> = txVec0;
      let x_251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_249.xy, x_249.z);
      u_xlat6.x = x_251;
      let x_254 : vec4<f32> = u_xlat5;
      let x_255 : vec2<f32> = vec2<f32>(x_254.z, x_254.w);
      let x_257 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_255.x, x_255.y, x_257);
      let x_264 : vec3<f32> = txVec1;
      let x_266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_264.xy, x_264.z);
      u_xlat6.y = x_266;
      let x_268 : vec4<f32> = vs_TEXCOORD8;
      let x_272 : vec4<f32> = x_200.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_268.x, x_268.y, x_268.x, x_268.y) + x_272);
      let x_275 : vec4<f32> = u_xlat5;
      let x_276 : vec2<f32> = vec2<f32>(x_275.x, x_275.y);
      let x_278 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_276.x, x_276.y, x_278);
      let x_285 : vec3<f32> = txVec2;
      let x_287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_285.xy, x_285.z);
      u_xlat6.z = x_287;
      let x_290 : vec4<f32> = u_xlat5;
      let x_291 : vec2<f32> = vec2<f32>(x_290.z, x_290.w);
      let x_293 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_291.x, x_291.y, x_293);
      let x_300 : vec3<f32> = txVec3;
      let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
      u_xlat6.w = x_302;
      let x_305 : vec4<f32> = u_xlat6;
      u_xlat30 = dot(x_305, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_312 : f32 = x_200.x_MainLightShadowParams.y;
      u_xlatb56 = (x_312 == 2.0f);
      let x_314 : bool = u_xlatb56;
      if (x_314) {
        let x_319 : vec4<f32> = vs_TEXCOORD8;
        let x_323 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_319.x, x_319.y) * vec2<f32>(x_323.z, x_323.w)) + vec2<f32>(0.5f, 0.5f));
        let x_328 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_328);
        let x_330 : vec4<f32> = vs_TEXCOORD8;
        let x_333 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_336 : vec2<f32> = u_xlat56;
        let x_338 : vec2<f32> = ((vec2<f32>(x_330.x, x_330.y) * vec2<f32>(x_333.z, x_333.w)) + -(x_336));
        let x_339 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_339.z, x_339.w);
        let x_341 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_341.x, x_341.x, x_341.y, x_341.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_346 : vec4<f32> = u_xlat6;
        let x_348 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_346.x, x_346.x, x_346.z, x_346.z) * vec4<f32>(x_348.x, x_348.x, x_348.z, x_348.z));
        let x_352 : vec4<f32> = u_xlat7;
        u_xlat57 = (vec2<f32>(x_352.y, x_352.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_357 : vec4<f32> = u_xlat7;
        let x_360 : vec4<f32> = u_xlat5;
        let x_363 : vec2<f32> = ((vec2<f32>(x_357.x, x_357.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_360.x, x_360.y)));
        let x_364 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_363.x, x_364.y, x_363.y, x_364.w);
        let x_366 : vec4<f32> = u_xlat5;
        let x_370 : vec2<f32> = (-(vec2<f32>(x_366.x, x_366.y)) + vec2<f32>(1.0f, 1.0f));
        let x_371 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
        let x_374 : vec4<f32> = u_xlat5;
        u_xlat59 = min(vec2<f32>(x_374.x, x_374.y), vec2<f32>(0.0f, 0.0f));
        let x_378 : vec2<f32> = u_xlat59;
        let x_380 : vec2<f32> = u_xlat59;
        let x_382 : vec4<f32> = u_xlat7;
        u_xlat59 = ((-(x_378) * x_380) + vec2<f32>(x_382.x, x_382.y));
        let x_385 : vec4<f32> = u_xlat5;
        let x_387 : vec2<f32> = max(vec2<f32>(x_385.x, x_385.y), vec2<f32>(0.0f, 0.0f));
        let x_388 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_390 : vec4<f32> = u_xlat5;
        let x_393 : vec4<f32> = u_xlat5;
        let x_396 : vec4<f32> = u_xlat6;
        let x_398 : vec2<f32> = ((-(vec2<f32>(x_390.x, x_390.y)) * vec2<f32>(x_393.x, x_393.y)) + vec2<f32>(x_396.y, x_396.w));
        let x_399 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
        let x_401 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_401 + vec2<f32>(1.0f, 1.0f));
        let x_403 : vec4<f32> = u_xlat5;
        let x_405 : vec2<f32> = (vec2<f32>(x_403.x, x_403.y) + vec2<f32>(1.0f, 1.0f));
        let x_406 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
        let x_409 : vec4<f32> = u_xlat6;
        let x_413 : vec2<f32> = (vec2<f32>(x_409.x, x_409.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_414 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_417 : vec4<f32> = u_xlat7;
        let x_419 : vec2<f32> = (vec2<f32>(x_417.x, x_417.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_420 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
        let x_422 : vec2<f32> = u_xlat59;
        let x_423 : vec2<f32> = (x_422 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_424 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_427 : vec4<f32> = u_xlat5;
        let x_429 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_430 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_432 : vec4<f32> = u_xlat6;
        let x_434 : vec2<f32> = (vec2<f32>(x_432.y, x_432.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_435 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
        let x_438 : f32 = u_xlat7.x;
        u_xlat8.z = x_438;
        let x_441 : f32 = u_xlat5.x;
        u_xlat8.w = x_441;
        let x_444 : f32 = u_xlat10.x;
        u_xlat9.z = x_444;
        let x_447 : f32 = u_xlat57.x;
        u_xlat9.w = x_447;
        let x_449 : vec4<f32> = u_xlat8;
        let x_451 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_449.z, x_449.w, x_449.x, x_449.z) + vec4<f32>(x_451.z, x_451.w, x_451.x, x_451.z));
        let x_455 : f32 = u_xlat8.y;
        u_xlat7.z = x_455;
        let x_458 : f32 = u_xlat5.y;
        u_xlat7.w = x_458;
        let x_461 : f32 = u_xlat9.y;
        u_xlat10.z = x_461;
        let x_464 : f32 = u_xlat57.y;
        u_xlat10.w = x_464;
        let x_466 : vec4<f32> = u_xlat7;
        let x_468 : vec4<f32> = u_xlat10;
        let x_470 : vec3<f32> = (vec3<f32>(x_466.z, x_466.y, x_466.w) + vec3<f32>(x_468.z, x_468.y, x_468.w));
        let x_471 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
        let x_473 : vec4<f32> = u_xlat9;
        let x_475 : vec4<f32> = u_xlat6;
        let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.z, x_473.w) / vec3<f32>(x_475.z, x_475.w, x_475.y));
        let x_478 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
        let x_480 : vec4<f32> = u_xlat7;
        let x_485 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_486 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat10;
        let x_490 : vec4<f32> = u_xlat5;
        let x_492 : vec3<f32> = (vec3<f32>(x_488.z, x_488.y, x_488.w) / vec3<f32>(x_490.x, x_490.y, x_490.z));
        let x_493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat8;
        let x_497 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat7;
        let x_503 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_505 : vec3<f32> = (vec3<f32>(x_500.y, x_500.x, x_500.z) * vec3<f32>(x_503.x, x_503.x, x_503.x));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat8;
        let x_511 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_513 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.y, x_511.y, x_511.y));
        let x_514 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
        let x_517 : f32 = u_xlat8.x;
        u_xlat7.w = x_517;
        let x_519 : vec2<f32> = u_xlat56;
        let x_522 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) * vec4<f32>(x_522.x, x_522.y, x_522.x, x_522.y)) + vec4<f32>(x_525.y, x_525.w, x_525.x, x_525.w));
        let x_528 : vec2<f32> = u_xlat56;
        let x_530 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec2<f32> = ((x_528 * vec2<f32>(x_530.x, x_530.y)) + vec2<f32>(x_533.z, x_533.w));
        let x_536 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_539 : f32 = u_xlat7.y;
        u_xlat8.w = x_539;
        let x_541 : vec4<f32> = u_xlat8;
        let x_542 : vec2<f32> = vec2<f32>(x_541.y, x_541.z);
        let x_543 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_543.x, x_542.x, x_543.z, x_542.y);
        let x_546 : vec2<f32> = u_xlat56;
        let x_549 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y) * vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y)) + vec4<f32>(x_552.x, x_552.y, x_552.z, x_552.y));
        let x_555 : vec2<f32> = u_xlat56;
        let x_558 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_561 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_555.x, x_555.y, x_555.x, x_555.y) * vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y)) + vec4<f32>(x_561.w, x_561.y, x_561.w, x_561.z));
        let x_564 : vec2<f32> = u_xlat56;
        let x_567 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_570 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_564.x, x_564.y, x_564.x, x_564.y) * vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y)) + vec4<f32>(x_570.x, x_570.w, x_570.z, x_570.w));
        let x_574 : vec4<f32> = u_xlat5;
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_574.x, x_574.x, x_574.x, x_574.y) * vec4<f32>(x_576.z, x_576.w, x_576.y, x_576.z));
        let x_580 : vec4<f32> = u_xlat5;
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_580.y, x_580.y, x_580.z, x_580.z) * x_582);
        let x_585 : f32 = u_xlat5.z;
        let x_587 : f32 = u_xlat6.y;
        u_xlat56.x = (x_585 * x_587);
        let x_591 : vec4<f32> = u_xlat9;
        let x_592 : vec2<f32> = vec2<f32>(x_591.x, x_591.y);
        let x_594 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_592.x, x_592.y, x_594);
        let x_602 : vec3<f32> = txVec4;
        let x_604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_602.xy, x_602.z);
        u_xlat82 = x_604;
        let x_606 : vec4<f32> = u_xlat9;
        let x_607 : vec2<f32> = vec2<f32>(x_606.z, x_606.w);
        let x_609 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_607.x, x_607.y, x_609);
        let x_616 : vec3<f32> = txVec5;
        let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_616.xy, x_616.z);
        u_xlat5.x = x_618;
        let x_621 : f32 = u_xlat5.x;
        let x_623 : f32 = u_xlat12.y;
        u_xlat5.x = (x_621 * x_623);
        let x_627 : f32 = u_xlat12.x;
        let x_628 : f32 = u_xlat82;
        let x_631 : f32 = u_xlat5.x;
        u_xlat82 = ((x_627 * x_628) + x_631);
        let x_634 : vec4<f32> = u_xlat10;
        let x_635 : vec2<f32> = vec2<f32>(x_634.x, x_634.y);
        let x_637 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_635.x, x_635.y, x_637);
        let x_644 : vec3<f32> = txVec6;
        let x_646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_644.xy, x_644.z);
        u_xlat5.x = x_646;
        let x_649 : f32 = u_xlat12.z;
        let x_651 : f32 = u_xlat5.x;
        let x_653 : f32 = u_xlat82;
        u_xlat82 = ((x_649 * x_651) + x_653);
        let x_656 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = vec2<f32>(x_656.x, x_656.y);
        let x_659 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_657.x, x_657.y, x_659);
        let x_666 : vec3<f32> = txVec7;
        let x_668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_666.xy, x_666.z);
        u_xlat5.x = x_668;
        let x_671 : f32 = u_xlat12.w;
        let x_673 : f32 = u_xlat5.x;
        let x_675 : f32 = u_xlat82;
        u_xlat82 = ((x_671 * x_673) + x_675);
        let x_678 : vec4<f32> = u_xlat11;
        let x_679 : vec2<f32> = vec2<f32>(x_678.x, x_678.y);
        let x_681 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_679.x, x_679.y, x_681);
        let x_688 : vec3<f32> = txVec8;
        let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_688.xy, x_688.z);
        u_xlat5.x = x_690;
        let x_693 : f32 = u_xlat13.x;
        let x_695 : f32 = u_xlat5.x;
        let x_697 : f32 = u_xlat82;
        u_xlat82 = ((x_693 * x_695) + x_697);
        let x_700 : vec4<f32> = u_xlat11;
        let x_701 : vec2<f32> = vec2<f32>(x_700.z, x_700.w);
        let x_703 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec9;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat5.x = x_712;
        let x_715 : f32 = u_xlat13.y;
        let x_717 : f32 = u_xlat5.x;
        let x_719 : f32 = u_xlat82;
        u_xlat82 = ((x_715 * x_717) + x_719);
        let x_722 : vec4<f32> = u_xlat8;
        let x_723 : vec2<f32> = vec2<f32>(x_722.z, x_722.w);
        let x_725 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec10;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_732.xy, x_732.z);
        u_xlat5.x = x_734;
        let x_737 : f32 = u_xlat13.z;
        let x_739 : f32 = u_xlat5.x;
        let x_741 : f32 = u_xlat82;
        u_xlat82 = ((x_737 * x_739) + x_741);
        let x_744 : vec4<f32> = u_xlat7;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec11;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat5.x = x_756;
        let x_759 : f32 = u_xlat13.w;
        let x_761 : f32 = u_xlat5.x;
        let x_763 : f32 = u_xlat82;
        u_xlat82 = ((x_759 * x_761) + x_763);
        let x_766 : vec4<f32> = u_xlat7;
        let x_767 : vec2<f32> = vec2<f32>(x_766.z, x_766.w);
        let x_769 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_776 : vec3<f32> = txVec12;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_776.xy, x_776.z);
        u_xlat5.x = x_778;
        let x_781 : f32 = u_xlat56.x;
        let x_783 : f32 = u_xlat5.x;
        let x_785 : f32 = u_xlat82;
        u_xlat30 = ((x_781 * x_783) + x_785);
      } else {
        let x_788 : vec4<f32> = vs_TEXCOORD8;
        let x_791 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_791.z, x_791.w)) + vec2<f32>(0.5f, 0.5f));
        let x_795 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_795);
        let x_797 : vec4<f32> = vs_TEXCOORD8;
        let x_800 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_803 : vec2<f32> = u_xlat56;
        let x_805 : vec2<f32> = ((vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_800.z, x_800.w)) + -(x_803));
        let x_806 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_808 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_808.x, x_808.x, x_808.y, x_808.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_811 : vec4<f32> = u_xlat6;
        let x_813 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_811.x, x_811.x, x_811.z, x_811.z) * vec4<f32>(x_813.x, x_813.x, x_813.z, x_813.z));
        let x_816 : vec4<f32> = u_xlat7;
        let x_820 : vec2<f32> = (vec2<f32>(x_816.y, x_816.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_821 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_821.x, x_820.x, x_821.z, x_820.y);
        let x_823 : vec4<f32> = u_xlat7;
        let x_826 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_823.x, x_823.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_826.x, x_826.y)));
        let x_830 : vec4<f32> = u_xlat5;
        let x_833 : vec2<f32> = (-(vec2<f32>(x_830.x, x_830.y)) + vec2<f32>(1.0f, 1.0f));
        let x_834 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_833.x, x_834.y, x_833.y, x_834.w);
        let x_836 : vec4<f32> = u_xlat5;
        let x_838 : vec2<f32> = min(vec2<f32>(x_836.x, x_836.y), vec2<f32>(0.0f, 0.0f));
        let x_839 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_839.z, x_839.w);
        let x_841 : vec4<f32> = u_xlat7;
        let x_844 : vec4<f32> = u_xlat7;
        let x_847 : vec4<f32> = u_xlat6;
        let x_849 : vec2<f32> = ((-(vec2<f32>(x_841.x, x_841.y)) * vec2<f32>(x_844.x, x_844.y)) + vec2<f32>(x_847.x, x_847.z));
        let x_850 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_849.x, x_850.y, x_849.y, x_850.w);
        let x_852 : vec4<f32> = u_xlat5;
        let x_854 : vec2<f32> = max(vec2<f32>(x_852.x, x_852.y), vec2<f32>(0.0f, 0.0f));
        let x_855 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat7;
        let x_860 : vec4<f32> = u_xlat7;
        let x_863 : vec4<f32> = u_xlat6;
        let x_865 : vec2<f32> = ((-(vec2<f32>(x_857.x, x_857.y)) * vec2<f32>(x_860.x, x_860.y)) + vec2<f32>(x_863.y, x_863.w));
        let x_866 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_866.x, x_865.x, x_866.z, x_865.y);
        let x_868 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_868 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_872 : f32 = u_xlat6.y;
        u_xlat7.z = (x_872 * 0.08163200318813323975f);
        let x_876 : vec2<f32> = u_xlat57;
        let x_879 : vec2<f32> = (vec2<f32>(x_876.y, x_876.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_882.x, x_882.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_886 : f32 = u_xlat6.w;
        u_xlat9.z = (x_886 * 0.08163200318813323975f);
        let x_890 : f32 = u_xlat9.y;
        u_xlat7.x = x_890;
        let x_892 : vec4<f32> = u_xlat5;
        let x_899 : vec2<f32> = ((vec2<f32>(x_892.x, x_892.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_900 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_900.x, x_899.x, x_900.z, x_899.y);
        let x_902 : vec4<f32> = u_xlat5;
        let x_906 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_907 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_906.x, x_907.y, x_906.y, x_907.w);
        let x_910 : f32 = u_xlat57.x;
        u_xlat6.y = x_910;
        let x_913 : f32 = u_xlat8.y;
        u_xlat6.w = x_913;
        let x_915 : vec4<f32> = u_xlat6;
        let x_916 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_915 + x_916);
        let x_918 : vec4<f32> = u_xlat5;
        let x_921 : vec2<f32> = ((vec2<f32>(x_918.y, x_918.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_922.x, x_921.x, x_922.z, x_921.y);
        let x_924 : vec4<f32> = u_xlat5;
        let x_927 : vec2<f32> = ((vec2<f32>(x_924.y, x_924.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_927.x, x_928.y, x_927.y, x_928.w);
        let x_931 : f32 = u_xlat57.y;
        u_xlat8.y = x_931;
        let x_933 : vec4<f32> = u_xlat8;
        let x_934 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_933 + x_934);
        let x_936 : vec4<f32> = u_xlat6;
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_936 / x_937);
        let x_939 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_939 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_945 : vec4<f32> = u_xlat8;
        let x_946 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_945 / x_946);
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_948 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_950 : vec4<f32> = u_xlat6;
        let x_953 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_950.w, x_950.x, x_950.y, x_950.z) * vec4<f32>(x_953.x, x_953.x, x_953.x, x_953.x));
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_956.x, x_956.w, x_956.y, x_956.z) * vec4<f32>(x_959.y, x_959.y, x_959.y, x_959.y));
        let x_962 : vec4<f32> = u_xlat6;
        let x_963 : vec3<f32> = vec3<f32>(x_962.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_963.z);
        let x_967 : f32 = u_xlat8.x;
        u_xlat9.y = x_967;
        let x_969 : vec2<f32> = u_xlat56;
        let x_972 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y) * vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.y)) + vec4<f32>(x_975.x, x_975.y, x_975.z, x_975.y));
        let x_978 : vec2<f32> = u_xlat56;
        let x_980 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat9;
        let x_985 : vec2<f32> = ((x_978 * vec2<f32>(x_980.x, x_980.y)) + vec2<f32>(x_983.w, x_983.y));
        let x_986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_989 : f32 = u_xlat9.y;
        u_xlat6.y = x_989;
        let x_992 : f32 = u_xlat8.z;
        u_xlat9.y = x_992;
        let x_994 : vec2<f32> = u_xlat56;
        let x_997 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_994.x, x_994.y, x_994.x, x_994.y) * vec4<f32>(x_997.x, x_997.y, x_997.x, x_997.y)) + vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1000.y));
        let x_1004 : vec2<f32> = u_xlat56;
        let x_1006 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat63 = ((x_1004 * vec2<f32>(x_1006.x, x_1006.y)) + vec2<f32>(x_1009.w, x_1009.y));
        let x_1013 : f32 = u_xlat9.y;
        u_xlat6.z = x_1013;
        let x_1015 : vec2<f32> = u_xlat56;
        let x_1018 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1021 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y) * vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y)) + vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.z));
        let x_1025 : f32 = u_xlat8.w;
        u_xlat9.y = x_1025;
        let x_1028 : vec2<f32> = u_xlat56;
        let x_1031 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y) * vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y)) + vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1034.y));
        let x_1038 : vec2<f32> = u_xlat56;
        let x_1040 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat32 = ((x_1038 * vec2<f32>(x_1040.x, x_1040.y)) + vec2<f32>(x_1043.w, x_1043.y));
        let x_1047 : f32 = u_xlat9.y;
        u_xlat6.w = x_1047;
        let x_1050 : vec2<f32> = u_xlat56;
        let x_1052 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1057 : vec2<f32> = ((x_1050 * vec2<f32>(x_1052.x, x_1052.y)) + vec2<f32>(x_1055.x, x_1055.w));
        let x_1058 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat9;
        let x_1061 : vec3<f32> = vec3<f32>(x_1060.x, x_1060.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1061.x, x_1062.y, x_1061.y, x_1061.z);
        let x_1064 : vec2<f32> = u_xlat56;
        let x_1067 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1074 : vec2<f32> = u_xlat56;
        let x_1076 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat60 = ((x_1074 * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.w, x_1079.y));
        let x_1083 : f32 = u_xlat6.x;
        u_xlat8.x = x_1083;
        let x_1085 : vec2<f32> = u_xlat56;
        let x_1087 : vec4<f32> = x_200.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat56 = ((x_1085 * vec2<f32>(x_1087.x, x_1087.y)) + vec2<f32>(x_1090.x, x_1090.y));
        let x_1094 : vec4<f32> = u_xlat5;
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1094.x, x_1094.x, x_1094.x, x_1094.x) * x_1096);
        let x_1099 : vec4<f32> = u_xlat5;
        let x_1101 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1099.y, x_1099.y, x_1099.y, x_1099.y) * x_1101);
        let x_1104 : vec4<f32> = u_xlat5;
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1104.z, x_1104.z, x_1104.z, x_1104.z) * x_1106);
        let x_1108 : vec4<f32> = u_xlat5;
        let x_1110 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1108.w, x_1108.w, x_1108.w, x_1108.w) * x_1110);
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.x, x_1113.y);
        let x_1116 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1123 : vec3<f32> = txVec13;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1123.xy, x_1123.z);
        u_xlat6.x = x_1125;
        let x_1128 : vec4<f32> = u_xlat10;
        let x_1129 : vec2<f32> = vec2<f32>(x_1128.z, x_1128.w);
        let x_1131 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1129.x, x_1129.y, x_1131);
        let x_1139 : vec3<f32> = txVec14;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1139.xy, x_1139.z);
        u_xlat84 = x_1141;
        let x_1142 : f32 = u_xlat84;
        let x_1144 : f32 = u_xlat16.y;
        u_xlat84 = (x_1142 * x_1144);
        let x_1147 : f32 = u_xlat16.x;
        let x_1149 : f32 = u_xlat6.x;
        let x_1151 : f32 = u_xlat84;
        u_xlat6.x = ((x_1147 * x_1149) + x_1151);
        let x_1155 : vec4<f32> = u_xlat11;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.x, x_1155.y);
        let x_1158 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1165 : vec3<f32> = txVec15;
        let x_1167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1165.xy, x_1165.z);
        u_xlat84 = x_1167;
        let x_1169 : f32 = u_xlat16.z;
        let x_1170 : f32 = u_xlat84;
        let x_1173 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1169 * x_1170) + x_1173);
        let x_1177 : vec4<f32> = u_xlat13;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.x, x_1177.y);
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec16;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1187.xy, x_1187.z);
        u_xlat84 = x_1189;
        let x_1191 : f32 = u_xlat16.w;
        let x_1192 : f32 = u_xlat84;
        let x_1195 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1191 * x_1192) + x_1195);
        let x_1199 : vec4<f32> = u_xlat12;
        let x_1200 : vec2<f32> = vec2<f32>(x_1199.x, x_1199.y);
        let x_1202 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1200.x, x_1200.y, x_1202);
        let x_1209 : vec3<f32> = txVec17;
        let x_1211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1209.xy, x_1209.z);
        u_xlat84 = x_1211;
        let x_1213 : f32 = u_xlat17.x;
        let x_1214 : f32 = u_xlat84;
        let x_1217 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1213 * x_1214) + x_1217);
        let x_1221 : vec4<f32> = u_xlat12;
        let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
        let x_1224 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
        let x_1231 : vec3<f32> = txVec18;
        let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1231.xy, x_1231.z);
        u_xlat84 = x_1233;
        let x_1235 : f32 = u_xlat17.y;
        let x_1236 : f32 = u_xlat84;
        let x_1239 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1235 * x_1236) + x_1239);
        let x_1243 : vec2<f32> = u_xlat63;
        let x_1245 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec19;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1252.xy, x_1252.z);
        u_xlat84 = x_1254;
        let x_1256 : f32 = u_xlat17.z;
        let x_1257 : f32 = u_xlat84;
        let x_1260 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1256 * x_1257) + x_1260);
        let x_1264 : vec4<f32> = u_xlat13;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
        let x_1267 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec20;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat84 = x_1276;
        let x_1278 : f32 = u_xlat17.w;
        let x_1279 : f32 = u_xlat84;
        let x_1282 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1278 * x_1279) + x_1282);
        let x_1286 : vec4<f32> = u_xlat14;
        let x_1287 : vec2<f32> = vec2<f32>(x_1286.x, x_1286.y);
        let x_1289 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1287.x, x_1287.y, x_1289);
        let x_1296 : vec3<f32> = txVec21;
        let x_1298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1296.xy, x_1296.z);
        u_xlat84 = x_1298;
        let x_1300 : f32 = u_xlat18.x;
        let x_1301 : f32 = u_xlat84;
        let x_1304 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1300 * x_1301) + x_1304);
        let x_1308 : vec4<f32> = u_xlat14;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.z, x_1308.w);
        let x_1311 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec22;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat84 = x_1320;
        let x_1322 : f32 = u_xlat18.y;
        let x_1323 : f32 = u_xlat84;
        let x_1326 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1322 * x_1323) + x_1326);
        let x_1330 : vec2<f32> = u_xlat32;
        let x_1332 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec23;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat32.x = x_1341;
        let x_1344 : f32 = u_xlat18.z;
        let x_1346 : f32 = u_xlat32.x;
        let x_1349 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1344 * x_1346) + x_1349);
        let x_1353 : vec4<f32> = u_xlat15;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
        let x_1356 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec24;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat32.x = x_1365;
        let x_1368 : f32 = u_xlat18.w;
        let x_1370 : f32 = u_xlat32.x;
        let x_1373 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1368 * x_1370) + x_1373);
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec25;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat32.x = x_1389;
        let x_1392 : f32 = u_xlat5.x;
        let x_1394 : f32 = u_xlat32.x;
        let x_1397 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1392 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec26;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat6.x = x_1413;
        let x_1416 : f32 = u_xlat5.y;
        let x_1418 : f32 = u_xlat6.x;
        let x_1421 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1416 * x_1418) + x_1421);
        let x_1425 : vec2<f32> = u_xlat60;
        let x_1427 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1435 : vec3<f32> = txVec27;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1435.xy, x_1435.z);
        u_xlat31 = x_1437;
        let x_1439 : f32 = u_xlat5.z;
        let x_1440 : f32 = u_xlat31;
        let x_1443 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1439 * x_1440) + x_1443);
        let x_1447 : vec2<f32> = u_xlat56;
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec28;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat56.x = x_1458;
        let x_1461 : f32 = u_xlat5.w;
        let x_1463 : f32 = u_xlat56.x;
        let x_1466 : f32 = u_xlat5.x;
        u_xlat30 = ((x_1461 * x_1463) + x_1466);
      }
    }
  } else {
    let x_1470 : vec4<f32> = vs_TEXCOORD8;
    let x_1471 : vec2<f32> = vec2<f32>(x_1470.x, x_1470.y);
    let x_1473 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
    let x_1480 : vec3<f32> = txVec29;
    let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
    u_xlat30 = x_1482;
  }
  let x_1484 : f32 = x_200.x_MainLightShadowParams.x;
  u_xlat56.x = (-(x_1484) + 1.0f);
  let x_1488 : f32 = u_xlat30;
  let x_1490 : f32 = x_200.x_MainLightShadowParams.x;
  let x_1493 : f32 = u_xlat56.x;
  u_xlat30 = ((x_1488 * x_1490) + x_1493);
  let x_1496 : f32 = vs_TEXCOORD8.z;
  u_xlatb56 = (0.0f >= x_1496);
  let x_1500 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (x_1500 >= 1.0f);
  let x_1502 : bool = u_xlatb82;
  let x_1503 : bool = u_xlatb56;
  u_xlatb56 = (x_1502 | x_1503);
  let x_1505 : bool = u_xlatb56;
  let x_1506 : f32 = u_xlat30;
  u_xlat30 = select(x_1506, 1.0f, x_1505);
  let x_1510 : vec3<f32> = vs_TEXCOORD7;
  let x_1514 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1516 : vec3<f32> = (x_1510 + -(x_1514));
  let x_1517 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
  let x_1519 : vec4<f32> = u_xlat5;
  let x_1521 : vec4<f32> = u_xlat5;
  u_xlat56.x = dot(vec3<f32>(x_1519.x, x_1519.y, x_1519.z), vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
  let x_1526 : f32 = u_xlat56.x;
  let x_1528 : f32 = x_200.x_MainLightShadowParams.z;
  let x_1531 : f32 = x_200.x_MainLightShadowParams.w;
  u_xlat82 = ((x_1526 * x_1528) + x_1531);
  let x_1533 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1533, 0.0f, 1.0f);
  let x_1535 : f32 = u_xlat30;
  u_xlat5.x = (-(x_1535) + 1.0f);
  let x_1539 : f32 = u_xlat82;
  let x_1541 : f32 = u_xlat5.x;
  let x_1543 : f32 = u_xlat30;
  u_xlat30 = ((x_1539 * x_1541) + x_1543);
  let x_1553 : f32 = x_1550.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_1553 == -1.0f));
  let x_1556 : bool = u_xlatb82;
  if (x_1556) {
    let x_1559 : vec3<f32> = vs_TEXCOORD7;
    let x_1563 : vec4<f32> = x_1550.x_MainLightWorldToLight[1i];
    let x_1565 : vec2<f32> = (vec2<f32>(x_1559.y, x_1559.y) * vec2<f32>(x_1563.x, x_1563.y));
    let x_1566 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
    let x_1569 : vec4<f32> = x_1550.x_MainLightWorldToLight[0i];
    let x_1571 : vec3<f32> = vs_TEXCOORD7;
    let x_1574 : vec4<f32> = u_xlat5;
    let x_1576 : vec2<f32> = ((vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(x_1571.x, x_1571.x)) + vec2<f32>(x_1574.x, x_1574.y));
    let x_1577 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
    let x_1580 : vec4<f32> = x_1550.x_MainLightWorldToLight[2i];
    let x_1582 : vec3<f32> = vs_TEXCOORD7;
    let x_1585 : vec4<f32> = u_xlat5;
    let x_1587 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1582.z, x_1582.z)) + vec2<f32>(x_1585.x, x_1585.y));
    let x_1588 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1587.x, x_1587.y, x_1588.z, x_1588.w);
    let x_1590 : vec4<f32> = u_xlat5;
    let x_1594 : vec4<f32> = x_1550.x_MainLightWorldToLight[3i];
    let x_1596 : vec2<f32> = (vec2<f32>(x_1590.x, x_1590.y) + vec2<f32>(x_1594.x, x_1594.y));
    let x_1597 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1596.x, x_1596.y, x_1597.z, x_1597.w);
    let x_1599 : vec4<f32> = u_xlat5;
    let x_1602 : vec2<f32> = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1603 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
    let x_1610 : vec4<f32> = u_xlat5;
    let x_1613 : f32 = x_28.x_GlobalMipBias.x;
    let x_1614 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1610.x, x_1610.y), x_1613);
    u_xlat5 = x_1614;
    let x_1617 : f32 = x_1550.x_MainLightCookieTextureFormat;
    let x_1619 : f32 = x_1550.x_MainLightCookieTextureFormat;
    let x_1621 : f32 = x_1550.x_MainLightCookieTextureFormat;
    let x_1623 : f32 = x_1550.x_MainLightCookieTextureFormat;
    let x_1624 : vec4<f32> = vec4<f32>(x_1617, x_1619, x_1621, x_1623);
    let x_1632 : vec4<bool> = (vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1624.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1632.x, x_1632.y);
    let x_1635 : bool = u_xlatb6.y;
    if (x_1635) {
      let x_1641 : f32 = u_xlat5.w;
      x_1637 = x_1641;
    } else {
      let x_1644 : f32 = u_xlat5.x;
      x_1637 = x_1644;
    }
    let x_1645 : f32 = x_1637;
    u_xlat82 = x_1645;
    let x_1647 : bool = u_xlatb6.x;
    if (x_1647) {
      let x_1651 : vec4<f32> = u_xlat5;
      x_1648 = vec3<f32>(x_1651.x, x_1651.y, x_1651.z);
    } else {
      let x_1654 : f32 = u_xlat82;
      x_1648 = vec3<f32>(x_1654, x_1654, x_1654);
    }
    let x_1656 : vec3<f32> = x_1648;
    let x_1657 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1663 : vec4<f32> = u_xlat5;
  let x_1666 : vec4<f32> = x_28.x_MainLightColor;
  let x_1668 : vec3<f32> = (vec3<f32>(x_1663.x, x_1663.y, x_1663.z) * vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1669 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
  let x_1672 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1672;
  let x_1676 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1676;
  let x_1680 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1680;
  let x_1682 : vec4<f32> = u_xlat6;
  let x_1685 : vec3<f32> = u_xlat27;
  u_xlat82 = dot(-(vec3<f32>(x_1682.x, x_1682.y, x_1682.z)), x_1685);
  let x_1687 : f32 = u_xlat82;
  let x_1688 : f32 = u_xlat82;
  u_xlat82 = (x_1687 + x_1688);
  let x_1690 : vec3<f32> = u_xlat27;
  let x_1691 : f32 = u_xlat82;
  let x_1695 : vec4<f32> = u_xlat6;
  let x_1698 : vec3<f32> = ((x_1690 * -(vec3<f32>(x_1691, x_1691, x_1691))) + -(vec3<f32>(x_1695.x, x_1695.y, x_1695.z)));
  let x_1699 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1701 : vec3<f32> = u_xlat27;
  let x_1702 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(x_1701, vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1705, 0.0f, 1.0f);
  let x_1707 : f32 = u_xlat82;
  u_xlat82 = (-(x_1707) + 1.0f);
  let x_1710 : f32 = u_xlat82;
  let x_1711 : f32 = u_xlat82;
  u_xlat82 = (x_1710 * x_1711);
  let x_1713 : f32 = u_xlat82;
  let x_1714 : f32 = u_xlat82;
  u_xlat82 = (x_1713 * x_1714);
  let x_1717 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1717) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1723 : f32 = u_xlat1;
  let x_1724 : f32 = u_xlat83;
  u_xlat1 = (x_1723 * x_1724);
  let x_1726 : f32 = u_xlat1;
  u_xlat1 = (x_1726 * 6.0f);
  let x_1737 : vec4<f32> = u_xlat7;
  let x_1739 : f32 = u_xlat1;
  let x_1740 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1737.x, x_1737.y, x_1737.z), x_1739);
  u_xlat7 = x_1740;
  let x_1742 : f32 = u_xlat7.w;
  u_xlat1 = (x_1742 + -1.0f);
  let x_1749 : f32 = x_1747.unity_SpecCube0_HDR.w;
  let x_1750 : f32 = u_xlat1;
  u_xlat1 = ((x_1749 * x_1750) + 1.0f);
  let x_1753 : f32 = u_xlat1;
  u_xlat1 = max(x_1753, 0.0f);
  let x_1755 : f32 = u_xlat1;
  u_xlat1 = log2(x_1755);
  let x_1757 : f32 = u_xlat1;
  let x_1759 : f32 = x_1747.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1757 * x_1759);
  let x_1761 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1761);
  let x_1763 : f32 = u_xlat1;
  let x_1765 : f32 = x_1747.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1763 * x_1765);
  let x_1767 : vec4<f32> = u_xlat7;
  let x_1769 : f32 = u_xlat1;
  let x_1771 : vec3<f32> = (vec3<f32>(x_1767.x, x_1767.y, x_1767.z) * vec3<f32>(x_1769, x_1769, x_1769));
  let x_1772 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : f32 = u_xlat80;
  let x_1776 : f32 = u_xlat80;
  let x_1780 : vec2<f32> = ((vec2<f32>(x_1774, x_1774) * vec2<f32>(x_1776, x_1776)) + vec2<f32>(-1.0f, 1.0f));
  let x_1781 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1780.x, x_1780.y, x_1781.z, x_1781.w);
  let x_1784 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1784);
  let x_1787 : vec4<f32> = u_xlat0;
  let x_1790 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1787.x, x_1787.y, x_1787.z)) + vec3<f32>(x_1790, x_1790, x_1790));
  let x_1793 : f32 = u_xlat82;
  let x_1795 : vec3<f32> = u_xlat34;
  let x_1797 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1793, x_1793, x_1793) * x_1795) + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1800 : f32 = u_xlat1;
  let x_1802 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1800, x_1800, x_1800) * x_1802);
  let x_1804 : vec4<f32> = u_xlat7;
  let x_1806 : vec3<f32> = u_xlat34;
  let x_1807 : vec3<f32> = (vec3<f32>(x_1804.x, x_1804.y, x_1804.z) * x_1806);
  let x_1808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
  let x_1810 : vec4<f32> = u_xlat2;
  let x_1812 : vec3<f32> = u_xlat29;
  let x_1814 : vec4<f32> = u_xlat7;
  let x_1816 : vec3<f32> = ((vec3<f32>(x_1810.x, x_1810.y, x_1810.z) * x_1812) + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1819 : f32 = u_xlat30;
  let x_1822 : f32 = x_1747.unity_LightData.z;
  u_xlat78 = (x_1819 * x_1822);
  let x_1824 : vec3<f32> = u_xlat27;
  let x_1826 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1824, vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
  let x_1829 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1829, 0.0f, 1.0f);
  let x_1831 : f32 = u_xlat78;
  let x_1832 : f32 = u_xlat1;
  u_xlat78 = (x_1831 * x_1832);
  let x_1834 : f32 = u_xlat78;
  let x_1836 : vec4<f32> = u_xlat5;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1834, x_1834, x_1834) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : vec4<f32> = u_xlat6;
  let x_1844 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1846 : vec3<f32> = (vec3<f32>(x_1841.x, x_1841.y, x_1841.z) + vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1847 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  let x_1849 : vec4<f32> = u_xlat7;
  let x_1851 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1849.x, x_1849.y, x_1849.z), vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
  let x_1854 : f32 = u_xlat78;
  u_xlat78 = max(x_1854, 1.17549435e-38f);
  let x_1857 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1857);
  let x_1859 : f32 = u_xlat78;
  let x_1861 : vec4<f32> = u_xlat7;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1859, x_1859, x_1859) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec3<f32> = u_xlat27;
  let x_1867 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1866, vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1870, 0.0f, 1.0f);
  let x_1873 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1875 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1878, 0.0f, 1.0f);
  let x_1880 : f32 = u_xlat78;
  let x_1881 : f32 = u_xlat78;
  u_xlat78 = (x_1880 * x_1881);
  let x_1883 : f32 = u_xlat78;
  let x_1885 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1883 * x_1885) + 1.00001001358032226562f);
  let x_1889 : f32 = u_xlat1;
  let x_1890 : f32 = u_xlat1;
  u_xlat1 = (x_1889 * x_1890);
  let x_1892 : f32 = u_xlat78;
  let x_1893 : f32 = u_xlat78;
  u_xlat78 = (x_1892 * x_1893);
  let x_1895 : f32 = u_xlat1;
  u_xlat1 = max(x_1895, 0.10000000149011611938f);
  let x_1898 : f32 = u_xlat78;
  let x_1899 : f32 = u_xlat1;
  u_xlat78 = (x_1898 * x_1899);
  let x_1902 : f32 = u_xlat3.x;
  let x_1903 : f32 = u_xlat78;
  u_xlat78 = (x_1902 * x_1903);
  let x_1905 : f32 = u_xlat4;
  let x_1906 : f32 = u_xlat78;
  u_xlat78 = (x_1905 / x_1906);
  let x_1908 : vec4<f32> = u_xlat0;
  let x_1910 : f32 = u_xlat78;
  let x_1913 : vec3<f32> = u_xlat29;
  let x_1914 : vec3<f32> = ((vec3<f32>(x_1908.x, x_1908.y, x_1908.z) * vec3<f32>(x_1910, x_1910, x_1910)) + x_1913);
  let x_1915 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
  let x_1918 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1920 : f32 = x_1747.unity_LightData.y;
  u_xlat78 = min(x_1918, x_1920);
  let x_1924 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1924));
  let x_1928 : f32 = u_xlat56.x;
  let x_1931 : f32 = x_200.x_AdditionalShadowFadeParams.x;
  let x_1934 : f32 = x_200.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1928 * x_1931) + x_1934);
  let x_1936 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1936, 0.0f, 1.0f);
  let x_1939 : f32 = x_1550.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1941 : f32 = x_1550.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1943 : f32 = x_1550.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1945 : f32 = x_1550.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1946 : vec4<f32> = vec4<f32>(x_1939, x_1941, x_1943, x_1945);
  let x_1952 : vec4<bool> = (vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1946.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb30 = vec2<bool>(x_1952.x, x_1952.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1964 : u32 = u_xlatu_loop_1;
    let x_1965 : u32 = u_xlatu78;
    if ((x_1964 < x_1965)) {
    } else {
      break;
    }
    let x_1968 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_1968 >> 2u);
    let x_1972 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_1972 & 3u));
    let x_1975 : u32 = u_xlatu82;
    let x_1978 : vec4<f32> = x_1747.unity_LightIndices[bitcast<i32>(x_1975)];
    let x_1988 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1993 : vec4<u32> = indexable[x_1988];
    u_xlat82 = dot(x_1978, bitcast<vec4<f32>>(x_1993));
    let x_1997 : f32 = u_xlat82;
    u_xlati82 = i32(x_1997);
    let x_1999 : vec3<f32> = vs_TEXCOORD7;
    let x_2010 : i32 = u_xlati82;
    let x_2012 : vec4<f32> = x_2009.x_AdditionalLightsPosition[x_2010];
    let x_2015 : i32 = u_xlati82;
    let x_2017 : vec4<f32> = x_2009.x_AdditionalLightsPosition[x_2015];
    let x_2019 : vec3<f32> = ((-(x_1999) * vec3<f32>(x_2012.w, x_2012.w, x_2012.w)) + vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
    let x_2020 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
    let x_2022 : vec4<f32> = u_xlat9;
    let x_2024 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2022.x, x_2022.y, x_2022.z), vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : f32 = u_xlat83;
    u_xlat83 = max(x_2027, 0.00006103515625f);
    let x_2030 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2030);
    let x_2032 : f32 = u_xlat84;
    let x_2034 : vec4<f32> = u_xlat9;
    let x_2036 : vec3<f32> = (vec3<f32>(x_2032, x_2032, x_2032) * vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
    let x_2037 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
    let x_2040 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2040);
    let x_2042 : f32 = u_xlat83;
    let x_2043 : i32 = u_xlati82;
    let x_2045 : f32 = x_2009.x_AdditionalLightsAttenuation[x_2043].x;
    u_xlat83 = (x_2042 * x_2045);
    let x_2047 : f32 = u_xlat83;
    let x_2049 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2047) * x_2049) + 1.0f);
    let x_2052 : f32 = u_xlat83;
    u_xlat83 = max(x_2052, 0.0f);
    let x_2054 : f32 = u_xlat83;
    let x_2055 : f32 = u_xlat83;
    u_xlat83 = (x_2054 * x_2055);
    let x_2057 : f32 = u_xlat83;
    let x_2058 : f32 = u_xlat85;
    u_xlat83 = (x_2057 * x_2058);
    let x_2060 : i32 = u_xlati82;
    let x_2062 : vec4<f32> = x_2009.x_AdditionalLightsSpotDir[x_2060];
    let x_2064 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : f32 = u_xlat85;
    let x_2068 : i32 = u_xlati82;
    let x_2070 : f32 = x_2009.x_AdditionalLightsAttenuation[x_2068].z;
    let x_2072 : i32 = u_xlati82;
    let x_2074 : f32 = x_2009.x_AdditionalLightsAttenuation[x_2072].w;
    u_xlat85 = ((x_2067 * x_2070) + x_2074);
    let x_2076 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2076, 0.0f, 1.0f);
    let x_2078 : f32 = u_xlat85;
    let x_2079 : f32 = u_xlat85;
    u_xlat85 = (x_2078 * x_2079);
    let x_2081 : f32 = u_xlat83;
    let x_2082 : f32 = u_xlat85;
    u_xlat83 = (x_2081 * x_2082);
    let x_2086 : i32 = u_xlati82;
    let x_2088 : f32 = x_200.x_AdditionalShadowParams[x_2086].w;
    u_xlati85 = i32(x_2088);
    let x_2091 : i32 = u_xlati85;
    u_xlatb87 = (x_2091 >= 0i);
    let x_2093 : bool = u_xlatb87;
    if (x_2093) {
      let x_2097 : i32 = u_xlati82;
      let x_2099 : f32 = x_200.x_AdditionalShadowParams[x_2097].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2099, x_2099, x_2099, x_2099))));
      let x_2103 : bool = u_xlatb87;
      if (x_2103) {
        let x_2108 : vec4<f32> = u_xlat10;
        let x_2111 : vec4<f32> = u_xlat10;
        let x_2114 : vec4<bool> = (abs(vec4<f32>(x_2108.z, x_2108.z, x_2108.y, x_2108.z)) >= abs(vec4<f32>(x_2111.x, x_2111.y, x_2111.x, x_2111.x)));
        let x_2116 : vec3<bool> = vec3<bool>(x_2114.x, x_2114.y, x_2114.z);
        let x_2117 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2116.x, x_2116.y, x_2116.z, x_2117.w);
        let x_2120 : bool = u_xlatb11.y;
        let x_2122 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2120 & x_2122);
        let x_2124 : vec4<f32> = u_xlat10;
        let x_2127 : vec4<bool> = (-(vec4<f32>(x_2124.z, x_2124.y, x_2124.z, x_2124.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2128 : vec3<bool> = vec3<bool>(x_2127.x, x_2127.y, x_2127.w);
        let x_2129 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2128.x, x_2128.y, x_2129.z, x_2128.z);
        let x_2132 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2132);
        let x_2137 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2137);
        let x_2143 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2143);
        let x_2146 : bool = u_xlatb11.z;
        if (x_2146) {
          let x_2151 : f32 = u_xlat11.y;
          x_2147 = x_2151;
        } else {
          let x_2153 : f32 = u_xlat88;
          x_2147 = x_2153;
        }
        let x_2154 : f32 = x_2147;
        u_xlat88 = x_2154;
        let x_2156 : bool = u_xlatb87;
        if (x_2156) {
          let x_2161 : f32 = u_xlat11.x;
          x_2157 = x_2161;
        } else {
          let x_2163 : f32 = u_xlat88;
          x_2157 = x_2163;
        }
        let x_2164 : f32 = x_2157;
        u_xlat87 = x_2164;
        let x_2165 : i32 = u_xlati82;
        let x_2167 : f32 = x_200.x_AdditionalShadowParams[x_2165].w;
        u_xlat88 = trunc(x_2167);
        let x_2169 : f32 = u_xlat87;
        let x_2170 : f32 = u_xlat88;
        u_xlat87 = (x_2169 + x_2170);
        let x_2172 : f32 = u_xlat87;
        u_xlati85 = i32(x_2172);
      }
      let x_2174 : i32 = u_xlati85;
      u_xlati85 = (x_2174 << bitcast<u32>(2i));
      let x_2176 : vec3<f32> = vs_TEXCOORD7;
      let x_2179 : i32 = u_xlati85;
      let x_2182 : i32 = u_xlati85;
      let x_2186 : vec4<f32> = x_200.x_AdditionalLightsWorldToShadow[((x_2179 + 1i) / 4i)][((x_2182 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2176.y, x_2176.y, x_2176.y, x_2176.y) * x_2186);
      let x_2188 : i32 = u_xlati85;
      let x_2190 : i32 = u_xlati85;
      let x_2193 : vec4<f32> = x_200.x_AdditionalLightsWorldToShadow[(x_2188 / 4i)][(x_2190 % 4i)];
      let x_2194 : vec3<f32> = vs_TEXCOORD7;
      let x_2197 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2193 * vec4<f32>(x_2194.x, x_2194.x, x_2194.x, x_2194.x)) + x_2197);
      let x_2199 : i32 = u_xlati85;
      let x_2202 : i32 = u_xlati85;
      let x_2206 : vec4<f32> = x_200.x_AdditionalLightsWorldToShadow[((x_2199 + 2i) / 4i)][((x_2202 + 2i) % 4i)];
      let x_2207 : vec3<f32> = vs_TEXCOORD7;
      let x_2210 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2206 * vec4<f32>(x_2207.z, x_2207.z, x_2207.z, x_2207.z)) + x_2210);
      let x_2212 : vec4<f32> = u_xlat11;
      let x_2213 : i32 = u_xlati85;
      let x_2216 : i32 = u_xlati85;
      let x_2220 : vec4<f32> = x_200.x_AdditionalLightsWorldToShadow[((x_2213 + 3i) / 4i)][((x_2216 + 3i) % 4i)];
      u_xlat11 = (x_2212 + x_2220);
      let x_2222 : vec4<f32> = u_xlat11;
      let x_2224 : vec4<f32> = u_xlat11;
      let x_2226 : vec3<f32> = (vec3<f32>(x_2222.x, x_2222.y, x_2222.z) / vec3<f32>(x_2224.w, x_2224.w, x_2224.w));
      let x_2227 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
      let x_2230 : i32 = u_xlati82;
      let x_2232 : f32 = x_200.x_AdditionalShadowParams[x_2230].y;
      u_xlatb85 = (0.0f < x_2232);
      let x_2234 : bool = u_xlatb85;
      if (x_2234) {
        let x_2237 : i32 = u_xlati82;
        let x_2239 : f32 = x_200.x_AdditionalShadowParams[x_2237].y;
        u_xlatb85 = (1.0f == x_2239);
        let x_2241 : bool = u_xlatb85;
        if (x_2241) {
          let x_2244 : vec4<f32> = u_xlat11;
          let x_2248 : vec4<f32> = x_200.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2244.x, x_2244.y, x_2244.x, x_2244.y) + x_2248);
          let x_2251 : vec4<f32> = u_xlat12;
          let x_2252 : vec2<f32> = vec2<f32>(x_2251.x, x_2251.y);
          let x_2254 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
          let x_2262 : vec3<f32> = txVec30;
          let x_2264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
          u_xlat13.x = x_2264;
          let x_2267 : vec4<f32> = u_xlat12;
          let x_2268 : vec2<f32> = vec2<f32>(x_2267.z, x_2267.w);
          let x_2270 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2268.x, x_2268.y, x_2270);
          let x_2277 : vec3<f32> = txVec31;
          let x_2279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2277.xy, x_2277.z);
          u_xlat13.y = x_2279;
          let x_2281 : vec4<f32> = u_xlat11;
          let x_2285 : vec4<f32> = x_200.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y) + x_2285);
          let x_2288 : vec4<f32> = u_xlat12;
          let x_2289 : vec2<f32> = vec2<f32>(x_2288.x, x_2288.y);
          let x_2291 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
          let x_2298 : vec3<f32> = txVec32;
          let x_2300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2298.xy, x_2298.z);
          u_xlat13.z = x_2300;
          let x_2303 : vec4<f32> = u_xlat12;
          let x_2304 : vec2<f32> = vec2<f32>(x_2303.z, x_2303.w);
          let x_2306 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2304.x, x_2304.y, x_2306);
          let x_2313 : vec3<f32> = txVec33;
          let x_2315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2313.xy, x_2313.z);
          u_xlat13.w = x_2315;
          let x_2317 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2317, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2320 : i32 = u_xlati82;
          let x_2322 : f32 = x_200.x_AdditionalShadowParams[x_2320].y;
          u_xlatb87 = (2.0f == x_2322);
          let x_2324 : bool = u_xlatb87;
          if (x_2324) {
            let x_2327 : vec4<f32> = u_xlat11;
            let x_2331 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2334 : vec2<f32> = ((vec2<f32>(x_2327.x, x_2327.y) * vec2<f32>(x_2331.z, x_2331.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2335 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
            let x_2337 : vec4<f32> = u_xlat12;
            let x_2339 : vec2<f32> = floor(vec2<f32>(x_2337.x, x_2337.y));
            let x_2340 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
            let x_2343 : vec4<f32> = u_xlat11;
            let x_2346 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2349 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(x_2346.z, x_2346.w)) + -(vec2<f32>(x_2349.x, x_2349.y)));
            let x_2353 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2353.x, x_2353.x, x_2353.y, x_2353.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2356 : vec4<f32> = u_xlat13;
            let x_2358 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2356.x, x_2356.x, x_2356.z, x_2356.z) * vec4<f32>(x_2358.x, x_2358.x, x_2358.z, x_2358.z));
            let x_2361 : vec4<f32> = u_xlat14;
            let x_2363 : vec2<f32> = (vec2<f32>(x_2361.y, x_2361.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2364 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2363.x, x_2364.y, x_2363.y, x_2364.w);
            let x_2366 : vec4<f32> = u_xlat14;
            let x_2369 : vec2<f32> = u_xlat64;
            let x_2371 : vec2<f32> = ((vec2<f32>(x_2366.x, x_2366.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2369));
            let x_2372 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2375 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2375) + vec2<f32>(1.0f, 1.0f));
            let x_2378 : vec2<f32> = u_xlat64;
            let x_2379 : vec2<f32> = min(x_2378, vec2<f32>(0.0f, 0.0f));
            let x_2380 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec4<f32> = u_xlat15;
            let x_2385 : vec4<f32> = u_xlat15;
            let x_2388 : vec2<f32> = u_xlat66;
            let x_2389 : vec2<f32> = ((-(vec2<f32>(x_2382.x, x_2382.y)) * vec2<f32>(x_2385.x, x_2385.y)) + x_2388);
            let x_2390 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
            let x_2392 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2392, vec2<f32>(0.0f, 0.0f));
            let x_2394 : vec2<f32> = u_xlat64;
            let x_2396 : vec2<f32> = u_xlat64;
            let x_2398 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2394) * x_2396) + vec2<f32>(x_2398.y, x_2398.w));
            let x_2401 : vec4<f32> = u_xlat15;
            let x_2403 : vec2<f32> = (vec2<f32>(x_2401.x, x_2401.y) + vec2<f32>(1.0f, 1.0f));
            let x_2404 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
            let x_2406 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2406 + vec2<f32>(1.0f, 1.0f));
            let x_2408 : vec4<f32> = u_xlat14;
            let x_2410 : vec2<f32> = (vec2<f32>(x_2408.x, x_2408.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2411 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2410.x, x_2410.y, x_2411.z, x_2411.w);
            let x_2413 : vec2<f32> = u_xlat66;
            let x_2414 : vec2<f32> = (x_2413 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2415 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2414.x, x_2414.y, x_2415.z, x_2415.w);
            let x_2417 : vec4<f32> = u_xlat15;
            let x_2419 : vec2<f32> = (vec2<f32>(x_2417.x, x_2417.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2420 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2422 : vec2<f32> = u_xlat64;
            let x_2423 : vec2<f32> = (x_2422 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2424 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2426.y, x_2426.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2430 : f32 = u_xlat15.x;
            u_xlat16.z = x_2430;
            let x_2433 : f32 = u_xlat64.x;
            u_xlat16.w = x_2433;
            let x_2436 : f32 = u_xlat17.x;
            u_xlat14.z = x_2436;
            let x_2439 : f32 = u_xlat13.x;
            u_xlat14.w = x_2439;
            let x_2441 : vec4<f32> = u_xlat14;
            let x_2443 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2441.z, x_2441.w, x_2441.x, x_2441.z) + vec4<f32>(x_2443.z, x_2443.w, x_2443.x, x_2443.z));
            let x_2447 : f32 = u_xlat16.y;
            u_xlat15.z = x_2447;
            let x_2450 : f32 = u_xlat64.y;
            u_xlat15.w = x_2450;
            let x_2453 : f32 = u_xlat14.y;
            u_xlat17.z = x_2453;
            let x_2456 : f32 = u_xlat13.z;
            u_xlat17.w = x_2456;
            let x_2458 : vec4<f32> = u_xlat15;
            let x_2460 : vec4<f32> = u_xlat17;
            let x_2462 : vec3<f32> = (vec3<f32>(x_2458.z, x_2458.y, x_2458.w) + vec3<f32>(x_2460.z, x_2460.y, x_2460.w));
            let x_2463 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
            let x_2465 : vec4<f32> = u_xlat14;
            let x_2467 : vec4<f32> = u_xlat18;
            let x_2469 : vec3<f32> = (vec3<f32>(x_2465.x, x_2465.z, x_2465.w) / vec3<f32>(x_2467.z, x_2467.w, x_2467.y));
            let x_2470 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat14;
            let x_2474 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.y, x_2472.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2475 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
            let x_2477 : vec4<f32> = u_xlat17;
            let x_2479 : vec4<f32> = u_xlat13;
            let x_2481 : vec3<f32> = (vec3<f32>(x_2477.z, x_2477.y, x_2477.w) / vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
            let x_2482 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat15;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2484.x, x_2484.y, x_2484.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2487 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat14;
            let x_2492 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2494 : vec3<f32> = (vec3<f32>(x_2489.y, x_2489.x, x_2489.z) * vec3<f32>(x_2492.x, x_2492.x, x_2492.x));
            let x_2495 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
            let x_2497 : vec4<f32> = u_xlat15;
            let x_2500 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2502 : vec3<f32> = (vec3<f32>(x_2497.x, x_2497.y, x_2497.z) * vec3<f32>(x_2500.y, x_2500.y, x_2500.y));
            let x_2503 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2502.x, x_2502.y, x_2502.z, x_2503.w);
            let x_2506 : f32 = u_xlat15.x;
            u_xlat14.w = x_2506;
            let x_2508 : vec4<f32> = u_xlat12;
            let x_2511 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2514 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2508.x, x_2508.y, x_2508.x, x_2508.y) * vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y)) + vec4<f32>(x_2514.y, x_2514.w, x_2514.x, x_2514.w));
            let x_2517 : vec4<f32> = u_xlat12;
            let x_2520 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2523 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2520.x, x_2520.y)) + vec2<f32>(x_2523.z, x_2523.w));
            let x_2527 : f32 = u_xlat14.y;
            u_xlat15.w = x_2527;
            let x_2529 : vec4<f32> = u_xlat15;
            let x_2530 : vec2<f32> = vec2<f32>(x_2529.y, x_2529.z);
            let x_2531 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2531.x, x_2530.x, x_2531.z, x_2530.y);
            let x_2533 : vec4<f32> = u_xlat12;
            let x_2536 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2539 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2533.x, x_2533.y, x_2533.x, x_2533.y) * vec4<f32>(x_2536.x, x_2536.y, x_2536.x, x_2536.y)) + vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2539.y));
            let x_2542 : vec4<f32> = u_xlat12;
            let x_2545 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2548 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) * vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y)) + vec4<f32>(x_2548.w, x_2548.y, x_2548.w, x_2548.z));
            let x_2551 : vec4<f32> = u_xlat12;
            let x_2554 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2557 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2551.x, x_2551.y, x_2551.x, x_2551.y) * vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y)) + vec4<f32>(x_2557.x, x_2557.w, x_2557.z, x_2557.w));
            let x_2561 : vec4<f32> = u_xlat13;
            let x_2563 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2561.x, x_2561.x, x_2561.x, x_2561.y) * vec4<f32>(x_2563.z, x_2563.w, x_2563.y, x_2563.z));
            let x_2567 : vec4<f32> = u_xlat13;
            let x_2569 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2567.y, x_2567.y, x_2567.z, x_2567.z) * x_2569);
            let x_2572 : f32 = u_xlat13.z;
            let x_2574 : f32 = u_xlat18.y;
            u_xlat87 = (x_2572 * x_2574);
            let x_2577 : vec4<f32> = u_xlat16;
            let x_2578 : vec2<f32> = vec2<f32>(x_2577.x, x_2577.y);
            let x_2580 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2578.x, x_2578.y, x_2580);
            let x_2587 : vec3<f32> = txVec34;
            let x_2589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2587.xy, x_2587.z);
            u_xlat88 = x_2589;
            let x_2591 : vec4<f32> = u_xlat16;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.z, x_2591.w);
            let x_2594 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2592.x, x_2592.y, x_2594);
            let x_2602 : vec3<f32> = txVec35;
            let x_2604 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2602.xy, x_2602.z);
            u_xlat89 = x_2604;
            let x_2605 : f32 = u_xlat89;
            let x_2607 : f32 = u_xlat19.y;
            u_xlat89 = (x_2605 * x_2607);
            let x_2610 : f32 = u_xlat19.x;
            let x_2611 : f32 = u_xlat88;
            let x_2613 : f32 = u_xlat89;
            u_xlat88 = ((x_2610 * x_2611) + x_2613);
            let x_2616 : vec2<f32> = u_xlat64;
            let x_2618 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2616.x, x_2616.y, x_2618);
            let x_2625 : vec3<f32> = txVec36;
            let x_2627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2625.xy, x_2625.z);
            u_xlat89 = x_2627;
            let x_2629 : f32 = u_xlat19.z;
            let x_2630 : f32 = u_xlat89;
            let x_2632 : f32 = u_xlat88;
            u_xlat88 = ((x_2629 * x_2630) + x_2632);
            let x_2635 : vec4<f32> = u_xlat15;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.x, x_2635.y);
            let x_2638 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec37;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat89 = x_2647;
            let x_2649 : f32 = u_xlat19.w;
            let x_2650 : f32 = u_xlat89;
            let x_2652 : f32 = u_xlat88;
            u_xlat88 = ((x_2649 * x_2650) + x_2652);
            let x_2655 : vec4<f32> = u_xlat17;
            let x_2656 : vec2<f32> = vec2<f32>(x_2655.x, x_2655.y);
            let x_2658 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2656.x, x_2656.y, x_2658);
            let x_2665 : vec3<f32> = txVec38;
            let x_2667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2665.xy, x_2665.z);
            u_xlat89 = x_2667;
            let x_2669 : f32 = u_xlat20.x;
            let x_2670 : f32 = u_xlat89;
            let x_2672 : f32 = u_xlat88;
            u_xlat88 = ((x_2669 * x_2670) + x_2672);
            let x_2675 : vec4<f32> = u_xlat17;
            let x_2676 : vec2<f32> = vec2<f32>(x_2675.z, x_2675.w);
            let x_2678 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
            let x_2685 : vec3<f32> = txVec39;
            let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
            u_xlat89 = x_2687;
            let x_2689 : f32 = u_xlat20.y;
            let x_2690 : f32 = u_xlat89;
            let x_2692 : f32 = u_xlat88;
            u_xlat88 = ((x_2689 * x_2690) + x_2692);
            let x_2695 : vec4<f32> = u_xlat15;
            let x_2696 : vec2<f32> = vec2<f32>(x_2695.z, x_2695.w);
            let x_2698 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2696.x, x_2696.y, x_2698);
            let x_2705 : vec3<f32> = txVec40;
            let x_2707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2705.xy, x_2705.z);
            u_xlat89 = x_2707;
            let x_2709 : f32 = u_xlat20.z;
            let x_2710 : f32 = u_xlat89;
            let x_2712 : f32 = u_xlat88;
            u_xlat88 = ((x_2709 * x_2710) + x_2712);
            let x_2715 : vec4<f32> = u_xlat14;
            let x_2716 : vec2<f32> = vec2<f32>(x_2715.x, x_2715.y);
            let x_2718 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2716.x, x_2716.y, x_2718);
            let x_2725 : vec3<f32> = txVec41;
            let x_2727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2725.xy, x_2725.z);
            u_xlat89 = x_2727;
            let x_2729 : f32 = u_xlat20.w;
            let x_2730 : f32 = u_xlat89;
            let x_2732 : f32 = u_xlat88;
            u_xlat88 = ((x_2729 * x_2730) + x_2732);
            let x_2735 : vec4<f32> = u_xlat14;
            let x_2736 : vec2<f32> = vec2<f32>(x_2735.z, x_2735.w);
            let x_2738 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2736.x, x_2736.y, x_2738);
            let x_2745 : vec3<f32> = txVec42;
            let x_2747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2745.xy, x_2745.z);
            u_xlat89 = x_2747;
            let x_2748 : f32 = u_xlat87;
            let x_2749 : f32 = u_xlat89;
            let x_2751 : f32 = u_xlat88;
            u_xlat85 = ((x_2748 * x_2749) + x_2751);
          } else {
            let x_2754 : vec4<f32> = u_xlat11;
            let x_2757 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2760 : vec2<f32> = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2757.z, x_2757.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2761 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat12;
            let x_2765 : vec2<f32> = floor(vec2<f32>(x_2763.x, x_2763.y));
            let x_2766 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2765.x, x_2765.y, x_2766.z, x_2766.w);
            let x_2768 : vec4<f32> = u_xlat11;
            let x_2771 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2768.x, x_2768.y) * vec2<f32>(x_2771.z, x_2771.w)) + -(vec2<f32>(x_2774.x, x_2774.y)));
            let x_2778 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2778.x, x_2778.x, x_2778.y, x_2778.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2781 : vec4<f32> = u_xlat13;
            let x_2783 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2781.x, x_2781.x, x_2781.z, x_2781.z) * vec4<f32>(x_2783.x, x_2783.x, x_2783.z, x_2783.z));
            let x_2786 : vec4<f32> = u_xlat14;
            let x_2788 : vec2<f32> = (vec2<f32>(x_2786.y, x_2786.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2789 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2789.x, x_2788.x, x_2789.z, x_2788.y);
            let x_2791 : vec4<f32> = u_xlat14;
            let x_2794 : vec2<f32> = u_xlat64;
            let x_2796 : vec2<f32> = ((vec2<f32>(x_2791.x, x_2791.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2794));
            let x_2797 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2796.x, x_2797.y, x_2796.y, x_2797.w);
            let x_2799 : vec2<f32> = u_xlat64;
            let x_2801 : vec2<f32> = (-(x_2799) + vec2<f32>(1.0f, 1.0f));
            let x_2802 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2804, vec2<f32>(0.0f, 0.0f));
            let x_2806 : vec2<f32> = u_xlat66;
            let x_2808 : vec2<f32> = u_xlat66;
            let x_2810 : vec4<f32> = u_xlat14;
            let x_2812 : vec2<f32> = ((-(x_2806) * x_2808) + vec2<f32>(x_2810.x, x_2810.y));
            let x_2813 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2815 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2815, vec2<f32>(0.0f, 0.0f));
            let x_2818 : vec2<f32> = u_xlat66;
            let x_2820 : vec2<f32> = u_xlat66;
            let x_2822 : vec4<f32> = u_xlat13;
            let x_2824 : vec2<f32> = ((-(x_2818) * x_2820) + vec2<f32>(x_2822.y, x_2822.w));
            let x_2825 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2824.x, x_2825.y, x_2824.y);
            let x_2827 : vec4<f32> = u_xlat14;
            let x_2830 : vec2<f32> = (vec2<f32>(x_2827.x, x_2827.y) + vec2<f32>(2.0f, 2.0f));
            let x_2831 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec3<f32> = u_xlat39;
            let x_2835 : vec2<f32> = (vec2<f32>(x_2833.x, x_2833.z) + vec2<f32>(2.0f, 2.0f));
            let x_2836 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2836.x, x_2835.x, x_2836.z, x_2835.y);
            let x_2839 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2839 * 0.08163200318813323975f);
            let x_2842 : vec4<f32> = u_xlat13;
            let x_2845 : vec3<f32> = (vec3<f32>(x_2842.z, x_2842.x, x_2842.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2846 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2845.x, x_2845.y, x_2845.z, x_2846.w);
            let x_2848 : vec4<f32> = u_xlat14;
            let x_2850 : vec2<f32> = (vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
            let x_2854 : f32 = u_xlat17.y;
            u_xlat16.x = x_2854;
            let x_2856 : vec2<f32> = u_xlat64;
            let x_2859 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2860 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2860.x, x_2859.x, x_2860.z, x_2859.y);
            let x_2862 : vec2<f32> = u_xlat64;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2862.x, x_2862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2866 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2865.x, x_2866.y, x_2865.y, x_2866.w);
            let x_2869 : f32 = u_xlat13.x;
            u_xlat14.y = x_2869;
            let x_2872 : f32 = u_xlat15.y;
            u_xlat14.w = x_2872;
            let x_2874 : vec4<f32> = u_xlat14;
            let x_2875 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2874 + x_2875);
            let x_2877 : vec2<f32> = u_xlat64;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2877.y, x_2877.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2881 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2881.x, x_2880.x, x_2881.z, x_2880.y);
            let x_2883 : vec2<f32> = u_xlat64;
            let x_2886 : vec2<f32> = ((vec2<f32>(x_2883.y, x_2883.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2887 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2886.x, x_2887.y, x_2886.y, x_2887.w);
            let x_2890 : f32 = u_xlat13.y;
            u_xlat15.y = x_2890;
            let x_2892 : vec4<f32> = u_xlat15;
            let x_2893 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2892 + x_2893);
            let x_2895 : vec4<f32> = u_xlat14;
            let x_2896 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2895 / x_2896);
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2898 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2900 : vec4<f32> = u_xlat15;
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2900 / x_2901);
            let x_2903 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2903 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2905 : vec4<f32> = u_xlat14;
            let x_2908 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2905.w, x_2905.x, x_2905.y, x_2905.z) * vec4<f32>(x_2908.x, x_2908.x, x_2908.x, x_2908.x));
            let x_2911 : vec4<f32> = u_xlat15;
            let x_2914 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2911.x, x_2911.w, x_2911.y, x_2911.z) * vec4<f32>(x_2914.y, x_2914.y, x_2914.y, x_2914.y));
            let x_2917 : vec4<f32> = u_xlat14;
            let x_2918 : vec3<f32> = vec3<f32>(x_2917.y, x_2917.z, x_2917.w);
            let x_2919 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2918.x, x_2919.y, x_2918.y, x_2918.z);
            let x_2922 : f32 = u_xlat15.x;
            u_xlat17.y = x_2922;
            let x_2924 : vec4<f32> = u_xlat12;
            let x_2927 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2930 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) * vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y)) + vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2930.y));
            let x_2933 : vec4<f32> = u_xlat12;
            let x_2936 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2933.x, x_2933.y) * vec2<f32>(x_2936.x, x_2936.y)) + vec2<f32>(x_2939.w, x_2939.y));
            let x_2943 : f32 = u_xlat17.y;
            u_xlat14.y = x_2943;
            let x_2946 : f32 = u_xlat15.z;
            u_xlat17.y = x_2946;
            let x_2948 : vec4<f32> = u_xlat12;
            let x_2951 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2954 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2948.x, x_2948.y, x_2948.x, x_2948.y) * vec4<f32>(x_2951.x, x_2951.y, x_2951.x, x_2951.y)) + vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2954.y));
            let x_2957 : vec4<f32> = u_xlat12;
            let x_2960 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat17;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2960.x, x_2960.y)) + vec2<f32>(x_2963.w, x_2963.y));
            let x_2966 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
            let x_2969 : f32 = u_xlat17.y;
            u_xlat14.z = x_2969;
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2975 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y) * vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y)) + vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.z));
            let x_2982 : f32 = u_xlat15.w;
            u_xlat17.y = x_2982;
            let x_2985 : vec4<f32> = u_xlat12;
            let x_2988 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_2991 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y) * vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y)) + vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2991.y));
            let x_2995 : vec4<f32> = u_xlat12;
            let x_2998 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_3001 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_2995.x, x_2995.y) * vec2<f32>(x_2998.x, x_2998.y)) + vec2<f32>(x_3001.w, x_3001.y));
            let x_3005 : f32 = u_xlat17.y;
            u_xlat14.w = x_3005;
            let x_3008 : vec4<f32> = u_xlat12;
            let x_3011 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_3014 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3008.x, x_3008.y) * vec2<f32>(x_3011.x, x_3011.y)) + vec2<f32>(x_3014.x, x_3014.w));
            let x_3017 : vec4<f32> = u_xlat17;
            let x_3018 : vec3<f32> = vec3<f32>(x_3017.x, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3018.x, x_3019.y, x_3018.y, x_3018.z);
            let x_3021 : vec4<f32> = u_xlat12;
            let x_3024 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_3027 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y) * vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y)) + vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3027.y));
            let x_3031 : vec4<f32> = u_xlat12;
            let x_3034 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_3037 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3031.x, x_3031.y) * vec2<f32>(x_3034.x, x_3034.y)) + vec2<f32>(x_3037.w, x_3037.y));
            let x_3041 : f32 = u_xlat14.x;
            u_xlat15.x = x_3041;
            let x_3043 : vec4<f32> = u_xlat12;
            let x_3046 : vec4<f32> = x_200.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat15;
            let x_3051 : vec2<f32> = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.x, x_3046.y)) + vec2<f32>(x_3049.x, x_3049.y));
            let x_3052 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3051.x, x_3051.y, x_3052.z, x_3052.w);
            let x_3055 : vec4<f32> = u_xlat13;
            let x_3057 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3055.x, x_3055.x, x_3055.x, x_3055.x) * x_3057);
            let x_3060 : vec4<f32> = u_xlat13;
            let x_3062 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3060.y, x_3060.y, x_3060.y, x_3060.y) * x_3062);
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3067 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3065.z, x_3065.z, x_3065.z, x_3065.z) * x_3067);
            let x_3069 : vec4<f32> = u_xlat13;
            let x_3071 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3069.w, x_3069.w, x_3069.w, x_3069.w) * x_3071);
            let x_3074 : vec4<f32> = u_xlat18;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.x, x_3074.y);
            let x_3077 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec43;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat87 = x_3086;
            let x_3088 : vec4<f32> = u_xlat18;
            let x_3089 : vec2<f32> = vec2<f32>(x_3088.z, x_3088.w);
            let x_3091 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3089.x, x_3089.y, x_3091);
            let x_3098 : vec3<f32> = txVec44;
            let x_3100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3098.xy, x_3098.z);
            u_xlat88 = x_3100;
            let x_3101 : f32 = u_xlat88;
            let x_3103 : f32 = u_xlat23.y;
            u_xlat88 = (x_3101 * x_3103);
            let x_3106 : f32 = u_xlat23.x;
            let x_3107 : f32 = u_xlat87;
            let x_3109 : f32 = u_xlat88;
            u_xlat87 = ((x_3106 * x_3107) + x_3109);
            let x_3112 : vec2<f32> = u_xlat64;
            let x_3114 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3112.x, x_3112.y, x_3114);
            let x_3121 : vec3<f32> = txVec45;
            let x_3123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3121.xy, x_3121.z);
            u_xlat88 = x_3123;
            let x_3125 : f32 = u_xlat23.z;
            let x_3126 : f32 = u_xlat88;
            let x_3128 : f32 = u_xlat87;
            u_xlat87 = ((x_3125 * x_3126) + x_3128);
            let x_3131 : vec4<f32> = u_xlat21;
            let x_3132 : vec2<f32> = vec2<f32>(x_3131.x, x_3131.y);
            let x_3134 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3132.x, x_3132.y, x_3134);
            let x_3141 : vec3<f32> = txVec46;
            let x_3143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3141.xy, x_3141.z);
            u_xlat88 = x_3143;
            let x_3145 : f32 = u_xlat23.w;
            let x_3146 : f32 = u_xlat88;
            let x_3148 : f32 = u_xlat87;
            u_xlat87 = ((x_3145 * x_3146) + x_3148);
            let x_3151 : vec4<f32> = u_xlat19;
            let x_3152 : vec2<f32> = vec2<f32>(x_3151.x, x_3151.y);
            let x_3154 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
            let x_3161 : vec3<f32> = txVec47;
            let x_3163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
            u_xlat88 = x_3163;
            let x_3165 : f32 = u_xlat24.x;
            let x_3166 : f32 = u_xlat88;
            let x_3168 : f32 = u_xlat87;
            u_xlat87 = ((x_3165 * x_3166) + x_3168);
            let x_3171 : vec4<f32> = u_xlat19;
            let x_3172 : vec2<f32> = vec2<f32>(x_3171.z, x_3171.w);
            let x_3174 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3172.x, x_3172.y, x_3174);
            let x_3181 : vec3<f32> = txVec48;
            let x_3183 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3181.xy, x_3181.z);
            u_xlat88 = x_3183;
            let x_3185 : f32 = u_xlat24.y;
            let x_3186 : f32 = u_xlat88;
            let x_3188 : f32 = u_xlat87;
            u_xlat87 = ((x_3185 * x_3186) + x_3188);
            let x_3191 : vec4<f32> = u_xlat20;
            let x_3192 : vec2<f32> = vec2<f32>(x_3191.x, x_3191.y);
            let x_3194 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
            let x_3201 : vec3<f32> = txVec49;
            let x_3203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
            u_xlat88 = x_3203;
            let x_3205 : f32 = u_xlat24.z;
            let x_3206 : f32 = u_xlat88;
            let x_3208 : f32 = u_xlat87;
            u_xlat87 = ((x_3205 * x_3206) + x_3208);
            let x_3211 : vec4<f32> = u_xlat21;
            let x_3212 : vec2<f32> = vec2<f32>(x_3211.z, x_3211.w);
            let x_3214 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec50;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat88 = x_3223;
            let x_3225 : f32 = u_xlat24.w;
            let x_3226 : f32 = u_xlat88;
            let x_3228 : f32 = u_xlat87;
            u_xlat87 = ((x_3225 * x_3226) + x_3228);
            let x_3231 : vec4<f32> = u_xlat22;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.x, x_3231.y);
            let x_3234 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec51;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat88 = x_3243;
            let x_3245 : f32 = u_xlat25.x;
            let x_3246 : f32 = u_xlat88;
            let x_3248 : f32 = u_xlat87;
            u_xlat87 = ((x_3245 * x_3246) + x_3248);
            let x_3251 : vec4<f32> = u_xlat22;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.z, x_3251.w);
            let x_3254 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec52;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat88 = x_3263;
            let x_3265 : f32 = u_xlat25.y;
            let x_3266 : f32 = u_xlat88;
            let x_3268 : f32 = u_xlat87;
            u_xlat87 = ((x_3265 * x_3266) + x_3268);
            let x_3271 : vec2<f32> = u_xlat40;
            let x_3273 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec53;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat88 = x_3282;
            let x_3284 : f32 = u_xlat25.z;
            let x_3285 : f32 = u_xlat88;
            let x_3287 : f32 = u_xlat87;
            u_xlat87 = ((x_3284 * x_3285) + x_3287);
            let x_3290 : vec2<f32> = u_xlat72;
            let x_3292 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec54;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat88 = x_3301;
            let x_3303 : f32 = u_xlat25.w;
            let x_3304 : f32 = u_xlat88;
            let x_3306 : f32 = u_xlat87;
            u_xlat87 = ((x_3303 * x_3304) + x_3306);
            let x_3309 : vec4<f32> = u_xlat17;
            let x_3310 : vec2<f32> = vec2<f32>(x_3309.x, x_3309.y);
            let x_3312 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec55;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat88 = x_3321;
            let x_3323 : f32 = u_xlat13.x;
            let x_3324 : f32 = u_xlat88;
            let x_3326 : f32 = u_xlat87;
            u_xlat87 = ((x_3323 * x_3324) + x_3326);
            let x_3329 : vec4<f32> = u_xlat17;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.z, x_3329.w);
            let x_3332 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec56;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat88 = x_3341;
            let x_3343 : f32 = u_xlat13.y;
            let x_3344 : f32 = u_xlat88;
            let x_3346 : f32 = u_xlat87;
            u_xlat87 = ((x_3343 * x_3344) + x_3346);
            let x_3349 : vec2<f32> = u_xlat67;
            let x_3351 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
            let x_3358 : vec3<f32> = txVec57;
            let x_3360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
            u_xlat88 = x_3360;
            let x_3362 : f32 = u_xlat13.z;
            let x_3363 : f32 = u_xlat88;
            let x_3365 : f32 = u_xlat87;
            u_xlat87 = ((x_3362 * x_3363) + x_3365);
            let x_3368 : vec4<f32> = u_xlat12;
            let x_3369 : vec2<f32> = vec2<f32>(x_3368.x, x_3368.y);
            let x_3371 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3369.x, x_3369.y, x_3371);
            let x_3378 : vec3<f32> = txVec58;
            let x_3380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3378.xy, x_3378.z);
            u_xlat88 = x_3380;
            let x_3382 : f32 = u_xlat13.w;
            let x_3383 : f32 = u_xlat88;
            let x_3385 : f32 = u_xlat87;
            u_xlat85 = ((x_3382 * x_3383) + x_3385);
          }
        }
      } else {
        let x_3389 : vec4<f32> = u_xlat11;
        let x_3390 : vec2<f32> = vec2<f32>(x_3389.x, x_3389.y);
        let x_3392 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
        let x_3399 : vec3<f32> = txVec59;
        let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
        u_xlat85 = x_3401;
      }
      let x_3402 : i32 = u_xlati82;
      let x_3404 : f32 = x_200.x_AdditionalShadowParams[x_3402].x;
      u_xlat87 = (1.0f + -(x_3404));
      let x_3407 : f32 = u_xlat85;
      let x_3408 : i32 = u_xlati82;
      let x_3410 : f32 = x_200.x_AdditionalShadowParams[x_3408].x;
      let x_3412 : f32 = u_xlat87;
      u_xlat85 = ((x_3407 * x_3410) + x_3412);
      let x_3415 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3415);
      let x_3419 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3419 >= 1.0f);
      let x_3421 : bool = u_xlatb87;
      let x_3422 : bool = u_xlatb88;
      u_xlatb87 = (x_3421 | x_3422);
      let x_3424 : bool = u_xlatb87;
      let x_3425 : f32 = u_xlat85;
      u_xlat85 = select(x_3425, 1.0f, x_3424);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3428 : f32 = u_xlat85;
    u_xlat87 = (-(x_3428) + 1.0f);
    let x_3431 : f32 = u_xlat1;
    let x_3432 : f32 = u_xlat87;
    let x_3434 : f32 = u_xlat85;
    u_xlat85 = ((x_3431 * x_3432) + x_3434);
    let x_3437 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_3437 & 31i)));
    let x_3441 : i32 = u_xlati87;
    let x_3444 : f32 = x_1550.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3441) & bitcast<u32>(x_3444)));
    let x_3448 : i32 = u_xlati87;
    if ((x_3448 != 0i)) {
      let x_3452 : i32 = u_xlati82;
      let x_3454 : f32 = x_1550.x_AdditionalLightsLightTypes[x_3452].el;
      u_xlati87 = i32(x_3454);
      let x_3457 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3457 != 0i));
      let x_3461 : i32 = u_xlati82;
      u_xlati11 = (x_3461 << bitcast<u32>(2i));
      let x_3463 : i32 = u_xlati88;
      if ((x_3463 != 0i)) {
        let x_3468 : vec3<f32> = vs_TEXCOORD7;
        let x_3470 : i32 = u_xlati11;
        let x_3473 : i32 = u_xlati11;
        let x_3477 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3470 + 1i) / 4i)][((x_3473 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3468.y, x_3468.y, x_3468.y) * vec3<f32>(x_3477.x, x_3477.y, x_3477.w));
        let x_3480 : i32 = u_xlati11;
        let x_3482 : i32 = u_xlati11;
        let x_3485 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[(x_3480 / 4i)][(x_3482 % 4i)];
        let x_3487 : vec3<f32> = vs_TEXCOORD7;
        let x_3490 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3485.x, x_3485.y, x_3485.w) * vec3<f32>(x_3487.x, x_3487.x, x_3487.x)) + x_3490);
        let x_3492 : i32 = u_xlati11;
        let x_3495 : i32 = u_xlati11;
        let x_3499 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3492 + 2i) / 4i)][((x_3495 + 2i) % 4i)];
        let x_3501 : vec3<f32> = vs_TEXCOORD7;
        let x_3504 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3499.x, x_3499.y, x_3499.w) * vec3<f32>(x_3501.z, x_3501.z, x_3501.z)) + x_3504);
        let x_3506 : vec3<f32> = u_xlat37;
        let x_3507 : i32 = u_xlati11;
        let x_3510 : i32 = u_xlati11;
        let x_3514 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3507 + 3i) / 4i)][((x_3510 + 3i) % 4i)];
        u_xlat37 = (x_3506 + vec3<f32>(x_3514.x, x_3514.y, x_3514.w));
        let x_3517 : vec3<f32> = u_xlat37;
        let x_3519 : vec3<f32> = u_xlat37;
        let x_3521 : vec2<f32> = (vec2<f32>(x_3517.x, x_3517.y) / vec2<f32>(x_3519.z, x_3519.z));
        let x_3522 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3521.x, x_3521.y, x_3522.z);
        let x_3524 : vec3<f32> = u_xlat37;
        let x_3527 : vec2<f32> = ((vec2<f32>(x_3524.x, x_3524.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3528 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3527.x, x_3527.y, x_3528.z);
        let x_3530 : vec3<f32> = u_xlat37;
        let x_3534 : vec2<f32> = clamp(vec2<f32>(x_3530.x, x_3530.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3535 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3534.x, x_3534.y, x_3535.z);
        let x_3537 : i32 = u_xlati82;
        let x_3539 : vec4<f32> = x_1550.x_AdditionalLightsCookieAtlasUVRects[x_3537];
        let x_3541 : vec3<f32> = u_xlat37;
        let x_3544 : i32 = u_xlati82;
        let x_3546 : vec4<f32> = x_1550.x_AdditionalLightsCookieAtlasUVRects[x_3544];
        let x_3548 : vec2<f32> = ((vec2<f32>(x_3539.x, x_3539.y) * vec2<f32>(x_3541.x, x_3541.y)) + vec2<f32>(x_3546.z, x_3546.w));
        let x_3549 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3548.x, x_3548.y, x_3549.z);
      } else {
        let x_3552 : i32 = u_xlati87;
        u_xlatb87 = (x_3552 == 1i);
        let x_3554 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3554);
        let x_3556 : i32 = u_xlati87;
        if ((x_3556 != 0i)) {
          let x_3560 : vec3<f32> = vs_TEXCOORD7;
          let x_3562 : i32 = u_xlati11;
          let x_3565 : i32 = u_xlati11;
          let x_3569 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3562 + 1i) / 4i)][((x_3565 + 1i) % 4i)];
          let x_3571 : vec2<f32> = (vec2<f32>(x_3560.y, x_3560.y) * vec2<f32>(x_3569.x, x_3569.y));
          let x_3572 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3571.x, x_3571.y, x_3572.z, x_3572.w);
          let x_3574 : i32 = u_xlati11;
          let x_3576 : i32 = u_xlati11;
          let x_3579 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[(x_3574 / 4i)][(x_3576 % 4i)];
          let x_3581 : vec3<f32> = vs_TEXCOORD7;
          let x_3584 : vec4<f32> = u_xlat12;
          let x_3586 : vec2<f32> = ((vec2<f32>(x_3579.x, x_3579.y) * vec2<f32>(x_3581.x, x_3581.x)) + vec2<f32>(x_3584.x, x_3584.y));
          let x_3587 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3586.x, x_3586.y, x_3587.z, x_3587.w);
          let x_3589 : i32 = u_xlati11;
          let x_3592 : i32 = u_xlati11;
          let x_3596 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3589 + 2i) / 4i)][((x_3592 + 2i) % 4i)];
          let x_3598 : vec3<f32> = vs_TEXCOORD7;
          let x_3601 : vec4<f32> = u_xlat12;
          let x_3603 : vec2<f32> = ((vec2<f32>(x_3596.x, x_3596.y) * vec2<f32>(x_3598.z, x_3598.z)) + vec2<f32>(x_3601.x, x_3601.y));
          let x_3604 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3603.x, x_3603.y, x_3604.z, x_3604.w);
          let x_3606 : vec4<f32> = u_xlat12;
          let x_3608 : i32 = u_xlati11;
          let x_3611 : i32 = u_xlati11;
          let x_3615 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3608 + 3i) / 4i)][((x_3611 + 3i) % 4i)];
          let x_3617 : vec2<f32> = (vec2<f32>(x_3606.x, x_3606.y) + vec2<f32>(x_3615.x, x_3615.y));
          let x_3618 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3617.x, x_3617.y, x_3618.z, x_3618.w);
          let x_3620 : vec4<f32> = u_xlat12;
          let x_3623 : vec2<f32> = ((vec2<f32>(x_3620.x, x_3620.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3624 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3623.x, x_3623.y, x_3624.z, x_3624.w);
          let x_3626 : vec4<f32> = u_xlat12;
          let x_3628 : vec2<f32> = fract(vec2<f32>(x_3626.x, x_3626.y));
          let x_3629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3628.x, x_3628.y, x_3629.z, x_3629.w);
          let x_3631 : i32 = u_xlati82;
          let x_3633 : vec4<f32> = x_1550.x_AdditionalLightsCookieAtlasUVRects[x_3631];
          let x_3635 : vec4<f32> = u_xlat12;
          let x_3638 : i32 = u_xlati82;
          let x_3640 : vec4<f32> = x_1550.x_AdditionalLightsCookieAtlasUVRects[x_3638];
          let x_3642 : vec2<f32> = ((vec2<f32>(x_3633.x, x_3633.y) * vec2<f32>(x_3635.x, x_3635.y)) + vec2<f32>(x_3640.z, x_3640.w));
          let x_3643 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3642.x, x_3642.y, x_3643.z);
        } else {
          let x_3646 : vec3<f32> = vs_TEXCOORD7;
          let x_3648 : i32 = u_xlati11;
          let x_3651 : i32 = u_xlati11;
          let x_3655 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3648 + 1i) / 4i)][((x_3651 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3646.y, x_3646.y, x_3646.y, x_3646.y) * x_3655);
          let x_3657 : i32 = u_xlati11;
          let x_3659 : i32 = u_xlati11;
          let x_3662 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[(x_3657 / 4i)][(x_3659 % 4i)];
          let x_3663 : vec3<f32> = vs_TEXCOORD7;
          let x_3666 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3662 * vec4<f32>(x_3663.x, x_3663.x, x_3663.x, x_3663.x)) + x_3666);
          let x_3668 : i32 = u_xlati11;
          let x_3671 : i32 = u_xlati11;
          let x_3675 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3668 + 2i) / 4i)][((x_3671 + 2i) % 4i)];
          let x_3676 : vec3<f32> = vs_TEXCOORD7;
          let x_3679 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3675 * vec4<f32>(x_3676.z, x_3676.z, x_3676.z, x_3676.z)) + x_3679);
          let x_3681 : vec4<f32> = u_xlat12;
          let x_3682 : i32 = u_xlati11;
          let x_3685 : i32 = u_xlati11;
          let x_3689 : vec4<f32> = x_1550.x_AdditionalLightsWorldToLights[((x_3682 + 3i) / 4i)][((x_3685 + 3i) % 4i)];
          u_xlat12 = (x_3681 + x_3689);
          let x_3691 : vec4<f32> = u_xlat12;
          let x_3693 : vec4<f32> = u_xlat12;
          let x_3695 : vec3<f32> = (vec3<f32>(x_3691.x, x_3691.y, x_3691.z) / vec3<f32>(x_3693.w, x_3693.w, x_3693.w));
          let x_3696 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3695.x, x_3695.y, x_3695.z, x_3696.w);
          let x_3698 : vec4<f32> = u_xlat12;
          let x_3700 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3698.x, x_3698.y, x_3698.z), vec3<f32>(x_3700.x, x_3700.y, x_3700.z));
          let x_3703 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3703);
          let x_3705 : f32 = u_xlat87;
          let x_3707 : vec4<f32> = u_xlat12;
          let x_3709 : vec3<f32> = (vec3<f32>(x_3705, x_3705, x_3705) * vec3<f32>(x_3707.x, x_3707.y, x_3707.z));
          let x_3710 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3710.w);
          let x_3712 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3712.x, x_3712.y, x_3712.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3717 : f32 = u_xlat87;
          u_xlat87 = max(x_3717, 0.00000099999999747524f);
          let x_3720 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3720);
          let x_3722 : f32 = u_xlat87;
          let x_3724 : vec4<f32> = u_xlat12;
          let x_3726 : vec3<f32> = (vec3<f32>(x_3722, x_3722, x_3722) * vec3<f32>(x_3724.z, x_3724.x, x_3724.y));
          let x_3727 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3726.x, x_3726.y, x_3726.z, x_3727.w);
          let x_3730 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3730);
          let x_3734 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3734, 0.0f, 1.0f);
          let x_3737 : vec4<f32> = u_xlat13;
          let x_3739 : vec4<bool> = (vec4<f32>(x_3737.y, x_3737.y, x_3737.y, x_3737.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3740 : vec2<bool> = vec2<bool>(x_3739.x, x_3739.w);
          let x_3741 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3740.x, x_3741.y, x_3741.z, x_3740.y);
          let x_3744 : bool = u_xlatb11.x;
          if (x_3744) {
            let x_3749 : f32 = u_xlat13.x;
            x_3745 = x_3749;
          } else {
            let x_3752 : f32 = u_xlat13.x;
            x_3745 = -(x_3752);
          }
          let x_3754 : f32 = x_3745;
          u_xlat11.x = x_3754;
          let x_3757 : bool = u_xlatb11.w;
          if (x_3757) {
            let x_3762 : f32 = u_xlat13.x;
            x_3758 = x_3762;
          } else {
            let x_3765 : f32 = u_xlat13.x;
            x_3758 = -(x_3765);
          }
          let x_3767 : f32 = x_3758;
          u_xlat11.w = x_3767;
          let x_3769 : vec4<f32> = u_xlat12;
          let x_3771 : f32 = u_xlat87;
          let x_3774 : vec4<f32> = u_xlat11;
          let x_3776 : vec2<f32> = ((vec2<f32>(x_3769.x, x_3769.y) * vec2<f32>(x_3771, x_3771)) + vec2<f32>(x_3774.x, x_3774.w));
          let x_3777 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3776.x, x_3777.y, x_3777.z, x_3776.y);
          let x_3779 : vec4<f32> = u_xlat11;
          let x_3782 : vec2<f32> = ((vec2<f32>(x_3779.x, x_3779.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3783 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3782.x, x_3783.y, x_3783.z, x_3782.y);
          let x_3785 : vec4<f32> = u_xlat11;
          let x_3789 : vec2<f32> = clamp(vec2<f32>(x_3785.x, x_3785.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3790 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3789.x, x_3790.y, x_3790.z, x_3789.y);
          let x_3792 : i32 = u_xlati82;
          let x_3794 : vec4<f32> = x_1550.x_AdditionalLightsCookieAtlasUVRects[x_3792];
          let x_3796 : vec4<f32> = u_xlat11;
          let x_3799 : i32 = u_xlati82;
          let x_3801 : vec4<f32> = x_1550.x_AdditionalLightsCookieAtlasUVRects[x_3799];
          let x_3803 : vec2<f32> = ((vec2<f32>(x_3794.x, x_3794.y) * vec2<f32>(x_3796.x, x_3796.w)) + vec2<f32>(x_3801.z, x_3801.w));
          let x_3804 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3803.x, x_3803.y, x_3804.z);
        }
      }
      let x_3811 : vec3<f32> = u_xlat37;
      let x_3813 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3811.x, x_3811.y), 0.0f);
      u_xlat11 = x_3813;
      let x_3815 : bool = u_xlatb30.y;
      if (x_3815) {
        let x_3820 : f32 = u_xlat11.w;
        x_3816 = x_3820;
      } else {
        let x_3823 : f32 = u_xlat11.x;
        x_3816 = x_3823;
      }
      let x_3824 : f32 = x_3816;
      u_xlat87 = x_3824;
      let x_3826 : bool = u_xlatb30.x;
      if (x_3826) {
        let x_3830 : vec4<f32> = u_xlat11;
        x_3827 = vec3<f32>(x_3830.x, x_3830.y, x_3830.z);
      } else {
        let x_3833 : f32 = u_xlat87;
        x_3827 = vec3<f32>(x_3833, x_3833, x_3833);
      }
      let x_3835 : vec3<f32> = x_3827;
      let x_3836 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3835.x, x_3835.y, x_3835.z, x_3836.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3842 : vec4<f32> = u_xlat11;
    let x_3844 : i32 = u_xlati82;
    let x_3846 : vec4<f32> = x_2009.x_AdditionalLightsColor[x_3844];
    let x_3848 : vec3<f32> = (vec3<f32>(x_3842.x, x_3842.y, x_3842.z) * vec3<f32>(x_3846.x, x_3846.y, x_3846.z));
    let x_3849 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);
    let x_3851 : f32 = u_xlat83;
    let x_3852 : f32 = u_xlat85;
    u_xlat82 = (x_3851 * x_3852);
    let x_3854 : vec3<f32> = u_xlat27;
    let x_3855 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_3854, vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
    let x_3858 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3858, 0.0f, 1.0f);
    let x_3860 : f32 = u_xlat82;
    let x_3861 : f32 = u_xlat83;
    u_xlat82 = (x_3860 * x_3861);
    let x_3863 : f32 = u_xlat82;
    let x_3865 : vec4<f32> = u_xlat11;
    let x_3867 : vec3<f32> = (vec3<f32>(x_3863, x_3863, x_3863) * vec3<f32>(x_3865.x, x_3865.y, x_3865.z));
    let x_3868 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
    let x_3870 : vec4<f32> = u_xlat9;
    let x_3872 : f32 = u_xlat84;
    let x_3875 : vec4<f32> = u_xlat6;
    let x_3877 : vec3<f32> = ((vec3<f32>(x_3870.x, x_3870.y, x_3870.z) * vec3<f32>(x_3872, x_3872, x_3872)) + vec3<f32>(x_3875.x, x_3875.y, x_3875.z));
    let x_3878 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3877.x, x_3877.y, x_3877.z, x_3878.w);
    let x_3880 : vec4<f32> = u_xlat9;
    let x_3882 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3880.x, x_3880.y, x_3880.z), vec3<f32>(x_3882.x, x_3882.y, x_3882.z));
    let x_3885 : f32 = u_xlat82;
    u_xlat82 = max(x_3885, 1.17549435e-38f);
    let x_3887 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3887);
    let x_3889 : f32 = u_xlat82;
    let x_3891 : vec4<f32> = u_xlat9;
    let x_3893 : vec3<f32> = (vec3<f32>(x_3889, x_3889, x_3889) * vec3<f32>(x_3891.x, x_3891.y, x_3891.z));
    let x_3894 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3893.x, x_3893.y, x_3893.z, x_3894.w);
    let x_3896 : vec3<f32> = u_xlat27;
    let x_3897 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_3896, vec3<f32>(x_3897.x, x_3897.y, x_3897.z));
    let x_3900 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3900, 0.0f, 1.0f);
    let x_3902 : vec4<f32> = u_xlat10;
    let x_3904 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3902.x, x_3902.y, x_3902.z), vec3<f32>(x_3904.x, x_3904.y, x_3904.z));
    let x_3907 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3907, 0.0f, 1.0f);
    let x_3909 : f32 = u_xlat82;
    let x_3910 : f32 = u_xlat82;
    u_xlat82 = (x_3909 * x_3910);
    let x_3912 : f32 = u_xlat82;
    let x_3914 : f32 = u_xlat8.x;
    u_xlat82 = ((x_3912 * x_3914) + 1.00001001358032226562f);
    let x_3917 : f32 = u_xlat83;
    let x_3918 : f32 = u_xlat83;
    u_xlat83 = (x_3917 * x_3918);
    let x_3920 : f32 = u_xlat82;
    let x_3921 : f32 = u_xlat82;
    u_xlat82 = (x_3920 * x_3921);
    let x_3923 : f32 = u_xlat83;
    u_xlat83 = max(x_3923, 0.10000000149011611938f);
    let x_3925 : f32 = u_xlat82;
    let x_3926 : f32 = u_xlat83;
    u_xlat82 = (x_3925 * x_3926);
    let x_3929 : f32 = u_xlat3.x;
    let x_3930 : f32 = u_xlat82;
    u_xlat82 = (x_3929 * x_3930);
    let x_3932 : f32 = u_xlat4;
    let x_3933 : f32 = u_xlat82;
    u_xlat82 = (x_3932 / x_3933);
    let x_3935 : vec4<f32> = u_xlat0;
    let x_3937 : f32 = u_xlat82;
    let x_3940 : vec3<f32> = u_xlat29;
    let x_3941 : vec3<f32> = ((vec3<f32>(x_3935.x, x_3935.y, x_3935.z) * vec3<f32>(x_3937, x_3937, x_3937)) + x_3940);
    let x_3942 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);
    let x_3944 : vec4<f32> = u_xlat9;
    let x_3946 : vec4<f32> = u_xlat11;
    let x_3949 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3944.x, x_3944.y, x_3944.z) * vec3<f32>(x_3946.x, x_3946.y, x_3946.z)) + x_3949);

    continuing {
      let x_3951 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3951 + bitcast<u32>(1i));
    }
  }
  let x_3953 : vec4<f32> = u_xlat7;
  let x_3955 : vec4<f32> = u_xlat5;
  let x_3958 : vec4<f32> = u_xlat2;
  let x_3960 : vec3<f32> = ((vec3<f32>(x_3953.x, x_3953.y, x_3953.z) * vec3<f32>(x_3955.x, x_3955.y, x_3955.z)) + vec3<f32>(x_3958.x, x_3958.y, x_3958.z));
  let x_3961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3960.x, x_3960.y, x_3960.z, x_3961.w);
  let x_3965 : vec3<f32> = u_xlat34;
  let x_3966 : vec4<f32> = u_xlat0;
  let x_3968 : vec3<f32> = (x_3965 + vec3<f32>(x_3966.x, x_3966.y, x_3966.z));
  let x_3969 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3968.x, x_3968.y, x_3968.z, x_3969.w);
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


