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

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat27 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb54 : bool;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat54 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1649 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_1880 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2031 : f32;
  var x_2042 : f32;
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
  var x_3372 : f32;
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
  u_xlat26.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_61);
  let x_64 : vec3<f32> = u_xlat26;
  let x_66 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_64.x, x_64.x, x_64.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
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
  u_xlat27 = vec3<f32>(x_137.x, x_137.y, x_137.z);
  let x_139 : vec4<f32> = u_xlat3;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec3<f32> = u_xlat26;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_146, vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_152 : f32 = u_xlat3.x;
  u_xlat3.x = (x_152 + 0.5f);
  let x_156 : vec3<f32> = u_xlat27;
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_162, 0.00009999999747378752f);
  let x_166 : vec3<f32> = u_xlat27;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_166 / vec3<f32>(x_167.x, x_167.x, x_167.x));
  let x_170 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_170) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_178 : f32 = u_xlat3.x;
  u_xlat28 = (-(x_178) + 1.0f);
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
  u_xlat4.x = (x_211 * x_212);
  let x_216 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_216, 0.0078125f);
  let x_222 : f32 = u_xlat4.x;
  let x_224 : f32 = u_xlat4.x;
  u_xlat29 = (x_222 * x_224);
  let x_228 : f32 = u_xlat0.w;
  let x_229 : f32 = u_xlat28;
  u_xlat75 = (x_228 + x_229);
  let x_231 : f32 = u_xlat75;
  u_xlat75 = clamp(x_231, 0.0f, 1.0f);
  let x_234 : f32 = u_xlat4.x;
  u_xlat28 = ((x_234 * 4.0f) + 2.0f);
  let x_251 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb54 = (0.0f < x_251);
  let x_253 : bool = u_xlatb54;
  if (x_253) {
    let x_257 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb54 = (x_257 == 1.0f);
    let x_259 : bool = u_xlatb54;
    if (x_259) {
      let x_264 : vec4<f32> = vs_TEXCOORD8;
      let x_268 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_264.x, x_264.y, x_264.x, x_264.y) + x_268);
      let x_272 : vec4<f32> = u_xlat5;
      let x_273 : vec2<f32> = vec2<f32>(x_272.x, x_272.y);
      let x_275 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_273.x, x_273.y, x_275);
      let x_288 : vec3<f32> = txVec0;
      let x_290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_288.xy, x_288.z);
      u_xlat6.x = x_290;
      let x_293 : vec4<f32> = u_xlat5;
      let x_294 : vec2<f32> = vec2<f32>(x_293.z, x_293.w);
      let x_296 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_294.x, x_294.y, x_296);
      let x_303 : vec3<f32> = txVec1;
      let x_305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_303.xy, x_303.z);
      u_xlat6.y = x_305;
      let x_307 : vec4<f32> = vs_TEXCOORD8;
      let x_311 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_307.x, x_307.y, x_307.x, x_307.y) + x_311);
      let x_314 : vec4<f32> = u_xlat5;
      let x_315 : vec2<f32> = vec2<f32>(x_314.x, x_314.y);
      let x_317 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_315.x, x_315.y, x_317);
      let x_324 : vec3<f32> = txVec2;
      let x_326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_324.xy, x_324.z);
      u_xlat6.z = x_326;
      let x_329 : vec4<f32> = u_xlat5;
      let x_330 : vec2<f32> = vec2<f32>(x_329.z, x_329.w);
      let x_332 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_330.x, x_330.y, x_332);
      let x_339 : vec3<f32> = txVec3;
      let x_341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_339.xy, x_339.z);
      u_xlat6.w = x_341;
      let x_344 : vec4<f32> = u_xlat6;
      u_xlat54 = dot(x_344, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_351 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb79 = (x_351 == 2.0f);
      let x_353 : bool = u_xlatb79;
      if (x_353) {
        let x_356 : vec4<f32> = vs_TEXCOORD8;
        let x_360 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_364 : vec2<f32> = ((vec2<f32>(x_356.x, x_356.y) * vec2<f32>(x_360.z, x_360.w)) + vec2<f32>(0.5f, 0.5f));
        let x_365 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
        let x_367 : vec4<f32> = u_xlat5;
        let x_369 : vec2<f32> = floor(vec2<f32>(x_367.x, x_367.y));
        let x_370 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_374 : vec4<f32> = vs_TEXCOORD8;
        let x_377 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_380 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_377.z, x_377.w)) + -(vec2<f32>(x_380.x, x_380.y)));
        let x_384 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_384.x, x_384.x, x_384.y, x_384.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_389 : vec4<f32> = u_xlat6;
        let x_391 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_389.x, x_389.x, x_389.z, x_389.z) * vec4<f32>(x_391.x, x_391.x, x_391.z, x_391.z));
        let x_394 : vec4<f32> = u_xlat7;
        let x_398 : vec2<f32> = (vec2<f32>(x_394.y, x_394.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_399 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_398.x, x_399.y, x_398.y, x_399.w);
        let x_401 : vec4<f32> = u_xlat7;
        let x_404 : vec2<f32> = u_xlat55;
        let x_406 : vec2<f32> = ((vec2<f32>(x_401.x, x_401.z) * vec2<f32>(0.5f, 0.5f)) + -(x_404));
        let x_407 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
        let x_410 : vec2<f32> = u_xlat55;
        u_xlat57 = (-(x_410) + vec2<f32>(1.0f, 1.0f));
        let x_415 : vec2<f32> = u_xlat55;
        let x_417 : vec2<f32> = min(x_415, vec2<f32>(0.0f, 0.0f));
        let x_418 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_420 : vec4<f32> = u_xlat8;
        let x_423 : vec4<f32> = u_xlat8;
        let x_426 : vec2<f32> = u_xlat57;
        let x_427 : vec2<f32> = ((-(vec2<f32>(x_420.x, x_420.y)) * vec2<f32>(x_423.x, x_423.y)) + x_426);
        let x_428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
        let x_430 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_430, vec2<f32>(0.0f, 0.0f));
        let x_432 : vec2<f32> = u_xlat55;
        let x_434 : vec2<f32> = u_xlat55;
        let x_436 : vec4<f32> = u_xlat6;
        u_xlat55 = ((-(x_432) * x_434) + vec2<f32>(x_436.y, x_436.w));
        let x_439 : vec4<f32> = u_xlat8;
        let x_441 : vec2<f32> = (vec2<f32>(x_439.x, x_439.y) + vec2<f32>(1.0f, 1.0f));
        let x_442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_444 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_444 + vec2<f32>(1.0f, 1.0f));
        let x_447 : vec4<f32> = u_xlat7;
        let x_451 : vec2<f32> = (vec2<f32>(x_447.x, x_447.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_452 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
        let x_454 : vec2<f32> = u_xlat57;
        let x_455 : vec2<f32> = (x_454 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_456 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_458 : vec4<f32> = u_xlat8;
        let x_460 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_461 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_464 : vec2<f32> = u_xlat55;
        let x_465 : vec2<f32> = (x_464 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_466 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_468 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_472 : f32 = u_xlat8.x;
        u_xlat9.z = x_472;
        let x_475 : f32 = u_xlat55.x;
        u_xlat9.w = x_475;
        let x_478 : f32 = u_xlat10.x;
        u_xlat7.z = x_478;
        let x_481 : f32 = u_xlat6.x;
        u_xlat7.w = x_481;
        let x_484 : vec4<f32> = u_xlat7;
        let x_486 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_484.z, x_484.w, x_484.x, x_484.z) + vec4<f32>(x_486.z, x_486.w, x_486.x, x_486.z));
        let x_490 : f32 = u_xlat9.y;
        u_xlat8.z = x_490;
        let x_493 : f32 = u_xlat55.y;
        u_xlat8.w = x_493;
        let x_496 : f32 = u_xlat7.y;
        u_xlat10.z = x_496;
        let x_499 : f32 = u_xlat6.z;
        u_xlat10.w = x_499;
        let x_501 : vec4<f32> = u_xlat8;
        let x_503 : vec4<f32> = u_xlat10;
        let x_505 : vec3<f32> = (vec3<f32>(x_501.z, x_501.y, x_501.w) + vec3<f32>(x_503.z, x_503.y, x_503.w));
        let x_506 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat7;
        let x_510 : vec4<f32> = u_xlat11;
        let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.z, x_508.w) / vec3<f32>(x_510.z, x_510.w, x_510.y));
        let x_513 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat7;
        let x_520 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_521 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
        let x_523 : vec4<f32> = u_xlat10;
        let x_525 : vec4<f32> = u_xlat6;
        let x_527 : vec3<f32> = (vec3<f32>(x_523.z, x_523.y, x_523.w) / vec3<f32>(x_525.x, x_525.y, x_525.z));
        let x_528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
        let x_530 : vec4<f32> = u_xlat8;
        let x_532 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_533 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_538 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_540 : vec3<f32> = (vec3<f32>(x_535.y, x_535.x, x_535.z) * vec3<f32>(x_538.x, x_538.x, x_538.x));
        let x_541 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat8;
        let x_546 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_548 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) * vec3<f32>(x_546.y, x_546.y, x_546.y));
        let x_549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_552 : f32 = u_xlat8.x;
        u_xlat7.w = x_552;
        let x_554 : vec4<f32> = u_xlat5;
        let x_557 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y) * vec4<f32>(x_557.x, x_557.y, x_557.x, x_557.y)) + vec4<f32>(x_560.y, x_560.w, x_560.x, x_560.w));
        let x_563 : vec4<f32> = u_xlat5;
        let x_566 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_569 : vec4<f32> = u_xlat7;
        u_xlat55 = ((vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_566.x, x_566.y)) + vec2<f32>(x_569.z, x_569.w));
        let x_573 : f32 = u_xlat7.y;
        u_xlat8.w = x_573;
        let x_575 : vec4<f32> = u_xlat8;
        let x_576 : vec2<f32> = vec2<f32>(x_575.y, x_575.z);
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_577.x, x_576.x, x_577.z, x_576.y);
        let x_579 : vec4<f32> = u_xlat5;
        let x_582 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y) * vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y)) + vec4<f32>(x_585.x, x_585.y, x_585.z, x_585.y));
        let x_588 : vec4<f32> = u_xlat5;
        let x_591 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y) * vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y)) + vec4<f32>(x_594.w, x_594.y, x_594.w, x_594.z));
        let x_597 : vec4<f32> = u_xlat5;
        let x_600 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y) * vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y)) + vec4<f32>(x_603.x, x_603.w, x_603.z, x_603.w));
        let x_607 : vec4<f32> = u_xlat6;
        let x_609 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_607.x, x_607.x, x_607.x, x_607.y) * vec4<f32>(x_609.z, x_609.w, x_609.y, x_609.z));
        let x_613 : vec4<f32> = u_xlat6;
        let x_615 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_613.y, x_613.y, x_613.z, x_613.z) * x_615);
        let x_619 : f32 = u_xlat6.z;
        let x_621 : f32 = u_xlat11.y;
        u_xlat79 = (x_619 * x_621);
        let x_624 : vec4<f32> = u_xlat9;
        let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
        let x_627 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_625.x, x_625.y, x_627);
        let x_634 : vec3<f32> = txVec4;
        let x_636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_634.xy, x_634.z);
        u_xlat5.x = x_636;
        let x_639 : vec4<f32> = u_xlat9;
        let x_640 : vec2<f32> = vec2<f32>(x_639.z, x_639.w);
        let x_642 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_640.x, x_640.y, x_642);
        let x_650 : vec3<f32> = txVec5;
        let x_652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_650.xy, x_650.z);
        u_xlat30 = x_652;
        let x_653 : f32 = u_xlat30;
        let x_655 : f32 = u_xlat12.y;
        u_xlat30 = (x_653 * x_655);
        let x_658 : f32 = u_xlat12.x;
        let x_660 : f32 = u_xlat5.x;
        let x_662 : f32 = u_xlat30;
        u_xlat5.x = ((x_658 * x_660) + x_662);
        let x_666 : vec2<f32> = u_xlat55;
        let x_668 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_666.x, x_666.y, x_668);
        let x_675 : vec3<f32> = txVec6;
        let x_677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_675.xy, x_675.z);
        u_xlat30 = x_677;
        let x_679 : f32 = u_xlat12.z;
        let x_680 : f32 = u_xlat30;
        let x_683 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_679 * x_680) + x_683);
        let x_687 : vec4<f32> = u_xlat8;
        let x_688 : vec2<f32> = vec2<f32>(x_687.x, x_687.y);
        let x_690 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_688.x, x_688.y, x_690);
        let x_697 : vec3<f32> = txVec7;
        let x_699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_697.xy, x_697.z);
        u_xlat30 = x_699;
        let x_701 : f32 = u_xlat12.w;
        let x_702 : f32 = u_xlat30;
        let x_705 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_701 * x_702) + x_705);
        let x_709 : vec4<f32> = u_xlat10;
        let x_710 : vec2<f32> = vec2<f32>(x_709.x, x_709.y);
        let x_712 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_710.x, x_710.y, x_712);
        let x_719 : vec3<f32> = txVec8;
        let x_721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_719.xy, x_719.z);
        u_xlat30 = x_721;
        let x_723 : f32 = u_xlat13.x;
        let x_724 : f32 = u_xlat30;
        let x_727 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_723 * x_724) + x_727);
        let x_731 : vec4<f32> = u_xlat10;
        let x_732 : vec2<f32> = vec2<f32>(x_731.z, x_731.w);
        let x_734 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_741 : vec3<f32> = txVec9;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_741.xy, x_741.z);
        u_xlat30 = x_743;
        let x_745 : f32 = u_xlat13.y;
        let x_746 : f32 = u_xlat30;
        let x_749 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_745 * x_746) + x_749);
        let x_753 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = vec2<f32>(x_753.z, x_753.w);
        let x_756 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec10;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_763.xy, x_763.z);
        u_xlat30 = x_765;
        let x_767 : f32 = u_xlat13.z;
        let x_768 : f32 = u_xlat30;
        let x_771 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_767 * x_768) + x_771);
        let x_775 : vec4<f32> = u_xlat7;
        let x_776 : vec2<f32> = vec2<f32>(x_775.x, x_775.y);
        let x_778 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec11;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
        u_xlat30 = x_787;
        let x_789 : f32 = u_xlat13.w;
        let x_790 : f32 = u_xlat30;
        let x_793 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_789 * x_790) + x_793);
        let x_797 : vec4<f32> = u_xlat7;
        let x_798 : vec2<f32> = vec2<f32>(x_797.z, x_797.w);
        let x_800 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_798.x, x_798.y, x_800);
        let x_807 : vec3<f32> = txVec12;
        let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_807.xy, x_807.z);
        u_xlat30 = x_809;
        let x_810 : f32 = u_xlat79;
        let x_811 : f32 = u_xlat30;
        let x_814 : f32 = u_xlat5.x;
        u_xlat54 = ((x_810 * x_811) + x_814);
      } else {
        let x_817 : vec4<f32> = vs_TEXCOORD8;
        let x_820 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_823 : vec2<f32> = ((vec2<f32>(x_817.x, x_817.y) * vec2<f32>(x_820.z, x_820.w)) + vec2<f32>(0.5f, 0.5f));
        let x_824 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat5;
        let x_828 : vec2<f32> = floor(vec2<f32>(x_826.x, x_826.y));
        let x_829 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
        let x_831 : vec4<f32> = vs_TEXCOORD8;
        let x_834 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_837 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_831.x, x_831.y) * vec2<f32>(x_834.z, x_834.w)) + -(vec2<f32>(x_837.x, x_837.y)));
        let x_841 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_841.x, x_841.x, x_841.y, x_841.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_844 : vec4<f32> = u_xlat6;
        let x_846 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_844.x, x_844.x, x_844.z, x_844.z) * vec4<f32>(x_846.x, x_846.x, x_846.z, x_846.z));
        let x_849 : vec4<f32> = u_xlat7;
        let x_853 : vec2<f32> = (vec2<f32>(x_849.y, x_849.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_854 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_853.x, x_854.z, x_853.y);
        let x_856 : vec4<f32> = u_xlat7;
        let x_859 : vec2<f32> = u_xlat55;
        let x_861 : vec2<f32> = ((vec2<f32>(x_856.x, x_856.z) * vec2<f32>(0.5f, 0.5f)) + -(x_859));
        let x_862 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_861.x, x_862.y, x_861.y, x_862.w);
        let x_864 : vec2<f32> = u_xlat55;
        let x_866 : vec2<f32> = (-(x_864) + vec2<f32>(1.0f, 1.0f));
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
        let x_869 : vec2<f32> = u_xlat55;
        u_xlat57 = min(x_869, vec2<f32>(0.0f, 0.0f));
        let x_871 : vec2<f32> = u_xlat57;
        let x_873 : vec2<f32> = u_xlat57;
        let x_875 : vec4<f32> = u_xlat7;
        let x_877 : vec2<f32> = ((-(x_871) * x_873) + vec2<f32>(x_875.x, x_875.y));
        let x_878 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec2<f32> = u_xlat55;
        u_xlat57 = max(x_880, vec2<f32>(0.0f, 0.0f));
        let x_883 : vec2<f32> = u_xlat57;
        let x_885 : vec2<f32> = u_xlat57;
        let x_887 : vec4<f32> = u_xlat6;
        let x_889 : vec2<f32> = ((-(x_883) * x_885) + vec2<f32>(x_887.y, x_887.w));
        let x_890 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_889.x, x_890.y, x_889.y);
        let x_892 : vec4<f32> = u_xlat7;
        let x_895 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) + vec2<f32>(2.0f, 2.0f));
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec3<f32> = u_xlat31;
        let x_900 : vec2<f32> = (vec2<f32>(x_898.x, x_898.z) + vec2<f32>(2.0f, 2.0f));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_901.x, x_900.x, x_901.z, x_900.y);
        let x_904 : f32 = u_xlat6.y;
        u_xlat9.z = (x_904 * 0.08163200318813323975f);
        let x_908 : vec4<f32> = u_xlat6;
        let x_911 : vec3<f32> = (vec3<f32>(x_908.z, x_908.x, x_908.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_912 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
        let x_914 : vec4<f32> = u_xlat7;
        let x_917 : vec2<f32> = (vec2<f32>(x_914.x, x_914.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_918 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_921 : f32 = u_xlat10.y;
        u_xlat9.x = x_921;
        let x_923 : vec2<f32> = u_xlat55;
        let x_930 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec2<f32> = u_xlat55;
        let x_937 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_937.x, x_938.y, x_937.y, x_938.w);
        let x_941 : f32 = u_xlat6.x;
        u_xlat7.y = x_941;
        let x_944 : f32 = u_xlat8.y;
        u_xlat7.w = x_944;
        let x_946 : vec4<f32> = u_xlat7;
        let x_947 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_946 + x_947);
        let x_949 : vec2<f32> = u_xlat55;
        let x_952 : vec2<f32> = ((vec2<f32>(x_949.y, x_949.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_953 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_953.x, x_952.x, x_953.z, x_952.y);
        let x_955 : vec2<f32> = u_xlat55;
        let x_958 : vec2<f32> = ((vec2<f32>(x_955.y, x_955.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_959 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_958.x, x_959.y, x_958.y, x_959.w);
        let x_962 : f32 = u_xlat6.y;
        u_xlat8.y = x_962;
        let x_964 : vec4<f32> = u_xlat8;
        let x_965 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_964 + x_965);
        let x_967 : vec4<f32> = u_xlat7;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_967 / x_968);
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_970 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_976 : vec4<f32> = u_xlat8;
        let x_977 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_976 / x_977);
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_979 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_981 : vec4<f32> = u_xlat7;
        let x_984 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_981.w, x_981.x, x_981.y, x_981.z) * vec4<f32>(x_984.x, x_984.x, x_984.x, x_984.x));
        let x_987 : vec4<f32> = u_xlat8;
        let x_990 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_987.x, x_987.w, x_987.y, x_987.z) * vec4<f32>(x_990.y, x_990.y, x_990.y, x_990.y));
        let x_993 : vec4<f32> = u_xlat7;
        let x_994 : vec3<f32> = vec3<f32>(x_993.y, x_993.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_994.x, x_995.y, x_994.y, x_994.z);
        let x_998 : f32 = u_xlat8.x;
        u_xlat10.y = x_998;
        let x_1000 : vec4<f32> = u_xlat5;
        let x_1003 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1000.x, x_1000.y, x_1000.x, x_1000.y) * vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y)) + vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat5;
        let x_1012 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_1009.x, x_1009.y) * vec2<f32>(x_1012.x, x_1012.y)) + vec2<f32>(x_1015.w, x_1015.y));
        let x_1019 : f32 = u_xlat10.y;
        u_xlat7.y = x_1019;
        let x_1022 : f32 = u_xlat8.z;
        u_xlat10.y = x_1022;
        let x_1024 : vec4<f32> = u_xlat5;
        let x_1027 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat5;
        let x_1036 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat10;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1045 : f32 = u_xlat10.y;
        u_xlat7.z = x_1045;
        let x_1048 : vec4<f32> = u_xlat5;
        let x_1051 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.z));
        let x_1058 : f32 = u_xlat8.w;
        u_xlat10.y = x_1058;
        let x_1061 : vec4<f32> = u_xlat5;
        let x_1064 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1061.x, x_1061.y, x_1061.x, x_1061.y) * vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y)) + vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1067.y));
        let x_1071 : vec4<f32> = u_xlat5;
        let x_1074 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat10;
        let x_1079 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.w, x_1077.y));
        let x_1080 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1079.x, x_1079.y, x_1080.z);
        let x_1083 : f32 = u_xlat10.y;
        u_xlat7.w = x_1083;
        let x_1086 : vec4<f32> = u_xlat5;
        let x_1089 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat63 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.x, x_1092.w));
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1096 : vec3<f32> = vec3<f32>(x_1095.x, x_1095.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1096.x, x_1097.y, x_1096.y, x_1096.z);
        let x_1099 : vec4<f32> = u_xlat5;
        let x_1102 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y) * vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y)) + vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1105.y));
        let x_1109 : vec4<f32> = u_xlat5;
        let x_1112 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.w, x_1115.y));
        let x_1119 : f32 = u_xlat7.x;
        u_xlat8.x = x_1119;
        let x_1121 : vec4<f32> = u_xlat5;
        let x_1124 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.x, x_1127.y));
        let x_1130 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1133 : vec4<f32> = u_xlat6;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1133.x, x_1133.x, x_1133.x, x_1133.x) * x_1135);
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1138.y, x_1138.y, x_1138.y, x_1138.y) * x_1140);
        let x_1143 : vec4<f32> = u_xlat6;
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1143.z, x_1143.z, x_1143.z, x_1143.z) * x_1145);
        let x_1147 : vec4<f32> = u_xlat6;
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1147.w, x_1147.w, x_1147.w, x_1147.w) * x_1149);
        let x_1152 : vec4<f32> = u_xlat11;
        let x_1153 : vec2<f32> = vec2<f32>(x_1152.x, x_1152.y);
        let x_1155 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1162 : vec3<f32> = txVec13;
        let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1162.xy, x_1162.z);
        u_xlat79 = x_1164;
        let x_1166 : vec4<f32> = u_xlat11;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.z, x_1166.w);
        let x_1169 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1176 : vec3<f32> = txVec14;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1176.xy, x_1176.z);
        u_xlat7.x = x_1178;
        let x_1181 : f32 = u_xlat7.x;
        let x_1183 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1181 * x_1183);
        let x_1187 : f32 = u_xlat16.x;
        let x_1188 : f32 = u_xlat79;
        let x_1191 : f32 = u_xlat7.x;
        u_xlat79 = ((x_1187 * x_1188) + x_1191);
        let x_1194 : vec2<f32> = u_xlat55;
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec15;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat55.x = x_1205;
        let x_1208 : f32 = u_xlat16.z;
        let x_1210 : f32 = u_xlat55.x;
        let x_1212 : f32 = u_xlat79;
        u_xlat79 = ((x_1208 * x_1210) + x_1212);
        let x_1215 : vec4<f32> = u_xlat14;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
        let x_1218 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec16;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat55.x = x_1227;
        let x_1230 : f32 = u_xlat16.w;
        let x_1232 : f32 = u_xlat55.x;
        let x_1234 : f32 = u_xlat79;
        u_xlat79 = ((x_1230 * x_1232) + x_1234);
        let x_1237 : vec4<f32> = u_xlat12;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec17;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat55.x = x_1249;
        let x_1252 : f32 = u_xlat17.x;
        let x_1254 : f32 = u_xlat55.x;
        let x_1256 : f32 = u_xlat79;
        u_xlat79 = ((x_1252 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat12;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec18;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat55.x = x_1271;
        let x_1274 : f32 = u_xlat17.y;
        let x_1276 : f32 = u_xlat55.x;
        let x_1278 : f32 = u_xlat79;
        u_xlat79 = ((x_1274 * x_1276) + x_1278);
        let x_1281 : vec4<f32> = u_xlat13;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec19;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat55.x = x_1293;
        let x_1296 : f32 = u_xlat17.z;
        let x_1298 : f32 = u_xlat55.x;
        let x_1300 : f32 = u_xlat79;
        u_xlat79 = ((x_1296 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat14;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec20;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat55.x = x_1315;
        let x_1318 : f32 = u_xlat17.w;
        let x_1320 : f32 = u_xlat55.x;
        let x_1322 : f32 = u_xlat79;
        u_xlat79 = ((x_1318 * x_1320) + x_1322);
        let x_1325 : vec4<f32> = u_xlat15;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.x, x_1325.y);
        let x_1328 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec21;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat55.x = x_1337;
        let x_1340 : f32 = u_xlat18.x;
        let x_1342 : f32 = u_xlat55.x;
        let x_1344 : f32 = u_xlat79;
        u_xlat79 = ((x_1340 * x_1342) + x_1344);
        let x_1347 : vec4<f32> = u_xlat15;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec22;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat55.x = x_1359;
        let x_1362 : f32 = u_xlat18.y;
        let x_1364 : f32 = u_xlat55.x;
        let x_1366 : f32 = u_xlat79;
        u_xlat79 = ((x_1362 * x_1364) + x_1366);
        let x_1369 : vec3<f32> = u_xlat32;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec23;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat55.x = x_1381;
        let x_1384 : f32 = u_xlat18.z;
        let x_1386 : f32 = u_xlat55.x;
        let x_1388 : f32 = u_xlat79;
        u_xlat79 = ((x_1384 * x_1386) + x_1388);
        let x_1391 : vec2<f32> = u_xlat63;
        let x_1393 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec24;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat55.x = x_1402;
        let x_1405 : f32 = u_xlat18.w;
        let x_1407 : f32 = u_xlat55.x;
        let x_1409 : f32 = u_xlat79;
        u_xlat79 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat10;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec25;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
        u_xlat55.x = x_1424;
        let x_1427 : f32 = u_xlat6.x;
        let x_1429 : f32 = u_xlat55.x;
        let x_1431 : f32 = u_xlat79;
        u_xlat79 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat10;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec26;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat55.x = x_1446;
        let x_1449 : f32 = u_xlat6.y;
        let x_1451 : f32 = u_xlat55.x;
        let x_1453 : f32 = u_xlat79;
        u_xlat79 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec2<f32> = u_xlat58;
        let x_1458 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec27;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat55.x = x_1467;
        let x_1470 : f32 = u_xlat6.z;
        let x_1472 : f32 = u_xlat55.x;
        let x_1474 : f32 = u_xlat79;
        u_xlat79 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat5;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec28;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat5.x = x_1489;
        let x_1492 : f32 = u_xlat6.w;
        let x_1494 : f32 = u_xlat5.x;
        let x_1496 : f32 = u_xlat79;
        u_xlat54 = ((x_1492 * x_1494) + x_1496);
      }
    }
  } else {
    let x_1500 : vec4<f32> = vs_TEXCOORD8;
    let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
    let x_1503 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
    let x_1510 : vec3<f32> = txVec29;
    let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
    u_xlat54 = x_1512;
  }
  let x_1514 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_1514) + 1.0f);
  let x_1517 : f32 = u_xlat54;
  let x_1519 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1521 : f32 = u_xlat79;
  u_xlat54 = ((x_1517 * x_1519) + x_1521);
  let x_1524 : f32 = vs_TEXCOORD8.z;
  u_xlatb79 = (0.0f >= x_1524);
  let x_1528 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1528 >= 1.0f);
  let x_1530 : bool = u_xlatb79;
  let x_1531 : bool = u_xlatb5;
  u_xlatb79 = (x_1530 | x_1531);
  let x_1533 : bool = u_xlatb79;
  let x_1534 : f32 = u_xlat54;
  u_xlat54 = select(x_1534, 1.0f, x_1533);
  let x_1536 : vec3<f32> = vs_TEXCOORD7;
  let x_1540 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1542 : vec3<f32> = (x_1536 + -(x_1540));
  let x_1543 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
  let x_1545 : vec4<f32> = u_xlat5;
  let x_1547 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(vec3<f32>(x_1545.x, x_1545.y, x_1545.z), vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
  let x_1550 : f32 = u_xlat79;
  let x_1552 : f32 = x_249.x_MainLightShadowParams.z;
  let x_1555 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1550 * x_1552) + x_1555);
  let x_1559 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1559, 0.0f, 1.0f);
  let x_1562 : f32 = u_xlat54;
  u_xlat30 = (-(x_1562) + 1.0f);
  let x_1566 : f32 = u_xlat5.x;
  let x_1567 : f32 = u_xlat30;
  let x_1569 : f32 = u_xlat54;
  u_xlat54 = ((x_1566 * x_1567) + x_1569);
  let x_1572 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1572;
  let x_1576 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1576;
  let x_1580 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1580;
  let x_1583 : vec4<f32> = u_xlat5;
  let x_1586 : vec3<f32> = u_xlat26;
  u_xlat80 = dot(-(vec3<f32>(x_1583.x, x_1583.y, x_1583.z)), x_1586);
  let x_1588 : f32 = u_xlat80;
  let x_1589 : f32 = u_xlat80;
  u_xlat80 = (x_1588 + x_1589);
  let x_1591 : vec3<f32> = u_xlat26;
  let x_1592 : f32 = u_xlat80;
  let x_1596 : vec4<f32> = u_xlat5;
  let x_1599 : vec3<f32> = ((x_1591 * -(vec3<f32>(x_1592, x_1592, x_1592))) + -(vec3<f32>(x_1596.x, x_1596.y, x_1596.z)));
  let x_1600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1602 : vec3<f32> = u_xlat26;
  let x_1603 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(x_1602, vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
  let x_1606 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1606, 0.0f, 1.0f);
  let x_1608 : f32 = u_xlat80;
  u_xlat80 = (-(x_1608) + 1.0f);
  let x_1611 : f32 = u_xlat80;
  let x_1612 : f32 = u_xlat80;
  u_xlat80 = (x_1611 * x_1612);
  let x_1614 : f32 = u_xlat80;
  let x_1615 : f32 = u_xlat80;
  u_xlat80 = (x_1614 * x_1615);
  let x_1618 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1618) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1624 : f32 = u_xlat1;
  let x_1625 : f32 = u_xlat81;
  u_xlat1 = (x_1624 * x_1625);
  let x_1627 : f32 = u_xlat1;
  u_xlat1 = (x_1627 * 6.0f);
  let x_1638 : vec4<f32> = u_xlat6;
  let x_1640 : f32 = u_xlat1;
  let x_1641 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1638.x, x_1638.y, x_1638.z), x_1640);
  u_xlat6 = x_1641;
  let x_1643 : f32 = u_xlat6.w;
  u_xlat1 = (x_1643 + -1.0f);
  let x_1651 : f32 = x_1649.unity_SpecCube0_HDR.w;
  let x_1652 : f32 = u_xlat1;
  u_xlat1 = ((x_1651 * x_1652) + 1.0f);
  let x_1655 : f32 = u_xlat1;
  u_xlat1 = max(x_1655, 0.0f);
  let x_1657 : f32 = u_xlat1;
  u_xlat1 = log2(x_1657);
  let x_1659 : f32 = u_xlat1;
  let x_1661 : f32 = x_1649.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1659 * x_1661);
  let x_1663 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1663);
  let x_1665 : f32 = u_xlat1;
  let x_1667 : f32 = x_1649.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1665 * x_1667);
  let x_1669 : vec4<f32> = u_xlat6;
  let x_1671 : f32 = u_xlat1;
  let x_1673 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(x_1671, x_1671, x_1671));
  let x_1674 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
  let x_1676 : vec4<f32> = u_xlat4;
  let x_1678 : vec4<f32> = u_xlat4;
  let x_1682 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.x) * vec2<f32>(x_1678.x, x_1678.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1682.x, x_1682.y, x_1683.z, x_1683.w);
  let x_1686 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1686);
  let x_1688 : vec4<f32> = u_xlat0;
  let x_1691 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1688.x, x_1688.y, x_1688.z)) + vec3<f32>(x_1691, x_1691, x_1691));
  let x_1694 : f32 = u_xlat80;
  let x_1696 : vec3<f32> = u_xlat32;
  let x_1698 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1694, x_1694, x_1694) * x_1696) + vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
  let x_1701 : f32 = u_xlat1;
  let x_1703 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1701, x_1701, x_1701) * x_1703);
  let x_1705 : vec4<f32> = u_xlat6;
  let x_1707 : vec3<f32> = u_xlat32;
  let x_1708 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.y, x_1705.z) * x_1707);
  let x_1709 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1711 : vec3<f32> = u_xlat27;
  let x_1712 : vec4<f32> = u_xlat3;
  let x_1715 : vec4<f32> = u_xlat6;
  u_xlat27 = ((x_1711 * vec3<f32>(x_1712.x, x_1712.z, x_1712.w)) + vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : f32 = u_xlat54;
  let x_1720 : f32 = x_1649.unity_LightData.z;
  u_xlat75 = (x_1718 * x_1720);
  let x_1722 : vec3<f32> = u_xlat26;
  let x_1724 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1722, vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1727, 0.0f, 1.0f);
  let x_1729 : f32 = u_xlat75;
  let x_1730 : f32 = u_xlat1;
  u_xlat75 = (x_1729 * x_1730);
  let x_1732 : f32 = u_xlat75;
  let x_1735 : vec4<f32> = x_29.x_MainLightColor;
  let x_1737 : vec3<f32> = (vec3<f32>(x_1732, x_1732, x_1732) * vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
  let x_1738 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
  let x_1740 : vec4<f32> = u_xlat5;
  let x_1743 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_1740.x, x_1740.y, x_1740.z) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : vec3<f32> = u_xlat32;
  let x_1747 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1746, x_1747);
  let x_1749 : f32 = u_xlat75;
  u_xlat75 = max(x_1749, 1.17549435e-38f);
  let x_1752 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1752);
  let x_1754 : f32 = u_xlat75;
  let x_1756 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1754, x_1754, x_1754) * x_1756);
  let x_1758 : vec3<f32> = u_xlat26;
  let x_1759 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1758, x_1759);
  let x_1761 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1761, 0.0f, 1.0f);
  let x_1764 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1766 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_1764.x, x_1764.y, x_1764.z), x_1766);
  let x_1768 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1768, 0.0f, 1.0f);
  let x_1770 : f32 = u_xlat75;
  let x_1771 : f32 = u_xlat75;
  u_xlat75 = (x_1770 * x_1771);
  let x_1773 : f32 = u_xlat75;
  let x_1775 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1773 * x_1775) + 1.00001001358032226562f);
  let x_1779 : f32 = u_xlat1;
  let x_1780 : f32 = u_xlat1;
  u_xlat1 = (x_1779 * x_1780);
  let x_1782 : f32 = u_xlat75;
  let x_1783 : f32 = u_xlat75;
  u_xlat75 = (x_1782 * x_1783);
  let x_1785 : f32 = u_xlat1;
  u_xlat1 = max(x_1785, 0.10000000149011611938f);
  let x_1788 : f32 = u_xlat75;
  let x_1789 : f32 = u_xlat1;
  u_xlat75 = (x_1788 * x_1789);
  let x_1791 : f32 = u_xlat28;
  let x_1792 : f32 = u_xlat75;
  u_xlat75 = (x_1791 * x_1792);
  let x_1794 : f32 = u_xlat29;
  let x_1795 : f32 = u_xlat75;
  u_xlat75 = (x_1794 / x_1795);
  let x_1797 : vec4<f32> = u_xlat0;
  let x_1799 : f32 = u_xlat75;
  let x_1802 : vec4<f32> = u_xlat3;
  u_xlat32 = ((vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * vec3<f32>(x_1799, x_1799, x_1799)) + vec3<f32>(x_1802.x, x_1802.z, x_1802.w));
  let x_1806 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1808 : f32 = x_1649.unity_LightData.y;
  u_xlat75 = min(x_1806, x_1808);
  let x_1812 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1812));
  let x_1815 : f32 = u_xlat79;
  let x_1818 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_1821 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1815 * x_1818) + x_1821);
  let x_1823 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1823, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1835 : u32 = u_xlatu_loop_1;
    let x_1836 : u32 = u_xlatu75;
    if ((x_1835 < x_1836)) {
    } else {
      break;
    }
    let x_1839 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1839 >> 2u);
    let x_1843 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1843 & 3u));
    let x_1846 : u32 = u_xlatu81;
    let x_1849 : vec4<f32> = x_1649.unity_LightIndices[bitcast<i32>(x_1846)];
    let x_1859 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1864 : vec4<u32> = indexable[x_1859];
    u_xlat81 = dot(x_1849, bitcast<vec4<f32>>(x_1864));
    let x_1868 : f32 = u_xlat81;
    u_xlati81 = i32(x_1868);
    let x_1870 : vec3<f32> = vs_TEXCOORD7;
    let x_1881 : i32 = u_xlati81;
    let x_1883 : vec4<f32> = x_1880.x_AdditionalLightsPosition[x_1881];
    let x_1886 : i32 = u_xlati81;
    let x_1888 : vec4<f32> = x_1880.x_AdditionalLightsPosition[x_1886];
    let x_1890 : vec3<f32> = ((-(x_1870) * vec3<f32>(x_1883.w, x_1883.w, x_1883.w)) + vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
    let x_1891 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
    let x_1894 : vec4<f32> = u_xlat8;
    let x_1896 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_1894.x, x_1894.y, x_1894.z), vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : f32 = u_xlat83;
    u_xlat83 = max(x_1899, 0.00006103515625f);
    let x_1902 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_1902);
    let x_1906 : vec4<f32> = u_xlat8;
    let x_1908 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(x_1908.x, x_1908.x, x_1908.x));
    let x_1911 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_1911);
    let x_1914 : f32 = u_xlat83;
    let x_1915 : i32 = u_xlati81;
    let x_1917 : f32 = x_1880.x_AdditionalLightsAttenuation[x_1915].x;
    u_xlat83 = (x_1914 * x_1917);
    let x_1919 : f32 = u_xlat83;
    let x_1921 : f32 = u_xlat83;
    u_xlat83 = ((-(x_1919) * x_1921) + 1.0f);
    let x_1924 : f32 = u_xlat83;
    u_xlat83 = max(x_1924, 0.0f);
    let x_1926 : f32 = u_xlat83;
    let x_1927 : f32 = u_xlat83;
    u_xlat83 = (x_1926 * x_1927);
    let x_1929 : f32 = u_xlat83;
    let x_1931 : f32 = u_xlat10.x;
    u_xlat83 = (x_1929 * x_1931);
    let x_1933 : i32 = u_xlati81;
    let x_1935 : vec4<f32> = x_1880.x_AdditionalLightsSpotDir[x_1933];
    let x_1937 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), x_1937);
    let x_1941 : f32 = u_xlat10.x;
    let x_1942 : i32 = u_xlati81;
    let x_1944 : f32 = x_1880.x_AdditionalLightsAttenuation[x_1942].z;
    let x_1946 : i32 = u_xlati81;
    let x_1948 : f32 = x_1880.x_AdditionalLightsAttenuation[x_1946].w;
    u_xlat10.x = ((x_1941 * x_1944) + x_1948);
    let x_1952 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1952, 0.0f, 1.0f);
    let x_1956 : f32 = u_xlat10.x;
    let x_1958 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1956 * x_1958);
    let x_1961 : f32 = u_xlat83;
    let x_1963 : f32 = u_xlat10.x;
    u_xlat83 = (x_1961 * x_1963);
    let x_1967 : i32 = u_xlati81;
    let x_1969 : f32 = x_249.x_AdditionalShadowParams[x_1967].w;
    u_xlati10 = i32(x_1969);
    let x_1974 : i32 = u_xlati10;
    u_xlatb35.x = (x_1974 >= 0i);
    let x_1978 : bool = u_xlatb35.x;
    if (x_1978) {
      let x_1982 : i32 = u_xlati81;
      let x_1984 : f32 = x_249.x_AdditionalShadowParams[x_1982].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1984, x_1984, x_1984, x_1984))));
      let x_1991 : bool = u_xlatb35.x;
      if (x_1991) {
        let x_1994 : vec3<f32> = u_xlat34;
        let x_1997 : vec3<f32> = u_xlat34;
        let x_2000 : vec4<bool> = (abs(vec4<f32>(x_1994.z, x_1994.z, x_1994.y, x_1994.y)) >= abs(vec4<f32>(x_1997.x, x_1997.y, x_1997.x, x_1997.x)));
        u_xlatb35 = vec3<bool>(x_2000.x, x_2000.y, x_2000.z);
        let x_2003 : bool = u_xlatb35.y;
        let x_2005 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2003 & x_2005);
        let x_2009 : vec3<f32> = u_xlat34;
        let x_2012 : vec4<bool> = (-(vec4<f32>(x_2009.z, x_2009.y, x_2009.x, x_2009.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2012.x, x_2012.y, x_2012.z);
        let x_2015 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2015);
        let x_2020 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2020);
        let x_2026 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2026);
        let x_2029 : bool = u_xlatb35.z;
        if (x_2029) {
          let x_2035 : f32 = u_xlat11.y;
          x_2031 = x_2035;
        } else {
          let x_2037 : f32 = u_xlat60;
          x_2031 = x_2037;
        }
        let x_2038 : f32 = x_2031;
        u_xlat60 = x_2038;
        let x_2041 : bool = u_xlatb35.x;
        if (x_2041) {
          let x_2046 : f32 = u_xlat11.x;
          x_2042 = x_2046;
        } else {
          let x_2048 : f32 = u_xlat60;
          x_2042 = x_2048;
        }
        let x_2049 : f32 = x_2042;
        u_xlat35 = x_2049;
        let x_2050 : i32 = u_xlati81;
        let x_2052 : f32 = x_249.x_AdditionalShadowParams[x_2050].w;
        u_xlat60 = trunc(x_2052);
        let x_2054 : f32 = u_xlat35;
        let x_2055 : f32 = u_xlat60;
        u_xlat35 = (x_2054 + x_2055);
        let x_2057 : f32 = u_xlat35;
        u_xlati10 = i32(x_2057);
      }
      let x_2059 : i32 = u_xlati10;
      u_xlati10 = (x_2059 << bitcast<u32>(2i));
      let x_2061 : vec3<f32> = vs_TEXCOORD7;
      let x_2064 : i32 = u_xlati10;
      let x_2067 : i32 = u_xlati10;
      let x_2071 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2064 + 1i) / 4i)][((x_2067 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2061.y, x_2061.y, x_2061.y, x_2061.y) * x_2071);
      let x_2073 : i32 = u_xlati10;
      let x_2075 : i32 = u_xlati10;
      let x_2078 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_2073 / 4i)][(x_2075 % 4i)];
      let x_2079 : vec3<f32> = vs_TEXCOORD7;
      let x_2082 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2078 * vec4<f32>(x_2079.x, x_2079.x, x_2079.x, x_2079.x)) + x_2082);
      let x_2084 : i32 = u_xlati10;
      let x_2087 : i32 = u_xlati10;
      let x_2091 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2084 + 2i) / 4i)][((x_2087 + 2i) % 4i)];
      let x_2092 : vec3<f32> = vs_TEXCOORD7;
      let x_2095 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2091 * vec4<f32>(x_2092.z, x_2092.z, x_2092.z, x_2092.z)) + x_2095);
      let x_2097 : vec4<f32> = u_xlat11;
      let x_2098 : i32 = u_xlati10;
      let x_2101 : i32 = u_xlati10;
      let x_2105 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2098 + 3i) / 4i)][((x_2101 + 3i) % 4i)];
      u_xlat10 = (x_2097 + x_2105);
      let x_2107 : vec4<f32> = u_xlat10;
      let x_2109 : vec4<f32> = u_xlat10;
      let x_2111 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) / vec3<f32>(x_2109.w, x_2109.w, x_2109.w));
      let x_2112 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
      let x_2115 : i32 = u_xlati81;
      let x_2117 : f32 = x_249.x_AdditionalShadowParams[x_2115].y;
      u_xlatb85 = (0.0f < x_2117);
      let x_2119 : bool = u_xlatb85;
      if (x_2119) {
        let x_2122 : i32 = u_xlati81;
        let x_2124 : f32 = x_249.x_AdditionalShadowParams[x_2122].y;
        u_xlatb85 = (1.0f == x_2124);
        let x_2126 : bool = u_xlatb85;
        if (x_2126) {
          let x_2129 : vec4<f32> = u_xlat10;
          let x_2133 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2129.x, x_2129.y, x_2129.x, x_2129.y) + x_2133);
          let x_2136 : vec4<f32> = u_xlat11;
          let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
          let x_2139 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
          let x_2147 : vec3<f32> = txVec30;
          let x_2149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2147.xy, x_2147.z);
          u_xlat12.x = x_2149;
          let x_2152 : vec4<f32> = u_xlat11;
          let x_2153 : vec2<f32> = vec2<f32>(x_2152.z, x_2152.w);
          let x_2155 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2153.x, x_2153.y, x_2155);
          let x_2162 : vec3<f32> = txVec31;
          let x_2164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2162.xy, x_2162.z);
          u_xlat12.y = x_2164;
          let x_2166 : vec4<f32> = u_xlat10;
          let x_2170 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2166.x, x_2166.y, x_2166.x, x_2166.y) + x_2170);
          let x_2173 : vec4<f32> = u_xlat11;
          let x_2174 : vec2<f32> = vec2<f32>(x_2173.x, x_2173.y);
          let x_2176 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2174.x, x_2174.y, x_2176);
          let x_2183 : vec3<f32> = txVec32;
          let x_2185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2183.xy, x_2183.z);
          u_xlat12.z = x_2185;
          let x_2188 : vec4<f32> = u_xlat11;
          let x_2189 : vec2<f32> = vec2<f32>(x_2188.z, x_2188.w);
          let x_2191 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2189.x, x_2189.y, x_2191);
          let x_2198 : vec3<f32> = txVec33;
          let x_2200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2198.xy, x_2198.z);
          u_xlat12.w = x_2200;
          let x_2203 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2203, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2206 : i32 = u_xlati81;
          let x_2208 : f32 = x_249.x_AdditionalShadowParams[x_2206].y;
          u_xlatb11.x = (2.0f == x_2208);
          let x_2212 : bool = u_xlatb11.x;
          if (x_2212) {
            let x_2215 : vec4<f32> = u_xlat10;
            let x_2219 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2222 : vec2<f32> = ((vec2<f32>(x_2215.x, x_2215.y) * vec2<f32>(x_2219.z, x_2219.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2223 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2225 : vec4<f32> = u_xlat11;
            let x_2227 : vec2<f32> = floor(vec2<f32>(x_2225.x, x_2225.y));
            let x_2228 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
            let x_2231 : vec4<f32> = u_xlat10;
            let x_2234 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2237 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2231.x, x_2231.y) * vec2<f32>(x_2234.z, x_2234.w)) + -(vec2<f32>(x_2237.x, x_2237.y)));
            let x_2241 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2241.x, x_2241.x, x_2241.y, x_2241.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2244 : vec4<f32> = u_xlat12;
            let x_2246 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2244.x, x_2244.x, x_2244.z, x_2244.z) * vec4<f32>(x_2246.x, x_2246.x, x_2246.z, x_2246.z));
            let x_2249 : vec4<f32> = u_xlat13;
            let x_2251 : vec2<f32> = (vec2<f32>(x_2249.y, x_2249.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2252 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2251.x, x_2252.y, x_2251.y, x_2252.w);
            let x_2254 : vec4<f32> = u_xlat13;
            let x_2257 : vec2<f32> = u_xlat61;
            let x_2259 : vec2<f32> = ((vec2<f32>(x_2254.x, x_2254.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2257));
            let x_2260 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
            let x_2262 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2262) + vec2<f32>(1.0f, 1.0f));
            let x_2265 : vec2<f32> = u_xlat61;
            let x_2266 : vec2<f32> = min(x_2265, vec2<f32>(0.0f, 0.0f));
            let x_2267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2266.x, x_2266.y, x_2267.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat14;
            let x_2272 : vec4<f32> = u_xlat14;
            let x_2275 : vec2<f32> = u_xlat63;
            let x_2276 : vec2<f32> = ((-(vec2<f32>(x_2269.x, x_2269.y)) * vec2<f32>(x_2272.x, x_2272.y)) + x_2275);
            let x_2277 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
            let x_2279 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2279, vec2<f32>(0.0f, 0.0f));
            let x_2281 : vec2<f32> = u_xlat61;
            let x_2283 : vec2<f32> = u_xlat61;
            let x_2285 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2281) * x_2283) + vec2<f32>(x_2285.y, x_2285.w));
            let x_2288 : vec4<f32> = u_xlat14;
            let x_2290 : vec2<f32> = (vec2<f32>(x_2288.x, x_2288.y) + vec2<f32>(1.0f, 1.0f));
            let x_2291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
            let x_2293 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2293 + vec2<f32>(1.0f, 1.0f));
            let x_2295 : vec4<f32> = u_xlat13;
            let x_2297 : vec2<f32> = (vec2<f32>(x_2295.x, x_2295.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2298 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2297.x, x_2297.y, x_2298.z, x_2298.w);
            let x_2300 : vec2<f32> = u_xlat63;
            let x_2301 : vec2<f32> = (x_2300 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2302 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2301.x, x_2301.y, x_2302.z, x_2302.w);
            let x_2304 : vec4<f32> = u_xlat14;
            let x_2306 : vec2<f32> = (vec2<f32>(x_2304.x, x_2304.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2307 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
            let x_2309 : vec2<f32> = u_xlat61;
            let x_2310 : vec2<f32> = (x_2309 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2311 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
            let x_2313 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2313.y, x_2313.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2317 : f32 = u_xlat14.x;
            u_xlat15.z = x_2317;
            let x_2320 : f32 = u_xlat61.x;
            u_xlat15.w = x_2320;
            let x_2323 : f32 = u_xlat16.x;
            u_xlat13.z = x_2323;
            let x_2326 : f32 = u_xlat12.x;
            u_xlat13.w = x_2326;
            let x_2328 : vec4<f32> = u_xlat13;
            let x_2330 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2328.z, x_2328.w, x_2328.x, x_2328.z) + vec4<f32>(x_2330.z, x_2330.w, x_2330.x, x_2330.z));
            let x_2334 : f32 = u_xlat15.y;
            u_xlat14.z = x_2334;
            let x_2337 : f32 = u_xlat61.y;
            u_xlat14.w = x_2337;
            let x_2340 : f32 = u_xlat13.y;
            u_xlat16.z = x_2340;
            let x_2343 : f32 = u_xlat12.z;
            u_xlat16.w = x_2343;
            let x_2345 : vec4<f32> = u_xlat14;
            let x_2347 : vec4<f32> = u_xlat16;
            let x_2349 : vec3<f32> = (vec3<f32>(x_2345.z, x_2345.y, x_2345.w) + vec3<f32>(x_2347.z, x_2347.y, x_2347.w));
            let x_2350 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
            let x_2352 : vec4<f32> = u_xlat13;
            let x_2354 : vec4<f32> = u_xlat17;
            let x_2356 : vec3<f32> = (vec3<f32>(x_2352.x, x_2352.z, x_2352.w) / vec3<f32>(x_2354.z, x_2354.w, x_2354.y));
            let x_2357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
            let x_2359 : vec4<f32> = u_xlat13;
            let x_2361 : vec3<f32> = (vec3<f32>(x_2359.x, x_2359.y, x_2359.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2362 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
            let x_2364 : vec4<f32> = u_xlat16;
            let x_2366 : vec4<f32> = u_xlat12;
            let x_2368 : vec3<f32> = (vec3<f32>(x_2364.z, x_2364.y, x_2364.w) / vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
            let x_2369 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
            let x_2371 : vec4<f32> = u_xlat14;
            let x_2373 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2374 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
            let x_2376 : vec4<f32> = u_xlat13;
            let x_2379 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2381 : vec3<f32> = (vec3<f32>(x_2376.y, x_2376.x, x_2376.z) * vec3<f32>(x_2379.x, x_2379.x, x_2379.x));
            let x_2382 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
            let x_2384 : vec4<f32> = u_xlat14;
            let x_2387 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2389 : vec3<f32> = (vec3<f32>(x_2384.x, x_2384.y, x_2384.z) * vec3<f32>(x_2387.y, x_2387.y, x_2387.y));
            let x_2390 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
            let x_2393 : f32 = u_xlat14.x;
            u_xlat13.w = x_2393;
            let x_2395 : vec4<f32> = u_xlat11;
            let x_2398 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2401 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y) * vec4<f32>(x_2398.x, x_2398.y, x_2398.x, x_2398.y)) + vec4<f32>(x_2401.y, x_2401.w, x_2401.x, x_2401.w));
            let x_2404 : vec4<f32> = u_xlat11;
            let x_2407 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2410 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2404.x, x_2404.y) * vec2<f32>(x_2407.x, x_2407.y)) + vec2<f32>(x_2410.z, x_2410.w));
            let x_2414 : f32 = u_xlat13.y;
            u_xlat14.w = x_2414;
            let x_2416 : vec4<f32> = u_xlat14;
            let x_2417 : vec2<f32> = vec2<f32>(x_2416.y, x_2416.z);
            let x_2418 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2418.x, x_2417.x, x_2418.z, x_2417.y);
            let x_2420 : vec4<f32> = u_xlat11;
            let x_2423 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2426 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2420.x, x_2420.y, x_2420.x, x_2420.y) * vec4<f32>(x_2423.x, x_2423.y, x_2423.x, x_2423.y)) + vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2426.y));
            let x_2429 : vec4<f32> = u_xlat11;
            let x_2432 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2435 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y) * vec4<f32>(x_2432.x, x_2432.y, x_2432.x, x_2432.y)) + vec4<f32>(x_2435.w, x_2435.y, x_2435.w, x_2435.z));
            let x_2438 : vec4<f32> = u_xlat11;
            let x_2441 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2444 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2438.x, x_2438.y, x_2438.x, x_2438.y) * vec4<f32>(x_2441.x, x_2441.y, x_2441.x, x_2441.y)) + vec4<f32>(x_2444.x, x_2444.w, x_2444.z, x_2444.w));
            let x_2447 : vec4<f32> = u_xlat12;
            let x_2449 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2447.x, x_2447.x, x_2447.x, x_2447.y) * vec4<f32>(x_2449.z, x_2449.w, x_2449.y, x_2449.z));
            let x_2453 : vec4<f32> = u_xlat12;
            let x_2455 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2453.y, x_2453.y, x_2453.z, x_2453.z) * x_2455);
            let x_2458 : f32 = u_xlat12.z;
            let x_2460 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2458 * x_2460);
            let x_2464 : vec4<f32> = u_xlat15;
            let x_2465 : vec2<f32> = vec2<f32>(x_2464.x, x_2464.y);
            let x_2467 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2465.x, x_2465.y, x_2467);
            let x_2475 : vec3<f32> = txVec34;
            let x_2477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2475.xy, x_2475.z);
            u_xlat36 = x_2477;
            let x_2479 : vec4<f32> = u_xlat15;
            let x_2480 : vec2<f32> = vec2<f32>(x_2479.z, x_2479.w);
            let x_2482 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2480.x, x_2480.y, x_2482);
            let x_2489 : vec3<f32> = txVec35;
            let x_2491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2489.xy, x_2489.z);
            u_xlat12.x = x_2491;
            let x_2494 : f32 = u_xlat12.x;
            let x_2496 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2494 * x_2496);
            let x_2500 : f32 = u_xlat18.x;
            let x_2501 : f32 = u_xlat36;
            let x_2504 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2500 * x_2501) + x_2504);
            let x_2507 : vec2<f32> = u_xlat61;
            let x_2509 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2507.x, x_2507.y, x_2509);
            let x_2516 : vec3<f32> = txVec36;
            let x_2518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2516.xy, x_2516.z);
            u_xlat61.x = x_2518;
            let x_2521 : f32 = u_xlat18.z;
            let x_2523 : f32 = u_xlat61.x;
            let x_2525 : f32 = u_xlat36;
            u_xlat36 = ((x_2521 * x_2523) + x_2525);
            let x_2528 : vec4<f32> = u_xlat14;
            let x_2529 : vec2<f32> = vec2<f32>(x_2528.x, x_2528.y);
            let x_2531 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
            let x_2538 : vec3<f32> = txVec37;
            let x_2540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2538.xy, x_2538.z);
            u_xlat61.x = x_2540;
            let x_2543 : f32 = u_xlat18.w;
            let x_2545 : f32 = u_xlat61.x;
            let x_2547 : f32 = u_xlat36;
            u_xlat36 = ((x_2543 * x_2545) + x_2547);
            let x_2550 : vec4<f32> = u_xlat16;
            let x_2551 : vec2<f32> = vec2<f32>(x_2550.x, x_2550.y);
            let x_2553 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2551.x, x_2551.y, x_2553);
            let x_2560 : vec3<f32> = txVec38;
            let x_2562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2560.xy, x_2560.z);
            u_xlat61.x = x_2562;
            let x_2565 : f32 = u_xlat19.x;
            let x_2567 : f32 = u_xlat61.x;
            let x_2569 : f32 = u_xlat36;
            u_xlat36 = ((x_2565 * x_2567) + x_2569);
            let x_2572 : vec4<f32> = u_xlat16;
            let x_2573 : vec2<f32> = vec2<f32>(x_2572.z, x_2572.w);
            let x_2575 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2573.x, x_2573.y, x_2575);
            let x_2582 : vec3<f32> = txVec39;
            let x_2584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2582.xy, x_2582.z);
            u_xlat61.x = x_2584;
            let x_2587 : f32 = u_xlat19.y;
            let x_2589 : f32 = u_xlat61.x;
            let x_2591 : f32 = u_xlat36;
            u_xlat36 = ((x_2587 * x_2589) + x_2591);
            let x_2594 : vec4<f32> = u_xlat14;
            let x_2595 : vec2<f32> = vec2<f32>(x_2594.z, x_2594.w);
            let x_2597 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2595.x, x_2595.y, x_2597);
            let x_2604 : vec3<f32> = txVec40;
            let x_2606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2604.xy, x_2604.z);
            u_xlat61.x = x_2606;
            let x_2609 : f32 = u_xlat19.z;
            let x_2611 : f32 = u_xlat61.x;
            let x_2613 : f32 = u_xlat36;
            u_xlat36 = ((x_2609 * x_2611) + x_2613);
            let x_2616 : vec4<f32> = u_xlat13;
            let x_2617 : vec2<f32> = vec2<f32>(x_2616.x, x_2616.y);
            let x_2619 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2617.x, x_2617.y, x_2619);
            let x_2626 : vec3<f32> = txVec41;
            let x_2628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2626.xy, x_2626.z);
            u_xlat61.x = x_2628;
            let x_2631 : f32 = u_xlat19.w;
            let x_2633 : f32 = u_xlat61.x;
            let x_2635 : f32 = u_xlat36;
            u_xlat36 = ((x_2631 * x_2633) + x_2635);
            let x_2638 : vec4<f32> = u_xlat13;
            let x_2639 : vec2<f32> = vec2<f32>(x_2638.z, x_2638.w);
            let x_2641 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2639.x, x_2639.y, x_2641);
            let x_2648 : vec3<f32> = txVec42;
            let x_2650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2648.xy, x_2648.z);
            u_xlat61.x = x_2650;
            let x_2653 : f32 = u_xlat11.x;
            let x_2655 : f32 = u_xlat61.x;
            let x_2657 : f32 = u_xlat36;
            u_xlat85 = ((x_2653 * x_2655) + x_2657);
          } else {
            let x_2660 : vec4<f32> = u_xlat10;
            let x_2663 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2666 : vec2<f32> = ((vec2<f32>(x_2660.x, x_2660.y) * vec2<f32>(x_2663.z, x_2663.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2667 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2666.x, x_2666.y, x_2667.z, x_2667.w);
            let x_2669 : vec4<f32> = u_xlat11;
            let x_2671 : vec2<f32> = floor(vec2<f32>(x_2669.x, x_2669.y));
            let x_2672 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2674 : vec4<f32> = u_xlat10;
            let x_2677 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2680 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2674.x, x_2674.y) * vec2<f32>(x_2677.z, x_2677.w)) + -(vec2<f32>(x_2680.x, x_2680.y)));
            let x_2684 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2684.x, x_2684.x, x_2684.y, x_2684.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2687 : vec4<f32> = u_xlat12;
            let x_2689 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2687.x, x_2687.x, x_2687.z, x_2687.z) * vec4<f32>(x_2689.x, x_2689.x, x_2689.z, x_2689.z));
            let x_2692 : vec4<f32> = u_xlat13;
            let x_2694 : vec2<f32> = (vec2<f32>(x_2692.y, x_2692.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2695 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2695.x, x_2694.x, x_2695.z, x_2694.y);
            let x_2697 : vec4<f32> = u_xlat13;
            let x_2700 : vec2<f32> = u_xlat61;
            let x_2702 : vec2<f32> = ((vec2<f32>(x_2697.x, x_2697.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2700));
            let x_2703 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2702.x, x_2703.y, x_2702.y, x_2703.w);
            let x_2705 : vec2<f32> = u_xlat61;
            let x_2707 : vec2<f32> = (-(x_2705) + vec2<f32>(1.0f, 1.0f));
            let x_2708 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
            let x_2710 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2710, vec2<f32>(0.0f, 0.0f));
            let x_2712 : vec2<f32> = u_xlat63;
            let x_2714 : vec2<f32> = u_xlat63;
            let x_2716 : vec4<f32> = u_xlat13;
            let x_2718 : vec2<f32> = ((-(x_2712) * x_2714) + vec2<f32>(x_2716.x, x_2716.y));
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2718.x, x_2718.y, x_2719.z, x_2719.w);
            let x_2721 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2721, vec2<f32>(0.0f, 0.0f));
            let x_2724 : vec2<f32> = u_xlat63;
            let x_2726 : vec2<f32> = u_xlat63;
            let x_2728 : vec4<f32> = u_xlat12;
            let x_2730 : vec2<f32> = ((-(x_2724) * x_2726) + vec2<f32>(x_2728.y, x_2728.w));
            let x_2731 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2730.x, x_2731.y, x_2730.y);
            let x_2733 : vec4<f32> = u_xlat13;
            let x_2735 : vec2<f32> = (vec2<f32>(x_2733.x, x_2733.y) + vec2<f32>(2.0f, 2.0f));
            let x_2736 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2735.x, x_2735.y, x_2736.z, x_2736.w);
            let x_2738 : vec3<f32> = u_xlat37;
            let x_2740 : vec2<f32> = (vec2<f32>(x_2738.x, x_2738.z) + vec2<f32>(2.0f, 2.0f));
            let x_2741 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2741.x, x_2740.x, x_2741.z, x_2740.y);
            let x_2744 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2744 * 0.08163200318813323975f);
            let x_2747 : vec4<f32> = u_xlat12;
            let x_2749 : vec3<f32> = (vec3<f32>(x_2747.z, x_2747.x, x_2747.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2750 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2749.x, x_2749.y, x_2749.z, x_2750.w);
            let x_2752 : vec4<f32> = u_xlat13;
            let x_2754 : vec2<f32> = (vec2<f32>(x_2752.x, x_2752.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2755 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
            let x_2758 : f32 = u_xlat16.y;
            u_xlat15.x = x_2758;
            let x_2760 : vec2<f32> = u_xlat61;
            let x_2763 : vec2<f32> = ((vec2<f32>(x_2760.x, x_2760.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2764 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2764.x, x_2763.x, x_2764.z, x_2763.y);
            let x_2766 : vec2<f32> = u_xlat61;
            let x_2769 : vec2<f32> = ((vec2<f32>(x_2766.x, x_2766.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2770 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2769.x, x_2770.y, x_2769.y, x_2770.w);
            let x_2773 : f32 = u_xlat12.x;
            u_xlat13.y = x_2773;
            let x_2776 : f32 = u_xlat14.y;
            u_xlat13.w = x_2776;
            let x_2778 : vec4<f32> = u_xlat13;
            let x_2779 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2778 + x_2779);
            let x_2781 : vec2<f32> = u_xlat61;
            let x_2784 : vec2<f32> = ((vec2<f32>(x_2781.y, x_2781.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2785 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2785.x, x_2784.x, x_2785.z, x_2784.y);
            let x_2787 : vec2<f32> = u_xlat61;
            let x_2790 : vec2<f32> = ((vec2<f32>(x_2787.y, x_2787.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2791 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2790.x, x_2791.y, x_2790.y, x_2791.w);
            let x_2794 : f32 = u_xlat12.y;
            u_xlat14.y = x_2794;
            let x_2796 : vec4<f32> = u_xlat14;
            let x_2797 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2796 + x_2797);
            let x_2799 : vec4<f32> = u_xlat13;
            let x_2800 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2799 / x_2800);
            let x_2802 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2802 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2804 : vec4<f32> = u_xlat14;
            let x_2805 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2804 / x_2805);
            let x_2807 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2807 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2809 : vec4<f32> = u_xlat13;
            let x_2812 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2809.w, x_2809.x, x_2809.y, x_2809.z) * vec4<f32>(x_2812.x, x_2812.x, x_2812.x, x_2812.x));
            let x_2815 : vec4<f32> = u_xlat14;
            let x_2818 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2815.x, x_2815.w, x_2815.y, x_2815.z) * vec4<f32>(x_2818.y, x_2818.y, x_2818.y, x_2818.y));
            let x_2821 : vec4<f32> = u_xlat13;
            let x_2822 : vec3<f32> = vec3<f32>(x_2821.y, x_2821.z, x_2821.w);
            let x_2823 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2822.x, x_2823.y, x_2822.y, x_2822.z);
            let x_2826 : f32 = u_xlat14.x;
            u_xlat16.y = x_2826;
            let x_2828 : vec4<f32> = u_xlat11;
            let x_2831 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2834 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2828.x, x_2828.y, x_2828.x, x_2828.y) * vec4<f32>(x_2831.x, x_2831.y, x_2831.x, x_2831.y)) + vec4<f32>(x_2834.x, x_2834.y, x_2834.z, x_2834.y));
            let x_2837 : vec4<f32> = u_xlat11;
            let x_2840 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2843 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2837.x, x_2837.y) * vec2<f32>(x_2840.x, x_2840.y)) + vec2<f32>(x_2843.w, x_2843.y));
            let x_2847 : f32 = u_xlat16.y;
            u_xlat13.y = x_2847;
            let x_2850 : f32 = u_xlat14.z;
            u_xlat16.y = x_2850;
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2855 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2858 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2852.x, x_2852.y, x_2852.x, x_2852.y) * vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y)) + vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2858.y));
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2864 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2867 : vec4<f32> = u_xlat16;
            let x_2869 : vec2<f32> = ((vec2<f32>(x_2861.x, x_2861.y) * vec2<f32>(x_2864.x, x_2864.y)) + vec2<f32>(x_2867.w, x_2867.y));
            let x_2870 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2869.x, x_2869.y, x_2870.z, x_2870.w);
            let x_2873 : f32 = u_xlat16.y;
            u_xlat13.z = x_2873;
            let x_2876 : vec4<f32> = u_xlat11;
            let x_2879 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.x, x_2882.y, x_2882.x, x_2882.z));
            let x_2886 : f32 = u_xlat14.w;
            u_xlat16.y = x_2886;
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2892 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2889.x, x_2889.y, x_2889.x, x_2889.y) * vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y)) + vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2895.y));
            let x_2899 : vec4<f32> = u_xlat11;
            let x_2902 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2905 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2899.x, x_2899.y) * vec2<f32>(x_2902.x, x_2902.y)) + vec2<f32>(x_2905.w, x_2905.y));
            let x_2909 : f32 = u_xlat16.y;
            u_xlat13.w = x_2909;
            let x_2912 : vec4<f32> = u_xlat11;
            let x_2915 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(x_2915.x, x_2915.y)) + vec2<f32>(x_2918.x, x_2918.w));
            let x_2921 : vec4<f32> = u_xlat16;
            let x_2922 : vec3<f32> = vec3<f32>(x_2921.x, x_2921.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2922.x, x_2923.y, x_2922.y, x_2922.z);
            let x_2925 : vec4<f32> = u_xlat11;
            let x_2928 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y) * vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y)) + vec4<f32>(x_2931.x, x_2931.y, x_2931.z, x_2931.y));
            let x_2935 : vec4<f32> = u_xlat11;
            let x_2938 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2941 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2938.x, x_2938.y)) + vec2<f32>(x_2941.w, x_2941.y));
            let x_2945 : f32 = u_xlat13.x;
            u_xlat14.x = x_2945;
            let x_2947 : vec4<f32> = u_xlat11;
            let x_2950 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2953 : vec4<f32> = u_xlat14;
            let x_2955 : vec2<f32> = ((vec2<f32>(x_2947.x, x_2947.y) * vec2<f32>(x_2950.x, x_2950.y)) + vec2<f32>(x_2953.x, x_2953.y));
            let x_2956 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2955.x, x_2955.y, x_2956.z, x_2956.w);
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2961 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_2959.x, x_2959.x, x_2959.x, x_2959.x) * x_2961);
            let x_2964 : vec4<f32> = u_xlat12;
            let x_2966 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_2964.y, x_2964.y, x_2964.y, x_2964.y) * x_2966);
            let x_2969 : vec4<f32> = u_xlat12;
            let x_2971 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_2969.z, x_2969.z, x_2969.z, x_2969.z) * x_2971);
            let x_2973 : vec4<f32> = u_xlat12;
            let x_2975 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_2973.w, x_2973.w, x_2973.w, x_2973.w) * x_2975);
            let x_2978 : vec4<f32> = u_xlat17;
            let x_2979 : vec2<f32> = vec2<f32>(x_2978.x, x_2978.y);
            let x_2981 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_2979.x, x_2979.y, x_2981);
            let x_2988 : vec3<f32> = txVec43;
            let x_2990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2988.xy, x_2988.z);
            u_xlat13.x = x_2990;
            let x_2993 : vec4<f32> = u_xlat17;
            let x_2994 : vec2<f32> = vec2<f32>(x_2993.z, x_2993.w);
            let x_2996 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
            let x_3004 : vec3<f32> = txVec44;
            let x_3006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3004.xy, x_3004.z);
            u_xlat88 = x_3006;
            let x_3007 : f32 = u_xlat88;
            let x_3009 : f32 = u_xlat22.y;
            u_xlat88 = (x_3007 * x_3009);
            let x_3012 : f32 = u_xlat22.x;
            let x_3014 : f32 = u_xlat13.x;
            let x_3016 : f32 = u_xlat88;
            u_xlat13.x = ((x_3012 * x_3014) + x_3016);
            let x_3020 : vec2<f32> = u_xlat61;
            let x_3022 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3020.x, x_3020.y, x_3022);
            let x_3029 : vec3<f32> = txVec45;
            let x_3031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3029.xy, x_3029.z);
            u_xlat61.x = x_3031;
            let x_3034 : f32 = u_xlat22.z;
            let x_3036 : f32 = u_xlat61.x;
            let x_3039 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3034 * x_3036) + x_3039);
            let x_3043 : vec4<f32> = u_xlat20;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.x, x_3043.y);
            let x_3046 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3054 : vec3<f32> = txVec46;
            let x_3056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3054.xy, x_3054.z);
            u_xlat86 = x_3056;
            let x_3058 : f32 = u_xlat22.w;
            let x_3059 : f32 = u_xlat86;
            let x_3062 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3058 * x_3059) + x_3062);
            let x_3066 : vec4<f32> = u_xlat18;
            let x_3067 : vec2<f32> = vec2<f32>(x_3066.x, x_3066.y);
            let x_3069 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
            let x_3076 : vec3<f32> = txVec47;
            let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
            u_xlat86 = x_3078;
            let x_3080 : f32 = u_xlat23.x;
            let x_3081 : f32 = u_xlat86;
            let x_3084 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3080 * x_3081) + x_3084);
            let x_3088 : vec4<f32> = u_xlat18;
            let x_3089 : vec2<f32> = vec2<f32>(x_3088.z, x_3088.w);
            let x_3091 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3089.x, x_3089.y, x_3091);
            let x_3098 : vec3<f32> = txVec48;
            let x_3100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3098.xy, x_3098.z);
            u_xlat86 = x_3100;
            let x_3102 : f32 = u_xlat23.y;
            let x_3103 : f32 = u_xlat86;
            let x_3106 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3102 * x_3103) + x_3106);
            let x_3110 : vec4<f32> = u_xlat19;
            let x_3111 : vec2<f32> = vec2<f32>(x_3110.x, x_3110.y);
            let x_3113 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
            let x_3120 : vec3<f32> = txVec49;
            let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
            u_xlat86 = x_3122;
            let x_3124 : f32 = u_xlat23.z;
            let x_3125 : f32 = u_xlat86;
            let x_3128 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3124 * x_3125) + x_3128);
            let x_3132 : vec4<f32> = u_xlat20;
            let x_3133 : vec2<f32> = vec2<f32>(x_3132.z, x_3132.w);
            let x_3135 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec50;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat86 = x_3144;
            let x_3146 : f32 = u_xlat23.w;
            let x_3147 : f32 = u_xlat86;
            let x_3150 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3146 * x_3147) + x_3150);
            let x_3154 : vec4<f32> = u_xlat21;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.x, x_3154.y);
            let x_3157 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec51;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat86 = x_3166;
            let x_3168 : f32 = u_xlat24.x;
            let x_3169 : f32 = u_xlat86;
            let x_3172 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3168 * x_3169) + x_3172);
            let x_3176 : vec4<f32> = u_xlat21;
            let x_3177 : vec2<f32> = vec2<f32>(x_3176.z, x_3176.w);
            let x_3179 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3177.x, x_3177.y, x_3179);
            let x_3186 : vec3<f32> = txVec52;
            let x_3188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
            u_xlat86 = x_3188;
            let x_3190 : f32 = u_xlat24.y;
            let x_3191 : f32 = u_xlat86;
            let x_3194 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3190 * x_3191) + x_3194);
            let x_3198 : vec2<f32> = u_xlat38;
            let x_3200 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec53;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat86 = x_3209;
            let x_3211 : f32 = u_xlat24.z;
            let x_3212 : f32 = u_xlat86;
            let x_3215 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3211 * x_3212) + x_3215);
            let x_3219 : vec2<f32> = u_xlat69;
            let x_3221 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec54;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat86 = x_3230;
            let x_3232 : f32 = u_xlat24.w;
            let x_3233 : f32 = u_xlat86;
            let x_3236 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3232 * x_3233) + x_3236);
            let x_3240 : vec4<f32> = u_xlat16;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec55;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat86 = x_3252;
            let x_3254 : f32 = u_xlat12.x;
            let x_3255 : f32 = u_xlat86;
            let x_3258 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3254 * x_3255) + x_3258);
            let x_3262 : vec4<f32> = u_xlat16;
            let x_3263 : vec2<f32> = vec2<f32>(x_3262.z, x_3262.w);
            let x_3265 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3263.x, x_3263.y, x_3265);
            let x_3272 : vec3<f32> = txVec56;
            let x_3274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3272.xy, x_3272.z);
            u_xlat86 = x_3274;
            let x_3276 : f32 = u_xlat12.y;
            let x_3277 : f32 = u_xlat86;
            let x_3280 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3276 * x_3277) + x_3280);
            let x_3284 : vec2<f32> = u_xlat64;
            let x_3286 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec57;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat86 = x_3295;
            let x_3297 : f32 = u_xlat12.z;
            let x_3298 : f32 = u_xlat86;
            let x_3301 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3297 * x_3298) + x_3301);
            let x_3305 : vec4<f32> = u_xlat11;
            let x_3306 : vec2<f32> = vec2<f32>(x_3305.x, x_3305.y);
            let x_3308 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec58;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat11.x = x_3317;
            let x_3320 : f32 = u_xlat12.w;
            let x_3322 : f32 = u_xlat11.x;
            let x_3325 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3320 * x_3322) + x_3325);
          }
        }
      } else {
        let x_3329 : vec4<f32> = u_xlat10;
        let x_3330 : vec2<f32> = vec2<f32>(x_3329.x, x_3329.y);
        let x_3332 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
        let x_3339 : vec3<f32> = txVec59;
        let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
        u_xlat85 = x_3341;
      }
      let x_3342 : i32 = u_xlati81;
      let x_3344 : f32 = x_249.x_AdditionalShadowParams[x_3342].x;
      u_xlat10.x = (1.0f + -(x_3344));
      let x_3348 : f32 = u_xlat85;
      let x_3349 : i32 = u_xlati81;
      let x_3351 : f32 = x_249.x_AdditionalShadowParams[x_3349].x;
      let x_3354 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3348 * x_3351) + x_3354);
      let x_3358 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3358);
      let x_3363 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3363 >= 1.0f);
      let x_3365 : bool = u_xlatb60;
      let x_3367 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3365 | x_3367);
      let x_3371 : bool = u_xlatb35.x;
      if (x_3371) {
        x_3372 = 1.0f;
      } else {
        let x_3377 : f32 = u_xlat10.x;
        x_3372 = x_3377;
      }
      let x_3378 : f32 = x_3372;
      u_xlat10.x = x_3378;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3383 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3383) + 1.0f);
    let x_3386 : f32 = u_xlat1;
    let x_3387 : f32 = u_xlat35;
    let x_3390 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3386 * x_3387) + x_3390);
    let x_3393 : f32 = u_xlat83;
    let x_3395 : f32 = u_xlat10.x;
    u_xlat83 = (x_3393 * x_3395);
    let x_3397 : vec3<f32> = u_xlat26;
    let x_3398 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3397, x_3398);
    let x_3402 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3402, 0.0f, 1.0f);
    let x_3405 : f32 = u_xlat83;
    let x_3407 : f32 = u_xlat10.x;
    u_xlat83 = (x_3405 * x_3407);
    let x_3409 : f32 = u_xlat83;
    let x_3411 : i32 = u_xlati81;
    let x_3413 : vec4<f32> = x_1880.x_AdditionalLightsColor[x_3411];
    let x_3415 : vec3<f32> = (vec3<f32>(x_3409, x_3409, x_3409) * vec3<f32>(x_3413.x, x_3413.y, x_3413.z));
    let x_3416 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3415.x, x_3415.y, x_3415.z, x_3416.w);
    let x_3418 : vec4<f32> = u_xlat8;
    let x_3420 : vec4<f32> = u_xlat9;
    let x_3423 : vec4<f32> = u_xlat5;
    let x_3425 : vec3<f32> = ((vec3<f32>(x_3418.x, x_3418.y, x_3418.z) * vec3<f32>(x_3420.x, x_3420.x, x_3420.x)) + vec3<f32>(x_3423.x, x_3423.y, x_3423.z));
    let x_3426 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
    let x_3428 : vec4<f32> = u_xlat8;
    let x_3430 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3428.x, x_3428.y, x_3428.z), vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
    let x_3433 : f32 = u_xlat81;
    u_xlat81 = max(x_3433, 1.17549435e-38f);
    let x_3435 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3435);
    let x_3437 : f32 = u_xlat81;
    let x_3439 : vec4<f32> = u_xlat8;
    let x_3441 : vec3<f32> = (vec3<f32>(x_3437, x_3437, x_3437) * vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
    let x_3442 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
    let x_3444 : vec3<f32> = u_xlat26;
    let x_3445 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3444, vec3<f32>(x_3445.x, x_3445.y, x_3445.z));
    let x_3448 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3448, 0.0f, 1.0f);
    let x_3450 : vec3<f32> = u_xlat34;
    let x_3451 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3450, vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
    let x_3456 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3456, 0.0f, 1.0f);
    let x_3459 : f32 = u_xlat81;
    let x_3460 : f32 = u_xlat81;
    u_xlat81 = (x_3459 * x_3460);
    let x_3462 : f32 = u_xlat81;
    let x_3464 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3462 * x_3464) + 1.00001001358032226562f);
    let x_3468 : f32 = u_xlat8.x;
    let x_3470 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3468 * x_3470);
    let x_3473 : f32 = u_xlat81;
    let x_3474 : f32 = u_xlat81;
    u_xlat81 = (x_3473 * x_3474);
    let x_3477 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3477, 0.10000000149011611938f);
    let x_3480 : f32 = u_xlat81;
    let x_3482 : f32 = u_xlat8.x;
    u_xlat81 = (x_3480 * x_3482);
    let x_3484 : f32 = u_xlat28;
    let x_3485 : f32 = u_xlat81;
    u_xlat81 = (x_3484 * x_3485);
    let x_3487 : f32 = u_xlat29;
    let x_3488 : f32 = u_xlat81;
    u_xlat81 = (x_3487 / x_3488);
    let x_3490 : vec4<f32> = u_xlat0;
    let x_3492 : f32 = u_xlat81;
    let x_3495 : vec4<f32> = u_xlat3;
    let x_3497 : vec3<f32> = ((vec3<f32>(x_3490.x, x_3490.y, x_3490.z) * vec3<f32>(x_3492, x_3492, x_3492)) + vec3<f32>(x_3495.x, x_3495.z, x_3495.w));
    let x_3498 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3497.x, x_3497.y, x_3497.z, x_3498.w);
    let x_3500 : vec4<f32> = u_xlat8;
    let x_3502 : vec4<f32> = u_xlat10;
    let x_3505 : vec4<f32> = u_xlat4;
    let x_3507 : vec3<f32> = ((vec3<f32>(x_3500.x, x_3500.y, x_3500.z) * vec3<f32>(x_3502.x, x_3502.y, x_3502.z)) + vec3<f32>(x_3505.x, x_3505.z, x_3505.w));
    let x_3508 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3507.x, x_3508.y, x_3507.y, x_3507.z);

    continuing {
      let x_3510 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3510 + bitcast<u32>(1i));
    }
  }
  let x_3512 : vec3<f32> = u_xlat32;
  let x_3513 : vec4<f32> = u_xlat6;
  let x_3516 : vec3<f32> = u_xlat27;
  let x_3517 : vec3<f32> = ((x_3512 * vec3<f32>(x_3513.x, x_3513.y, x_3513.z)) + x_3516);
  let x_3518 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3517.x, x_3517.y, x_3517.z, x_3518.w);
  let x_3520 : vec4<f32> = u_xlat4;
  let x_3522 : vec4<f32> = u_xlat0;
  let x_3524 : vec3<f32> = (vec3<f32>(x_3520.x, x_3520.z, x_3520.w) + vec3<f32>(x_3522.x, x_3522.y, x_3522.z));
  let x_3525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3524.x, x_3524.y, x_3524.z, x_3525.w);
  let x_3527 : f32 = u_xlat2;
  let x_3528 : f32 = u_xlat2;
  u_xlat75 = (x_3527 * -(x_3528));
  let x_3531 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3531);
  let x_3533 : vec4<f32> = u_xlat0;
  let x_3536 : vec4<f32> = x_29.unity_FogColor;
  let x_3539 : vec3<f32> = (vec3<f32>(x_3533.x, x_3533.y, x_3533.z) + -(vec3<f32>(x_3536.x, x_3536.y, x_3536.z)));
  let x_3540 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3539.x, x_3539.y, x_3539.z, x_3540.w);
  let x_3544 : f32 = u_xlat75;
  let x_3546 : vec4<f32> = u_xlat0;
  let x_3550 : vec4<f32> = x_29.unity_FogColor;
  let x_3552 : vec3<f32> = ((vec3<f32>(x_3544, x_3544, x_3544) * vec3<f32>(x_3546.x, x_3546.y, x_3546.z)) + vec3<f32>(x_3550.x, x_3550.y, x_3550.z));
  let x_3553 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3553.w);
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


