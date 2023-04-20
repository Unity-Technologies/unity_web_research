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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlat27 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_150 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb81 : bool;

@group(1) @binding(3) var<uniform> x_299 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat81 : f32;

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

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_1967 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

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
  var x_2107 : f32;
  var x_2117 : f32;
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
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_29.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.x = x_78.x;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  let x_85 : vec4<f32> = vs_TEXCOORD3;
  u_xlat27 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_88);
  let x_91 : f32 = u_xlat27;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91, x_91, x_91) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat27 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat27;
  u_xlat27 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat27;
  u_xlat27 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat27;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat27 = (x_124 + x_127);
  let x_129 : f32 = u_xlat27;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat27 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat27;
  u_xlat27 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat27;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat27 = (x_138 * x_141);
  u_xlat2.w = 1.0f;
  let x_154 : vec4<f32> = x_150.unity_SHAr;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_150.unity_SHAg;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_150.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_150.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_150.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_150.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat53 = (x_197 * x_199);
  let x_202 : f32 = u_xlat2.x;
  let x_204 : f32 = u_xlat2.x;
  let x_206 : f32 = u_xlat53;
  u_xlat53 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_150.unity_SHC;
  let x_213 : f32 = u_xlat53;
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat3;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_229 : f32 = u_xlat1.x;
  u_xlat53 = ((-(x_229) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_235 : f32 = u_xlat53;
  u_xlat79 = (-(x_235) + 1.0f);
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : f32 = u_xlat53;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240, x_240, x_240));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = u_xlat1;
  let x_254 : vec4<f32> = u_xlat0;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_263 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_263) + 1.0f);
  let x_268 : f32 = u_xlat1.x;
  let x_270 : f32 = u_xlat1.x;
  u_xlat53 = (x_268 * x_270);
  let x_272 : f32 = u_xlat53;
  u_xlat53 = max(x_272, 0.0078125f);
  let x_276 : f32 = u_xlat53;
  let x_277 : f32 = u_xlat53;
  u_xlat80 = (x_276 * x_277);
  let x_281 : f32 = u_xlat0.w;
  let x_282 : f32 = u_xlat79;
  u_xlat78 = (x_281 + x_282);
  let x_284 : f32 = u_xlat78;
  u_xlat78 = clamp(x_284, 0.0f, 1.0f);
  let x_286 : f32 = u_xlat53;
  u_xlat79 = ((x_286 * 4.0f) + 2.0f);
  let x_301 : f32 = x_299.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_301);
  let x_303 : bool = u_xlatb81;
  if (x_303) {
    let x_307 : f32 = x_299.x_MainLightShadowParams.y;
    u_xlatb81 = (x_307 == 1.0f);
    let x_309 : bool = u_xlatb81;
    if (x_309) {
      let x_313 : vec4<f32> = vs_TEXCOORD8;
      let x_316 : vec4<f32> = x_299.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y) + x_316);
      let x_320 : vec4<f32> = u_xlat5;
      let x_321 : vec2<f32> = vec2<f32>(x_320.x, x_320.y);
      let x_323 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_321.x, x_321.y, x_323);
      let x_336 : vec3<f32> = txVec0;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat6.x = x_338;
      let x_341 : vec4<f32> = u_xlat5;
      let x_342 : vec2<f32> = vec2<f32>(x_341.z, x_341.w);
      let x_344 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_342.x, x_342.y, x_344);
      let x_351 : vec3<f32> = txVec1;
      let x_353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_351.xy, x_351.z);
      u_xlat6.y = x_353;
      let x_355 : vec4<f32> = vs_TEXCOORD8;
      let x_359 : vec4<f32> = x_299.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_355.x, x_355.y, x_355.x, x_355.y) + x_359);
      let x_362 : vec4<f32> = u_xlat5;
      let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
      let x_365 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_372 : vec3<f32> = txVec2;
      let x_374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_372.xy, x_372.z);
      u_xlat6.z = x_374;
      let x_377 : vec4<f32> = u_xlat5;
      let x_378 : vec2<f32> = vec2<f32>(x_377.z, x_377.w);
      let x_380 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_378.x, x_378.y, x_380);
      let x_387 : vec3<f32> = txVec3;
      let x_389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_387.xy, x_387.z);
      u_xlat6.w = x_389;
      let x_392 : vec4<f32> = u_xlat6;
      u_xlat81 = dot(x_392, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_399 : f32 = x_299.x_MainLightShadowParams.y;
      u_xlatb82 = (x_399 == 2.0f);
      let x_401 : bool = u_xlatb82;
      if (x_401) {
        let x_404 : vec4<f32> = vs_TEXCOORD8;
        let x_408 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_413 : vec2<f32> = ((vec2<f32>(x_404.x, x_404.y) * vec2<f32>(x_408.z, x_408.w)) + vec2<f32>(0.5f, 0.5f));
        let x_414 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_416 : vec4<f32> = u_xlat5;
        let x_418 : vec2<f32> = floor(vec2<f32>(x_416.x, x_416.y));
        let x_419 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_423 : vec4<f32> = vs_TEXCOORD8;
        let x_426 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_429 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426.z, x_426.w)) + -(vec2<f32>(x_429.x, x_429.y)));
        let x_433 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_433.x, x_433.x, x_433.y, x_433.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_438 : vec4<f32> = u_xlat6;
        let x_440 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_438.x, x_438.x, x_438.z, x_438.z) * vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z));
        let x_443 : vec4<f32> = u_xlat7;
        let x_447 : vec2<f32> = (vec2<f32>(x_443.y, x_443.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_448.y, x_447.y, x_448.w);
        let x_450 : vec4<f32> = u_xlat7;
        let x_453 : vec2<f32> = u_xlat57;
        let x_455 : vec2<f32> = ((vec2<f32>(x_450.x, x_450.z) * vec2<f32>(0.5f, 0.5f)) + -(x_453));
        let x_456 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_459 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_459) + vec2<f32>(1.0f, 1.0f));
        let x_464 : vec2<f32> = u_xlat57;
        let x_466 : vec2<f32> = min(x_464, vec2<f32>(0.0f, 0.0f));
        let x_467 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec4<f32> = u_xlat8;
        let x_472 : vec4<f32> = u_xlat8;
        let x_475 : vec2<f32> = u_xlat59;
        let x_476 : vec2<f32> = ((-(vec2<f32>(x_469.x, x_469.y)) * vec2<f32>(x_472.x, x_472.y)) + x_475);
        let x_477 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_479, vec2<f32>(0.0f, 0.0f));
        let x_481 : vec2<f32> = u_xlat57;
        let x_483 : vec2<f32> = u_xlat57;
        let x_485 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_481) * x_483) + vec2<f32>(x_485.y, x_485.w));
        let x_488 : vec4<f32> = u_xlat8;
        let x_490 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) + vec2<f32>(1.0f, 1.0f));
        let x_491 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_493 + vec2<f32>(1.0f, 1.0f));
        let x_496 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_501 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_503 : vec2<f32> = u_xlat59;
        let x_504 : vec2<f32> = (x_503 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_505 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
        let x_507 : vec4<f32> = u_xlat8;
        let x_509 : vec2<f32> = (vec2<f32>(x_507.x, x_507.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_510 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
        let x_513 : vec2<f32> = u_xlat57;
        let x_514 : vec2<f32> = (x_513 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_515 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_517 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_517.y, x_517.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_521 : f32 = u_xlat8.x;
        u_xlat9.z = x_521;
        let x_524 : f32 = u_xlat57.x;
        u_xlat9.w = x_524;
        let x_527 : f32 = u_xlat10.x;
        u_xlat7.z = x_527;
        let x_530 : f32 = u_xlat6.x;
        u_xlat7.w = x_530;
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_533.z, x_533.w, x_533.x, x_533.z) + vec4<f32>(x_535.z, x_535.w, x_535.x, x_535.z));
        let x_539 : f32 = u_xlat9.y;
        u_xlat8.z = x_539;
        let x_542 : f32 = u_xlat57.y;
        u_xlat8.w = x_542;
        let x_545 : f32 = u_xlat7.y;
        u_xlat10.z = x_545;
        let x_548 : f32 = u_xlat6.z;
        u_xlat10.w = x_548;
        let x_550 : vec4<f32> = u_xlat8;
        let x_552 : vec4<f32> = u_xlat10;
        let x_554 : vec3<f32> = (vec3<f32>(x_550.z, x_550.y, x_550.w) + vec3<f32>(x_552.z, x_552.y, x_552.w));
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat7;
        let x_559 : vec4<f32> = u_xlat11;
        let x_561 : vec3<f32> = (vec3<f32>(x_557.x, x_557.z, x_557.w) / vec3<f32>(x_559.z, x_559.w, x_559.y));
        let x_562 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat7;
        let x_570 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_571 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat10;
        let x_575 : vec4<f32> = u_xlat6;
        let x_577 : vec3<f32> = (vec3<f32>(x_573.z, x_573.y, x_573.w) / vec3<f32>(x_575.x, x_575.y, x_575.z));
        let x_578 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat8;
        let x_582 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_583 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat7;
        let x_588 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_590 : vec3<f32> = (vec3<f32>(x_585.y, x_585.x, x_585.z) * vec3<f32>(x_588.x, x_588.x, x_588.x));
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
        let x_593 : vec4<f32> = u_xlat8;
        let x_596 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_598 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(x_596.y, x_596.y, x_596.y));
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
        let x_602 : f32 = u_xlat8.x;
        u_xlat7.w = x_602;
        let x_604 : vec4<f32> = u_xlat5;
        let x_607 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) * vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y)) + vec4<f32>(x_610.y, x_610.w, x_610.x, x_610.w));
        let x_613 : vec4<f32> = u_xlat5;
        let x_616 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(x_619.z, x_619.w));
        let x_623 : f32 = u_xlat7.y;
        u_xlat8.w = x_623;
        let x_625 : vec4<f32> = u_xlat8;
        let x_626 : vec2<f32> = vec2<f32>(x_625.y, x_625.z);
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_627.x, x_626.x, x_627.z, x_626.y);
        let x_629 : vec4<f32> = u_xlat5;
        let x_632 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.x, x_635.y, x_635.z, x_635.y));
        let x_638 : vec4<f32> = u_xlat5;
        let x_641 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_638.x, x_638.y, x_638.x, x_638.y) * vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y)) + vec4<f32>(x_644.w, x_644.y, x_644.w, x_644.z));
        let x_647 : vec4<f32> = u_xlat5;
        let x_650 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y) * vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y)) + vec4<f32>(x_653.x, x_653.w, x_653.z, x_653.w));
        let x_657 : vec4<f32> = u_xlat6;
        let x_659 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_657.x, x_657.x, x_657.x, x_657.y) * vec4<f32>(x_659.z, x_659.w, x_659.y, x_659.z));
        let x_663 : vec4<f32> = u_xlat6;
        let x_665 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_663.y, x_663.y, x_663.z, x_663.z) * x_665);
        let x_669 : f32 = u_xlat6.z;
        let x_671 : f32 = u_xlat11.y;
        u_xlat82 = (x_669 * x_671);
        let x_674 : vec4<f32> = u_xlat9;
        let x_675 : vec2<f32> = vec2<f32>(x_674.x, x_674.y);
        let x_677 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec4;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat5.x = x_686;
        let x_689 : vec4<f32> = u_xlat9;
        let x_690 : vec2<f32> = vec2<f32>(x_689.z, x_689.w);
        let x_692 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_690.x, x_690.y, x_692);
        let x_700 : vec3<f32> = txVec5;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
        u_xlat31 = x_702;
        let x_703 : f32 = u_xlat31;
        let x_705 : f32 = u_xlat12.y;
        u_xlat31 = (x_703 * x_705);
        let x_708 : f32 = u_xlat12.x;
        let x_710 : f32 = u_xlat5.x;
        let x_712 : f32 = u_xlat31;
        u_xlat5.x = ((x_708 * x_710) + x_712);
        let x_716 : vec2<f32> = u_xlat57;
        let x_718 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec6;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat31 = x_727;
        let x_729 : f32 = u_xlat12.z;
        let x_730 : f32 = u_xlat31;
        let x_733 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_729 * x_730) + x_733);
        let x_737 : vec4<f32> = u_xlat8;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec7;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat31 = x_749;
        let x_751 : f32 = u_xlat12.w;
        let x_752 : f32 = u_xlat31;
        let x_755 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_751 * x_752) + x_755);
        let x_759 : vec4<f32> = u_xlat10;
        let x_760 : vec2<f32> = vec2<f32>(x_759.x, x_759.y);
        let x_762 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec8;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat31 = x_771;
        let x_773 : f32 = u_xlat13.x;
        let x_774 : f32 = u_xlat31;
        let x_777 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_773 * x_774) + x_777);
        let x_781 : vec4<f32> = u_xlat10;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec9;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat31 = x_793;
        let x_795 : f32 = u_xlat13.y;
        let x_796 : f32 = u_xlat31;
        let x_799 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_795 * x_796) + x_799);
        let x_803 : vec4<f32> = u_xlat8;
        let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
        let x_806 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec10;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
        u_xlat31 = x_815;
        let x_817 : f32 = u_xlat13.z;
        let x_818 : f32 = u_xlat31;
        let x_821 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_817 * x_818) + x_821);
        let x_825 : vec4<f32> = u_xlat7;
        let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
        let x_828 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec11;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat31 = x_837;
        let x_839 : f32 = u_xlat13.w;
        let x_840 : f32 = u_xlat31;
        let x_843 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_839 * x_840) + x_843);
        let x_847 : vec4<f32> = u_xlat7;
        let x_848 : vec2<f32> = vec2<f32>(x_847.z, x_847.w);
        let x_850 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec12;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat31 = x_859;
        let x_860 : f32 = u_xlat82;
        let x_861 : f32 = u_xlat31;
        let x_864 : f32 = u_xlat5.x;
        u_xlat81 = ((x_860 * x_861) + x_864);
      } else {
        let x_867 : vec4<f32> = vs_TEXCOORD8;
        let x_870 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_873 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.z, x_870.w)) + vec2<f32>(0.5f, 0.5f));
        let x_874 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat5;
        let x_878 : vec2<f32> = floor(vec2<f32>(x_876.x, x_876.y));
        let x_879 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = vs_TEXCOORD8;
        let x_884 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_887 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.z, x_884.w)) + -(vec2<f32>(x_887.x, x_887.y)));
        let x_891 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_891.x, x_891.x, x_891.y, x_891.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_894 : vec4<f32> = u_xlat6;
        let x_896 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_894.x, x_894.x, x_894.z, x_894.z) * vec4<f32>(x_896.x, x_896.x, x_896.z, x_896.z));
        let x_899 : vec4<f32> = u_xlat7;
        let x_903 : vec2<f32> = (vec2<f32>(x_899.y, x_899.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_904.x, x_903.x, x_904.z, x_903.y);
        let x_906 : vec4<f32> = u_xlat7;
        let x_909 : vec2<f32> = u_xlat57;
        let x_911 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.z) * vec2<f32>(0.5f, 0.5f)) + -(x_909));
        let x_912 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_911.x, x_912.y, x_911.y, x_912.w);
        let x_914 : vec2<f32> = u_xlat57;
        let x_916 : vec2<f32> = (-(x_914) + vec2<f32>(1.0f, 1.0f));
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_919, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat59;
        let x_923 : vec2<f32> = u_xlat59;
        let x_925 : vec4<f32> = u_xlat7;
        let x_927 : vec2<f32> = ((-(x_921) * x_923) + vec2<f32>(x_925.x, x_925.y));
        let x_928 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_930 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_930, vec2<f32>(0.0f, 0.0f));
        let x_933 : vec2<f32> = u_xlat59;
        let x_935 : vec2<f32> = u_xlat59;
        let x_937 : vec4<f32> = u_xlat6;
        let x_939 : vec2<f32> = ((-(x_933) * x_935) + vec2<f32>(x_937.y, x_937.w));
        let x_940 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_939.x, x_940.y, x_939.y);
        let x_942 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = (vec2<f32>(x_942.x, x_942.y) + vec2<f32>(2.0f, 2.0f));
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        let x_948 : vec3<f32> = u_xlat32;
        let x_950 : vec2<f32> = (vec2<f32>(x_948.x, x_948.z) + vec2<f32>(2.0f, 2.0f));
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_954 : f32 = u_xlat6.y;
        u_xlat9.z = (x_954 * 0.08163200318813323975f);
        let x_958 : vec4<f32> = u_xlat6;
        let x_961 : vec3<f32> = (vec3<f32>(x_958.z, x_958.x, x_958.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_968 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_971 : f32 = u_xlat10.y;
        u_xlat9.x = x_971;
        let x_973 : vec2<f32> = u_xlat57;
        let x_980 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_981.x, x_980.x, x_981.z, x_980.y);
        let x_983 : vec2<f32> = u_xlat57;
        let x_987 : vec2<f32> = ((vec2<f32>(x_983.x, x_983.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_988 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_987.x, x_988.y, x_987.y, x_988.w);
        let x_991 : f32 = u_xlat6.x;
        u_xlat7.y = x_991;
        let x_994 : f32 = u_xlat8.y;
        u_xlat7.w = x_994;
        let x_996 : vec4<f32> = u_xlat7;
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_996 + x_997);
        let x_999 : vec2<f32> = u_xlat57;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_999.y, x_999.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1003 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1003.x, x_1002.x, x_1003.z, x_1002.y);
        let x_1005 : vec2<f32> = u_xlat57;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1005.y, x_1005.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1012 : f32 = u_xlat6.y;
        u_xlat8.y = x_1012;
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1014 + x_1015);
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1017 / x_1018);
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1020 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1026 / x_1027);
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1029 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1034 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1031.w, x_1031.x, x_1031.y, x_1031.z) * vec4<f32>(x_1034.x, x_1034.x, x_1034.x, x_1034.x));
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1040 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1037.x, x_1037.w, x_1037.y, x_1037.z) * vec4<f32>(x_1040.y, x_1040.y, x_1040.y, x_1040.y));
        let x_1043 : vec4<f32> = u_xlat7;
        let x_1044 : vec3<f32> = vec3<f32>(x_1043.y, x_1043.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1044.z);
        let x_1048 : f32 = u_xlat8.x;
        u_xlat10.y = x_1048;
        let x_1050 : vec4<f32> = u_xlat5;
        let x_1053 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat5;
        let x_1062 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.x, x_1062.y)) + vec2<f32>(x_1065.w, x_1065.y));
        let x_1069 : f32 = u_xlat10.y;
        u_xlat7.y = x_1069;
        let x_1072 : f32 = u_xlat8.z;
        u_xlat10.y = x_1072;
        let x_1074 : vec4<f32> = u_xlat5;
        let x_1077 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat5;
        let x_1086 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.w, x_1089.y));
        let x_1092 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1095 : f32 = u_xlat10.y;
        u_xlat7.z = x_1095;
        let x_1098 : vec4<f32> = u_xlat5;
        let x_1101 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.z));
        let x_1108 : f32 = u_xlat8.w;
        u_xlat10.y = x_1108;
        let x_1111 : vec4<f32> = u_xlat5;
        let x_1114 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1121 : vec4<f32> = u_xlat5;
        let x_1124 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.w, x_1127.y));
        let x_1131 : f32 = u_xlat10.y;
        u_xlat7.w = x_1131;
        let x_1134 : vec4<f32> = u_xlat5;
        let x_1137 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.x, x_1140.w));
        let x_1143 : vec4<f32> = u_xlat10;
        let x_1144 : vec3<f32> = vec3<f32>(x_1143.x, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1144.z);
        let x_1147 : vec4<f32> = u_xlat5;
        let x_1150 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1160 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.w, x_1163.y));
        let x_1167 : f32 = u_xlat7.x;
        u_xlat8.x = x_1167;
        let x_1169 : vec4<f32> = u_xlat5;
        let x_1172 : vec4<f32> = x_299.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1177 : vec2<f32> = ((vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(x_1172.x, x_1172.y)) + vec2<f32>(x_1175.x, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1181.x, x_1181.x, x_1181.x, x_1181.x) * x_1183);
        let x_1186 : vec4<f32> = u_xlat6;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1186.y, x_1186.y, x_1186.y, x_1186.y) * x_1188);
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1191.z, x_1191.z, x_1191.z, x_1191.z) * x_1193);
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1195.w, x_1195.w, x_1195.w, x_1195.w) * x_1197);
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.x, x_1200.y);
        let x_1203 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec13;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1210.xy, x_1210.z);
        u_xlat82 = x_1212;
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec14;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat7.x = x_1226;
        let x_1229 : f32 = u_xlat7.x;
        let x_1231 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1229 * x_1231);
        let x_1235 : f32 = u_xlat16.x;
        let x_1236 : f32 = u_xlat82;
        let x_1239 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1235 * x_1236) + x_1239);
        let x_1242 : vec2<f32> = u_xlat57;
        let x_1244 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec15;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat57.x = x_1253;
        let x_1256 : f32 = u_xlat16.z;
        let x_1258 : f32 = u_xlat57.x;
        let x_1260 : f32 = u_xlat82;
        u_xlat82 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat14;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec16;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat57.x = x_1275;
        let x_1278 : f32 = u_xlat16.w;
        let x_1280 : f32 = u_xlat57.x;
        let x_1282 : f32 = u_xlat82;
        u_xlat82 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat12;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec17;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat57.x = x_1297;
        let x_1300 : f32 = u_xlat17.x;
        let x_1302 : f32 = u_xlat57.x;
        let x_1304 : f32 = u_xlat82;
        u_xlat82 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec4<f32> = u_xlat12;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.z, x_1307.w);
        let x_1310 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec18;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat57.x = x_1319;
        let x_1322 : f32 = u_xlat17.y;
        let x_1324 : f32 = u_xlat57.x;
        let x_1326 : f32 = u_xlat82;
        u_xlat82 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat13;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec19;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat57.x = x_1341;
        let x_1344 : f32 = u_xlat17.z;
        let x_1346 : f32 = u_xlat57.x;
        let x_1348 : f32 = u_xlat82;
        u_xlat82 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat14;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec20;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat57.x = x_1363;
        let x_1366 : f32 = u_xlat17.w;
        let x_1368 : f32 = u_xlat57.x;
        let x_1370 : f32 = u_xlat82;
        u_xlat82 = ((x_1366 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat15;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec21;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat57.x = x_1385;
        let x_1388 : f32 = u_xlat18.x;
        let x_1390 : f32 = u_xlat57.x;
        let x_1392 : f32 = u_xlat82;
        u_xlat82 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat15;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec22;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat57.x = x_1407;
        let x_1410 : f32 = u_xlat18.y;
        let x_1412 : f32 = u_xlat57.x;
        let x_1414 : f32 = u_xlat82;
        u_xlat82 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec2<f32> = u_xlat33;
        let x_1419 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec23;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat57.x = x_1428;
        let x_1431 : f32 = u_xlat18.z;
        let x_1433 : f32 = u_xlat57.x;
        let x_1435 : f32 = u_xlat82;
        u_xlat82 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec2<f32> = u_xlat65;
        let x_1440 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec24;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat57.x = x_1449;
        let x_1452 : f32 = u_xlat18.w;
        let x_1454 : f32 = u_xlat57.x;
        let x_1456 : f32 = u_xlat82;
        u_xlat82 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat10;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.x, x_1459.y);
        let x_1462 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec25;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat57.x = x_1471;
        let x_1474 : f32 = u_xlat6.x;
        let x_1476 : f32 = u_xlat57.x;
        let x_1478 : f32 = u_xlat82;
        u_xlat82 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec4<f32> = u_xlat10;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.z, x_1481.w);
        let x_1484 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec26;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat57.x = x_1493;
        let x_1496 : f32 = u_xlat6.y;
        let x_1498 : f32 = u_xlat57.x;
        let x_1500 : f32 = u_xlat82;
        u_xlat82 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec2<f32> = u_xlat60;
        let x_1505 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec27;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat57.x = x_1514;
        let x_1517 : f32 = u_xlat6.z;
        let x_1519 : f32 = u_xlat57.x;
        let x_1521 : f32 = u_xlat82;
        u_xlat82 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat5;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec28;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat5.x = x_1536;
        let x_1539 : f32 = u_xlat6.w;
        let x_1541 : f32 = u_xlat5.x;
        let x_1543 : f32 = u_xlat82;
        u_xlat81 = ((x_1539 * x_1541) + x_1543);
      }
    }
  } else {
    let x_1547 : vec4<f32> = vs_TEXCOORD8;
    let x_1548 : vec2<f32> = vec2<f32>(x_1547.x, x_1547.y);
    let x_1550 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
    let x_1557 : vec3<f32> = txVec29;
    let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
    u_xlat81 = x_1559;
  }
  let x_1561 : f32 = x_299.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1561) + 1.0f);
  let x_1564 : f32 = u_xlat81;
  let x_1566 : f32 = x_299.x_MainLightShadowParams.x;
  let x_1568 : f32 = u_xlat82;
  u_xlat81 = ((x_1564 * x_1566) + x_1568);
  let x_1571 : f32 = vs_TEXCOORD8.z;
  u_xlatb82 = (0.0f >= x_1571);
  let x_1575 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1575 >= 1.0f);
  let x_1577 : bool = u_xlatb82;
  let x_1578 : bool = u_xlatb5;
  u_xlatb82 = (x_1577 | x_1578);
  let x_1580 : bool = u_xlatb82;
  let x_1581 : f32 = u_xlat81;
  u_xlat81 = select(x_1581, 1.0f, x_1580);
  let x_1583 : vec3<f32> = vs_TEXCOORD7;
  let x_1587 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1589 : vec3<f32> = (x_1583 + -(x_1587));
  let x_1590 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
  let x_1592 : vec4<f32> = u_xlat5;
  let x_1594 : vec4<f32> = u_xlat5;
  u_xlat82 = dot(vec3<f32>(x_1592.x, x_1592.y, x_1592.z), vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
  let x_1597 : f32 = u_xlat82;
  let x_1599 : f32 = x_299.x_MainLightShadowParams.z;
  let x_1602 : f32 = x_299.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1597 * x_1599) + x_1602);
  let x_1606 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1606, 0.0f, 1.0f);
  let x_1609 : f32 = u_xlat81;
  u_xlat31 = (-(x_1609) + 1.0f);
  let x_1613 : f32 = u_xlat5.x;
  let x_1614 : f32 = u_xlat31;
  let x_1616 : f32 = u_xlat81;
  u_xlat81 = ((x_1613 * x_1614) + x_1616);
  let x_1619 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1619;
  let x_1623 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1623;
  let x_1627 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1627;
  let x_1630 : vec4<f32> = u_xlat5;
  let x_1633 : vec4<f32> = u_xlat2;
  u_xlat83 = dot(-(vec3<f32>(x_1630.x, x_1630.y, x_1630.z)), vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1636 : f32 = u_xlat83;
  let x_1637 : f32 = u_xlat83;
  u_xlat83 = (x_1636 + x_1637);
  let x_1639 : vec4<f32> = u_xlat2;
  let x_1641 : f32 = u_xlat83;
  let x_1645 : vec4<f32> = u_xlat5;
  let x_1648 : vec3<f32> = ((vec3<f32>(x_1639.x, x_1639.y, x_1639.z) * -(vec3<f32>(x_1641, x_1641, x_1641))) + -(vec3<f32>(x_1645.x, x_1645.y, x_1645.z)));
  let x_1649 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
  let x_1651 : vec4<f32> = u_xlat2;
  let x_1653 : vec4<f32> = u_xlat5;
  u_xlat83 = dot(vec3<f32>(x_1651.x, x_1651.y, x_1651.z), vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1656 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1656, 0.0f, 1.0f);
  let x_1658 : f32 = u_xlat83;
  u_xlat83 = (-(x_1658) + 1.0f);
  let x_1661 : f32 = u_xlat83;
  let x_1662 : f32 = u_xlat83;
  u_xlat83 = (x_1661 * x_1662);
  let x_1664 : f32 = u_xlat83;
  let x_1665 : f32 = u_xlat83;
  u_xlat83 = (x_1664 * x_1665);
  let x_1669 : f32 = u_xlat1.x;
  u_xlat84 = ((-(x_1669) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1676 : f32 = u_xlat1.x;
  let x_1677 : f32 = u_xlat84;
  u_xlat1.x = (x_1676 * x_1677);
  let x_1681 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1681 * 6.0f);
  let x_1693 : vec4<f32> = u_xlat6;
  let x_1696 : f32 = u_xlat1.x;
  let x_1697 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1693.x, x_1693.y, x_1693.z), x_1696);
  u_xlat6 = x_1697;
  let x_1699 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1699 + -1.0f);
  let x_1704 : f32 = x_150.unity_SpecCube0_HDR.w;
  let x_1706 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1704 * x_1706) + 1.0f);
  let x_1711 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1711, 0.0f);
  let x_1715 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1715);
  let x_1719 : f32 = u_xlat1.x;
  let x_1721 : f32 = x_150.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1719 * x_1721);
  let x_1725 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1725);
  let x_1729 : f32 = u_xlat1.x;
  let x_1731 : f32 = x_150.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1729 * x_1731);
  let x_1734 : vec4<f32> = u_xlat6;
  let x_1736 : vec3<f32> = u_xlat1;
  let x_1738 : vec3<f32> = (vec3<f32>(x_1734.x, x_1734.y, x_1734.z) * vec3<f32>(x_1736.x, x_1736.x, x_1736.x));
  let x_1739 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
  let x_1741 : f32 = u_xlat53;
  let x_1743 : f32 = u_xlat53;
  let x_1747 : vec2<f32> = ((vec2<f32>(x_1741, x_1741) * vec2<f32>(x_1743, x_1743)) + vec2<f32>(-1.0f, 1.0f));
  let x_1748 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1747.x, x_1748.y, x_1747.y);
  let x_1751 : f32 = u_xlat1.z;
  u_xlat53 = (1.0f / x_1751);
  let x_1753 : vec4<f32> = u_xlat0;
  let x_1756 : f32 = u_xlat78;
  let x_1758 : vec3<f32> = (-(vec3<f32>(x_1753.x, x_1753.y, x_1753.z)) + vec3<f32>(x_1756, x_1756, x_1756));
  let x_1759 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : f32 = u_xlat83;
  let x_1763 : vec4<f32> = u_xlat7;
  let x_1766 : vec4<f32> = u_xlat0;
  let x_1768 : vec3<f32> = ((vec3<f32>(x_1761, x_1761, x_1761) * vec3<f32>(x_1763.x, x_1763.y, x_1763.z)) + vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1771 : f32 = u_xlat53;
  let x_1773 : vec4<f32> = u_xlat7;
  let x_1775 : vec3<f32> = (vec3<f32>(x_1771, x_1771, x_1771) * vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
  let x_1778 : vec4<f32> = u_xlat6;
  let x_1780 : vec4<f32> = u_xlat7;
  let x_1782 : vec3<f32> = (vec3<f32>(x_1778.x, x_1778.y, x_1778.z) * vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1783 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1785 : vec3<f32> = u_xlat3;
  let x_1786 : vec4<f32> = u_xlat4;
  let x_1789 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_1785 * vec3<f32>(x_1786.x, x_1786.y, x_1786.z)) + vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
  let x_1792 : f32 = u_xlat81;
  let x_1794 : f32 = x_150.unity_LightData.z;
  u_xlat78 = (x_1792 * x_1794);
  let x_1796 : vec4<f32> = u_xlat2;
  let x_1799 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat53 = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1802, 0.0f, 1.0f);
  let x_1804 : f32 = u_xlat78;
  let x_1805 : f32 = u_xlat53;
  u_xlat78 = (x_1804 * x_1805);
  let x_1807 : f32 = u_xlat78;
  let x_1810 : vec4<f32> = x_29.x_MainLightColor;
  let x_1812 : vec3<f32> = (vec3<f32>(x_1807, x_1807, x_1807) * vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1815 : vec4<f32> = u_xlat5;
  let x_1818 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1820 : vec3<f32> = (vec3<f32>(x_1815.x, x_1815.y, x_1815.z) + vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1823 : vec4<f32> = u_xlat7;
  let x_1825 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat78;
  u_xlat78 = max(x_1828, 1.17549435e-38f);
  let x_1831 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1831);
  let x_1833 : f32 = u_xlat78;
  let x_1835 : vec4<f32> = u_xlat7;
  let x_1837 : vec3<f32> = (vec3<f32>(x_1833, x_1833, x_1833) * vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
  let x_1838 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : vec4<f32> = u_xlat2;
  let x_1842 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1840.x, x_1840.y, x_1840.z), vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1845, 0.0f, 1.0f);
  let x_1848 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1850 : vec4<f32> = u_xlat7;
  u_xlat53 = dot(vec3<f32>(x_1848.x, x_1848.y, x_1848.z), vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
  let x_1853 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1853, 0.0f, 1.0f);
  let x_1855 : f32 = u_xlat78;
  let x_1856 : f32 = u_xlat78;
  u_xlat78 = (x_1855 * x_1856);
  let x_1858 : f32 = u_xlat78;
  let x_1860 : f32 = u_xlat1.x;
  u_xlat78 = ((x_1858 * x_1860) + 1.00001001358032226562f);
  let x_1864 : f32 = u_xlat53;
  let x_1865 : f32 = u_xlat53;
  u_xlat53 = (x_1864 * x_1865);
  let x_1867 : f32 = u_xlat78;
  let x_1868 : f32 = u_xlat78;
  u_xlat78 = (x_1867 * x_1868);
  let x_1870 : f32 = u_xlat53;
  u_xlat53 = max(x_1870, 0.10000000149011611938f);
  let x_1873 : f32 = u_xlat78;
  let x_1874 : f32 = u_xlat53;
  u_xlat78 = (x_1873 * x_1874);
  let x_1876 : f32 = u_xlat79;
  let x_1877 : f32 = u_xlat78;
  u_xlat78 = (x_1876 * x_1877);
  let x_1879 : f32 = u_xlat80;
  let x_1880 : f32 = u_xlat78;
  u_xlat78 = (x_1879 / x_1880);
  let x_1882 : vec4<f32> = u_xlat0;
  let x_1884 : f32 = u_xlat78;
  let x_1887 : vec4<f32> = u_xlat4;
  let x_1889 : vec3<f32> = ((vec3<f32>(x_1882.x, x_1882.y, x_1882.z) * vec3<f32>(x_1884, x_1884, x_1884)) + vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1893 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1895 : f32 = x_150.unity_LightData.y;
  u_xlat78 = min(x_1893, x_1895);
  let x_1899 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1899));
  let x_1902 : f32 = u_xlat82;
  let x_1905 : f32 = x_299.x_AdditionalShadowFadeParams.x;
  let x_1908 : f32 = x_299.x_AdditionalShadowFadeParams.y;
  u_xlat53 = ((x_1902 * x_1905) + x_1908);
  let x_1910 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1910, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1922 : u32 = u_xlatu_loop_1;
    let x_1923 : u32 = u_xlatu78;
    if ((x_1922 < x_1923)) {
    } else {
      break;
    }
    let x_1926 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_1926 >> 2u);
    let x_1930 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_1930 & 3u));
    let x_1933 : u32 = u_xlatu82;
    let x_1936 : vec4<f32> = x_150.unity_LightIndices[bitcast<i32>(x_1933)];
    let x_1946 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1951 : vec4<u32> = indexable[x_1946];
    u_xlat82 = dot(x_1936, bitcast<vec4<f32>>(x_1951));
    let x_1955 : f32 = u_xlat82;
    u_xlati82 = i32(x_1955);
    let x_1957 : vec3<f32> = vs_TEXCOORD7;
    let x_1968 : i32 = u_xlati82;
    let x_1970 : vec4<f32> = x_1967.x_AdditionalLightsPosition[x_1968];
    let x_1973 : i32 = u_xlati82;
    let x_1975 : vec4<f32> = x_1967.x_AdditionalLightsPosition[x_1973];
    let x_1977 : vec3<f32> = ((-(x_1957) * vec3<f32>(x_1970.w, x_1970.w, x_1970.w)) + vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
    let x_1978 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
    let x_1980 : vec4<f32> = u_xlat9;
    let x_1982 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_1980.x, x_1980.y, x_1980.z), vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
    let x_1985 : f32 = u_xlat83;
    u_xlat83 = max(x_1985, 0.00006103515625f);
    let x_1988 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_1988);
    let x_1990 : f32 = u_xlat84;
    let x_1992 : vec4<f32> = u_xlat9;
    let x_1994 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1995 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
    let x_1998 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_1998);
    let x_2000 : f32 = u_xlat83;
    let x_2001 : i32 = u_xlati82;
    let x_2003 : f32 = x_1967.x_AdditionalLightsAttenuation[x_2001].x;
    u_xlat83 = (x_2000 * x_2003);
    let x_2005 : f32 = u_xlat83;
    let x_2007 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2005) * x_2007) + 1.0f);
    let x_2010 : f32 = u_xlat83;
    u_xlat83 = max(x_2010, 0.0f);
    let x_2012 : f32 = u_xlat83;
    let x_2013 : f32 = u_xlat83;
    u_xlat83 = (x_2012 * x_2013);
    let x_2015 : f32 = u_xlat83;
    let x_2016 : f32 = u_xlat85;
    u_xlat83 = (x_2015 * x_2016);
    let x_2018 : i32 = u_xlati82;
    let x_2020 : vec4<f32> = x_1967.x_AdditionalLightsSpotDir[x_2018];
    let x_2022 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2020.x, x_2020.y, x_2020.z), vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
    let x_2025 : f32 = u_xlat85;
    let x_2026 : i32 = u_xlati82;
    let x_2028 : f32 = x_1967.x_AdditionalLightsAttenuation[x_2026].z;
    let x_2030 : i32 = u_xlati82;
    let x_2032 : f32 = x_1967.x_AdditionalLightsAttenuation[x_2030].w;
    u_xlat85 = ((x_2025 * x_2028) + x_2032);
    let x_2034 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2034, 0.0f, 1.0f);
    let x_2036 : f32 = u_xlat85;
    let x_2037 : f32 = u_xlat85;
    u_xlat85 = (x_2036 * x_2037);
    let x_2039 : f32 = u_xlat83;
    let x_2040 : f32 = u_xlat85;
    u_xlat83 = (x_2039 * x_2040);
    let x_2044 : i32 = u_xlati82;
    let x_2046 : f32 = x_299.x_AdditionalShadowParams[x_2044].w;
    u_xlati85 = i32(x_2046);
    let x_2049 : i32 = u_xlati85;
    u_xlatb86 = (x_2049 >= 0i);
    let x_2051 : bool = u_xlatb86;
    if (x_2051) {
      let x_2055 : i32 = u_xlati82;
      let x_2057 : f32 = x_299.x_AdditionalShadowParams[x_2055].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2057, x_2057, x_2057, x_2057))));
      let x_2062 : bool = u_xlatb86;
      if (x_2062) {
        let x_2067 : vec4<f32> = u_xlat10;
        let x_2070 : vec4<f32> = u_xlat10;
        let x_2073 : vec4<bool> = (abs(vec4<f32>(x_2067.z, x_2067.z, x_2067.y, x_2067.z)) >= abs(vec4<f32>(x_2070.x, x_2070.y, x_2070.x, x_2070.x)));
        let x_2075 : vec3<bool> = vec3<bool>(x_2073.x, x_2073.y, x_2073.z);
        let x_2076 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
        let x_2079 : bool = u_xlatb11.y;
        let x_2081 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2079 & x_2081);
        let x_2083 : vec4<f32> = u_xlat10;
        let x_2086 : vec4<bool> = (-(vec4<f32>(x_2083.z, x_2083.y, x_2083.z, x_2083.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2087 : vec3<bool> = vec3<bool>(x_2086.x, x_2086.y, x_2086.w);
        let x_2088 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2087.x, x_2087.y, x_2088.z, x_2087.z);
        let x_2091 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2091);
        let x_2096 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2096);
        let x_2102 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2102);
        let x_2105 : bool = u_xlatb11.z;
        if (x_2105) {
          let x_2111 : f32 = u_xlat11.y;
          x_2107 = x_2111;
        } else {
          let x_2113 : f32 = u_xlat87;
          x_2107 = x_2113;
        }
        let x_2114 : f32 = x_2107;
        u_xlat87 = x_2114;
        let x_2116 : bool = u_xlatb86;
        if (x_2116) {
          let x_2121 : f32 = u_xlat11.x;
          x_2117 = x_2121;
        } else {
          let x_2123 : f32 = u_xlat87;
          x_2117 = x_2123;
        }
        let x_2124 : f32 = x_2117;
        u_xlat86 = x_2124;
        let x_2125 : i32 = u_xlati82;
        let x_2127 : f32 = x_299.x_AdditionalShadowParams[x_2125].w;
        u_xlat87 = trunc(x_2127);
        let x_2129 : f32 = u_xlat86;
        let x_2130 : f32 = u_xlat87;
        u_xlat86 = (x_2129 + x_2130);
        let x_2132 : f32 = u_xlat86;
        u_xlati85 = i32(x_2132);
      }
      let x_2134 : i32 = u_xlati85;
      u_xlati85 = (x_2134 << bitcast<u32>(2i));
      let x_2136 : vec3<f32> = vs_TEXCOORD7;
      let x_2139 : i32 = u_xlati85;
      let x_2142 : i32 = u_xlati85;
      let x_2146 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[((x_2139 + 1i) / 4i)][((x_2142 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2136.y, x_2136.y, x_2136.y, x_2136.y) * x_2146);
      let x_2148 : i32 = u_xlati85;
      let x_2150 : i32 = u_xlati85;
      let x_2153 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[(x_2148 / 4i)][(x_2150 % 4i)];
      let x_2154 : vec3<f32> = vs_TEXCOORD7;
      let x_2157 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2153 * vec4<f32>(x_2154.x, x_2154.x, x_2154.x, x_2154.x)) + x_2157);
      let x_2159 : i32 = u_xlati85;
      let x_2162 : i32 = u_xlati85;
      let x_2166 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[((x_2159 + 2i) / 4i)][((x_2162 + 2i) % 4i)];
      let x_2167 : vec3<f32> = vs_TEXCOORD7;
      let x_2170 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2166 * vec4<f32>(x_2167.z, x_2167.z, x_2167.z, x_2167.z)) + x_2170);
      let x_2172 : vec4<f32> = u_xlat11;
      let x_2173 : i32 = u_xlati85;
      let x_2176 : i32 = u_xlati85;
      let x_2180 : vec4<f32> = x_299.x_AdditionalLightsWorldToShadow[((x_2173 + 3i) / 4i)][((x_2176 + 3i) % 4i)];
      u_xlat11 = (x_2172 + x_2180);
      let x_2182 : vec4<f32> = u_xlat11;
      let x_2184 : vec4<f32> = u_xlat11;
      let x_2186 : vec3<f32> = (vec3<f32>(x_2182.x, x_2182.y, x_2182.z) / vec3<f32>(x_2184.w, x_2184.w, x_2184.w));
      let x_2187 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
      let x_2190 : i32 = u_xlati82;
      let x_2192 : f32 = x_299.x_AdditionalShadowParams[x_2190].y;
      u_xlatb85 = (0.0f < x_2192);
      let x_2194 : bool = u_xlatb85;
      if (x_2194) {
        let x_2197 : i32 = u_xlati82;
        let x_2199 : f32 = x_299.x_AdditionalShadowParams[x_2197].y;
        u_xlatb85 = (1.0f == x_2199);
        let x_2201 : bool = u_xlatb85;
        if (x_2201) {
          let x_2204 : vec4<f32> = u_xlat11;
          let x_2208 : vec4<f32> = x_299.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2204.x, x_2204.y, x_2204.x, x_2204.y) + x_2208);
          let x_2211 : vec4<f32> = u_xlat12;
          let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
          let x_2214 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
          let x_2222 : vec3<f32> = txVec30;
          let x_2224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2222.xy, x_2222.z);
          u_xlat13.x = x_2224;
          let x_2227 : vec4<f32> = u_xlat12;
          let x_2228 : vec2<f32> = vec2<f32>(x_2227.z, x_2227.w);
          let x_2230 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2228.x, x_2228.y, x_2230);
          let x_2237 : vec3<f32> = txVec31;
          let x_2239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2237.xy, x_2237.z);
          u_xlat13.y = x_2239;
          let x_2241 : vec4<f32> = u_xlat11;
          let x_2245 : vec4<f32> = x_299.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2241.x, x_2241.y, x_2241.x, x_2241.y) + x_2245);
          let x_2248 : vec4<f32> = u_xlat12;
          let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
          let x_2251 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
          let x_2258 : vec3<f32> = txVec32;
          let x_2260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2258.xy, x_2258.z);
          u_xlat13.z = x_2260;
          let x_2263 : vec4<f32> = u_xlat12;
          let x_2264 : vec2<f32> = vec2<f32>(x_2263.z, x_2263.w);
          let x_2266 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2264.x, x_2264.y, x_2266);
          let x_2273 : vec3<f32> = txVec33;
          let x_2275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2273.xy, x_2273.z);
          u_xlat13.w = x_2275;
          let x_2277 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2277, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2280 : i32 = u_xlati82;
          let x_2282 : f32 = x_299.x_AdditionalShadowParams[x_2280].y;
          u_xlatb86 = (2.0f == x_2282);
          let x_2284 : bool = u_xlatb86;
          if (x_2284) {
            let x_2287 : vec4<f32> = u_xlat11;
            let x_2291 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2294 : vec2<f32> = ((vec2<f32>(x_2287.x, x_2287.y) * vec2<f32>(x_2291.z, x_2291.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2295 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2294.x, x_2294.y, x_2295.z, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat12;
            let x_2299 : vec2<f32> = floor(vec2<f32>(x_2297.x, x_2297.y));
            let x_2300 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2299.x, x_2299.y, x_2300.z, x_2300.w);
            let x_2303 : vec4<f32> = u_xlat11;
            let x_2306 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2309 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2303.x, x_2303.y) * vec2<f32>(x_2306.z, x_2306.w)) + -(vec2<f32>(x_2309.x, x_2309.y)));
            let x_2313 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2313.x, x_2313.x, x_2313.y, x_2313.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2316 : vec4<f32> = u_xlat13;
            let x_2318 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2316.x, x_2316.x, x_2316.z, x_2316.z) * vec4<f32>(x_2318.x, x_2318.x, x_2318.z, x_2318.z));
            let x_2321 : vec4<f32> = u_xlat14;
            let x_2323 : vec2<f32> = (vec2<f32>(x_2321.y, x_2321.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2324 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2323.x, x_2324.y, x_2323.y, x_2324.w);
            let x_2326 : vec4<f32> = u_xlat14;
            let x_2329 : vec2<f32> = u_xlat64;
            let x_2331 : vec2<f32> = ((vec2<f32>(x_2326.x, x_2326.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2329));
            let x_2332 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
            let x_2335 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2335) + vec2<f32>(1.0f, 1.0f));
            let x_2338 : vec2<f32> = u_xlat64;
            let x_2339 : vec2<f32> = min(x_2338, vec2<f32>(0.0f, 0.0f));
            let x_2340 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
            let x_2342 : vec4<f32> = u_xlat15;
            let x_2345 : vec4<f32> = u_xlat15;
            let x_2348 : vec2<f32> = u_xlat66;
            let x_2349 : vec2<f32> = ((-(vec2<f32>(x_2342.x, x_2342.y)) * vec2<f32>(x_2345.x, x_2345.y)) + x_2348);
            let x_2350 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2349.x, x_2349.y, x_2350.z, x_2350.w);
            let x_2352 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2352, vec2<f32>(0.0f, 0.0f));
            let x_2354 : vec2<f32> = u_xlat64;
            let x_2356 : vec2<f32> = u_xlat64;
            let x_2358 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2354) * x_2356) + vec2<f32>(x_2358.y, x_2358.w));
            let x_2361 : vec4<f32> = u_xlat15;
            let x_2363 : vec2<f32> = (vec2<f32>(x_2361.x, x_2361.y) + vec2<f32>(1.0f, 1.0f));
            let x_2364 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
            let x_2366 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2366 + vec2<f32>(1.0f, 1.0f));
            let x_2368 : vec4<f32> = u_xlat14;
            let x_2370 : vec2<f32> = (vec2<f32>(x_2368.x, x_2368.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2371 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2370.x, x_2370.y, x_2371.z, x_2371.w);
            let x_2373 : vec2<f32> = u_xlat66;
            let x_2374 : vec2<f32> = (x_2373 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2375 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2374.x, x_2374.y, x_2375.z, x_2375.w);
            let x_2377 : vec4<f32> = u_xlat15;
            let x_2379 : vec2<f32> = (vec2<f32>(x_2377.x, x_2377.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2380 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec2<f32> = u_xlat64;
            let x_2383 : vec2<f32> = (x_2382 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2384 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2383.x, x_2383.y, x_2384.z, x_2384.w);
            let x_2386 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2386.y, x_2386.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2390 : f32 = u_xlat15.x;
            u_xlat16.z = x_2390;
            let x_2393 : f32 = u_xlat64.x;
            u_xlat16.w = x_2393;
            let x_2396 : f32 = u_xlat17.x;
            u_xlat14.z = x_2396;
            let x_2399 : f32 = u_xlat13.x;
            u_xlat14.w = x_2399;
            let x_2401 : vec4<f32> = u_xlat14;
            let x_2403 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2401.z, x_2401.w, x_2401.x, x_2401.z) + vec4<f32>(x_2403.z, x_2403.w, x_2403.x, x_2403.z));
            let x_2407 : f32 = u_xlat16.y;
            u_xlat15.z = x_2407;
            let x_2410 : f32 = u_xlat64.y;
            u_xlat15.w = x_2410;
            let x_2413 : f32 = u_xlat14.y;
            u_xlat17.z = x_2413;
            let x_2416 : f32 = u_xlat13.z;
            u_xlat17.w = x_2416;
            let x_2418 : vec4<f32> = u_xlat15;
            let x_2420 : vec4<f32> = u_xlat17;
            let x_2422 : vec3<f32> = (vec3<f32>(x_2418.z, x_2418.y, x_2418.w) + vec3<f32>(x_2420.z, x_2420.y, x_2420.w));
            let x_2423 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
            let x_2425 : vec4<f32> = u_xlat14;
            let x_2427 : vec4<f32> = u_xlat18;
            let x_2429 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.z, x_2425.w) / vec3<f32>(x_2427.z, x_2427.w, x_2427.y));
            let x_2430 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat14;
            let x_2434 : vec3<f32> = (vec3<f32>(x_2432.x, x_2432.y, x_2432.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2435 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
            let x_2437 : vec4<f32> = u_xlat17;
            let x_2439 : vec4<f32> = u_xlat13;
            let x_2441 : vec3<f32> = (vec3<f32>(x_2437.z, x_2437.y, x_2437.w) / vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
            let x_2442 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
            let x_2444 : vec4<f32> = u_xlat15;
            let x_2446 : vec3<f32> = (vec3<f32>(x_2444.x, x_2444.y, x_2444.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2447 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
            let x_2449 : vec4<f32> = u_xlat14;
            let x_2452 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2454 : vec3<f32> = (vec3<f32>(x_2449.y, x_2449.x, x_2449.z) * vec3<f32>(x_2452.x, x_2452.x, x_2452.x));
            let x_2455 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
            let x_2457 : vec4<f32> = u_xlat15;
            let x_2460 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2462 : vec3<f32> = (vec3<f32>(x_2457.x, x_2457.y, x_2457.z) * vec3<f32>(x_2460.y, x_2460.y, x_2460.y));
            let x_2463 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
            let x_2466 : f32 = u_xlat15.x;
            u_xlat14.w = x_2466;
            let x_2468 : vec4<f32> = u_xlat12;
            let x_2471 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2474 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2468.x, x_2468.y, x_2468.x, x_2468.y) * vec4<f32>(x_2471.x, x_2471.y, x_2471.x, x_2471.y)) + vec4<f32>(x_2474.y, x_2474.w, x_2474.x, x_2474.w));
            let x_2477 : vec4<f32> = u_xlat12;
            let x_2480 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2483 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2477.x, x_2477.y) * vec2<f32>(x_2480.x, x_2480.y)) + vec2<f32>(x_2483.z, x_2483.w));
            let x_2487 : f32 = u_xlat14.y;
            u_xlat15.w = x_2487;
            let x_2489 : vec4<f32> = u_xlat15;
            let x_2490 : vec2<f32> = vec2<f32>(x_2489.y, x_2489.z);
            let x_2491 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2491.x, x_2490.x, x_2491.z, x_2490.y);
            let x_2493 : vec4<f32> = u_xlat12;
            let x_2496 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2499 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2493.x, x_2493.y, x_2493.x, x_2493.y) * vec4<f32>(x_2496.x, x_2496.y, x_2496.x, x_2496.y)) + vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2499.y));
            let x_2502 : vec4<f32> = u_xlat12;
            let x_2505 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2508 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2502.x, x_2502.y, x_2502.x, x_2502.y) * vec4<f32>(x_2505.x, x_2505.y, x_2505.x, x_2505.y)) + vec4<f32>(x_2508.w, x_2508.y, x_2508.w, x_2508.z));
            let x_2511 : vec4<f32> = u_xlat12;
            let x_2514 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2517 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y) * vec4<f32>(x_2514.x, x_2514.y, x_2514.x, x_2514.y)) + vec4<f32>(x_2517.x, x_2517.w, x_2517.z, x_2517.w));
            let x_2521 : vec4<f32> = u_xlat13;
            let x_2523 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2521.x, x_2521.x, x_2521.x, x_2521.y) * vec4<f32>(x_2523.z, x_2523.w, x_2523.y, x_2523.z));
            let x_2527 : vec4<f32> = u_xlat13;
            let x_2529 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2527.y, x_2527.y, x_2527.z, x_2527.z) * x_2529);
            let x_2532 : f32 = u_xlat13.z;
            let x_2534 : f32 = u_xlat18.y;
            u_xlat86 = (x_2532 * x_2534);
            let x_2537 : vec4<f32> = u_xlat16;
            let x_2538 : vec2<f32> = vec2<f32>(x_2537.x, x_2537.y);
            let x_2540 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2547 : vec3<f32> = txVec34;
            let x_2549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2547.xy, x_2547.z);
            u_xlat87 = x_2549;
            let x_2551 : vec4<f32> = u_xlat16;
            let x_2552 : vec2<f32> = vec2<f32>(x_2551.z, x_2551.w);
            let x_2554 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2552.x, x_2552.y, x_2554);
            let x_2562 : vec3<f32> = txVec35;
            let x_2564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
            u_xlat88 = x_2564;
            let x_2565 : f32 = u_xlat88;
            let x_2567 : f32 = u_xlat19.y;
            u_xlat88 = (x_2565 * x_2567);
            let x_2570 : f32 = u_xlat19.x;
            let x_2571 : f32 = u_xlat87;
            let x_2573 : f32 = u_xlat88;
            u_xlat87 = ((x_2570 * x_2571) + x_2573);
            let x_2576 : vec2<f32> = u_xlat64;
            let x_2578 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2576.x, x_2576.y, x_2578);
            let x_2585 : vec3<f32> = txVec36;
            let x_2587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2585.xy, x_2585.z);
            u_xlat88 = x_2587;
            let x_2589 : f32 = u_xlat19.z;
            let x_2590 : f32 = u_xlat88;
            let x_2592 : f32 = u_xlat87;
            u_xlat87 = ((x_2589 * x_2590) + x_2592);
            let x_2595 : vec4<f32> = u_xlat15;
            let x_2596 : vec2<f32> = vec2<f32>(x_2595.x, x_2595.y);
            let x_2598 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2596.x, x_2596.y, x_2598);
            let x_2605 : vec3<f32> = txVec37;
            let x_2607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2605.xy, x_2605.z);
            u_xlat88 = x_2607;
            let x_2609 : f32 = u_xlat19.w;
            let x_2610 : f32 = u_xlat88;
            let x_2612 : f32 = u_xlat87;
            u_xlat87 = ((x_2609 * x_2610) + x_2612);
            let x_2615 : vec4<f32> = u_xlat17;
            let x_2616 : vec2<f32> = vec2<f32>(x_2615.x, x_2615.y);
            let x_2618 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2616.x, x_2616.y, x_2618);
            let x_2625 : vec3<f32> = txVec38;
            let x_2627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2625.xy, x_2625.z);
            u_xlat88 = x_2627;
            let x_2629 : f32 = u_xlat20.x;
            let x_2630 : f32 = u_xlat88;
            let x_2632 : f32 = u_xlat87;
            u_xlat87 = ((x_2629 * x_2630) + x_2632);
            let x_2635 : vec4<f32> = u_xlat17;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.z, x_2635.w);
            let x_2638 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec39;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat88 = x_2647;
            let x_2649 : f32 = u_xlat20.y;
            let x_2650 : f32 = u_xlat88;
            let x_2652 : f32 = u_xlat87;
            u_xlat87 = ((x_2649 * x_2650) + x_2652);
            let x_2655 : vec4<f32> = u_xlat15;
            let x_2656 : vec2<f32> = vec2<f32>(x_2655.z, x_2655.w);
            let x_2658 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2656.x, x_2656.y, x_2658);
            let x_2665 : vec3<f32> = txVec40;
            let x_2667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2665.xy, x_2665.z);
            u_xlat88 = x_2667;
            let x_2669 : f32 = u_xlat20.z;
            let x_2670 : f32 = u_xlat88;
            let x_2672 : f32 = u_xlat87;
            u_xlat87 = ((x_2669 * x_2670) + x_2672);
            let x_2675 : vec4<f32> = u_xlat14;
            let x_2676 : vec2<f32> = vec2<f32>(x_2675.x, x_2675.y);
            let x_2678 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
            let x_2685 : vec3<f32> = txVec41;
            let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
            u_xlat88 = x_2687;
            let x_2689 : f32 = u_xlat20.w;
            let x_2690 : f32 = u_xlat88;
            let x_2692 : f32 = u_xlat87;
            u_xlat87 = ((x_2689 * x_2690) + x_2692);
            let x_2695 : vec4<f32> = u_xlat14;
            let x_2696 : vec2<f32> = vec2<f32>(x_2695.z, x_2695.w);
            let x_2698 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2696.x, x_2696.y, x_2698);
            let x_2705 : vec3<f32> = txVec42;
            let x_2707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2705.xy, x_2705.z);
            u_xlat88 = x_2707;
            let x_2708 : f32 = u_xlat86;
            let x_2709 : f32 = u_xlat88;
            let x_2711 : f32 = u_xlat87;
            u_xlat85 = ((x_2708 * x_2709) + x_2711);
          } else {
            let x_2714 : vec4<f32> = u_xlat11;
            let x_2717 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2720 : vec2<f32> = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2717.z, x_2717.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2721 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2720.x, x_2720.y, x_2721.z, x_2721.w);
            let x_2723 : vec4<f32> = u_xlat12;
            let x_2725 : vec2<f32> = floor(vec2<f32>(x_2723.x, x_2723.y));
            let x_2726 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
            let x_2728 : vec4<f32> = u_xlat11;
            let x_2731 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2734 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2731.z, x_2731.w)) + -(vec2<f32>(x_2734.x, x_2734.y)));
            let x_2738 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2738.x, x_2738.x, x_2738.y, x_2738.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2741 : vec4<f32> = u_xlat13;
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2741.x, x_2741.x, x_2741.z, x_2741.z) * vec4<f32>(x_2743.x, x_2743.x, x_2743.z, x_2743.z));
            let x_2746 : vec4<f32> = u_xlat14;
            let x_2748 : vec2<f32> = (vec2<f32>(x_2746.y, x_2746.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2749 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2749.x, x_2748.x, x_2749.z, x_2748.y);
            let x_2751 : vec4<f32> = u_xlat14;
            let x_2754 : vec2<f32> = u_xlat64;
            let x_2756 : vec2<f32> = ((vec2<f32>(x_2751.x, x_2751.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2754));
            let x_2757 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2756.x, x_2757.y, x_2756.y, x_2757.w);
            let x_2759 : vec2<f32> = u_xlat64;
            let x_2761 : vec2<f32> = (-(x_2759) + vec2<f32>(1.0f, 1.0f));
            let x_2762 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2761.x, x_2761.y, x_2762.z, x_2762.w);
            let x_2764 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2764, vec2<f32>(0.0f, 0.0f));
            let x_2766 : vec2<f32> = u_xlat66;
            let x_2768 : vec2<f32> = u_xlat66;
            let x_2770 : vec4<f32> = u_xlat14;
            let x_2772 : vec2<f32> = ((-(x_2766) * x_2768) + vec2<f32>(x_2770.x, x_2770.y));
            let x_2773 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2772.x, x_2772.y, x_2773.z, x_2773.w);
            let x_2775 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2775, vec2<f32>(0.0f, 0.0f));
            let x_2778 : vec2<f32> = u_xlat66;
            let x_2780 : vec2<f32> = u_xlat66;
            let x_2782 : vec4<f32> = u_xlat13;
            let x_2784 : vec2<f32> = ((-(x_2778) * x_2780) + vec2<f32>(x_2782.y, x_2782.w));
            let x_2785 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2784.x, x_2785.y, x_2784.y);
            let x_2787 : vec4<f32> = u_xlat14;
            let x_2789 : vec2<f32> = (vec2<f32>(x_2787.x, x_2787.y) + vec2<f32>(2.0f, 2.0f));
            let x_2790 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
            let x_2792 : vec3<f32> = u_xlat39;
            let x_2794 : vec2<f32> = (vec2<f32>(x_2792.x, x_2792.z) + vec2<f32>(2.0f, 2.0f));
            let x_2795 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2795.x, x_2794.x, x_2795.z, x_2794.y);
            let x_2798 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2798 * 0.08163200318813323975f);
            let x_2801 : vec4<f32> = u_xlat13;
            let x_2803 : vec3<f32> = (vec3<f32>(x_2801.z, x_2801.x, x_2801.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2804 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2808 : vec2<f32> = (vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2809 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
            let x_2812 : f32 = u_xlat17.y;
            u_xlat16.x = x_2812;
            let x_2814 : vec2<f32> = u_xlat64;
            let x_2817 : vec2<f32> = ((vec2<f32>(x_2814.x, x_2814.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2818 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2818.x, x_2817.x, x_2818.z, x_2817.y);
            let x_2820 : vec2<f32> = u_xlat64;
            let x_2823 : vec2<f32> = ((vec2<f32>(x_2820.x, x_2820.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2824 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2823.x, x_2824.y, x_2823.y, x_2824.w);
            let x_2827 : f32 = u_xlat13.x;
            u_xlat14.y = x_2827;
            let x_2830 : f32 = u_xlat15.y;
            u_xlat14.w = x_2830;
            let x_2832 : vec4<f32> = u_xlat14;
            let x_2833 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2832 + x_2833);
            let x_2835 : vec2<f32> = u_xlat64;
            let x_2838 : vec2<f32> = ((vec2<f32>(x_2835.y, x_2835.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2839 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2839.x, x_2838.x, x_2839.z, x_2838.y);
            let x_2841 : vec2<f32> = u_xlat64;
            let x_2844 : vec2<f32> = ((vec2<f32>(x_2841.y, x_2841.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2845 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2844.x, x_2845.y, x_2844.y, x_2845.w);
            let x_2848 : f32 = u_xlat13.y;
            u_xlat15.y = x_2848;
            let x_2850 : vec4<f32> = u_xlat15;
            let x_2851 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2850 + x_2851);
            let x_2853 : vec4<f32> = u_xlat14;
            let x_2854 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2853 / x_2854);
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2856 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2858 : vec4<f32> = u_xlat15;
            let x_2859 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2858 / x_2859);
            let x_2861 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2861 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2863 : vec4<f32> = u_xlat14;
            let x_2866 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2863.w, x_2863.x, x_2863.y, x_2863.z) * vec4<f32>(x_2866.x, x_2866.x, x_2866.x, x_2866.x));
            let x_2869 : vec4<f32> = u_xlat15;
            let x_2872 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2869.x, x_2869.w, x_2869.y, x_2869.z) * vec4<f32>(x_2872.y, x_2872.y, x_2872.y, x_2872.y));
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2876 : vec3<f32> = vec3<f32>(x_2875.y, x_2875.z, x_2875.w);
            let x_2877 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2876.x, x_2877.y, x_2876.y, x_2876.z);
            let x_2880 : f32 = u_xlat15.x;
            u_xlat17.y = x_2880;
            let x_2882 : vec4<f32> = u_xlat12;
            let x_2885 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2888 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2882.x, x_2882.y, x_2882.x, x_2882.y) * vec4<f32>(x_2885.x, x_2885.y, x_2885.x, x_2885.y)) + vec4<f32>(x_2888.x, x_2888.y, x_2888.z, x_2888.y));
            let x_2891 : vec4<f32> = u_xlat12;
            let x_2894 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2897 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2891.x, x_2891.y) * vec2<f32>(x_2894.x, x_2894.y)) + vec2<f32>(x_2897.w, x_2897.y));
            let x_2901 : f32 = u_xlat17.y;
            u_xlat14.y = x_2901;
            let x_2904 : f32 = u_xlat15.z;
            u_xlat17.y = x_2904;
            let x_2906 : vec4<f32> = u_xlat12;
            let x_2909 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2912 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2906.x, x_2906.y, x_2906.x, x_2906.y) * vec4<f32>(x_2909.x, x_2909.y, x_2909.x, x_2909.y)) + vec4<f32>(x_2912.x, x_2912.y, x_2912.z, x_2912.y));
            let x_2915 : vec4<f32> = u_xlat12;
            let x_2918 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2921 : vec4<f32> = u_xlat17;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2915.x, x_2915.y) * vec2<f32>(x_2918.x, x_2918.y)) + vec2<f32>(x_2921.w, x_2921.y));
            let x_2924 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2927 : f32 = u_xlat17.y;
            u_xlat14.z = x_2927;
            let x_2930 : vec4<f32> = u_xlat12;
            let x_2933 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2936 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_2930.x, x_2930.y, x_2930.x, x_2930.y) * vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y)) + vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.z));
            let x_2940 : f32 = u_xlat15.w;
            u_xlat17.y = x_2940;
            let x_2943 : vec4<f32> = u_xlat12;
            let x_2946 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2949 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y) * vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y)) + vec4<f32>(x_2949.x, x_2949.y, x_2949.z, x_2949.y));
            let x_2953 : vec4<f32> = u_xlat12;
            let x_2956 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2959 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_2953.x, x_2953.y) * vec2<f32>(x_2956.x, x_2956.y)) + vec2<f32>(x_2959.w, x_2959.y));
            let x_2963 : f32 = u_xlat17.y;
            u_xlat14.w = x_2963;
            let x_2966 : vec4<f32> = u_xlat12;
            let x_2969 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2972 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2972.x, x_2972.w));
            let x_2975 : vec4<f32> = u_xlat17;
            let x_2976 : vec3<f32> = vec3<f32>(x_2975.x, x_2975.z, x_2975.w);
            let x_2977 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2976.x, x_2977.y, x_2976.y, x_2976.z);
            let x_2979 : vec4<f32> = u_xlat12;
            let x_2982 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2985 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y) * vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y)) + vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2985.y));
            let x_2989 : vec4<f32> = u_xlat12;
            let x_2992 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_2995 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_2989.x, x_2989.y) * vec2<f32>(x_2992.x, x_2992.y)) + vec2<f32>(x_2995.w, x_2995.y));
            let x_2999 : f32 = u_xlat14.x;
            u_xlat15.x = x_2999;
            let x_3001 : vec4<f32> = u_xlat12;
            let x_3004 : vec4<f32> = x_299.x_AdditionalShadowmapSize;
            let x_3007 : vec4<f32> = u_xlat15;
            let x_3009 : vec2<f32> = ((vec2<f32>(x_3001.x, x_3001.y) * vec2<f32>(x_3004.x, x_3004.y)) + vec2<f32>(x_3007.x, x_3007.y));
            let x_3010 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3009.x, x_3009.y, x_3010.z, x_3010.w);
            let x_3013 : vec4<f32> = u_xlat13;
            let x_3015 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3013.x, x_3013.x, x_3013.x, x_3013.x) * x_3015);
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3020 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3018.y, x_3018.y, x_3018.y, x_3018.y) * x_3020);
            let x_3023 : vec4<f32> = u_xlat13;
            let x_3025 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3023.z, x_3023.z, x_3023.z, x_3023.z) * x_3025);
            let x_3027 : vec4<f32> = u_xlat13;
            let x_3029 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3027.w, x_3027.w, x_3027.w, x_3027.w) * x_3029);
            let x_3032 : vec4<f32> = u_xlat18;
            let x_3033 : vec2<f32> = vec2<f32>(x_3032.x, x_3032.y);
            let x_3035 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3033.x, x_3033.y, x_3035);
            let x_3042 : vec3<f32> = txVec43;
            let x_3044 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3042.xy, x_3042.z);
            u_xlat86 = x_3044;
            let x_3046 : vec4<f32> = u_xlat18;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.z, x_3046.w);
            let x_3049 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec44;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat87 = x_3058;
            let x_3059 : f32 = u_xlat87;
            let x_3061 : f32 = u_xlat23.y;
            u_xlat87 = (x_3059 * x_3061);
            let x_3064 : f32 = u_xlat23.x;
            let x_3065 : f32 = u_xlat86;
            let x_3067 : f32 = u_xlat87;
            u_xlat86 = ((x_3064 * x_3065) + x_3067);
            let x_3070 : vec2<f32> = u_xlat64;
            let x_3072 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3070.x, x_3070.y, x_3072);
            let x_3079 : vec3<f32> = txVec45;
            let x_3081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3079.xy, x_3079.z);
            u_xlat87 = x_3081;
            let x_3083 : f32 = u_xlat23.z;
            let x_3084 : f32 = u_xlat87;
            let x_3086 : f32 = u_xlat86;
            u_xlat86 = ((x_3083 * x_3084) + x_3086);
            let x_3089 : vec4<f32> = u_xlat21;
            let x_3090 : vec2<f32> = vec2<f32>(x_3089.x, x_3089.y);
            let x_3092 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
            let x_3099 : vec3<f32> = txVec46;
            let x_3101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3099.xy, x_3099.z);
            u_xlat87 = x_3101;
            let x_3103 : f32 = u_xlat23.w;
            let x_3104 : f32 = u_xlat87;
            let x_3106 : f32 = u_xlat86;
            u_xlat86 = ((x_3103 * x_3104) + x_3106);
            let x_3109 : vec4<f32> = u_xlat19;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.x, x_3109.y);
            let x_3112 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec47;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat87 = x_3121;
            let x_3123 : f32 = u_xlat24.x;
            let x_3124 : f32 = u_xlat87;
            let x_3126 : f32 = u_xlat86;
            u_xlat86 = ((x_3123 * x_3124) + x_3126);
            let x_3129 : vec4<f32> = u_xlat19;
            let x_3130 : vec2<f32> = vec2<f32>(x_3129.z, x_3129.w);
            let x_3132 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec48;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat87 = x_3141;
            let x_3143 : f32 = u_xlat24.y;
            let x_3144 : f32 = u_xlat87;
            let x_3146 : f32 = u_xlat86;
            u_xlat86 = ((x_3143 * x_3144) + x_3146);
            let x_3149 : vec4<f32> = u_xlat20;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.x, x_3149.y);
            let x_3152 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec49;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat87 = x_3161;
            let x_3163 : f32 = u_xlat24.z;
            let x_3164 : f32 = u_xlat87;
            let x_3166 : f32 = u_xlat86;
            u_xlat86 = ((x_3163 * x_3164) + x_3166);
            let x_3169 : vec4<f32> = u_xlat21;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.z, x_3169.w);
            let x_3172 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec50;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat87 = x_3181;
            let x_3183 : f32 = u_xlat24.w;
            let x_3184 : f32 = u_xlat87;
            let x_3186 : f32 = u_xlat86;
            u_xlat86 = ((x_3183 * x_3184) + x_3186);
            let x_3189 : vec4<f32> = u_xlat22;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.x, x_3189.y);
            let x_3192 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec51;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat87 = x_3201;
            let x_3203 : f32 = u_xlat25.x;
            let x_3204 : f32 = u_xlat87;
            let x_3206 : f32 = u_xlat86;
            u_xlat86 = ((x_3203 * x_3204) + x_3206);
            let x_3209 : vec4<f32> = u_xlat22;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.z, x_3209.w);
            let x_3212 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec52;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat87 = x_3221;
            let x_3223 : f32 = u_xlat25.y;
            let x_3224 : f32 = u_xlat87;
            let x_3226 : f32 = u_xlat86;
            u_xlat86 = ((x_3223 * x_3224) + x_3226);
            let x_3229 : vec2<f32> = u_xlat40;
            let x_3231 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec53;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat87 = x_3240;
            let x_3242 : f32 = u_xlat25.z;
            let x_3243 : f32 = u_xlat87;
            let x_3245 : f32 = u_xlat86;
            u_xlat86 = ((x_3242 * x_3243) + x_3245);
            let x_3248 : vec2<f32> = u_xlat72;
            let x_3250 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
            let x_3257 : vec3<f32> = txVec54;
            let x_3259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
            u_xlat87 = x_3259;
            let x_3261 : f32 = u_xlat25.w;
            let x_3262 : f32 = u_xlat87;
            let x_3264 : f32 = u_xlat86;
            u_xlat86 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec4<f32> = u_xlat17;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.x, x_3267.y);
            let x_3270 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec55;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat87 = x_3279;
            let x_3281 : f32 = u_xlat13.x;
            let x_3282 : f32 = u_xlat87;
            let x_3284 : f32 = u_xlat86;
            u_xlat86 = ((x_3281 * x_3282) + x_3284);
            let x_3287 : vec4<f32> = u_xlat17;
            let x_3288 : vec2<f32> = vec2<f32>(x_3287.z, x_3287.w);
            let x_3290 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3297 : vec3<f32> = txVec56;
            let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
            u_xlat87 = x_3299;
            let x_3301 : f32 = u_xlat13.y;
            let x_3302 : f32 = u_xlat87;
            let x_3304 : f32 = u_xlat86;
            u_xlat86 = ((x_3301 * x_3302) + x_3304);
            let x_3307 : vec2<f32> = u_xlat67;
            let x_3309 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3307.x, x_3307.y, x_3309);
            let x_3316 : vec3<f32> = txVec57;
            let x_3318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3316.xy, x_3316.z);
            u_xlat87 = x_3318;
            let x_3320 : f32 = u_xlat13.z;
            let x_3321 : f32 = u_xlat87;
            let x_3323 : f32 = u_xlat86;
            u_xlat86 = ((x_3320 * x_3321) + x_3323);
            let x_3326 : vec4<f32> = u_xlat12;
            let x_3327 : vec2<f32> = vec2<f32>(x_3326.x, x_3326.y);
            let x_3329 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3327.x, x_3327.y, x_3329);
            let x_3336 : vec3<f32> = txVec58;
            let x_3338 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3336.xy, x_3336.z);
            u_xlat87 = x_3338;
            let x_3340 : f32 = u_xlat13.w;
            let x_3341 : f32 = u_xlat87;
            let x_3343 : f32 = u_xlat86;
            u_xlat85 = ((x_3340 * x_3341) + x_3343);
          }
        }
      } else {
        let x_3347 : vec4<f32> = u_xlat11;
        let x_3348 : vec2<f32> = vec2<f32>(x_3347.x, x_3347.y);
        let x_3350 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
        let x_3357 : vec3<f32> = txVec59;
        let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
        u_xlat85 = x_3359;
      }
      let x_3360 : i32 = u_xlati82;
      let x_3362 : f32 = x_299.x_AdditionalShadowParams[x_3360].x;
      u_xlat86 = (1.0f + -(x_3362));
      let x_3365 : f32 = u_xlat85;
      let x_3366 : i32 = u_xlati82;
      let x_3368 : f32 = x_299.x_AdditionalShadowParams[x_3366].x;
      let x_3370 : f32 = u_xlat86;
      u_xlat85 = ((x_3365 * x_3368) + x_3370);
      let x_3373 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3373);
      let x_3377 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3377 >= 1.0f);
      let x_3379 : bool = u_xlatb86;
      let x_3380 : bool = u_xlatb87;
      u_xlatb86 = (x_3379 | x_3380);
      let x_3382 : bool = u_xlatb86;
      let x_3383 : f32 = u_xlat85;
      u_xlat85 = select(x_3383, 1.0f, x_3382);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3386 : f32 = u_xlat85;
    u_xlat86 = (-(x_3386) + 1.0f);
    let x_3389 : f32 = u_xlat53;
    let x_3390 : f32 = u_xlat86;
    let x_3392 : f32 = u_xlat85;
    u_xlat85 = ((x_3389 * x_3390) + x_3392);
    let x_3394 : f32 = u_xlat83;
    let x_3395 : f32 = u_xlat85;
    u_xlat83 = (x_3394 * x_3395);
    let x_3397 : vec4<f32> = u_xlat2;
    let x_3399 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3397.x, x_3397.y, x_3397.z), vec3<f32>(x_3399.x, x_3399.y, x_3399.z));
    let x_3402 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3402, 0.0f, 1.0f);
    let x_3404 : f32 = u_xlat83;
    let x_3405 : f32 = u_xlat85;
    u_xlat83 = (x_3404 * x_3405);
    let x_3407 : f32 = u_xlat83;
    let x_3409 : i32 = u_xlati82;
    let x_3411 : vec4<f32> = x_1967.x_AdditionalLightsColor[x_3409];
    let x_3413 : vec3<f32> = (vec3<f32>(x_3407, x_3407, x_3407) * vec3<f32>(x_3411.x, x_3411.y, x_3411.z));
    let x_3414 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3414.w);
    let x_3416 : vec4<f32> = u_xlat9;
    let x_3418 : f32 = u_xlat84;
    let x_3421 : vec4<f32> = u_xlat5;
    let x_3423 : vec3<f32> = ((vec3<f32>(x_3416.x, x_3416.y, x_3416.z) * vec3<f32>(x_3418, x_3418, x_3418)) + vec3<f32>(x_3421.x, x_3421.y, x_3421.z));
    let x_3424 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3423.x, x_3423.y, x_3423.z, x_3424.w);
    let x_3426 : vec4<f32> = u_xlat9;
    let x_3428 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3426.x, x_3426.y, x_3426.z), vec3<f32>(x_3428.x, x_3428.y, x_3428.z));
    let x_3431 : f32 = u_xlat82;
    u_xlat82 = max(x_3431, 1.17549435e-38f);
    let x_3433 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_3433);
    let x_3435 : f32 = u_xlat82;
    let x_3437 : vec4<f32> = u_xlat9;
    let x_3439 : vec3<f32> = (vec3<f32>(x_3435, x_3435, x_3435) * vec3<f32>(x_3437.x, x_3437.y, x_3437.z));
    let x_3440 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3439.x, x_3439.y, x_3439.z, x_3440.w);
    let x_3442 : vec4<f32> = u_xlat2;
    let x_3444 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3442.x, x_3442.y, x_3442.z), vec3<f32>(x_3444.x, x_3444.y, x_3444.z));
    let x_3447 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3447, 0.0f, 1.0f);
    let x_3449 : vec4<f32> = u_xlat10;
    let x_3451 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3449.x, x_3449.y, x_3449.z), vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
    let x_3454 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3454, 0.0f, 1.0f);
    let x_3456 : f32 = u_xlat82;
    let x_3457 : f32 = u_xlat82;
    u_xlat82 = (x_3456 * x_3457);
    let x_3459 : f32 = u_xlat82;
    let x_3461 : f32 = u_xlat1.x;
    u_xlat82 = ((x_3459 * x_3461) + 1.00001001358032226562f);
    let x_3464 : f32 = u_xlat83;
    let x_3465 : f32 = u_xlat83;
    u_xlat83 = (x_3464 * x_3465);
    let x_3467 : f32 = u_xlat82;
    let x_3468 : f32 = u_xlat82;
    u_xlat82 = (x_3467 * x_3468);
    let x_3470 : f32 = u_xlat83;
    u_xlat83 = max(x_3470, 0.10000000149011611938f);
    let x_3472 : f32 = u_xlat82;
    let x_3473 : f32 = u_xlat83;
    u_xlat82 = (x_3472 * x_3473);
    let x_3475 : f32 = u_xlat79;
    let x_3476 : f32 = u_xlat82;
    u_xlat82 = (x_3475 * x_3476);
    let x_3478 : f32 = u_xlat80;
    let x_3479 : f32 = u_xlat82;
    u_xlat82 = (x_3478 / x_3479);
    let x_3481 : vec4<f32> = u_xlat0;
    let x_3483 : f32 = u_xlat82;
    let x_3486 : vec4<f32> = u_xlat4;
    let x_3488 : vec3<f32> = ((vec3<f32>(x_3481.x, x_3481.y, x_3481.z) * vec3<f32>(x_3483, x_3483, x_3483)) + vec3<f32>(x_3486.x, x_3486.y, x_3486.z));
    let x_3489 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3489.w);
    let x_3491 : vec4<f32> = u_xlat9;
    let x_3493 : vec4<f32> = u_xlat11;
    let x_3496 : vec4<f32> = u_xlat8;
    let x_3498 : vec3<f32> = ((vec3<f32>(x_3491.x, x_3491.y, x_3491.z) * vec3<f32>(x_3493.x, x_3493.y, x_3493.z)) + vec3<f32>(x_3496.x, x_3496.y, x_3496.z));
    let x_3499 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3498.x, x_3498.y, x_3498.z, x_3499.w);

    continuing {
      let x_3501 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3501 + bitcast<u32>(1i));
    }
  }
  let x_3503 : vec4<f32> = u_xlat7;
  let x_3505 : vec4<f32> = u_xlat6;
  let x_3508 : vec3<f32> = u_xlat3;
  let x_3509 : vec3<f32> = ((vec3<f32>(x_3503.x, x_3503.y, x_3503.z) * vec3<f32>(x_3505.x, x_3505.y, x_3505.z)) + x_3508);
  let x_3510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
  let x_3512 : vec4<f32> = u_xlat8;
  let x_3514 : vec4<f32> = u_xlat0;
  let x_3516 : vec3<f32> = (vec3<f32>(x_3512.x, x_3512.y, x_3512.z) + vec3<f32>(x_3514.x, x_3514.y, x_3514.z));
  let x_3517 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3516.x, x_3516.y, x_3516.z, x_3517.w);
  let x_3519 : f32 = u_xlat27;
  let x_3520 : f32 = u_xlat27;
  u_xlat78 = (x_3519 * -(x_3520));
  let x_3523 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3523);
  let x_3525 : vec4<f32> = u_xlat0;
  let x_3528 : vec4<f32> = x_29.unity_FogColor;
  let x_3531 : vec3<f32> = (vec3<f32>(x_3525.x, x_3525.y, x_3525.z) + -(vec3<f32>(x_3528.x, x_3528.y, x_3528.z)));
  let x_3532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3532.w);
  let x_3536 : f32 = u_xlat78;
  let x_3538 : vec4<f32> = u_xlat0;
  let x_3542 : vec4<f32> = x_29.unity_FogColor;
  let x_3544 : vec3<f32> = ((vec3<f32>(x_3536, x_3536, x_3536) * vec3<f32>(x_3538.x, x_3538.y, x_3538.z)) + vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
  let x_3545 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3545.w);
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


