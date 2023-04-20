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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb29 : bool;

@group(1) @binding(3) var<uniform> x_199 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb79 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat80 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1632 : UnityPerDraw;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_1872 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb80 : bool;

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
  var x_1507 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2015 : f32;
  var x_2026 : f32;
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
  u_xlat26.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat26;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
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
  let x_97 : vec3<f32> = u_xlat26;
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
  u_xlat77 = max(x_116, 0.00009999999747378752f);
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : f32 = u_xlat77;
  let x_123 : vec3<f32> = (vec3<f32>(x_119.x, x_119.y, x_119.z) / vec3<f32>(x_121, x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : f32 = u_xlat1;
  u_xlat77 = ((-(x_126) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_131 : f32 = u_xlat77;
  u_xlat3.x = (-(x_131) + 1.0f);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : f32 = u_xlat77;
  u_xlat28 = (vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139, x_139, x_139));
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
  u_xlat77 = (x_163 * x_164);
  let x_166 : f32 = u_xlat77;
  u_xlat77 = max(x_166, 0.0078125f);
  let x_170 : f32 = u_xlat77;
  let x_171 : f32 = u_xlat77;
  u_xlat4 = (x_170 * x_171);
  let x_175 : f32 = u_xlat0.w;
  let x_177 : f32 = u_xlat3.x;
  u_xlat75 = (x_175 + x_177);
  let x_179 : f32 = u_xlat75;
  u_xlat75 = clamp(x_179, 0.0f, 1.0f);
  let x_182 : f32 = u_xlat77;
  u_xlat3.x = ((x_182 * 4.0f) + 2.0f);
  let x_203 : f32 = x_199.x_MainLightShadowParams.y;
  u_xlatb29 = (0.0f < x_203);
  let x_205 : bool = u_xlatb29;
  if (x_205) {
    let x_209 : f32 = x_199.x_MainLightShadowParams.y;
    u_xlatb29 = (x_209 == 1.0f);
    let x_211 : bool = u_xlatb29;
    if (x_211) {
      let x_216 : vec4<f32> = vs_TEXCOORD8;
      let x_221 : vec4<f32> = x_199.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_216.x, x_216.y, x_216.x, x_216.y) + x_221);
      let x_225 : vec4<f32> = u_xlat5;
      let x_226 : vec2<f32> = vec2<f32>(x_225.x, x_225.y);
      let x_230 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_226.x, x_226.y, x_230);
      let x_243 : vec3<f32> = txVec0;
      let x_245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_243.xy, x_243.z);
      u_xlat6.x = x_245;
      let x_248 : vec4<f32> = u_xlat5;
      let x_249 : vec2<f32> = vec2<f32>(x_248.z, x_248.w);
      let x_251 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_249.x, x_249.y, x_251);
      let x_258 : vec3<f32> = txVec1;
      let x_260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_258.xy, x_258.z);
      u_xlat6.y = x_260;
      let x_262 : vec4<f32> = vs_TEXCOORD8;
      let x_266 : vec4<f32> = x_199.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y) + x_266);
      let x_269 : vec4<f32> = u_xlat5;
      let x_270 : vec2<f32> = vec2<f32>(x_269.x, x_269.y);
      let x_272 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_270.x, x_270.y, x_272);
      let x_279 : vec3<f32> = txVec2;
      let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_279.xy, x_279.z);
      u_xlat6.z = x_281;
      let x_284 : vec4<f32> = u_xlat5;
      let x_285 : vec2<f32> = vec2<f32>(x_284.z, x_284.w);
      let x_287 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_285.x, x_285.y, x_287);
      let x_294 : vec3<f32> = txVec3;
      let x_296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_294.xy, x_294.z);
      u_xlat6.w = x_296;
      let x_299 : vec4<f32> = u_xlat6;
      u_xlat29.x = dot(x_299, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_307 : f32 = x_199.x_MainLightShadowParams.y;
      u_xlatb54 = (x_307 == 2.0f);
      let x_309 : bool = u_xlatb54;
      if (x_309) {
        let x_314 : vec4<f32> = vs_TEXCOORD8;
        let x_318 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat54 = ((vec2<f32>(x_314.x, x_314.y) * vec2<f32>(x_318.z, x_318.w)) + vec2<f32>(0.5f, 0.5f));
        let x_323 : vec2<f32> = u_xlat54;
        u_xlat54 = floor(x_323);
        let x_325 : vec4<f32> = vs_TEXCOORD8;
        let x_328 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_331 : vec2<f32> = u_xlat54;
        let x_333 : vec2<f32> = ((vec2<f32>(x_325.x, x_325.y) * vec2<f32>(x_328.z, x_328.w)) + -(x_331));
        let x_334 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_334.z, x_334.w);
        let x_336 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_336.x, x_336.x, x_336.y, x_336.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_341 : vec4<f32> = u_xlat6;
        let x_343 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_341.x, x_341.x, x_341.z, x_341.z) * vec4<f32>(x_343.x, x_343.x, x_343.z, x_343.z));
        let x_347 : vec4<f32> = u_xlat7;
        u_xlat55 = (vec2<f32>(x_347.y, x_347.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_352 : vec4<f32> = u_xlat7;
        let x_355 : vec4<f32> = u_xlat5;
        let x_358 : vec2<f32> = ((vec2<f32>(x_352.x, x_352.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_355.x, x_355.y)));
        let x_359 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_358.x, x_359.y, x_358.y, x_359.w);
        let x_361 : vec4<f32> = u_xlat5;
        let x_365 : vec2<f32> = (-(vec2<f32>(x_361.x, x_361.y)) + vec2<f32>(1.0f, 1.0f));
        let x_366 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
        let x_369 : vec4<f32> = u_xlat5;
        u_xlat57 = min(vec2<f32>(x_369.x, x_369.y), vec2<f32>(0.0f, 0.0f));
        let x_373 : vec2<f32> = u_xlat57;
        let x_375 : vec2<f32> = u_xlat57;
        let x_377 : vec4<f32> = u_xlat7;
        u_xlat57 = ((-(x_373) * x_375) + vec2<f32>(x_377.x, x_377.y));
        let x_380 : vec4<f32> = u_xlat5;
        let x_382 : vec2<f32> = max(vec2<f32>(x_380.x, x_380.y), vec2<f32>(0.0f, 0.0f));
        let x_383 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec4<f32> = u_xlat5;
        let x_388 : vec4<f32> = u_xlat5;
        let x_391 : vec4<f32> = u_xlat6;
        let x_393 : vec2<f32> = ((-(vec2<f32>(x_385.x, x_385.y)) * vec2<f32>(x_388.x, x_388.y)) + vec2<f32>(x_391.y, x_391.w));
        let x_394 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_396 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_396 + vec2<f32>(1.0f, 1.0f));
        let x_398 : vec4<f32> = u_xlat5;
        let x_400 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) + vec2<f32>(1.0f, 1.0f));
        let x_401 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
        let x_404 : vec4<f32> = u_xlat6;
        let x_408 : vec2<f32> = (vec2<f32>(x_404.x, x_404.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_409 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
        let x_412 : vec4<f32> = u_xlat7;
        let x_414 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_415 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
        let x_417 : vec2<f32> = u_xlat57;
        let x_418 : vec2<f32> = (x_417 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_419 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_422 : vec4<f32> = u_xlat5;
        let x_424 : vec2<f32> = (vec2<f32>(x_422.x, x_422.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_425 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
        let x_427 : vec4<f32> = u_xlat6;
        let x_429 : vec2<f32> = (vec2<f32>(x_427.y, x_427.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_430 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_433 : f32 = u_xlat7.x;
        u_xlat8.z = x_433;
        let x_436 : f32 = u_xlat5.x;
        u_xlat8.w = x_436;
        let x_439 : f32 = u_xlat10.x;
        u_xlat9.z = x_439;
        let x_442 : f32 = u_xlat55.x;
        u_xlat9.w = x_442;
        let x_444 : vec4<f32> = u_xlat8;
        let x_446 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_444.z, x_444.w, x_444.x, x_444.z) + vec4<f32>(x_446.z, x_446.w, x_446.x, x_446.z));
        let x_450 : f32 = u_xlat8.y;
        u_xlat7.z = x_450;
        let x_453 : f32 = u_xlat5.y;
        u_xlat7.w = x_453;
        let x_456 : f32 = u_xlat9.y;
        u_xlat10.z = x_456;
        let x_459 : f32 = u_xlat55.y;
        u_xlat10.w = x_459;
        let x_461 : vec4<f32> = u_xlat7;
        let x_463 : vec4<f32> = u_xlat10;
        let x_465 : vec3<f32> = (vec3<f32>(x_461.z, x_461.y, x_461.w) + vec3<f32>(x_463.z, x_463.y, x_463.w));
        let x_466 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
        let x_468 : vec4<f32> = u_xlat9;
        let x_470 : vec4<f32> = u_xlat6;
        let x_472 : vec3<f32> = (vec3<f32>(x_468.x, x_468.z, x_468.w) / vec3<f32>(x_470.z, x_470.w, x_470.y));
        let x_473 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
        let x_475 : vec4<f32> = u_xlat7;
        let x_480 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_481 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
        let x_483 : vec4<f32> = u_xlat10;
        let x_485 : vec4<f32> = u_xlat5;
        let x_487 : vec3<f32> = (vec3<f32>(x_483.z, x_483.y, x_483.w) / vec3<f32>(x_485.x, x_485.y, x_485.z));
        let x_488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
        let x_490 : vec4<f32> = u_xlat8;
        let x_492 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat7;
        let x_498 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_500 : vec3<f32> = (vec3<f32>(x_495.y, x_495.x, x_495.z) * vec3<f32>(x_498.x, x_498.x, x_498.x));
        let x_501 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
        let x_503 : vec4<f32> = u_xlat8;
        let x_506 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_508 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_506.y, x_506.y, x_506.y));
        let x_509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
        let x_512 : f32 = u_xlat8.x;
        u_xlat7.w = x_512;
        let x_514 : vec2<f32> = u_xlat54;
        let x_517 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_520 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_514.x, x_514.y, x_514.x, x_514.y) * vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y)) + vec4<f32>(x_520.y, x_520.w, x_520.x, x_520.w));
        let x_523 : vec2<f32> = u_xlat54;
        let x_525 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_528 : vec4<f32> = u_xlat7;
        let x_530 : vec2<f32> = ((x_523 * vec2<f32>(x_525.x, x_525.y)) + vec2<f32>(x_528.z, x_528.w));
        let x_531 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : f32 = u_xlat7.y;
        u_xlat8.w = x_534;
        let x_536 : vec4<f32> = u_xlat8;
        let x_537 : vec2<f32> = vec2<f32>(x_536.y, x_536.z);
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_538.x, x_537.x, x_538.z, x_537.y);
        let x_541 : vec2<f32> = u_xlat54;
        let x_544 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_541.x, x_541.y, x_541.x, x_541.y) * vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y)) + vec4<f32>(x_547.x, x_547.y, x_547.z, x_547.y));
        let x_550 : vec2<f32> = u_xlat54;
        let x_553 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_556 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_550.x, x_550.y, x_550.x, x_550.y) * vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y)) + vec4<f32>(x_556.w, x_556.y, x_556.w, x_556.z));
        let x_559 : vec2<f32> = u_xlat54;
        let x_562 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) * vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y)) + vec4<f32>(x_565.x, x_565.w, x_565.z, x_565.w));
        let x_569 : vec4<f32> = u_xlat5;
        let x_571 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_569.x, x_569.x, x_569.x, x_569.y) * vec4<f32>(x_571.z, x_571.w, x_571.y, x_571.z));
        let x_575 : vec4<f32> = u_xlat5;
        let x_577 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_575.y, x_575.y, x_575.z, x_575.z) * x_577);
        let x_580 : f32 = u_xlat5.z;
        let x_582 : f32 = u_xlat6.y;
        u_xlat54.x = (x_580 * x_582);
        let x_586 : vec4<f32> = u_xlat9;
        let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
        let x_589 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_587.x, x_587.y, x_589);
        let x_597 : vec3<f32> = txVec4;
        let x_599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_597.xy, x_597.z);
        u_xlat79 = x_599;
        let x_601 : vec4<f32> = u_xlat9;
        let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
        let x_604 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_602.x, x_602.y, x_604);
        let x_611 : vec3<f32> = txVec5;
        let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_611.xy, x_611.z);
        u_xlat5.x = x_613;
        let x_616 : f32 = u_xlat5.x;
        let x_618 : f32 = u_xlat12.y;
        u_xlat5.x = (x_616 * x_618);
        let x_622 : f32 = u_xlat12.x;
        let x_623 : f32 = u_xlat79;
        let x_626 : f32 = u_xlat5.x;
        u_xlat79 = ((x_622 * x_623) + x_626);
        let x_629 : vec4<f32> = u_xlat10;
        let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
        let x_632 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_630.x, x_630.y, x_632);
        let x_639 : vec3<f32> = txVec6;
        let x_641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_639.xy, x_639.z);
        u_xlat5.x = x_641;
        let x_644 : f32 = u_xlat12.z;
        let x_646 : f32 = u_xlat5.x;
        let x_648 : f32 = u_xlat79;
        u_xlat79 = ((x_644 * x_646) + x_648);
        let x_651 : vec4<f32> = u_xlat8;
        let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
        let x_654 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_652.x, x_652.y, x_654);
        let x_661 : vec3<f32> = txVec7;
        let x_663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_661.xy, x_661.z);
        u_xlat5.x = x_663;
        let x_666 : f32 = u_xlat12.w;
        let x_668 : f32 = u_xlat5.x;
        let x_670 : f32 = u_xlat79;
        u_xlat79 = ((x_666 * x_668) + x_670);
        let x_673 : vec4<f32> = u_xlat11;
        let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
        let x_676 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec8;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_683.xy, x_683.z);
        u_xlat5.x = x_685;
        let x_688 : f32 = u_xlat13.x;
        let x_690 : f32 = u_xlat5.x;
        let x_692 : f32 = u_xlat79;
        u_xlat79 = ((x_688 * x_690) + x_692);
        let x_695 : vec4<f32> = u_xlat11;
        let x_696 : vec2<f32> = vec2<f32>(x_695.z, x_695.w);
        let x_698 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec9;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_705.xy, x_705.z);
        u_xlat5.x = x_707;
        let x_710 : f32 = u_xlat13.y;
        let x_712 : f32 = u_xlat5.x;
        let x_714 : f32 = u_xlat79;
        u_xlat79 = ((x_710 * x_712) + x_714);
        let x_717 : vec4<f32> = u_xlat8;
        let x_718 : vec2<f32> = vec2<f32>(x_717.z, x_717.w);
        let x_720 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_718.x, x_718.y, x_720);
        let x_727 : vec3<f32> = txVec10;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_727.xy, x_727.z);
        u_xlat5.x = x_729;
        let x_732 : f32 = u_xlat13.z;
        let x_734 : f32 = u_xlat5.x;
        let x_736 : f32 = u_xlat79;
        u_xlat79 = ((x_732 * x_734) + x_736);
        let x_739 : vec4<f32> = u_xlat7;
        let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
        let x_742 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_740.x, x_740.y, x_742);
        let x_749 : vec3<f32> = txVec11;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_749.xy, x_749.z);
        u_xlat5.x = x_751;
        let x_754 : f32 = u_xlat13.w;
        let x_756 : f32 = u_xlat5.x;
        let x_758 : f32 = u_xlat79;
        u_xlat79 = ((x_754 * x_756) + x_758);
        let x_761 : vec4<f32> = u_xlat7;
        let x_762 : vec2<f32> = vec2<f32>(x_761.z, x_761.w);
        let x_764 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_762.x, x_762.y, x_764);
        let x_771 : vec3<f32> = txVec12;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
        u_xlat5.x = x_773;
        let x_776 : f32 = u_xlat54.x;
        let x_778 : f32 = u_xlat5.x;
        let x_780 : f32 = u_xlat79;
        u_xlat29.x = ((x_776 * x_778) + x_780);
      } else {
        let x_784 : vec4<f32> = vs_TEXCOORD8;
        let x_787 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat54 = ((vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.z, x_787.w)) + vec2<f32>(0.5f, 0.5f));
        let x_791 : vec2<f32> = u_xlat54;
        u_xlat54 = floor(x_791);
        let x_793 : vec4<f32> = vs_TEXCOORD8;
        let x_796 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_799 : vec2<f32> = u_xlat54;
        let x_801 : vec2<f32> = ((vec2<f32>(x_793.x, x_793.y) * vec2<f32>(x_796.z, x_796.w)) + -(x_799));
        let x_802 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_804.x, x_804.x, x_804.y, x_804.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_807 : vec4<f32> = u_xlat6;
        let x_809 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_807.x, x_807.x, x_807.z, x_807.z) * vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z));
        let x_812 : vec4<f32> = u_xlat7;
        let x_816 : vec2<f32> = (vec2<f32>(x_812.y, x_812.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_817 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_817.x, x_816.x, x_817.z, x_816.y);
        let x_819 : vec4<f32> = u_xlat7;
        let x_822 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_819.x, x_819.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_822.x, x_822.y)));
        let x_826 : vec4<f32> = u_xlat5;
        let x_829 : vec2<f32> = (-(vec2<f32>(x_826.x, x_826.y)) + vec2<f32>(1.0f, 1.0f));
        let x_830 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_829.x, x_830.y, x_829.y, x_830.w);
        let x_832 : vec4<f32> = u_xlat5;
        let x_834 : vec2<f32> = min(vec2<f32>(x_832.x, x_832.y), vec2<f32>(0.0f, 0.0f));
        let x_835 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat7;
        let x_840 : vec4<f32> = u_xlat7;
        let x_843 : vec4<f32> = u_xlat6;
        let x_845 : vec2<f32> = ((-(vec2<f32>(x_837.x, x_837.y)) * vec2<f32>(x_840.x, x_840.y)) + vec2<f32>(x_843.x, x_843.z));
        let x_846 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_845.x, x_846.y, x_845.y, x_846.w);
        let x_848 : vec4<f32> = u_xlat5;
        let x_850 : vec2<f32> = max(vec2<f32>(x_848.x, x_848.y), vec2<f32>(0.0f, 0.0f));
        let x_851 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat7;
        let x_856 : vec4<f32> = u_xlat7;
        let x_859 : vec4<f32> = u_xlat6;
        let x_861 : vec2<f32> = ((-(vec2<f32>(x_853.x, x_853.y)) * vec2<f32>(x_856.x, x_856.y)) + vec2<f32>(x_859.y, x_859.w));
        let x_862 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_862.x, x_861.x, x_862.z, x_861.y);
        let x_864 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_864 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_868 : f32 = u_xlat6.y;
        u_xlat7.z = (x_868 * 0.08163200318813323975f);
        let x_872 : vec2<f32> = u_xlat55;
        let x_875 : vec2<f32> = (vec2<f32>(x_872.y, x_872.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_878.x, x_878.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_882 : f32 = u_xlat6.w;
        u_xlat9.z = (x_882 * 0.08163200318813323975f);
        let x_886 : f32 = u_xlat9.y;
        u_xlat7.x = x_886;
        let x_888 : vec4<f32> = u_xlat5;
        let x_895 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_896.x, x_895.x, x_896.z, x_895.y);
        let x_898 : vec4<f32> = u_xlat5;
        let x_902 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_903 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_902.x, x_903.y, x_902.y, x_903.w);
        let x_906 : f32 = u_xlat55.x;
        u_xlat6.y = x_906;
        let x_909 : f32 = u_xlat8.y;
        u_xlat6.w = x_909;
        let x_911 : vec4<f32> = u_xlat6;
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_911 + x_912);
        let x_914 : vec4<f32> = u_xlat5;
        let x_917 : vec2<f32> = ((vec2<f32>(x_914.y, x_914.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_918 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec4<f32> = u_xlat5;
        let x_923 : vec2<f32> = ((vec2<f32>(x_920.y, x_920.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_924.w);
        let x_927 : f32 = u_xlat55.y;
        u_xlat8.y = x_927;
        let x_929 : vec4<f32> = u_xlat8;
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_929 + x_930);
        let x_932 : vec4<f32> = u_xlat6;
        let x_933 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_932 / x_933);
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_935 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_941 : vec4<f32> = u_xlat8;
        let x_942 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_941 / x_942);
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_944 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_946 : vec4<f32> = u_xlat6;
        let x_949 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_946.w, x_946.x, x_946.y, x_946.z) * vec4<f32>(x_949.x, x_949.x, x_949.x, x_949.x));
        let x_952 : vec4<f32> = u_xlat8;
        let x_955 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_952.x, x_952.w, x_952.y, x_952.z) * vec4<f32>(x_955.y, x_955.y, x_955.y, x_955.y));
        let x_958 : vec4<f32> = u_xlat6;
        let x_959 : vec3<f32> = vec3<f32>(x_958.y, x_958.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_959.x, x_960.y, x_959.y, x_959.z);
        let x_963 : f32 = u_xlat8.x;
        u_xlat9.y = x_963;
        let x_965 : vec2<f32> = u_xlat54;
        let x_968 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y) * vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.y)) + vec4<f32>(x_971.x, x_971.y, x_971.z, x_971.y));
        let x_974 : vec2<f32> = u_xlat54;
        let x_976 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat9;
        let x_981 : vec2<f32> = ((x_974 * vec2<f32>(x_976.x, x_976.y)) + vec2<f32>(x_979.w, x_979.y));
        let x_982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_985 : f32 = u_xlat9.y;
        u_xlat6.y = x_985;
        let x_988 : f32 = u_xlat8.z;
        u_xlat9.y = x_988;
        let x_990 : vec2<f32> = u_xlat54;
        let x_993 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_1000 : vec2<f32> = u_xlat54;
        let x_1002 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1000 * vec2<f32>(x_1002.x, x_1002.y)) + vec2<f32>(x_1005.w, x_1005.y));
        let x_1009 : f32 = u_xlat9.y;
        u_xlat6.z = x_1009;
        let x_1011 : vec2<f32> = u_xlat54;
        let x_1014 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1017 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y) * vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.y)) + vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.z));
        let x_1021 : f32 = u_xlat8.w;
        u_xlat9.y = x_1021;
        let x_1024 : vec2<f32> = u_xlat54;
        let x_1027 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.y));
        let x_1034 : vec2<f32> = u_xlat54;
        let x_1036 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat31 = ((x_1034 * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1043 : f32 = u_xlat9.y;
        u_xlat6.w = x_1043;
        let x_1046 : vec2<f32> = u_xlat54;
        let x_1048 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1053 : vec2<f32> = ((x_1046 * vec2<f32>(x_1048.x, x_1048.y)) + vec2<f32>(x_1051.x, x_1051.w));
        let x_1054 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1057 : vec3<f32> = vec3<f32>(x_1056.x, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1058.y, x_1057.y, x_1057.z);
        let x_1060 : vec2<f32> = u_xlat54;
        let x_1063 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y) * vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y)) + vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.y));
        let x_1070 : vec2<f32> = u_xlat54;
        let x_1072 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat58 = ((x_1070 * vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(x_1075.w, x_1075.y));
        let x_1079 : f32 = u_xlat6.x;
        u_xlat8.x = x_1079;
        let x_1081 : vec2<f32> = u_xlat54;
        let x_1083 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat54 = ((x_1081 * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.x, x_1086.y));
        let x_1090 : vec4<f32> = u_xlat5;
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1090.x, x_1090.x, x_1090.x, x_1090.x) * x_1092);
        let x_1095 : vec4<f32> = u_xlat5;
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1095.y, x_1095.y, x_1095.y, x_1095.y) * x_1097);
        let x_1100 : vec4<f32> = u_xlat5;
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1100.z, x_1100.z, x_1100.z, x_1100.z) * x_1102);
        let x_1104 : vec4<f32> = u_xlat5;
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1104.w, x_1104.w, x_1104.w, x_1104.w) * x_1106);
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec13;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat6.x = x_1121;
        let x_1124 : vec4<f32> = u_xlat10;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.z, x_1124.w);
        let x_1127 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1135 : vec3<f32> = txVec14;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
        u_xlat81 = x_1137;
        let x_1138 : f32 = u_xlat81;
        let x_1140 : f32 = u_xlat16.y;
        u_xlat81 = (x_1138 * x_1140);
        let x_1143 : f32 = u_xlat16.x;
        let x_1145 : f32 = u_xlat6.x;
        let x_1147 : f32 = u_xlat81;
        u_xlat6.x = ((x_1143 * x_1145) + x_1147);
        let x_1151 : vec4<f32> = u_xlat11;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.x, x_1151.y);
        let x_1154 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec15;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
        u_xlat81 = x_1163;
        let x_1165 : f32 = u_xlat16.z;
        let x_1166 : f32 = u_xlat81;
        let x_1169 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1165 * x_1166) + x_1169);
        let x_1173 : vec4<f32> = u_xlat13;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
        let x_1176 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec16;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1183.xy, x_1183.z);
        u_xlat81 = x_1185;
        let x_1187 : f32 = u_xlat16.w;
        let x_1188 : f32 = u_xlat81;
        let x_1191 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1187 * x_1188) + x_1191);
        let x_1195 : vec4<f32> = u_xlat12;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec17;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1205.xy, x_1205.z);
        u_xlat81 = x_1207;
        let x_1209 : f32 = u_xlat17.x;
        let x_1210 : f32 = u_xlat81;
        let x_1213 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1209 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat12;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec18;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat81 = x_1229;
        let x_1231 : f32 = u_xlat17.y;
        let x_1232 : f32 = u_xlat81;
        let x_1235 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1231 * x_1232) + x_1235);
        let x_1239 : vec2<f32> = u_xlat61;
        let x_1241 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec19;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat81 = x_1250;
        let x_1252 : f32 = u_xlat17.z;
        let x_1253 : f32 = u_xlat81;
        let x_1256 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1252 * x_1253) + x_1256);
        let x_1260 : vec4<f32> = u_xlat13;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.z, x_1260.w);
        let x_1263 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec20;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1270.xy, x_1270.z);
        u_xlat81 = x_1272;
        let x_1274 : f32 = u_xlat17.w;
        let x_1275 : f32 = u_xlat81;
        let x_1278 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1274 * x_1275) + x_1278);
        let x_1282 : vec4<f32> = u_xlat14;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.x, x_1282.y);
        let x_1285 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec21;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
        u_xlat81 = x_1294;
        let x_1296 : f32 = u_xlat18.x;
        let x_1297 : f32 = u_xlat81;
        let x_1300 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1296 * x_1297) + x_1300);
        let x_1304 : vec4<f32> = u_xlat14;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.z, x_1304.w);
        let x_1307 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec22;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat81 = x_1316;
        let x_1318 : f32 = u_xlat18.y;
        let x_1319 : f32 = u_xlat81;
        let x_1322 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1318 * x_1319) + x_1322);
        let x_1326 : vec2<f32> = u_xlat31;
        let x_1328 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec23;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat31.x = x_1337;
        let x_1340 : f32 = u_xlat18.z;
        let x_1342 : f32 = u_xlat31.x;
        let x_1345 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1340 * x_1342) + x_1345);
        let x_1349 : vec4<f32> = u_xlat15;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec24;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat31.x = x_1361;
        let x_1364 : f32 = u_xlat18.w;
        let x_1366 : f32 = u_xlat31.x;
        let x_1369 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1364 * x_1366) + x_1369);
        let x_1373 : vec4<f32> = u_xlat9;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec25;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat31.x = x_1385;
        let x_1388 : f32 = u_xlat5.x;
        let x_1390 : f32 = u_xlat31.x;
        let x_1393 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1388 * x_1390) + x_1393);
        let x_1397 : vec4<f32> = u_xlat9;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec26;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat6.x = x_1409;
        let x_1412 : f32 = u_xlat5.y;
        let x_1414 : f32 = u_xlat6.x;
        let x_1417 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1412 * x_1414) + x_1417);
        let x_1421 : vec2<f32> = u_xlat58;
        let x_1423 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1431 : vec3<f32> = txVec27;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat30 = x_1433;
        let x_1435 : f32 = u_xlat5.z;
        let x_1436 : f32 = u_xlat30;
        let x_1439 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1435 * x_1436) + x_1439);
        let x_1443 : vec2<f32> = u_xlat54;
        let x_1445 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec28;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat54.x = x_1454;
        let x_1457 : f32 = u_xlat5.w;
        let x_1459 : f32 = u_xlat54.x;
        let x_1462 : f32 = u_xlat5.x;
        u_xlat29.x = ((x_1457 * x_1459) + x_1462);
      }
    }
  } else {
    let x_1467 : vec4<f32> = vs_TEXCOORD8;
    let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
    let x_1470 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
    let x_1477 : vec3<f32> = txVec29;
    let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
    u_xlat29.x = x_1479;
  }
  let x_1482 : f32 = x_199.x_MainLightShadowParams.x;
  u_xlat54.x = (-(x_1482) + 1.0f);
  let x_1487 : f32 = u_xlat29.x;
  let x_1489 : f32 = x_199.x_MainLightShadowParams.x;
  let x_1492 : f32 = u_xlat54.x;
  u_xlat29.x = ((x_1487 * x_1489) + x_1492);
  let x_1496 : f32 = vs_TEXCOORD8.z;
  u_xlatb54 = (0.0f >= x_1496);
  let x_1500 : f32 = vs_TEXCOORD8.z;
  u_xlatb79 = (x_1500 >= 1.0f);
  let x_1502 : bool = u_xlatb79;
  let x_1503 : bool = u_xlatb54;
  u_xlatb54 = (x_1502 | x_1503);
  let x_1505 : bool = u_xlatb54;
  if (x_1505) {
    x_1507 = 1.0f;
  } else {
    let x_1512 : f32 = u_xlat29.x;
    x_1507 = x_1512;
  }
  let x_1513 : f32 = x_1507;
  u_xlat29.x = x_1513;
  let x_1517 : vec3<f32> = vs_TEXCOORD7;
  let x_1521 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1523 : vec3<f32> = (x_1517 + -(x_1521));
  let x_1524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
  let x_1526 : vec4<f32> = u_xlat5;
  let x_1528 : vec4<f32> = u_xlat5;
  u_xlat54.x = dot(vec3<f32>(x_1526.x, x_1526.y, x_1526.z), vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
  let x_1533 : f32 = u_xlat54.x;
  let x_1535 : f32 = x_199.x_MainLightShadowParams.z;
  let x_1538 : f32 = x_199.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1533 * x_1535) + x_1538);
  let x_1540 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1540, 0.0f, 1.0f);
  let x_1543 : f32 = u_xlat29.x;
  u_xlat5.x = (-(x_1543) + 1.0f);
  let x_1547 : f32 = u_xlat79;
  let x_1549 : f32 = u_xlat5.x;
  let x_1552 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1547 * x_1549) + x_1552);
  let x_1556 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1556;
  let x_1560 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1560;
  let x_1564 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1564;
  let x_1566 : vec4<f32> = u_xlat5;
  let x_1569 : vec3<f32> = u_xlat26;
  u_xlat79 = dot(-(vec3<f32>(x_1566.x, x_1566.y, x_1566.z)), x_1569);
  let x_1571 : f32 = u_xlat79;
  let x_1572 : f32 = u_xlat79;
  u_xlat79 = (x_1571 + x_1572);
  let x_1574 : vec3<f32> = u_xlat26;
  let x_1575 : f32 = u_xlat79;
  let x_1579 : vec4<f32> = u_xlat5;
  let x_1582 : vec3<f32> = ((x_1574 * -(vec3<f32>(x_1575, x_1575, x_1575))) + -(vec3<f32>(x_1579.x, x_1579.y, x_1579.z)));
  let x_1583 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
  let x_1585 : vec3<f32> = u_xlat26;
  let x_1586 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(x_1585, vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
  let x_1589 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1589, 0.0f, 1.0f);
  let x_1591 : f32 = u_xlat79;
  u_xlat79 = (-(x_1591) + 1.0f);
  let x_1594 : f32 = u_xlat79;
  let x_1595 : f32 = u_xlat79;
  u_xlat79 = (x_1594 * x_1595);
  let x_1597 : f32 = u_xlat79;
  let x_1598 : f32 = u_xlat79;
  u_xlat79 = (x_1597 * x_1598);
  let x_1601 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1601) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1607 : f32 = u_xlat1;
  let x_1608 : f32 = u_xlat80;
  u_xlat1 = (x_1607 * x_1608);
  let x_1610 : f32 = u_xlat1;
  u_xlat1 = (x_1610 * 6.0f);
  let x_1621 : vec4<f32> = u_xlat6;
  let x_1623 : f32 = u_xlat1;
  let x_1624 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1621.x, x_1621.y, x_1621.z), x_1623);
  u_xlat6 = x_1624;
  let x_1626 : f32 = u_xlat6.w;
  u_xlat1 = (x_1626 + -1.0f);
  let x_1634 : f32 = x_1632.unity_SpecCube0_HDR.w;
  let x_1635 : f32 = u_xlat1;
  u_xlat1 = ((x_1634 * x_1635) + 1.0f);
  let x_1638 : f32 = u_xlat1;
  u_xlat1 = max(x_1638, 0.0f);
  let x_1640 : f32 = u_xlat1;
  u_xlat1 = log2(x_1640);
  let x_1642 : f32 = u_xlat1;
  let x_1644 : f32 = x_1632.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1642 * x_1644);
  let x_1646 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1646);
  let x_1648 : f32 = u_xlat1;
  let x_1650 : f32 = x_1632.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1648 * x_1650);
  let x_1652 : vec4<f32> = u_xlat6;
  let x_1654 : f32 = u_xlat1;
  let x_1656 : vec3<f32> = (vec3<f32>(x_1652.x, x_1652.y, x_1652.z) * vec3<f32>(x_1654, x_1654, x_1654));
  let x_1657 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1659 : f32 = u_xlat77;
  let x_1661 : f32 = u_xlat77;
  let x_1665 : vec2<f32> = ((vec2<f32>(x_1659, x_1659) * vec2<f32>(x_1661, x_1661)) + vec2<f32>(-1.0f, 1.0f));
  let x_1666 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1665.x, x_1665.y, x_1666.z, x_1666.w);
  let x_1669 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1669);
  let x_1672 : vec4<f32> = u_xlat0;
  let x_1675 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1672.x, x_1672.y, x_1672.z)) + vec3<f32>(x_1675, x_1675, x_1675));
  let x_1678 : f32 = u_xlat79;
  let x_1680 : vec3<f32> = u_xlat32;
  let x_1682 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1678, x_1678, x_1678) * x_1680) + vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
  let x_1685 : f32 = u_xlat1;
  let x_1687 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1685, x_1685, x_1685) * x_1687);
  let x_1689 : vec4<f32> = u_xlat6;
  let x_1691 : vec3<f32> = u_xlat32;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1689.x, x_1689.y, x_1689.z) * x_1691);
  let x_1693 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1695 : vec4<f32> = u_xlat2;
  let x_1697 : vec3<f32> = u_xlat28;
  let x_1699 : vec4<f32> = u_xlat6;
  let x_1701 : vec3<f32> = ((vec3<f32>(x_1695.x, x_1695.y, x_1695.z) * x_1697) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1705 : f32 = u_xlat29.x;
  let x_1708 : f32 = x_1632.unity_LightData.z;
  u_xlat75 = (x_1705 * x_1708);
  let x_1710 : vec3<f32> = u_xlat26;
  let x_1713 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1710, vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
  let x_1716 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1716, 0.0f, 1.0f);
  let x_1718 : f32 = u_xlat75;
  let x_1719 : f32 = u_xlat1;
  u_xlat75 = (x_1718 * x_1719);
  let x_1721 : f32 = u_xlat75;
  let x_1725 : vec4<f32> = x_28.x_MainLightColor;
  let x_1727 : vec3<f32> = (vec3<f32>(x_1721, x_1721, x_1721) * vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1730 : vec4<f32> = u_xlat5;
  let x_1733 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_1730.x, x_1730.y, x_1730.z) + vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
  let x_1736 : vec3<f32> = u_xlat32;
  let x_1737 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1736, x_1737);
  let x_1739 : f32 = u_xlat75;
  u_xlat75 = max(x_1739, 1.17549435e-38f);
  let x_1742 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1742);
  let x_1744 : f32 = u_xlat75;
  let x_1746 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1744, x_1744, x_1744) * x_1746);
  let x_1748 : vec3<f32> = u_xlat26;
  let x_1749 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1748, x_1749);
  let x_1751 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1751, 0.0f, 1.0f);
  let x_1754 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1756 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_1754.x, x_1754.y, x_1754.z), x_1756);
  let x_1758 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1758, 0.0f, 1.0f);
  let x_1760 : f32 = u_xlat75;
  let x_1761 : f32 = u_xlat75;
  u_xlat75 = (x_1760 * x_1761);
  let x_1763 : f32 = u_xlat75;
  let x_1765 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1763 * x_1765) + 1.00001001358032226562f);
  let x_1769 : f32 = u_xlat1;
  let x_1770 : f32 = u_xlat1;
  u_xlat1 = (x_1769 * x_1770);
  let x_1772 : f32 = u_xlat75;
  let x_1773 : f32 = u_xlat75;
  u_xlat75 = (x_1772 * x_1773);
  let x_1775 : f32 = u_xlat1;
  u_xlat1 = max(x_1775, 0.10000000149011611938f);
  let x_1778 : f32 = u_xlat75;
  let x_1779 : f32 = u_xlat1;
  u_xlat75 = (x_1778 * x_1779);
  let x_1782 : f32 = u_xlat3.x;
  let x_1783 : f32 = u_xlat75;
  u_xlat75 = (x_1782 * x_1783);
  let x_1785 : f32 = u_xlat4;
  let x_1786 : f32 = u_xlat75;
  u_xlat75 = (x_1785 / x_1786);
  let x_1788 : vec4<f32> = u_xlat0;
  let x_1790 : f32 = u_xlat75;
  let x_1793 : vec3<f32> = u_xlat28;
  u_xlat32 = ((vec3<f32>(x_1788.x, x_1788.y, x_1788.z) * vec3<f32>(x_1790, x_1790, x_1790)) + x_1793);
  let x_1797 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1799 : f32 = x_1632.unity_LightData.y;
  u_xlat75 = min(x_1797, x_1799);
  let x_1803 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1803));
  let x_1807 : f32 = u_xlat54.x;
  let x_1810 : f32 = x_199.x_AdditionalShadowFadeParams.x;
  let x_1813 : f32 = x_199.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1807 * x_1810) + x_1813);
  let x_1815 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1815, 0.0f, 1.0f);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1827 : u32 = u_xlatu_loop_1;
    let x_1828 : u32 = u_xlatu75;
    if ((x_1827 < x_1828)) {
    } else {
      break;
    }
    let x_1831 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_1831 >> 2u);
    let x_1835 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_1835 & 3u));
    let x_1838 : u32 = u_xlatu80;
    let x_1841 : vec4<f32> = x_1632.unity_LightIndices[bitcast<i32>(x_1838)];
    let x_1851 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1856 : vec4<u32> = indexable[x_1851];
    u_xlat80 = dot(x_1841, bitcast<vec4<f32>>(x_1856));
    let x_1860 : f32 = u_xlat80;
    u_xlati80 = i32(x_1860);
    let x_1862 : vec3<f32> = vs_TEXCOORD7;
    let x_1873 : i32 = u_xlati80;
    let x_1875 : vec4<f32> = x_1872.x_AdditionalLightsPosition[x_1873];
    let x_1878 : i32 = u_xlati80;
    let x_1880 : vec4<f32> = x_1872.x_AdditionalLightsPosition[x_1878];
    let x_1882 : vec3<f32> = ((-(x_1862) * vec3<f32>(x_1875.w, x_1875.w, x_1875.w)) + vec3<f32>(x_1880.x, x_1880.y, x_1880.z));
    let x_1883 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
    let x_1885 : vec4<f32> = u_xlat8;
    let x_1887 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_1885.x, x_1885.y, x_1885.z), vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
    let x_1890 : f32 = u_xlat81;
    u_xlat81 = max(x_1890, 0.00006103515625f);
    let x_1894 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_1894);
    let x_1896 : f32 = u_xlat83;
    let x_1898 : vec4<f32> = u_xlat8;
    let x_1900 : vec3<f32> = (vec3<f32>(x_1896, x_1896, x_1896) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
    let x_1901 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
    let x_1904 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_1904);
    let x_1906 : f32 = u_xlat81;
    let x_1907 : i32 = u_xlati80;
    let x_1909 : f32 = x_1872.x_AdditionalLightsAttenuation[x_1907].x;
    u_xlat81 = (x_1906 * x_1909);
    let x_1911 : f32 = u_xlat81;
    let x_1913 : f32 = u_xlat81;
    u_xlat81 = ((-(x_1911) * x_1913) + 1.0f);
    let x_1916 : f32 = u_xlat81;
    u_xlat81 = max(x_1916, 0.0f);
    let x_1918 : f32 = u_xlat81;
    let x_1919 : f32 = u_xlat81;
    u_xlat81 = (x_1918 * x_1919);
    let x_1921 : f32 = u_xlat81;
    let x_1922 : f32 = u_xlat84;
    u_xlat81 = (x_1921 * x_1922);
    let x_1924 : i32 = u_xlati80;
    let x_1926 : vec4<f32> = x_1872.x_AdditionalLightsSpotDir[x_1924];
    let x_1928 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
    let x_1931 : f32 = u_xlat84;
    let x_1932 : i32 = u_xlati80;
    let x_1934 : f32 = x_1872.x_AdditionalLightsAttenuation[x_1932].z;
    let x_1936 : i32 = u_xlati80;
    let x_1938 : f32 = x_1872.x_AdditionalLightsAttenuation[x_1936].w;
    u_xlat84 = ((x_1931 * x_1934) + x_1938);
    let x_1940 : f32 = u_xlat84;
    u_xlat84 = clamp(x_1940, 0.0f, 1.0f);
    let x_1942 : f32 = u_xlat84;
    let x_1943 : f32 = u_xlat84;
    u_xlat84 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat81;
    let x_1946 : f32 = u_xlat84;
    u_xlat81 = (x_1945 * x_1946);
    let x_1950 : i32 = u_xlati80;
    let x_1952 : f32 = x_199.x_AdditionalShadowParams[x_1950].w;
    u_xlati84 = i32(x_1952);
    let x_1957 : i32 = u_xlati84;
    u_xlatb10.x = (x_1957 >= 0i);
    let x_1961 : bool = u_xlatb10.x;
    if (x_1961) {
      let x_1965 : i32 = u_xlati80;
      let x_1967 : f32 = x_199.x_AdditionalShadowParams[x_1965].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1967, x_1967, x_1967, x_1967))));
      let x_1974 : bool = u_xlatb10.x;
      if (x_1974) {
        let x_1977 : vec4<f32> = u_xlat9;
        let x_1980 : vec4<f32> = u_xlat9;
        let x_1983 : vec4<bool> = (abs(vec4<f32>(x_1977.z, x_1977.z, x_1977.y, x_1977.z)) >= abs(vec4<f32>(x_1980.x, x_1980.y, x_1980.x, x_1980.x)));
        u_xlatb10 = vec3<bool>(x_1983.x, x_1983.y, x_1983.z);
        let x_1986 : bool = u_xlatb10.y;
        let x_1988 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1986 & x_1988);
        let x_1992 : vec4<f32> = u_xlat9;
        let x_1995 : vec4<bool> = (-(vec4<f32>(x_1992.z, x_1992.y, x_1992.x, x_1992.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1995.x, x_1995.y, x_1995.z);
        let x_1999 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_1999);
        let x_2004 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2004);
        let x_2009 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2009);
        let x_2014 : bool = u_xlatb10.z;
        if (x_2014) {
          let x_2019 : f32 = u_xlat35.z;
          x_2015 = x_2019;
        } else {
          let x_2022 : f32 = u_xlat11.x;
          x_2015 = x_2022;
        }
        let x_2023 : f32 = x_2015;
        u_xlat60 = x_2023;
        let x_2025 : bool = u_xlatb10.x;
        if (x_2025) {
          let x_2030 : f32 = u_xlat35.x;
          x_2026 = x_2030;
        } else {
          let x_2032 : f32 = u_xlat60;
          x_2026 = x_2032;
        }
        let x_2033 : f32 = x_2026;
        u_xlat10.x = x_2033;
        let x_2035 : i32 = u_xlati80;
        let x_2037 : f32 = x_199.x_AdditionalShadowParams[x_2035].w;
        u_xlat35.x = trunc(x_2037);
        let x_2041 : f32 = u_xlat10.x;
        let x_2043 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2041 + x_2043);
        let x_2047 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2047);
      }
      let x_2049 : i32 = u_xlati84;
      u_xlati84 = (x_2049 << bitcast<u32>(2i));
      let x_2051 : vec3<f32> = vs_TEXCOORD7;
      let x_2054 : i32 = u_xlati84;
      let x_2057 : i32 = u_xlati84;
      let x_2061 : vec4<f32> = x_199.x_AdditionalLightsWorldToShadow[((x_2054 + 1i) / 4i)][((x_2057 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2051.y, x_2051.y, x_2051.y, x_2051.y) * x_2061);
      let x_2063 : i32 = u_xlati84;
      let x_2065 : i32 = u_xlati84;
      let x_2068 : vec4<f32> = x_199.x_AdditionalLightsWorldToShadow[(x_2063 / 4i)][(x_2065 % 4i)];
      let x_2069 : vec3<f32> = vs_TEXCOORD7;
      let x_2072 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2068 * vec4<f32>(x_2069.x, x_2069.x, x_2069.x, x_2069.x)) + x_2072);
      let x_2074 : i32 = u_xlati84;
      let x_2077 : i32 = u_xlati84;
      let x_2081 : vec4<f32> = x_199.x_AdditionalLightsWorldToShadow[((x_2074 + 2i) / 4i)][((x_2077 + 2i) % 4i)];
      let x_2082 : vec3<f32> = vs_TEXCOORD7;
      let x_2085 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2081 * vec4<f32>(x_2082.z, x_2082.z, x_2082.z, x_2082.z)) + x_2085);
      let x_2087 : vec4<f32> = u_xlat10;
      let x_2088 : i32 = u_xlati84;
      let x_2091 : i32 = u_xlati84;
      let x_2095 : vec4<f32> = x_199.x_AdditionalLightsWorldToShadow[((x_2088 + 3i) / 4i)][((x_2091 + 3i) % 4i)];
      u_xlat10 = (x_2087 + x_2095);
      let x_2097 : vec4<f32> = u_xlat10;
      let x_2099 : vec4<f32> = u_xlat10;
      let x_2101 : vec3<f32> = (vec3<f32>(x_2097.x, x_2097.y, x_2097.z) / vec3<f32>(x_2099.w, x_2099.w, x_2099.w));
      let x_2102 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
      let x_2105 : i32 = u_xlati80;
      let x_2107 : f32 = x_199.x_AdditionalShadowParams[x_2105].y;
      u_xlatb84 = (0.0f < x_2107);
      let x_2109 : bool = u_xlatb84;
      if (x_2109) {
        let x_2112 : i32 = u_xlati80;
        let x_2114 : f32 = x_199.x_AdditionalShadowParams[x_2112].y;
        u_xlatb84 = (1.0f == x_2114);
        let x_2116 : bool = u_xlatb84;
        if (x_2116) {
          let x_2119 : vec4<f32> = u_xlat10;
          let x_2123 : vec4<f32> = x_199.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2119.x, x_2119.y, x_2119.x, x_2119.y) + x_2123);
          let x_2126 : vec4<f32> = u_xlat11;
          let x_2127 : vec2<f32> = vec2<f32>(x_2126.x, x_2126.y);
          let x_2129 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2127.x, x_2127.y, x_2129);
          let x_2137 : vec3<f32> = txVec30;
          let x_2139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
          u_xlat12.x = x_2139;
          let x_2142 : vec4<f32> = u_xlat11;
          let x_2143 : vec2<f32> = vec2<f32>(x_2142.z, x_2142.w);
          let x_2145 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
          let x_2152 : vec3<f32> = txVec31;
          let x_2154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
          u_xlat12.y = x_2154;
          let x_2156 : vec4<f32> = u_xlat10;
          let x_2160 : vec4<f32> = x_199.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2156.x, x_2156.y, x_2156.x, x_2156.y) + x_2160);
          let x_2163 : vec4<f32> = u_xlat11;
          let x_2164 : vec2<f32> = vec2<f32>(x_2163.x, x_2163.y);
          let x_2166 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
          let x_2173 : vec3<f32> = txVec32;
          let x_2175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2173.xy, x_2173.z);
          u_xlat12.z = x_2175;
          let x_2178 : vec4<f32> = u_xlat11;
          let x_2179 : vec2<f32> = vec2<f32>(x_2178.z, x_2178.w);
          let x_2181 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2179.x, x_2179.y, x_2181);
          let x_2188 : vec3<f32> = txVec33;
          let x_2190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2188.xy, x_2188.z);
          u_xlat12.w = x_2190;
          let x_2192 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2192, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2196 : i32 = u_xlati80;
          let x_2198 : f32 = x_199.x_AdditionalShadowParams[x_2196].y;
          u_xlatb85 = (2.0f == x_2198);
          let x_2200 : bool = u_xlatb85;
          if (x_2200) {
            let x_2203 : vec4<f32> = u_xlat10;
            let x_2207 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2210 : vec2<f32> = ((vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(x_2207.z, x_2207.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2211 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
            let x_2213 : vec4<f32> = u_xlat11;
            let x_2215 : vec2<f32> = floor(vec2<f32>(x_2213.x, x_2213.y));
            let x_2216 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec4<f32> = u_xlat10;
            let x_2221 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2224 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2218.x, x_2218.y) * vec2<f32>(x_2221.z, x_2221.w)) + -(vec2<f32>(x_2224.x, x_2224.y)));
            let x_2228 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2228.x, x_2228.x, x_2228.y, x_2228.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2231 : vec4<f32> = u_xlat12;
            let x_2233 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2231.x, x_2231.x, x_2231.z, x_2231.z) * vec4<f32>(x_2233.x, x_2233.x, x_2233.z, x_2233.z));
            let x_2236 : vec4<f32> = u_xlat13;
            let x_2238 : vec2<f32> = (vec2<f32>(x_2236.y, x_2236.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2239 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2238.x, x_2239.y, x_2238.y, x_2239.w);
            let x_2241 : vec4<f32> = u_xlat13;
            let x_2244 : vec2<f32> = u_xlat61;
            let x_2246 : vec2<f32> = ((vec2<f32>(x_2241.x, x_2241.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2244));
            let x_2247 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
            let x_2250 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2250) + vec2<f32>(1.0f, 1.0f));
            let x_2253 : vec2<f32> = u_xlat61;
            let x_2254 : vec2<f32> = min(x_2253, vec2<f32>(0.0f, 0.0f));
            let x_2255 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
            let x_2257 : vec4<f32> = u_xlat14;
            let x_2260 : vec4<f32> = u_xlat14;
            let x_2263 : vec2<f32> = u_xlat63;
            let x_2264 : vec2<f32> = ((-(vec2<f32>(x_2257.x, x_2257.y)) * vec2<f32>(x_2260.x, x_2260.y)) + x_2263);
            let x_2265 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
            let x_2267 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2267, vec2<f32>(0.0f, 0.0f));
            let x_2269 : vec2<f32> = u_xlat61;
            let x_2271 : vec2<f32> = u_xlat61;
            let x_2273 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2269) * x_2271) + vec2<f32>(x_2273.y, x_2273.w));
            let x_2276 : vec4<f32> = u_xlat14;
            let x_2278 : vec2<f32> = (vec2<f32>(x_2276.x, x_2276.y) + vec2<f32>(1.0f, 1.0f));
            let x_2279 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2278.x, x_2278.y, x_2279.z, x_2279.w);
            let x_2281 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2281 + vec2<f32>(1.0f, 1.0f));
            let x_2283 : vec4<f32> = u_xlat13;
            let x_2285 : vec2<f32> = (vec2<f32>(x_2283.x, x_2283.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2286 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2285.x, x_2285.y, x_2286.z, x_2286.w);
            let x_2288 : vec2<f32> = u_xlat63;
            let x_2289 : vec2<f32> = (x_2288 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2290 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2289.x, x_2289.y, x_2290.z, x_2290.w);
            let x_2292 : vec4<f32> = u_xlat14;
            let x_2294 : vec2<f32> = (vec2<f32>(x_2292.x, x_2292.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2295 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2294.x, x_2294.y, x_2295.z, x_2295.w);
            let x_2297 : vec2<f32> = u_xlat61;
            let x_2298 : vec2<f32> = (x_2297 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2299 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2301.y, x_2301.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2305 : f32 = u_xlat14.x;
            u_xlat15.z = x_2305;
            let x_2308 : f32 = u_xlat61.x;
            u_xlat15.w = x_2308;
            let x_2311 : f32 = u_xlat16.x;
            u_xlat13.z = x_2311;
            let x_2314 : f32 = u_xlat12.x;
            u_xlat13.w = x_2314;
            let x_2316 : vec4<f32> = u_xlat13;
            let x_2318 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2316.z, x_2316.w, x_2316.x, x_2316.z) + vec4<f32>(x_2318.z, x_2318.w, x_2318.x, x_2318.z));
            let x_2322 : f32 = u_xlat15.y;
            u_xlat14.z = x_2322;
            let x_2325 : f32 = u_xlat61.y;
            u_xlat14.w = x_2325;
            let x_2328 : f32 = u_xlat13.y;
            u_xlat16.z = x_2328;
            let x_2331 : f32 = u_xlat12.z;
            u_xlat16.w = x_2331;
            let x_2333 : vec4<f32> = u_xlat14;
            let x_2335 : vec4<f32> = u_xlat16;
            let x_2337 : vec3<f32> = (vec3<f32>(x_2333.z, x_2333.y, x_2333.w) + vec3<f32>(x_2335.z, x_2335.y, x_2335.w));
            let x_2338 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
            let x_2340 : vec4<f32> = u_xlat13;
            let x_2342 : vec4<f32> = u_xlat17;
            let x_2344 : vec3<f32> = (vec3<f32>(x_2340.x, x_2340.z, x_2340.w) / vec3<f32>(x_2342.z, x_2342.w, x_2342.y));
            let x_2345 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
            let x_2347 : vec4<f32> = u_xlat13;
            let x_2349 : vec3<f32> = (vec3<f32>(x_2347.x, x_2347.y, x_2347.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2350 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
            let x_2352 : vec4<f32> = u_xlat16;
            let x_2354 : vec4<f32> = u_xlat12;
            let x_2356 : vec3<f32> = (vec3<f32>(x_2352.z, x_2352.y, x_2352.w) / vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
            let x_2357 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
            let x_2359 : vec4<f32> = u_xlat14;
            let x_2361 : vec3<f32> = (vec3<f32>(x_2359.x, x_2359.y, x_2359.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2362 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat13;
            let x_2367 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2369 : vec3<f32> = (vec3<f32>(x_2364.y, x_2364.x, x_2364.z) * vec3<f32>(x_2367.x, x_2367.x, x_2367.x));
            let x_2370 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
            let x_2372 : vec4<f32> = u_xlat14;
            let x_2375 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2377 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) * vec3<f32>(x_2375.y, x_2375.y, x_2375.y));
            let x_2378 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
            let x_2381 : f32 = u_xlat14.x;
            u_xlat13.w = x_2381;
            let x_2383 : vec4<f32> = u_xlat11;
            let x_2386 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2389 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2383.x, x_2383.y, x_2383.x, x_2383.y) * vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y)) + vec4<f32>(x_2389.y, x_2389.w, x_2389.x, x_2389.w));
            let x_2392 : vec4<f32> = u_xlat11;
            let x_2395 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2398 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2392.x, x_2392.y) * vec2<f32>(x_2395.x, x_2395.y)) + vec2<f32>(x_2398.z, x_2398.w));
            let x_2402 : f32 = u_xlat13.y;
            u_xlat14.w = x_2402;
            let x_2404 : vec4<f32> = u_xlat14;
            let x_2405 : vec2<f32> = vec2<f32>(x_2404.y, x_2404.z);
            let x_2406 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2406.x, x_2405.x, x_2406.z, x_2405.y);
            let x_2408 : vec4<f32> = u_xlat11;
            let x_2411 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2414 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2408.x, x_2408.y, x_2408.x, x_2408.y) * vec4<f32>(x_2411.x, x_2411.y, x_2411.x, x_2411.y)) + vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2414.y));
            let x_2417 : vec4<f32> = u_xlat11;
            let x_2420 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2423 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2417.x, x_2417.y, x_2417.x, x_2417.y) * vec4<f32>(x_2420.x, x_2420.y, x_2420.x, x_2420.y)) + vec4<f32>(x_2423.w, x_2423.y, x_2423.w, x_2423.z));
            let x_2426 : vec4<f32> = u_xlat11;
            let x_2429 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2432 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2426.x, x_2426.y, x_2426.x, x_2426.y) * vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y)) + vec4<f32>(x_2432.x, x_2432.w, x_2432.z, x_2432.w));
            let x_2435 : vec4<f32> = u_xlat12;
            let x_2437 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2435.x, x_2435.x, x_2435.x, x_2435.y) * vec4<f32>(x_2437.z, x_2437.w, x_2437.y, x_2437.z));
            let x_2441 : vec4<f32> = u_xlat12;
            let x_2443 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2441.y, x_2441.y, x_2441.z, x_2441.z) * x_2443);
            let x_2447 : f32 = u_xlat12.z;
            let x_2449 : f32 = u_xlat17.y;
            u_xlat85 = (x_2447 * x_2449);
            let x_2452 : vec4<f32> = u_xlat15;
            let x_2453 : vec2<f32> = vec2<f32>(x_2452.x, x_2452.y);
            let x_2455 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2453.x, x_2453.y, x_2455);
            let x_2462 : vec3<f32> = txVec34;
            let x_2464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2462.xy, x_2462.z);
            u_xlat11.x = x_2464;
            let x_2467 : vec4<f32> = u_xlat15;
            let x_2468 : vec2<f32> = vec2<f32>(x_2467.z, x_2467.w);
            let x_2470 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2468.x, x_2468.y, x_2470);
            let x_2478 : vec3<f32> = txVec35;
            let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
            u_xlat36 = x_2480;
            let x_2481 : f32 = u_xlat36;
            let x_2483 : f32 = u_xlat18.y;
            u_xlat36 = (x_2481 * x_2483);
            let x_2486 : f32 = u_xlat18.x;
            let x_2488 : f32 = u_xlat11.x;
            let x_2490 : f32 = u_xlat36;
            u_xlat11.x = ((x_2486 * x_2488) + x_2490);
            let x_2494 : vec2<f32> = u_xlat61;
            let x_2496 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2494.x, x_2494.y, x_2496);
            let x_2503 : vec3<f32> = txVec36;
            let x_2505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2503.xy, x_2503.z);
            u_xlat36 = x_2505;
            let x_2507 : f32 = u_xlat18.z;
            let x_2508 : f32 = u_xlat36;
            let x_2511 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2507 * x_2508) + x_2511);
            let x_2515 : vec4<f32> = u_xlat14;
            let x_2516 : vec2<f32> = vec2<f32>(x_2515.x, x_2515.y);
            let x_2518 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2516.x, x_2516.y, x_2518);
            let x_2525 : vec3<f32> = txVec37;
            let x_2527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2525.xy, x_2525.z);
            u_xlat36 = x_2527;
            let x_2529 : f32 = u_xlat18.w;
            let x_2530 : f32 = u_xlat36;
            let x_2533 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2529 * x_2530) + x_2533);
            let x_2537 : vec4<f32> = u_xlat16;
            let x_2538 : vec2<f32> = vec2<f32>(x_2537.x, x_2537.y);
            let x_2540 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2547 : vec3<f32> = txVec38;
            let x_2549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2547.xy, x_2547.z);
            u_xlat36 = x_2549;
            let x_2551 : f32 = u_xlat19.x;
            let x_2552 : f32 = u_xlat36;
            let x_2555 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2551 * x_2552) + x_2555);
            let x_2559 : vec4<f32> = u_xlat16;
            let x_2560 : vec2<f32> = vec2<f32>(x_2559.z, x_2559.w);
            let x_2562 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2560.x, x_2560.y, x_2562);
            let x_2569 : vec3<f32> = txVec39;
            let x_2571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2569.xy, x_2569.z);
            u_xlat36 = x_2571;
            let x_2573 : f32 = u_xlat19.y;
            let x_2574 : f32 = u_xlat36;
            let x_2577 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2573 * x_2574) + x_2577);
            let x_2581 : vec4<f32> = u_xlat14;
            let x_2582 : vec2<f32> = vec2<f32>(x_2581.z, x_2581.w);
            let x_2584 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2582.x, x_2582.y, x_2584);
            let x_2591 : vec3<f32> = txVec40;
            let x_2593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2591.xy, x_2591.z);
            u_xlat36 = x_2593;
            let x_2595 : f32 = u_xlat19.z;
            let x_2596 : f32 = u_xlat36;
            let x_2599 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2595 * x_2596) + x_2599);
            let x_2603 : vec4<f32> = u_xlat13;
            let x_2604 : vec2<f32> = vec2<f32>(x_2603.x, x_2603.y);
            let x_2606 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2604.x, x_2604.y, x_2606);
            let x_2613 : vec3<f32> = txVec41;
            let x_2615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2613.xy, x_2613.z);
            u_xlat36 = x_2615;
            let x_2617 : f32 = u_xlat19.w;
            let x_2618 : f32 = u_xlat36;
            let x_2621 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2617 * x_2618) + x_2621);
            let x_2625 : vec4<f32> = u_xlat13;
            let x_2626 : vec2<f32> = vec2<f32>(x_2625.z, x_2625.w);
            let x_2628 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
            let x_2635 : vec3<f32> = txVec42;
            let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
            u_xlat36 = x_2637;
            let x_2638 : f32 = u_xlat85;
            let x_2639 : f32 = u_xlat36;
            let x_2642 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2638 * x_2639) + x_2642);
          } else {
            let x_2645 : vec4<f32> = u_xlat10;
            let x_2648 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2651 : vec2<f32> = ((vec2<f32>(x_2645.x, x_2645.y) * vec2<f32>(x_2648.z, x_2648.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2652 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2651.x, x_2651.y, x_2652.z, x_2652.w);
            let x_2654 : vec4<f32> = u_xlat11;
            let x_2656 : vec2<f32> = floor(vec2<f32>(x_2654.x, x_2654.y));
            let x_2657 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2656.x, x_2656.y, x_2657.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat10;
            let x_2662 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2665 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2659.x, x_2659.y) * vec2<f32>(x_2662.z, x_2662.w)) + -(vec2<f32>(x_2665.x, x_2665.y)));
            let x_2669 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2669.x, x_2669.x, x_2669.y, x_2669.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2672 : vec4<f32> = u_xlat12;
            let x_2674 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2672.x, x_2672.x, x_2672.z, x_2672.z) * vec4<f32>(x_2674.x, x_2674.x, x_2674.z, x_2674.z));
            let x_2677 : vec4<f32> = u_xlat13;
            let x_2679 : vec2<f32> = (vec2<f32>(x_2677.y, x_2677.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2680 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2680.x, x_2679.x, x_2680.z, x_2679.y);
            let x_2682 : vec4<f32> = u_xlat13;
            let x_2685 : vec2<f32> = u_xlat61;
            let x_2687 : vec2<f32> = ((vec2<f32>(x_2682.x, x_2682.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2685));
            let x_2688 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2687.x, x_2688.y, x_2687.y, x_2688.w);
            let x_2690 : vec2<f32> = u_xlat61;
            let x_2692 : vec2<f32> = (-(x_2690) + vec2<f32>(1.0f, 1.0f));
            let x_2693 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
            let x_2695 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2695, vec2<f32>(0.0f, 0.0f));
            let x_2697 : vec2<f32> = u_xlat63;
            let x_2699 : vec2<f32> = u_xlat63;
            let x_2701 : vec4<f32> = u_xlat13;
            let x_2703 : vec2<f32> = ((-(x_2697) * x_2699) + vec2<f32>(x_2701.x, x_2701.y));
            let x_2704 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2703.x, x_2703.y, x_2704.z, x_2704.w);
            let x_2706 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2706, vec2<f32>(0.0f, 0.0f));
            let x_2709 : vec2<f32> = u_xlat63;
            let x_2711 : vec2<f32> = u_xlat63;
            let x_2713 : vec4<f32> = u_xlat12;
            let x_2715 : vec2<f32> = ((-(x_2709) * x_2711) + vec2<f32>(x_2713.y, x_2713.w));
            let x_2716 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2715.x, x_2716.y, x_2715.y);
            let x_2718 : vec4<f32> = u_xlat13;
            let x_2721 : vec2<f32> = (vec2<f32>(x_2718.x, x_2718.y) + vec2<f32>(2.0f, 2.0f));
            let x_2722 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2721.x, x_2721.y, x_2722.z, x_2722.w);
            let x_2724 : vec3<f32> = u_xlat37;
            let x_2726 : vec2<f32> = (vec2<f32>(x_2724.x, x_2724.z) + vec2<f32>(2.0f, 2.0f));
            let x_2727 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2727.x, x_2726.x, x_2727.z, x_2726.y);
            let x_2730 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2730 * 0.08163200318813323975f);
            let x_2733 : vec4<f32> = u_xlat12;
            let x_2736 : vec3<f32> = (vec3<f32>(x_2733.z, x_2733.x, x_2733.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2737 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
            let x_2739 : vec4<f32> = u_xlat13;
            let x_2741 : vec2<f32> = (vec2<f32>(x_2739.x, x_2739.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2742 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
            let x_2745 : f32 = u_xlat16.y;
            u_xlat15.x = x_2745;
            let x_2747 : vec2<f32> = u_xlat61;
            let x_2750 : vec2<f32> = ((vec2<f32>(x_2747.x, x_2747.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2751 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2751.x, x_2750.x, x_2751.z, x_2750.y);
            let x_2753 : vec2<f32> = u_xlat61;
            let x_2756 : vec2<f32> = ((vec2<f32>(x_2753.x, x_2753.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2757 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2756.x, x_2757.y, x_2756.y, x_2757.w);
            let x_2760 : f32 = u_xlat12.x;
            u_xlat13.y = x_2760;
            let x_2763 : f32 = u_xlat14.y;
            u_xlat13.w = x_2763;
            let x_2765 : vec4<f32> = u_xlat13;
            let x_2766 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2765 + x_2766);
            let x_2768 : vec2<f32> = u_xlat61;
            let x_2771 : vec2<f32> = ((vec2<f32>(x_2768.y, x_2768.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2772 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2772.x, x_2771.x, x_2772.z, x_2771.y);
            let x_2774 : vec2<f32> = u_xlat61;
            let x_2777 : vec2<f32> = ((vec2<f32>(x_2774.y, x_2774.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2778 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2777.x, x_2778.y, x_2777.y, x_2778.w);
            let x_2781 : f32 = u_xlat12.y;
            u_xlat14.y = x_2781;
            let x_2783 : vec4<f32> = u_xlat14;
            let x_2784 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2783 + x_2784);
            let x_2786 : vec4<f32> = u_xlat13;
            let x_2787 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2786 / x_2787);
            let x_2789 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2789 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2791 : vec4<f32> = u_xlat14;
            let x_2792 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2791 / x_2792);
            let x_2794 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2794 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2796 : vec4<f32> = u_xlat13;
            let x_2799 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2796.w, x_2796.x, x_2796.y, x_2796.z) * vec4<f32>(x_2799.x, x_2799.x, x_2799.x, x_2799.x));
            let x_2802 : vec4<f32> = u_xlat14;
            let x_2805 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2802.x, x_2802.w, x_2802.y, x_2802.z) * vec4<f32>(x_2805.y, x_2805.y, x_2805.y, x_2805.y));
            let x_2808 : vec4<f32> = u_xlat13;
            let x_2809 : vec3<f32> = vec3<f32>(x_2808.y, x_2808.z, x_2808.w);
            let x_2810 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2809.x, x_2810.y, x_2809.y, x_2809.z);
            let x_2813 : f32 = u_xlat14.x;
            u_xlat16.y = x_2813;
            let x_2815 : vec4<f32> = u_xlat11;
            let x_2818 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2815.x, x_2815.y, x_2815.x, x_2815.y) * vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y)) + vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat11;
            let x_2827 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2830 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2824.x, x_2824.y) * vec2<f32>(x_2827.x, x_2827.y)) + vec2<f32>(x_2830.w, x_2830.y));
            let x_2834 : f32 = u_xlat16.y;
            u_xlat13.y = x_2834;
            let x_2837 : f32 = u_xlat14.z;
            u_xlat16.y = x_2837;
            let x_2839 : vec4<f32> = u_xlat11;
            let x_2842 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2845 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2839.x, x_2839.y, x_2839.x, x_2839.y) * vec4<f32>(x_2842.x, x_2842.y, x_2842.x, x_2842.y)) + vec4<f32>(x_2845.x, x_2845.y, x_2845.z, x_2845.y));
            let x_2848 : vec4<f32> = u_xlat11;
            let x_2851 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat16;
            let x_2856 : vec2<f32> = ((vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(x_2851.x, x_2851.y)) + vec2<f32>(x_2854.w, x_2854.y));
            let x_2857 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2856.x, x_2856.y, x_2857.z, x_2857.w);
            let x_2860 : f32 = u_xlat16.y;
            u_xlat13.z = x_2860;
            let x_2863 : vec4<f32> = u_xlat11;
            let x_2866 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2863.x, x_2863.y, x_2863.x, x_2863.y) * vec4<f32>(x_2866.x, x_2866.y, x_2866.x, x_2866.y)) + vec4<f32>(x_2869.x, x_2869.y, x_2869.x, x_2869.z));
            let x_2873 : f32 = u_xlat14.w;
            u_xlat16.y = x_2873;
            let x_2876 : vec4<f32> = u_xlat11;
            let x_2879 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2882.y));
            let x_2886 : vec4<f32> = u_xlat11;
            let x_2889 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2892 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2886.x, x_2886.y) * vec2<f32>(x_2889.x, x_2889.y)) + vec2<f32>(x_2892.w, x_2892.y));
            let x_2896 : f32 = u_xlat16.y;
            u_xlat13.w = x_2896;
            let x_2899 : vec4<f32> = u_xlat11;
            let x_2902 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2905 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2899.x, x_2899.y) * vec2<f32>(x_2902.x, x_2902.y)) + vec2<f32>(x_2905.x, x_2905.w));
            let x_2908 : vec4<f32> = u_xlat16;
            let x_2909 : vec3<f32> = vec3<f32>(x_2908.x, x_2908.z, x_2908.w);
            let x_2910 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2909.x, x_2910.y, x_2909.y, x_2909.z);
            let x_2912 : vec4<f32> = u_xlat11;
            let x_2915 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y) * vec4<f32>(x_2915.x, x_2915.y, x_2915.x, x_2915.y)) + vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2918.y));
            let x_2922 : vec4<f32> = u_xlat11;
            let x_2925 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2928 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2922.x, x_2922.y) * vec2<f32>(x_2925.x, x_2925.y)) + vec2<f32>(x_2928.w, x_2928.y));
            let x_2932 : f32 = u_xlat13.x;
            u_xlat14.x = x_2932;
            let x_2934 : vec4<f32> = u_xlat11;
            let x_2937 : vec4<f32> = x_199.x_AdditionalShadowmapSize;
            let x_2940 : vec4<f32> = u_xlat14;
            let x_2942 : vec2<f32> = ((vec2<f32>(x_2934.x, x_2934.y) * vec2<f32>(x_2937.x, x_2937.y)) + vec2<f32>(x_2940.x, x_2940.y));
            let x_2943 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
            let x_2946 : vec4<f32> = u_xlat12;
            let x_2948 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_2946.x, x_2946.x, x_2946.x, x_2946.x) * x_2948);
            let x_2951 : vec4<f32> = u_xlat12;
            let x_2953 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_2951.y, x_2951.y, x_2951.y, x_2951.y) * x_2953);
            let x_2956 : vec4<f32> = u_xlat12;
            let x_2958 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_2956.z, x_2956.z, x_2956.z, x_2956.z) * x_2958);
            let x_2960 : vec4<f32> = u_xlat12;
            let x_2962 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_2960.w, x_2960.w, x_2960.w, x_2960.w) * x_2962);
            let x_2965 : vec4<f32> = u_xlat17;
            let x_2966 : vec2<f32> = vec2<f32>(x_2965.x, x_2965.y);
            let x_2968 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_2966.x, x_2966.y, x_2968);
            let x_2975 : vec3<f32> = txVec43;
            let x_2977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2975.xy, x_2975.z);
            u_xlat85 = x_2977;
            let x_2979 : vec4<f32> = u_xlat17;
            let x_2980 : vec2<f32> = vec2<f32>(x_2979.z, x_2979.w);
            let x_2982 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_2980.x, x_2980.y, x_2982);
            let x_2989 : vec3<f32> = txVec44;
            let x_2991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2989.xy, x_2989.z);
            u_xlat13.x = x_2991;
            let x_2994 : f32 = u_xlat13.x;
            let x_2996 : f32 = u_xlat22.y;
            u_xlat13.x = (x_2994 * x_2996);
            let x_3000 : f32 = u_xlat22.x;
            let x_3001 : f32 = u_xlat85;
            let x_3004 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3000 * x_3001) + x_3004);
            let x_3007 : vec2<f32> = u_xlat61;
            let x_3009 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec45;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat61.x = x_3018;
            let x_3021 : f32 = u_xlat22.z;
            let x_3023 : f32 = u_xlat61.x;
            let x_3025 : f32 = u_xlat85;
            u_xlat85 = ((x_3021 * x_3023) + x_3025);
            let x_3028 : vec4<f32> = u_xlat20;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.x, x_3028.y);
            let x_3031 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3038 : vec3<f32> = txVec46;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat61.x = x_3040;
            let x_3043 : f32 = u_xlat22.w;
            let x_3045 : f32 = u_xlat61.x;
            let x_3047 : f32 = u_xlat85;
            u_xlat85 = ((x_3043 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat18;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
            let x_3053 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec47;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat61.x = x_3062;
            let x_3065 : f32 = u_xlat23.x;
            let x_3067 : f32 = u_xlat61.x;
            let x_3069 : f32 = u_xlat85;
            u_xlat85 = ((x_3065 * x_3067) + x_3069);
            let x_3072 : vec4<f32> = u_xlat18;
            let x_3073 : vec2<f32> = vec2<f32>(x_3072.z, x_3072.w);
            let x_3075 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
            let x_3082 : vec3<f32> = txVec48;
            let x_3084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
            u_xlat61.x = x_3084;
            let x_3087 : f32 = u_xlat23.y;
            let x_3089 : f32 = u_xlat61.x;
            let x_3091 : f32 = u_xlat85;
            u_xlat85 = ((x_3087 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat19;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec49;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat61.x = x_3106;
            let x_3109 : f32 = u_xlat23.z;
            let x_3111 : f32 = u_xlat61.x;
            let x_3113 : f32 = u_xlat85;
            u_xlat85 = ((x_3109 * x_3111) + x_3113);
            let x_3116 : vec4<f32> = u_xlat20;
            let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
            let x_3119 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
            let x_3126 : vec3<f32> = txVec50;
            let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
            u_xlat61.x = x_3128;
            let x_3131 : f32 = u_xlat23.w;
            let x_3133 : f32 = u_xlat61.x;
            let x_3135 : f32 = u_xlat85;
            u_xlat85 = ((x_3131 * x_3133) + x_3135);
            let x_3138 : vec4<f32> = u_xlat21;
            let x_3139 : vec2<f32> = vec2<f32>(x_3138.x, x_3138.y);
            let x_3141 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
            let x_3148 : vec3<f32> = txVec51;
            let x_3150 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
            u_xlat61.x = x_3150;
            let x_3153 : f32 = u_xlat24.x;
            let x_3155 : f32 = u_xlat61.x;
            let x_3157 : f32 = u_xlat85;
            u_xlat85 = ((x_3153 * x_3155) + x_3157);
            let x_3160 : vec4<f32> = u_xlat21;
            let x_3161 : vec2<f32> = vec2<f32>(x_3160.z, x_3160.w);
            let x_3163 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
            let x_3170 : vec3<f32> = txVec52;
            let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
            u_xlat61.x = x_3172;
            let x_3175 : f32 = u_xlat24.y;
            let x_3177 : f32 = u_xlat61.x;
            let x_3179 : f32 = u_xlat85;
            u_xlat85 = ((x_3175 * x_3177) + x_3179);
            let x_3182 : vec2<f32> = u_xlat38;
            let x_3184 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
            let x_3191 : vec3<f32> = txVec53;
            let x_3193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
            u_xlat61.x = x_3193;
            let x_3196 : f32 = u_xlat24.z;
            let x_3198 : f32 = u_xlat61.x;
            let x_3200 : f32 = u_xlat85;
            u_xlat85 = ((x_3196 * x_3198) + x_3200);
            let x_3203 : vec2<f32> = u_xlat69;
            let x_3205 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec54;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat61.x = x_3214;
            let x_3217 : f32 = u_xlat24.w;
            let x_3219 : f32 = u_xlat61.x;
            let x_3221 : f32 = u_xlat85;
            u_xlat85 = ((x_3217 * x_3219) + x_3221);
            let x_3224 : vec4<f32> = u_xlat16;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
            let x_3227 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec55;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat61.x = x_3236;
            let x_3239 : f32 = u_xlat12.x;
            let x_3241 : f32 = u_xlat61.x;
            let x_3243 : f32 = u_xlat85;
            u_xlat85 = ((x_3239 * x_3241) + x_3243);
            let x_3246 : vec4<f32> = u_xlat16;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.z, x_3246.w);
            let x_3249 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec56;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat61.x = x_3258;
            let x_3261 : f32 = u_xlat12.y;
            let x_3263 : f32 = u_xlat61.x;
            let x_3265 : f32 = u_xlat85;
            u_xlat85 = ((x_3261 * x_3263) + x_3265);
            let x_3268 : vec2<f32> = u_xlat64;
            let x_3270 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec57;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat61.x = x_3279;
            let x_3282 : f32 = u_xlat12.z;
            let x_3284 : f32 = u_xlat61.x;
            let x_3286 : f32 = u_xlat85;
            u_xlat85 = ((x_3282 * x_3284) + x_3286);
            let x_3289 : vec4<f32> = u_xlat11;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.x, x_3289.y);
            let x_3292 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec58;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat11.x = x_3301;
            let x_3304 : f32 = u_xlat12.w;
            let x_3306 : f32 = u_xlat11.x;
            let x_3308 : f32 = u_xlat85;
            u_xlat84 = ((x_3304 * x_3306) + x_3308);
          }
        }
      } else {
        let x_3312 : vec4<f32> = u_xlat10;
        let x_3313 : vec2<f32> = vec2<f32>(x_3312.x, x_3312.y);
        let x_3315 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
        let x_3322 : vec3<f32> = txVec59;
        let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
        u_xlat84 = x_3324;
      }
      let x_3325 : i32 = u_xlati80;
      let x_3327 : f32 = x_199.x_AdditionalShadowParams[x_3325].x;
      u_xlat10.x = (1.0f + -(x_3327));
      let x_3331 : f32 = u_xlat84;
      let x_3332 : i32 = u_xlati80;
      let x_3334 : f32 = x_199.x_AdditionalShadowParams[x_3332].x;
      let x_3337 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3331 * x_3334) + x_3337);
      let x_3340 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3340);
      let x_3345 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3345 >= 1.0f);
      let x_3347 : bool = u_xlatb35;
      let x_3349 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3347 | x_3349);
      let x_3353 : bool = u_xlatb10.x;
      let x_3354 : f32 = u_xlat84;
      u_xlat84 = select(x_3354, 1.0f, x_3353);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3357 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3357) + 1.0f);
    let x_3361 : f32 = u_xlat1;
    let x_3363 : f32 = u_xlat10.x;
    let x_3365 : f32 = u_xlat84;
    u_xlat84 = ((x_3361 * x_3363) + x_3365);
    let x_3367 : f32 = u_xlat81;
    let x_3368 : f32 = u_xlat84;
    u_xlat81 = (x_3367 * x_3368);
    let x_3370 : vec3<f32> = u_xlat26;
    let x_3371 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3370, vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
    let x_3374 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3374, 0.0f, 1.0f);
    let x_3376 : f32 = u_xlat81;
    let x_3377 : f32 = u_xlat84;
    u_xlat81 = (x_3376 * x_3377);
    let x_3379 : f32 = u_xlat81;
    let x_3381 : i32 = u_xlati80;
    let x_3383 : vec4<f32> = x_1872.x_AdditionalLightsColor[x_3381];
    let x_3385 : vec3<f32> = (vec3<f32>(x_3379, x_3379, x_3379) * vec3<f32>(x_3383.x, x_3383.y, x_3383.z));
    let x_3386 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3385.x, x_3385.y, x_3385.z, x_3386.w);
    let x_3388 : vec4<f32> = u_xlat8;
    let x_3390 : f32 = u_xlat83;
    let x_3393 : vec4<f32> = u_xlat5;
    let x_3395 : vec3<f32> = ((vec3<f32>(x_3388.x, x_3388.y, x_3388.z) * vec3<f32>(x_3390, x_3390, x_3390)) + vec3<f32>(x_3393.x, x_3393.y, x_3393.z));
    let x_3396 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3395.x, x_3395.y, x_3395.z, x_3396.w);
    let x_3398 : vec4<f32> = u_xlat8;
    let x_3400 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3398.x, x_3398.y, x_3398.z), vec3<f32>(x_3400.x, x_3400.y, x_3400.z));
    let x_3403 : f32 = u_xlat80;
    u_xlat80 = max(x_3403, 1.17549435e-38f);
    let x_3405 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3405);
    let x_3407 : f32 = u_xlat80;
    let x_3409 : vec4<f32> = u_xlat8;
    let x_3411 : vec3<f32> = (vec3<f32>(x_3407, x_3407, x_3407) * vec3<f32>(x_3409.x, x_3409.y, x_3409.z));
    let x_3412 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3411.x, x_3411.y, x_3411.z, x_3412.w);
    let x_3414 : vec3<f32> = u_xlat26;
    let x_3415 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(x_3414, vec3<f32>(x_3415.x, x_3415.y, x_3415.z));
    let x_3418 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3418, 0.0f, 1.0f);
    let x_3420 : vec4<f32> = u_xlat9;
    let x_3422 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3420.x, x_3420.y, x_3420.z), vec3<f32>(x_3422.x, x_3422.y, x_3422.z));
    let x_3425 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3425, 0.0f, 1.0f);
    let x_3427 : f32 = u_xlat80;
    let x_3428 : f32 = u_xlat80;
    u_xlat80 = (x_3427 * x_3428);
    let x_3430 : f32 = u_xlat80;
    let x_3432 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3430 * x_3432) + 1.00001001358032226562f);
    let x_3435 : f32 = u_xlat81;
    let x_3436 : f32 = u_xlat81;
    u_xlat81 = (x_3435 * x_3436);
    let x_3438 : f32 = u_xlat80;
    let x_3439 : f32 = u_xlat80;
    u_xlat80 = (x_3438 * x_3439);
    let x_3441 : f32 = u_xlat81;
    u_xlat81 = max(x_3441, 0.10000000149011611938f);
    let x_3443 : f32 = u_xlat80;
    let x_3444 : f32 = u_xlat81;
    u_xlat80 = (x_3443 * x_3444);
    let x_3447 : f32 = u_xlat3.x;
    let x_3448 : f32 = u_xlat80;
    u_xlat80 = (x_3447 * x_3448);
    let x_3450 : f32 = u_xlat4;
    let x_3451 : f32 = u_xlat80;
    u_xlat80 = (x_3450 / x_3451);
    let x_3453 : vec4<f32> = u_xlat0;
    let x_3455 : f32 = u_xlat80;
    let x_3458 : vec3<f32> = u_xlat28;
    let x_3459 : vec3<f32> = ((vec3<f32>(x_3453.x, x_3453.y, x_3453.z) * vec3<f32>(x_3455, x_3455, x_3455)) + x_3458);
    let x_3460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3459.x, x_3459.y, x_3459.z, x_3460.w);
    let x_3462 : vec4<f32> = u_xlat8;
    let x_3464 : vec4<f32> = u_xlat10;
    let x_3467 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3462.x, x_3462.y, x_3462.z) * vec3<f32>(x_3464.x, x_3464.y, x_3464.z)) + x_3467);

    continuing {
      let x_3469 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3469 + bitcast<u32>(1i));
    }
  }
  let x_3471 : vec3<f32> = u_xlat32;
  let x_3472 : vec4<f32> = u_xlat6;
  let x_3475 : vec4<f32> = u_xlat2;
  let x_3477 : vec3<f32> = ((x_3471 * vec3<f32>(x_3472.x, x_3472.y, x_3472.z)) + vec3<f32>(x_3475.x, x_3475.y, x_3475.z));
  let x_3478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3477.x, x_3477.y, x_3477.z, x_3478.w);
  let x_3482 : vec3<f32> = u_xlat29;
  let x_3483 : vec4<f32> = u_xlat0;
  let x_3485 : vec3<f32> = (x_3482 + vec3<f32>(x_3483.x, x_3483.y, x_3483.z));
  let x_3486 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3486.w);
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


