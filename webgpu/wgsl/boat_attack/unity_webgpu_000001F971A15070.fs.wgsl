diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_207 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb66 : bool;

@group(1) @binding(4) var<uniform> x_292 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb67 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlat68 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb68 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1672 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu68 : u32;

var<private> u_xlatb69 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
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
  var x_1814 : f32;
  var x_1824 : f32;
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
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat22 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat44 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat66 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat66;
  let x_101 : f32 = u_xlat44;
  u_xlat44 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat44;
  u_xlat44 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat22;
  let x_108 : f32 = u_xlat44;
  u_xlat22 = (x_107 / x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb44;
  if (x_120) {
    let x_124 : f32 = u_xlat22;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : f32 = hlslcc_FragCoord.w;
  let x_167 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_164 * x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_175 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_171 / x_175);
  let x_179 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_179) + 1.0f);
  let x_184 : f32 = u_xlat0.x;
  let x_186 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_184 * x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_190, 0.0f);
  let x_194 : f32 = u_xlat0.x;
  let x_197 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_194 * x_197);
  u_xlat2.w = 1.0f;
  let x_211 : vec4<f32> = x_207.unity_SHAr;
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_207.unity_SHAg;
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_207.unity_SHAb;
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_223, x_224);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_228.y, x_228.z, x_228.z, x_228.x) * vec4<f32>(x_230.x, x_230.y, x_230.z, x_230.z));
  let x_236 : vec4<f32> = x_207.unity_SHBr;
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_236, x_237);
  let x_242 : vec4<f32> = x_207.unity_SHBg;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_242, x_243);
  let x_248 : vec4<f32> = x_207.unity_SHBb;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_248, x_249);
  let x_253 : f32 = u_xlat2.y;
  let x_255 : f32 = u_xlat2.y;
  u_xlat66 = (x_253 * x_255);
  let x_258 : f32 = u_xlat2.x;
  let x_260 : f32 = u_xlat2.x;
  let x_262 : f32 = u_xlat66;
  u_xlat66 = ((x_258 * x_260) + -(x_262));
  let x_267 : vec4<f32> = x_207.unity_SHC;
  let x_269 : f32 = u_xlat66;
  let x_272 : vec4<f32> = u_xlat5;
  let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269, x_269, x_269)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec3<f32> = u_xlat3;
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_277 + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_281, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_295 : f32 = x_292.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_295);
  let x_297 : bool = u_xlatb66;
  if (x_297) {
    let x_301 : f32 = x_292.x_MainLightShadowParams.y;
    u_xlatb66 = (x_301 == 1.0f);
    let x_303 : bool = u_xlatb66;
    if (x_303) {
      let x_307 : vec4<f32> = vs_TEXCOORD6;
      let x_310 : vec4<f32> = x_292.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_307.x, x_307.y, x_307.x, x_307.y) + x_310);
      let x_314 : vec4<f32> = u_xlat4;
      let x_315 : vec2<f32> = vec2<f32>(x_314.x, x_314.y);
      let x_317 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_315.x, x_315.y, x_317);
      let x_329 : vec3<f32> = txVec0;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_329.xy, x_329.z);
      u_xlat5.x = x_331;
      let x_334 : vec4<f32> = u_xlat4;
      let x_335 : vec2<f32> = vec2<f32>(x_334.z, x_334.w);
      let x_337 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec1;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.y = x_346;
      let x_348 : vec4<f32> = vs_TEXCOORD6;
      let x_351 : vec4<f32> = x_292.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_348.x, x_348.y, x_348.x, x_348.y) + x_351);
      let x_354 : vec4<f32> = u_xlat4;
      let x_355 : vec2<f32> = vec2<f32>(x_354.x, x_354.y);
      let x_357 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_355.x, x_355.y, x_357);
      let x_364 : vec3<f32> = txVec2;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.z = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec3;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.w = x_381;
      let x_383 : vec4<f32> = u_xlat5;
      u_xlat66 = dot(x_383, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_390 : f32 = x_292.x_MainLightShadowParams.y;
      u_xlatb67 = (x_390 == 2.0f);
      let x_393 : bool = u_xlatb67;
      if (x_393) {
        let x_396 : vec4<f32> = vs_TEXCOORD6;
        let x_400 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_404 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_400.z, x_400.w)) + vec2<f32>(0.5f, 0.5f));
        let x_405 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_407 : vec4<f32> = u_xlat4;
        let x_409 : vec2<f32> = floor(vec2<f32>(x_407.x, x_407.y));
        let x_410 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
        let x_414 : vec4<f32> = vs_TEXCOORD6;
        let x_417 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_420 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_417.z, x_417.w)) + -(vec2<f32>(x_420.x, x_420.y)));
        let x_424 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_424.x, x_424.x, x_424.y, x_424.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_429 : vec4<f32> = u_xlat5;
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_429.x, x_429.x, x_429.z, x_429.z) * vec4<f32>(x_431.x, x_431.x, x_431.z, x_431.z));
        let x_434 : vec4<f32> = u_xlat6;
        let x_438 : vec2<f32> = (vec2<f32>(x_434.y, x_434.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_439 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_438.x, x_439.y, x_438.y, x_439.w);
        let x_441 : vec4<f32> = u_xlat6;
        let x_444 : vec2<f32> = u_xlat48;
        let x_446 : vec2<f32> = ((vec2<f32>(x_441.x, x_441.z) * vec2<f32>(0.5f, 0.5f)) + -(x_444));
        let x_447 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
        let x_450 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_450) + vec2<f32>(1.0f, 1.0f));
        let x_455 : vec2<f32> = u_xlat48;
        let x_457 : vec2<f32> = min(x_455, vec2<f32>(0.0f, 0.0f));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat7;
        let x_463 : vec4<f32> = u_xlat7;
        let x_466 : vec2<f32> = u_xlat50;
        let x_467 : vec2<f32> = ((-(vec2<f32>(x_460.x, x_460.y)) * vec2<f32>(x_463.x, x_463.y)) + x_466);
        let x_468 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_470 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_470, vec2<f32>(0.0f, 0.0f));
        let x_472 : vec2<f32> = u_xlat48;
        let x_474 : vec2<f32> = u_xlat48;
        let x_476 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_472) * x_474) + vec2<f32>(x_476.y, x_476.w));
        let x_479 : vec4<f32> = u_xlat7;
        let x_481 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) + vec2<f32>(1.0f, 1.0f));
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_484 + vec2<f32>(1.0f, 1.0f));
        let x_487 : vec4<f32> = u_xlat6;
        let x_491 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec2<f32> = u_xlat50;
        let x_495 : vec2<f32> = (x_494 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = (vec2<f32>(x_498.x, x_498.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_501 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_504 : vec2<f32> = u_xlat48;
        let x_505 : vec2<f32> = (x_504 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_506 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_508.y, x_508.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_512 : f32 = u_xlat7.x;
        u_xlat8.z = x_512;
        let x_515 : f32 = u_xlat48.x;
        u_xlat8.w = x_515;
        let x_518 : f32 = u_xlat9.x;
        u_xlat6.z = x_518;
        let x_521 : f32 = u_xlat5.x;
        u_xlat6.w = x_521;
        let x_524 : vec4<f32> = u_xlat6;
        let x_526 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_524.z, x_524.w, x_524.x, x_524.z) + vec4<f32>(x_526.z, x_526.w, x_526.x, x_526.z));
        let x_530 : f32 = u_xlat8.y;
        u_xlat7.z = x_530;
        let x_533 : f32 = u_xlat48.y;
        u_xlat7.w = x_533;
        let x_536 : f32 = u_xlat6.y;
        u_xlat9.z = x_536;
        let x_539 : f32 = u_xlat5.z;
        u_xlat9.w = x_539;
        let x_541 : vec4<f32> = u_xlat7;
        let x_543 : vec4<f32> = u_xlat9;
        let x_545 : vec3<f32> = (vec3<f32>(x_541.z, x_541.y, x_541.w) + vec3<f32>(x_543.z, x_543.y, x_543.w));
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat6;
        let x_550 : vec4<f32> = u_xlat10;
        let x_552 : vec3<f32> = (vec3<f32>(x_548.x, x_548.z, x_548.w) / vec3<f32>(x_550.z, x_550.w, x_550.y));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_561 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat9;
        let x_566 : vec4<f32> = u_xlat5;
        let x_568 : vec3<f32> = (vec3<f32>(x_564.z, x_564.y, x_564.w) / vec3<f32>(x_566.x, x_566.y, x_566.z));
        let x_569 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat7;
        let x_573 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_574 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat6;
        let x_579 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_581 : vec3<f32> = (vec3<f32>(x_576.y, x_576.x, x_576.z) * vec3<f32>(x_579.x, x_579.x, x_579.x));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat7;
        let x_587 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_589 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_587.y, x_587.y, x_587.y));
        let x_590 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_593 : f32 = u_xlat7.x;
        u_xlat6.w = x_593;
        let x_595 : vec4<f32> = u_xlat4;
        let x_598 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y) * vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y)) + vec4<f32>(x_601.y, x_601.w, x_601.x, x_601.w));
        let x_604 : vec4<f32> = u_xlat4;
        let x_607 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_604.x, x_604.y) * vec2<f32>(x_607.x, x_607.y)) + vec2<f32>(x_610.z, x_610.w));
        let x_614 : f32 = u_xlat6.y;
        u_xlat7.w = x_614;
        let x_616 : vec4<f32> = u_xlat7;
        let x_617 : vec2<f32> = vec2<f32>(x_616.y, x_616.z);
        let x_618 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_618.x, x_617.x, x_618.z, x_617.y);
        let x_620 : vec4<f32> = u_xlat4;
        let x_623 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y)) + vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.y));
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.w, x_635.y, x_635.w, x_635.z));
        let x_638 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_638.x, x_638.y, x_638.x, x_638.y) * vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y)) + vec4<f32>(x_644.x, x_644.w, x_644.z, x_644.w));
        let x_648 : vec4<f32> = u_xlat5;
        let x_650 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_648.x, x_648.x, x_648.x, x_648.y) * vec4<f32>(x_650.z, x_650.w, x_650.y, x_650.z));
        let x_654 : vec4<f32> = u_xlat5;
        let x_656 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_654.y, x_654.y, x_654.z, x_654.z) * x_656);
        let x_660 : f32 = u_xlat5.z;
        let x_662 : f32 = u_xlat10.y;
        u_xlat67 = (x_660 * x_662);
        let x_665 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
        let x_668 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_666.x, x_666.y, x_668);
        let x_676 : vec3<f32> = txVec4;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_676.xy, x_676.z);
        u_xlat68 = x_678;
        let x_680 : vec4<f32> = u_xlat8;
        let x_681 : vec2<f32> = vec2<f32>(x_680.z, x_680.w);
        let x_683 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_681.x, x_681.y, x_683);
        let x_691 : vec3<f32> = txVec5;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat69 = x_693;
        let x_694 : f32 = u_xlat69;
        let x_696 : f32 = u_xlat11.y;
        u_xlat69 = (x_694 * x_696);
        let x_699 : f32 = u_xlat11.x;
        let x_700 : f32 = u_xlat68;
        let x_702 : f32 = u_xlat69;
        u_xlat68 = ((x_699 * x_700) + x_702);
        let x_705 : vec2<f32> = u_xlat48;
        let x_707 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec6;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat69 = x_716;
        let x_718 : f32 = u_xlat11.z;
        let x_719 : f32 = u_xlat69;
        let x_721 : f32 = u_xlat68;
        u_xlat68 = ((x_718 * x_719) + x_721);
        let x_724 : vec4<f32> = u_xlat7;
        let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
        let x_727 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_725.x, x_725.y, x_727);
        let x_734 : vec3<f32> = txVec7;
        let x_736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_734.xy, x_734.z);
        u_xlat69 = x_736;
        let x_738 : f32 = u_xlat11.w;
        let x_739 : f32 = u_xlat69;
        let x_741 : f32 = u_xlat68;
        u_xlat68 = ((x_738 * x_739) + x_741);
        let x_744 : vec4<f32> = u_xlat9;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec8;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat69 = x_756;
        let x_758 : f32 = u_xlat12.x;
        let x_759 : f32 = u_xlat69;
        let x_761 : f32 = u_xlat68;
        u_xlat68 = ((x_758 * x_759) + x_761);
        let x_764 : vec4<f32> = u_xlat9;
        let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
        let x_767 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec9;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
        u_xlat69 = x_776;
        let x_778 : f32 = u_xlat12.y;
        let x_779 : f32 = u_xlat69;
        let x_781 : f32 = u_xlat68;
        u_xlat68 = ((x_778 * x_779) + x_781);
        let x_784 : vec4<f32> = u_xlat7;
        let x_785 : vec2<f32> = vec2<f32>(x_784.z, x_784.w);
        let x_787 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_794 : vec3<f32> = txVec10;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_794.xy, x_794.z);
        u_xlat69 = x_796;
        let x_798 : f32 = u_xlat12.z;
        let x_799 : f32 = u_xlat69;
        let x_801 : f32 = u_xlat68;
        u_xlat68 = ((x_798 * x_799) + x_801);
        let x_804 : vec4<f32> = u_xlat6;
        let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
        let x_807 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_805.x, x_805.y, x_807);
        let x_814 : vec3<f32> = txVec11;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_814.xy, x_814.z);
        u_xlat69 = x_816;
        let x_818 : f32 = u_xlat12.w;
        let x_819 : f32 = u_xlat69;
        let x_821 : f32 = u_xlat68;
        u_xlat68 = ((x_818 * x_819) + x_821);
        let x_824 : vec4<f32> = u_xlat6;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec12;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
        u_xlat69 = x_836;
        let x_837 : f32 = u_xlat67;
        let x_838 : f32 = u_xlat69;
        let x_840 : f32 = u_xlat68;
        u_xlat66 = ((x_837 * x_838) + x_840);
      } else {
        let x_843 : vec4<f32> = vs_TEXCOORD6;
        let x_846 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_849 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_846.z, x_846.w)) + vec2<f32>(0.5f, 0.5f));
        let x_850 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat4;
        let x_854 : vec2<f32> = floor(vec2<f32>(x_852.x, x_852.y));
        let x_855 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = vs_TEXCOORD6;
        let x_860 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_863 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_860.z, x_860.w)) + -(vec2<f32>(x_863.x, x_863.y)));
        let x_867 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_867.x, x_867.x, x_867.y, x_867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_870 : vec4<f32> = u_xlat5;
        let x_872 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z) * vec4<f32>(x_872.x, x_872.x, x_872.z, x_872.z));
        let x_875 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = (vec2<f32>(x_875.y, x_875.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_880 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_880.x, x_879.x, x_880.z, x_879.y);
        let x_882 : vec4<f32> = u_xlat6;
        let x_885 : vec2<f32> = u_xlat48;
        let x_887 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.z) * vec2<f32>(0.5f, 0.5f)) + -(x_885));
        let x_888 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec2<f32> = u_xlat48;
        let x_892 : vec2<f32> = (-(x_890) + vec2<f32>(1.0f, 1.0f));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_895, vec2<f32>(0.0f, 0.0f));
        let x_897 : vec2<f32> = u_xlat50;
        let x_899 : vec2<f32> = u_xlat50;
        let x_901 : vec4<f32> = u_xlat6;
        let x_903 : vec2<f32> = ((-(x_897) * x_899) + vec2<f32>(x_901.x, x_901.y));
        let x_904 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_906, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat50;
        let x_911 : vec2<f32> = u_xlat50;
        let x_913 : vec4<f32> = u_xlat5;
        let x_915 : vec2<f32> = ((-(x_909) * x_911) + vec2<f32>(x_913.y, x_913.w));
        let x_916 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_915.x, x_916.y, x_915.y);
        let x_918 : vec4<f32> = u_xlat6;
        let x_921 : vec2<f32> = (vec2<f32>(x_918.x, x_918.y) + vec2<f32>(2.0f, 2.0f));
        let x_922 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec3<f32> = u_xlat27;
        let x_926 : vec2<f32> = (vec2<f32>(x_924.x, x_924.z) + vec2<f32>(2.0f, 2.0f));
        let x_927 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_930 : f32 = u_xlat5.y;
        u_xlat8.z = (x_930 * 0.08163200318813323975f);
        let x_934 : vec4<f32> = u_xlat5;
        let x_937 : vec3<f32> = (vec3<f32>(x_934.z, x_934.x, x_934.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_938 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat6;
        let x_943 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_944 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_947 : f32 = u_xlat9.y;
        u_xlat8.x = x_947;
        let x_949 : vec2<f32> = u_xlat48;
        let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_956.x, x_957.z, x_956.y);
        let x_959 : vec2<f32> = u_xlat48;
        let x_963 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_964 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_967 : f32 = u_xlat5.x;
        u_xlat6.y = x_967;
        let x_970 : f32 = u_xlat7.y;
        u_xlat6.w = x_970;
        let x_972 : vec4<f32> = u_xlat6;
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_972 + x_973);
        let x_975 : vec2<f32> = u_xlat48;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec2<f32> = u_xlat48;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_985 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_988 : f32 = u_xlat5.y;
        u_xlat7.y = x_988;
        let x_990 : vec4<f32> = u_xlat7;
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_990 + x_991);
        let x_993 : vec4<f32> = u_xlat6;
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_993 / x_994);
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_996 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1003 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1002 / x_1003);
        let x_1005 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat6;
        let x_1010 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1007.w, x_1007.x, x_1007.y, x_1007.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1016 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1013.x, x_1013.w, x_1013.y, x_1013.z) * vec4<f32>(x_1016.y, x_1016.y, x_1016.y, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1020 : vec3<f32> = vec3<f32>(x_1019.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
        let x_1024 : f32 = u_xlat7.x;
        u_xlat9.y = x_1024;
        let x_1026 : vec4<f32> = u_xlat4;
        let x_1029 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec4<f32> = u_xlat4;
        let x_1038 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.w, x_1041.y));
        let x_1045 : f32 = u_xlat9.y;
        u_xlat6.y = x_1045;
        let x_1048 : f32 = u_xlat7.z;
        u_xlat9.y = x_1048;
        let x_1050 : vec4<f32> = u_xlat4;
        let x_1053 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1062 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.x, x_1062.y)) + vec2<f32>(x_1065.w, x_1065.y));
        let x_1068 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat9.y;
        u_xlat6.z = x_1071;
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.z));
        let x_1084 : f32 = u_xlat7.w;
        u_xlat9.y = x_1084;
        let x_1087 : vec4<f32> = u_xlat4;
        let x_1090 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1107 : f32 = u_xlat9.y;
        u_xlat6.w = x_1107;
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec4<f32> = u_xlat4;
        let x_1126 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec4<f32> = u_xlat4;
        let x_1136 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat6.x;
        u_xlat7.x = x_1143;
        let x_1145 : vec4<f32> = u_xlat4;
        let x_1148 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1186.xy, x_1186.z);
        u_xlat67 = x_1188;
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat68 = x_1202;
        let x_1203 : f32 = u_xlat68;
        let x_1205 : f32 = u_xlat15.y;
        u_xlat68 = (x_1203 * x_1205);
        let x_1208 : f32 = u_xlat15.x;
        let x_1209 : f32 = u_xlat67;
        let x_1211 : f32 = u_xlat68;
        u_xlat67 = ((x_1208 * x_1209) + x_1211);
        let x_1214 : vec2<f32> = u_xlat48;
        let x_1216 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec15;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat68 = x_1225;
        let x_1227 : f32 = u_xlat15.z;
        let x_1228 : f32 = u_xlat68;
        let x_1230 : f32 = u_xlat67;
        u_xlat67 = ((x_1227 * x_1228) + x_1230);
        let x_1233 : vec4<f32> = u_xlat13;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec16;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
        u_xlat68 = x_1245;
        let x_1247 : f32 = u_xlat15.w;
        let x_1248 : f32 = u_xlat68;
        let x_1250 : f32 = u_xlat67;
        u_xlat67 = ((x_1247 * x_1248) + x_1250);
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec17;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1263.xy, x_1263.z);
        u_xlat68 = x_1265;
        let x_1267 : f32 = u_xlat16.x;
        let x_1268 : f32 = u_xlat68;
        let x_1270 : f32 = u_xlat67;
        u_xlat67 = ((x_1267 * x_1268) + x_1270);
        let x_1273 : vec4<f32> = u_xlat11;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
        let x_1276 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec18;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1283.xy, x_1283.z);
        u_xlat68 = x_1285;
        let x_1287 : f32 = u_xlat16.y;
        let x_1288 : f32 = u_xlat68;
        let x_1290 : f32 = u_xlat67;
        u_xlat67 = ((x_1287 * x_1288) + x_1290);
        let x_1293 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.x, x_1293.y);
        let x_1296 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec19;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1303.xy, x_1303.z);
        u_xlat68 = x_1305;
        let x_1307 : f32 = u_xlat16.z;
        let x_1308 : f32 = u_xlat68;
        let x_1310 : f32 = u_xlat67;
        u_xlat67 = ((x_1307 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat13;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.z, x_1313.w);
        let x_1316 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec20;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat68 = x_1325;
        let x_1327 : f32 = u_xlat16.w;
        let x_1328 : f32 = u_xlat68;
        let x_1330 : f32 = u_xlat67;
        u_xlat67 = ((x_1327 * x_1328) + x_1330);
        let x_1333 : vec4<f32> = u_xlat14;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.x, x_1333.y);
        let x_1336 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec21;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat68 = x_1345;
        let x_1347 : f32 = u_xlat17.x;
        let x_1348 : f32 = u_xlat68;
        let x_1350 : f32 = u_xlat67;
        u_xlat67 = ((x_1347 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat14;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.z, x_1353.w);
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec22;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat68 = x_1365;
        let x_1367 : f32 = u_xlat17.y;
        let x_1368 : f32 = u_xlat68;
        let x_1370 : f32 = u_xlat67;
        u_xlat67 = ((x_1367 * x_1368) + x_1370);
        let x_1373 : vec2<f32> = u_xlat28;
        let x_1375 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec23;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat68 = x_1384;
        let x_1386 : f32 = u_xlat17.z;
        let x_1387 : f32 = u_xlat68;
        let x_1389 : f32 = u_xlat67;
        u_xlat67 = ((x_1386 * x_1387) + x_1389);
        let x_1392 : vec2<f32> = u_xlat56;
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec24;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat68 = x_1403;
        let x_1405 : f32 = u_xlat17.w;
        let x_1406 : f32 = u_xlat68;
        let x_1408 : f32 = u_xlat67;
        u_xlat67 = ((x_1405 * x_1406) + x_1408);
        let x_1411 : vec4<f32> = u_xlat9;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec25;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat68 = x_1423;
        let x_1425 : f32 = u_xlat5.x;
        let x_1426 : f32 = u_xlat68;
        let x_1428 : f32 = u_xlat67;
        u_xlat67 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec26;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat68 = x_1443;
        let x_1445 : f32 = u_xlat5.y;
        let x_1446 : f32 = u_xlat68;
        let x_1448 : f32 = u_xlat67;
        u_xlat67 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec2<f32> = u_xlat51;
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec27;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat68 = x_1462;
        let x_1464 : f32 = u_xlat5.z;
        let x_1465 : f32 = u_xlat68;
        let x_1467 : f32 = u_xlat67;
        u_xlat67 = ((x_1464 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat4;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.x, x_1470.y);
        let x_1473 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec28;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat68 = x_1482;
        let x_1484 : f32 = u_xlat5.w;
        let x_1485 : f32 = u_xlat68;
        let x_1487 : f32 = u_xlat67;
        u_xlat66 = ((x_1484 * x_1485) + x_1487);
      }
    }
  } else {
    let x_1491 : vec4<f32> = vs_TEXCOORD6;
    let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
    let x_1494 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
    let x_1501 : vec3<f32> = txVec29;
    let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
    u_xlat66 = x_1503;
  }
  let x_1505 : f32 = x_292.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_1505) + 1.0f);
  let x_1508 : f32 = u_xlat66;
  let x_1510 : f32 = x_292.x_MainLightShadowParams.x;
  let x_1512 : f32 = u_xlat67;
  u_xlat66 = ((x_1508 * x_1510) + x_1512);
  let x_1515 : f32 = vs_TEXCOORD6.z;
  u_xlatb67 = (0.0f >= x_1515);
  let x_1519 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (x_1519 >= 1.0f);
  let x_1521 : bool = u_xlatb67;
  let x_1522 : bool = u_xlatb68;
  u_xlatb67 = (x_1521 | x_1522);
  let x_1524 : bool = u_xlatb67;
  let x_1525 : f32 = u_xlat66;
  u_xlat66 = select(x_1525, 1.0f, x_1524);
  let x_1528 : vec4<f32> = vs_TEXCOORD2;
  let x_1533 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1535 : vec3<f32> = (vec3<f32>(x_1528.x, x_1528.y, x_1528.z) + -(x_1533));
  let x_1536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
  let x_1538 : vec4<f32> = u_xlat4;
  let x_1540 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(vec3<f32>(x_1538.x, x_1538.y, x_1538.z), vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
  let x_1543 : f32 = u_xlat67;
  let x_1545 : f32 = x_292.x_MainLightShadowParams.z;
  let x_1548 : f32 = x_292.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1543 * x_1545) + x_1548);
  let x_1550 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1550, 0.0f, 1.0f);
  let x_1552 : f32 = u_xlat66;
  u_xlat69 = (-(x_1552) + 1.0f);
  let x_1555 : f32 = u_xlat68;
  let x_1556 : f32 = u_xlat69;
  let x_1558 : f32 = u_xlat66;
  u_xlat66 = ((x_1555 * x_1556) + x_1558);
  let x_1560 : f32 = u_xlat66;
  let x_1562 : f32 = x_207.unity_LightData.z;
  u_xlat66 = (x_1560 * x_1562);
  let x_1564 : f32 = u_xlat66;
  let x_1568 : vec4<f32> = x_44.x_MainLightColor;
  let x_1570 : vec3<f32> = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : vec4<f32> = u_xlat2;
  let x_1577 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_1573.x, x_1573.y, x_1573.z), vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
  let x_1580 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1580, 0.0f, 1.0f);
  let x_1582 : f32 = u_xlat66;
  let x_1584 : vec4<f32> = u_xlat4;
  let x_1586 : vec3<f32> = (vec3<f32>(x_1582, x_1582, x_1582) * vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
  let x_1587 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
  let x_1589 : vec4<f32> = u_xlat1;
  let x_1591 : vec4<f32> = u_xlat4;
  let x_1593 : vec3<f32> = (vec3<f32>(x_1589.x, x_1589.y, x_1589.z) * vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1597 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1599 : f32 = x_207.unity_LightData.y;
  u_xlat66 = min(x_1597, x_1599);
  let x_1603 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1603));
  let x_1606 : f32 = u_xlat67;
  let x_1609 : f32 = x_292.x_AdditionalShadowFadeParams.x;
  let x_1612 : f32 = x_292.x_AdditionalShadowFadeParams.y;
  u_xlat67 = ((x_1606 * x_1609) + x_1612);
  let x_1614 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1614, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1626 : u32 = u_xlatu_loop_1;
    let x_1627 : u32 = u_xlatu66;
    if ((x_1626 < x_1627)) {
    } else {
      break;
    }
    let x_1630 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1630 >> 2u);
    let x_1634 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1634 & 3u));
    let x_1637 : u32 = u_xlatu69;
    let x_1640 : vec4<f32> = x_207.unity_LightIndices[bitcast<i32>(x_1637)];
    let x_1650 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1655 : vec4<u32> = indexable[x_1650];
    u_xlat69 = dot(x_1640, bitcast<vec4<f32>>(x_1655));
    let x_1659 : f32 = u_xlat69;
    u_xlati69 = i32(x_1659);
    let x_1661 : vec4<f32> = vs_TEXCOORD2;
    let x_1673 : i32 = u_xlati69;
    let x_1675 : vec4<f32> = x_1672.x_AdditionalLightsPosition[x_1673];
    let x_1678 : i32 = u_xlati69;
    let x_1680 : vec4<f32> = x_1672.x_AdditionalLightsPosition[x_1678];
    let x_1682 : vec3<f32> = ((-(vec3<f32>(x_1661.x, x_1661.y, x_1661.z)) * vec3<f32>(x_1675.w, x_1675.w, x_1675.w)) + vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
    let x_1683 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
    let x_1686 : vec4<f32> = u_xlat6;
    let x_1688 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1686.x, x_1686.y, x_1686.z), vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
    let x_1691 : f32 = u_xlat70;
    u_xlat70 = max(x_1691, 0.00006103515625f);
    let x_1695 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1695);
    let x_1697 : f32 = u_xlat71;
    let x_1699 : vec4<f32> = u_xlat6;
    let x_1701 : vec3<f32> = (vec3<f32>(x_1697, x_1697, x_1697) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
    let x_1702 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
    let x_1704 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1704);
    let x_1706 : f32 = u_xlat70;
    let x_1707 : i32 = u_xlati69;
    let x_1709 : f32 = x_1672.x_AdditionalLightsAttenuation[x_1707].x;
    u_xlat70 = (x_1706 * x_1709);
    let x_1711 : f32 = u_xlat70;
    let x_1713 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1711) * x_1713) + 1.0f);
    let x_1716 : f32 = u_xlat70;
    u_xlat70 = max(x_1716, 0.0f);
    let x_1718 : f32 = u_xlat70;
    let x_1719 : f32 = u_xlat70;
    u_xlat70 = (x_1718 * x_1719);
    let x_1721 : f32 = u_xlat70;
    let x_1722 : f32 = u_xlat71;
    u_xlat70 = (x_1721 * x_1722);
    let x_1724 : i32 = u_xlati69;
    let x_1726 : vec4<f32> = x_1672.x_AdditionalLightsSpotDir[x_1724];
    let x_1728 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1726.x, x_1726.y, x_1726.z), vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
    let x_1731 : f32 = u_xlat71;
    let x_1732 : i32 = u_xlati69;
    let x_1734 : f32 = x_1672.x_AdditionalLightsAttenuation[x_1732].z;
    let x_1736 : i32 = u_xlati69;
    let x_1738 : f32 = x_1672.x_AdditionalLightsAttenuation[x_1736].w;
    u_xlat71 = ((x_1731 * x_1734) + x_1738);
    let x_1740 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1740, 0.0f, 1.0f);
    let x_1742 : f32 = u_xlat71;
    let x_1743 : f32 = u_xlat71;
    u_xlat71 = (x_1742 * x_1743);
    let x_1745 : f32 = u_xlat70;
    let x_1746 : f32 = u_xlat71;
    u_xlat70 = (x_1745 * x_1746);
    let x_1750 : i32 = u_xlati69;
    let x_1752 : f32 = x_292.x_AdditionalShadowParams[x_1750].w;
    u_xlati71 = i32(x_1752);
    let x_1755 : i32 = u_xlati71;
    u_xlatb72 = (x_1755 >= 0i);
    let x_1757 : bool = u_xlatb72;
    if (x_1757) {
      let x_1761 : i32 = u_xlati69;
      let x_1763 : f32 = x_292.x_AdditionalShadowParams[x_1761].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1763, x_1763, x_1763, x_1763))));
      let x_1768 : bool = u_xlatb72;
      if (x_1768) {
        let x_1773 : vec4<f32> = u_xlat6;
        let x_1776 : vec4<f32> = u_xlat6;
        let x_1779 : vec4<bool> = (abs(vec4<f32>(x_1773.z, x_1773.z, x_1773.y, x_1773.z)) >= abs(vec4<f32>(x_1776.x, x_1776.y, x_1776.x, x_1776.x)));
        let x_1781 : vec3<bool> = vec3<bool>(x_1779.x, x_1779.y, x_1779.z);
        let x_1782 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
        let x_1785 : bool = u_xlatb7.y;
        let x_1787 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1785 & x_1787);
        let x_1789 : vec4<f32> = u_xlat6;
        let x_1792 : vec4<bool> = (-(vec4<f32>(x_1789.z, x_1789.y, x_1789.z, x_1789.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1793 : vec3<bool> = vec3<bool>(x_1792.x, x_1792.y, x_1792.w);
        let x_1794 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1793.x, x_1793.y, x_1794.z, x_1793.z);
        let x_1797 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1797);
        let x_1803 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1803);
        let x_1809 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1809);
        let x_1813 : bool = u_xlatb7.z;
        if (x_1813) {
          let x_1818 : f32 = u_xlat7.y;
          x_1814 = x_1818;
        } else {
          let x_1820 : f32 = u_xlat73;
          x_1814 = x_1820;
        }
        let x_1821 : f32 = x_1814;
        u_xlat29 = x_1821;
        let x_1823 : bool = u_xlatb72;
        if (x_1823) {
          let x_1828 : f32 = u_xlat7.x;
          x_1824 = x_1828;
        } else {
          let x_1830 : f32 = u_xlat29;
          x_1824 = x_1830;
        }
        let x_1831 : f32 = x_1824;
        u_xlat72 = x_1831;
        let x_1832 : i32 = u_xlati69;
        let x_1834 : f32 = x_292.x_AdditionalShadowParams[x_1832].w;
        u_xlat7.x = trunc(x_1834);
        let x_1837 : f32 = u_xlat72;
        let x_1839 : f32 = u_xlat7.x;
        u_xlat72 = (x_1837 + x_1839);
        let x_1841 : f32 = u_xlat72;
        u_xlati71 = i32(x_1841);
      }
      let x_1843 : i32 = u_xlati71;
      u_xlati71 = (x_1843 << bitcast<u32>(2i));
      let x_1845 : vec4<f32> = vs_TEXCOORD2;
      let x_1848 : i32 = u_xlati71;
      let x_1851 : i32 = u_xlati71;
      let x_1855 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[((x_1848 + 1i) / 4i)][((x_1851 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1845.y, x_1845.y, x_1845.y, x_1845.y) * x_1855);
      let x_1857 : i32 = u_xlati71;
      let x_1859 : i32 = u_xlati71;
      let x_1862 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[(x_1857 / 4i)][(x_1859 % 4i)];
      let x_1863 : vec4<f32> = vs_TEXCOORD2;
      let x_1866 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1862 * vec4<f32>(x_1863.x, x_1863.x, x_1863.x, x_1863.x)) + x_1866);
      let x_1868 : i32 = u_xlati71;
      let x_1871 : i32 = u_xlati71;
      let x_1875 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[((x_1868 + 2i) / 4i)][((x_1871 + 2i) % 4i)];
      let x_1876 : vec4<f32> = vs_TEXCOORD2;
      let x_1879 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1875 * vec4<f32>(x_1876.z, x_1876.z, x_1876.z, x_1876.z)) + x_1879);
      let x_1881 : vec4<f32> = u_xlat7;
      let x_1882 : i32 = u_xlati71;
      let x_1885 : i32 = u_xlati71;
      let x_1889 : vec4<f32> = x_292.x_AdditionalLightsWorldToShadow[((x_1882 + 3i) / 4i)][((x_1885 + 3i) % 4i)];
      u_xlat7 = (x_1881 + x_1889);
      let x_1891 : vec4<f32> = u_xlat7;
      let x_1893 : vec4<f32> = u_xlat7;
      let x_1895 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) / vec3<f32>(x_1893.w, x_1893.w, x_1893.w));
      let x_1896 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
      let x_1899 : i32 = u_xlati69;
      let x_1901 : f32 = x_292.x_AdditionalShadowParams[x_1899].y;
      u_xlatb71 = (0.0f < x_1901);
      let x_1903 : bool = u_xlatb71;
      if (x_1903) {
        let x_1906 : i32 = u_xlati69;
        let x_1908 : f32 = x_292.x_AdditionalShadowParams[x_1906].y;
        u_xlatb71 = (1.0f == x_1908);
        let x_1910 : bool = u_xlatb71;
        if (x_1910) {
          let x_1913 : vec4<f32> = u_xlat7;
          let x_1917 : vec4<f32> = x_292.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1913.x, x_1913.y, x_1913.x, x_1913.y) + x_1917);
          let x_1920 : vec4<f32> = u_xlat8;
          let x_1921 : vec2<f32> = vec2<f32>(x_1920.x, x_1920.y);
          let x_1923 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
          let x_1931 : vec3<f32> = txVec30;
          let x_1933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1931.xy, x_1931.z);
          u_xlat9.x = x_1933;
          let x_1936 : vec4<f32> = u_xlat8;
          let x_1937 : vec2<f32> = vec2<f32>(x_1936.z, x_1936.w);
          let x_1939 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
          let x_1946 : vec3<f32> = txVec31;
          let x_1948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
          u_xlat9.y = x_1948;
          let x_1950 : vec4<f32> = u_xlat7;
          let x_1954 : vec4<f32> = x_292.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1950.x, x_1950.y, x_1950.x, x_1950.y) + x_1954);
          let x_1957 : vec4<f32> = u_xlat8;
          let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
          let x_1960 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
          let x_1967 : vec3<f32> = txVec32;
          let x_1969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1967.xy, x_1967.z);
          u_xlat9.z = x_1969;
          let x_1972 : vec4<f32> = u_xlat8;
          let x_1973 : vec2<f32> = vec2<f32>(x_1972.z, x_1972.w);
          let x_1975 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
          let x_1982 : vec3<f32> = txVec33;
          let x_1984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1982.xy, x_1982.z);
          u_xlat9.w = x_1984;
          let x_1986 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_1986, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1989 : i32 = u_xlati69;
          let x_1991 : f32 = x_292.x_AdditionalShadowParams[x_1989].y;
          u_xlatb72 = (2.0f == x_1991);
          let x_1993 : bool = u_xlatb72;
          if (x_1993) {
            let x_1996 : vec4<f32> = u_xlat7;
            let x_2000 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2003 : vec2<f32> = ((vec2<f32>(x_1996.x, x_1996.y) * vec2<f32>(x_2000.z, x_2000.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2004 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2003.x, x_2003.y, x_2004.z, x_2004.w);
            let x_2006 : vec4<f32> = u_xlat8;
            let x_2008 : vec2<f32> = floor(vec2<f32>(x_2006.x, x_2006.y));
            let x_2009 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2008.x, x_2008.y, x_2009.z, x_2009.w);
            let x_2012 : vec4<f32> = u_xlat7;
            let x_2015 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2018 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2012.x, x_2012.y) * vec2<f32>(x_2015.z, x_2015.w)) + -(vec2<f32>(x_2018.x, x_2018.y)));
            let x_2022 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2022.x, x_2022.x, x_2022.y, x_2022.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2025 : vec4<f32> = u_xlat9;
            let x_2027 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2025.x, x_2025.x, x_2025.z, x_2025.z) * vec4<f32>(x_2027.x, x_2027.x, x_2027.z, x_2027.z));
            let x_2030 : vec4<f32> = u_xlat10;
            let x_2032 : vec2<f32> = (vec2<f32>(x_2030.y, x_2030.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2033 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2032.x, x_2033.y, x_2032.y, x_2033.w);
            let x_2035 : vec4<f32> = u_xlat10;
            let x_2038 : vec2<f32> = u_xlat52;
            let x_2040 : vec2<f32> = ((vec2<f32>(x_2035.x, x_2035.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2038));
            let x_2041 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2040.x, x_2040.y, x_2041.z, x_2041.w);
            let x_2044 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2044) + vec2<f32>(1.0f, 1.0f));
            let x_2047 : vec2<f32> = u_xlat52;
            let x_2048 : vec2<f32> = min(x_2047, vec2<f32>(0.0f, 0.0f));
            let x_2049 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2048.x, x_2048.y, x_2049.z, x_2049.w);
            let x_2051 : vec4<f32> = u_xlat11;
            let x_2054 : vec4<f32> = u_xlat11;
            let x_2057 : vec2<f32> = u_xlat54;
            let x_2058 : vec2<f32> = ((-(vec2<f32>(x_2051.x, x_2051.y)) * vec2<f32>(x_2054.x, x_2054.y)) + x_2057);
            let x_2059 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2058.x, x_2058.y, x_2059.z, x_2059.w);
            let x_2061 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2061, vec2<f32>(0.0f, 0.0f));
            let x_2063 : vec2<f32> = u_xlat52;
            let x_2065 : vec2<f32> = u_xlat52;
            let x_2067 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2063) * x_2065) + vec2<f32>(x_2067.y, x_2067.w));
            let x_2070 : vec4<f32> = u_xlat11;
            let x_2072 : vec2<f32> = (vec2<f32>(x_2070.x, x_2070.y) + vec2<f32>(1.0f, 1.0f));
            let x_2073 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2072.x, x_2072.y, x_2073.z, x_2073.w);
            let x_2075 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2075 + vec2<f32>(1.0f, 1.0f));
            let x_2077 : vec4<f32> = u_xlat10;
            let x_2079 : vec2<f32> = (vec2<f32>(x_2077.x, x_2077.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2080 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2079.x, x_2079.y, x_2080.z, x_2080.w);
            let x_2082 : vec2<f32> = u_xlat54;
            let x_2083 : vec2<f32> = (x_2082 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2084 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2083.x, x_2083.y, x_2084.z, x_2084.w);
            let x_2086 : vec4<f32> = u_xlat11;
            let x_2088 : vec2<f32> = (vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2089 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2088.x, x_2088.y, x_2089.z, x_2089.w);
            let x_2091 : vec2<f32> = u_xlat52;
            let x_2092 : vec2<f32> = (x_2091 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2093 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2092.x, x_2092.y, x_2093.z, x_2093.w);
            let x_2095 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2095.y, x_2095.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2099 : f32 = u_xlat11.x;
            u_xlat12.z = x_2099;
            let x_2102 : f32 = u_xlat52.x;
            u_xlat12.w = x_2102;
            let x_2105 : f32 = u_xlat13.x;
            u_xlat10.z = x_2105;
            let x_2108 : f32 = u_xlat9.x;
            u_xlat10.w = x_2108;
            let x_2110 : vec4<f32> = u_xlat10;
            let x_2112 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2110.z, x_2110.w, x_2110.x, x_2110.z) + vec4<f32>(x_2112.z, x_2112.w, x_2112.x, x_2112.z));
            let x_2116 : f32 = u_xlat12.y;
            u_xlat11.z = x_2116;
            let x_2119 : f32 = u_xlat52.y;
            u_xlat11.w = x_2119;
            let x_2122 : f32 = u_xlat10.y;
            u_xlat13.z = x_2122;
            let x_2125 : f32 = u_xlat9.z;
            u_xlat13.w = x_2125;
            let x_2127 : vec4<f32> = u_xlat11;
            let x_2129 : vec4<f32> = u_xlat13;
            let x_2131 : vec3<f32> = (vec3<f32>(x_2127.z, x_2127.y, x_2127.w) + vec3<f32>(x_2129.z, x_2129.y, x_2129.w));
            let x_2132 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
            let x_2134 : vec4<f32> = u_xlat10;
            let x_2136 : vec4<f32> = u_xlat14;
            let x_2138 : vec3<f32> = (vec3<f32>(x_2134.x, x_2134.z, x_2134.w) / vec3<f32>(x_2136.z, x_2136.w, x_2136.y));
            let x_2139 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
            let x_2141 : vec4<f32> = u_xlat10;
            let x_2143 : vec3<f32> = (vec3<f32>(x_2141.x, x_2141.y, x_2141.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2144 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
            let x_2146 : vec4<f32> = u_xlat13;
            let x_2148 : vec4<f32> = u_xlat9;
            let x_2150 : vec3<f32> = (vec3<f32>(x_2146.z, x_2146.y, x_2146.w) / vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
            let x_2151 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
            let x_2153 : vec4<f32> = u_xlat11;
            let x_2155 : vec3<f32> = (vec3<f32>(x_2153.x, x_2153.y, x_2153.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2156 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
            let x_2158 : vec4<f32> = u_xlat10;
            let x_2161 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2163 : vec3<f32> = (vec3<f32>(x_2158.y, x_2158.x, x_2158.z) * vec3<f32>(x_2161.x, x_2161.x, x_2161.x));
            let x_2164 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
            let x_2166 : vec4<f32> = u_xlat11;
            let x_2169 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2171 : vec3<f32> = (vec3<f32>(x_2166.x, x_2166.y, x_2166.z) * vec3<f32>(x_2169.y, x_2169.y, x_2169.y));
            let x_2172 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
            let x_2175 : f32 = u_xlat11.x;
            u_xlat10.w = x_2175;
            let x_2177 : vec4<f32> = u_xlat8;
            let x_2180 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2183 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y) * vec4<f32>(x_2180.x, x_2180.y, x_2180.x, x_2180.y)) + vec4<f32>(x_2183.y, x_2183.w, x_2183.x, x_2183.w));
            let x_2186 : vec4<f32> = u_xlat8;
            let x_2189 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2192 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2186.x, x_2186.y) * vec2<f32>(x_2189.x, x_2189.y)) + vec2<f32>(x_2192.z, x_2192.w));
            let x_2196 : f32 = u_xlat10.y;
            u_xlat11.w = x_2196;
            let x_2198 : vec4<f32> = u_xlat11;
            let x_2199 : vec2<f32> = vec2<f32>(x_2198.y, x_2198.z);
            let x_2200 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2200.x, x_2199.x, x_2200.z, x_2199.y);
            let x_2202 : vec4<f32> = u_xlat8;
            let x_2205 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2208 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2202.x, x_2202.y, x_2202.x, x_2202.y) * vec4<f32>(x_2205.x, x_2205.y, x_2205.x, x_2205.y)) + vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2208.y));
            let x_2211 : vec4<f32> = u_xlat8;
            let x_2214 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2217 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2211.x, x_2211.y, x_2211.x, x_2211.y) * vec4<f32>(x_2214.x, x_2214.y, x_2214.x, x_2214.y)) + vec4<f32>(x_2217.w, x_2217.y, x_2217.w, x_2217.z));
            let x_2220 : vec4<f32> = u_xlat8;
            let x_2223 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2226 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2220.x, x_2220.y, x_2220.x, x_2220.y) * vec4<f32>(x_2223.x, x_2223.y, x_2223.x, x_2223.y)) + vec4<f32>(x_2226.x, x_2226.w, x_2226.z, x_2226.w));
            let x_2229 : vec4<f32> = u_xlat9;
            let x_2231 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2229.x, x_2229.x, x_2229.x, x_2229.y) * vec4<f32>(x_2231.z, x_2231.w, x_2231.y, x_2231.z));
            let x_2234 : vec4<f32> = u_xlat9;
            let x_2236 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2234.y, x_2234.y, x_2234.z, x_2234.z) * x_2236);
            let x_2239 : f32 = u_xlat9.z;
            let x_2241 : f32 = u_xlat14.y;
            u_xlat72 = (x_2239 * x_2241);
            let x_2244 : vec4<f32> = u_xlat12;
            let x_2245 : vec2<f32> = vec2<f32>(x_2244.x, x_2244.y);
            let x_2247 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
            let x_2254 : vec3<f32> = txVec34;
            let x_2256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2254.xy, x_2254.z);
            u_xlat73 = x_2256;
            let x_2258 : vec4<f32> = u_xlat12;
            let x_2259 : vec2<f32> = vec2<f32>(x_2258.z, x_2258.w);
            let x_2261 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2259.x, x_2259.y, x_2261);
            let x_2268 : vec3<f32> = txVec35;
            let x_2270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2268.xy, x_2268.z);
            u_xlat8.x = x_2270;
            let x_2273 : f32 = u_xlat8.x;
            let x_2275 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2273 * x_2275);
            let x_2279 : f32 = u_xlat15.x;
            let x_2280 : f32 = u_xlat73;
            let x_2283 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2279 * x_2280) + x_2283);
            let x_2286 : vec2<f32> = u_xlat52;
            let x_2288 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
            let x_2295 : vec3<f32> = txVec36;
            let x_2297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2295.xy, x_2295.z);
            u_xlat8.x = x_2297;
            let x_2300 : f32 = u_xlat15.z;
            let x_2302 : f32 = u_xlat8.x;
            let x_2304 : f32 = u_xlat73;
            u_xlat73 = ((x_2300 * x_2302) + x_2304);
            let x_2307 : vec4<f32> = u_xlat11;
            let x_2308 : vec2<f32> = vec2<f32>(x_2307.x, x_2307.y);
            let x_2310 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2308.x, x_2308.y, x_2310);
            let x_2317 : vec3<f32> = txVec37;
            let x_2319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2317.xy, x_2317.z);
            u_xlat8.x = x_2319;
            let x_2322 : f32 = u_xlat15.w;
            let x_2324 : f32 = u_xlat8.x;
            let x_2326 : f32 = u_xlat73;
            u_xlat73 = ((x_2322 * x_2324) + x_2326);
            let x_2329 : vec4<f32> = u_xlat13;
            let x_2330 : vec2<f32> = vec2<f32>(x_2329.x, x_2329.y);
            let x_2332 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2330.x, x_2330.y, x_2332);
            let x_2339 : vec3<f32> = txVec38;
            let x_2341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2339.xy, x_2339.z);
            u_xlat8.x = x_2341;
            let x_2344 : f32 = u_xlat16.x;
            let x_2346 : f32 = u_xlat8.x;
            let x_2348 : f32 = u_xlat73;
            u_xlat73 = ((x_2344 * x_2346) + x_2348);
            let x_2351 : vec4<f32> = u_xlat13;
            let x_2352 : vec2<f32> = vec2<f32>(x_2351.z, x_2351.w);
            let x_2354 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
            let x_2361 : vec3<f32> = txVec39;
            let x_2363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
            u_xlat8.x = x_2363;
            let x_2366 : f32 = u_xlat16.y;
            let x_2368 : f32 = u_xlat8.x;
            let x_2370 : f32 = u_xlat73;
            u_xlat73 = ((x_2366 * x_2368) + x_2370);
            let x_2373 : vec4<f32> = u_xlat11;
            let x_2374 : vec2<f32> = vec2<f32>(x_2373.z, x_2373.w);
            let x_2376 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
            let x_2383 : vec3<f32> = txVec40;
            let x_2385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
            u_xlat8.x = x_2385;
            let x_2388 : f32 = u_xlat16.z;
            let x_2390 : f32 = u_xlat8.x;
            let x_2392 : f32 = u_xlat73;
            u_xlat73 = ((x_2388 * x_2390) + x_2392);
            let x_2395 : vec4<f32> = u_xlat10;
            let x_2396 : vec2<f32> = vec2<f32>(x_2395.x, x_2395.y);
            let x_2398 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2396.x, x_2396.y, x_2398);
            let x_2405 : vec3<f32> = txVec41;
            let x_2407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2405.xy, x_2405.z);
            u_xlat8.x = x_2407;
            let x_2410 : f32 = u_xlat16.w;
            let x_2412 : f32 = u_xlat8.x;
            let x_2414 : f32 = u_xlat73;
            u_xlat73 = ((x_2410 * x_2412) + x_2414);
            let x_2417 : vec4<f32> = u_xlat10;
            let x_2418 : vec2<f32> = vec2<f32>(x_2417.z, x_2417.w);
            let x_2420 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
            let x_2427 : vec3<f32> = txVec42;
            let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
            u_xlat8.x = x_2429;
            let x_2431 : f32 = u_xlat72;
            let x_2433 : f32 = u_xlat8.x;
            let x_2435 : f32 = u_xlat73;
            u_xlat71 = ((x_2431 * x_2433) + x_2435);
          } else {
            let x_2438 : vec4<f32> = u_xlat7;
            let x_2441 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2444 : vec2<f32> = ((vec2<f32>(x_2438.x, x_2438.y) * vec2<f32>(x_2441.z, x_2441.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2445 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2444.x, x_2444.y, x_2445.z, x_2445.w);
            let x_2447 : vec4<f32> = u_xlat8;
            let x_2449 : vec2<f32> = floor(vec2<f32>(x_2447.x, x_2447.y));
            let x_2450 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec4<f32> = u_xlat7;
            let x_2455 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2458 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2452.x, x_2452.y) * vec2<f32>(x_2455.z, x_2455.w)) + -(vec2<f32>(x_2458.x, x_2458.y)));
            let x_2462 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2462.x, x_2462.x, x_2462.y, x_2462.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2465 : vec4<f32> = u_xlat9;
            let x_2467 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2465.x, x_2465.x, x_2465.z, x_2465.z) * vec4<f32>(x_2467.x, x_2467.x, x_2467.z, x_2467.z));
            let x_2470 : vec4<f32> = u_xlat10;
            let x_2472 : vec2<f32> = (vec2<f32>(x_2470.y, x_2470.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2473 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2473.x, x_2472.x, x_2473.z, x_2472.y);
            let x_2475 : vec4<f32> = u_xlat10;
            let x_2478 : vec2<f32> = u_xlat52;
            let x_2480 : vec2<f32> = ((vec2<f32>(x_2475.x, x_2475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2478));
            let x_2481 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2480.x, x_2481.y, x_2480.y, x_2481.w);
            let x_2483 : vec2<f32> = u_xlat52;
            let x_2485 : vec2<f32> = (-(x_2483) + vec2<f32>(1.0f, 1.0f));
            let x_2486 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2488 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2488, vec2<f32>(0.0f, 0.0f));
            let x_2490 : vec2<f32> = u_xlat54;
            let x_2492 : vec2<f32> = u_xlat54;
            let x_2494 : vec4<f32> = u_xlat10;
            let x_2496 : vec2<f32> = ((-(x_2490) * x_2492) + vec2<f32>(x_2494.x, x_2494.y));
            let x_2497 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2496.x, x_2496.y, x_2497.z, x_2497.w);
            let x_2499 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2499, vec2<f32>(0.0f, 0.0f));
            let x_2502 : vec2<f32> = u_xlat54;
            let x_2504 : vec2<f32> = u_xlat54;
            let x_2506 : vec4<f32> = u_xlat9;
            let x_2508 : vec2<f32> = ((-(x_2502) * x_2504) + vec2<f32>(x_2506.y, x_2506.w));
            let x_2509 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2508.x, x_2509.y, x_2508.y);
            let x_2511 : vec4<f32> = u_xlat10;
            let x_2513 : vec2<f32> = (vec2<f32>(x_2511.x, x_2511.y) + vec2<f32>(2.0f, 2.0f));
            let x_2514 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec3<f32> = u_xlat31;
            let x_2518 : vec2<f32> = (vec2<f32>(x_2516.x, x_2516.z) + vec2<f32>(2.0f, 2.0f));
            let x_2519 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2519.x, x_2518.x, x_2519.z, x_2518.y);
            let x_2522 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2522 * 0.08163200318813323975f);
            let x_2525 : vec4<f32> = u_xlat9;
            let x_2527 : vec3<f32> = (vec3<f32>(x_2525.z, x_2525.x, x_2525.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2528 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
            let x_2530 : vec4<f32> = u_xlat10;
            let x_2532 : vec2<f32> = (vec2<f32>(x_2530.x, x_2530.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2533 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2536 : f32 = u_xlat13.y;
            u_xlat12.x = x_2536;
            let x_2538 : vec2<f32> = u_xlat52;
            let x_2541 : vec2<f32> = ((vec2<f32>(x_2538.x, x_2538.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2542 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2542.x, x_2541.x, x_2542.z, x_2541.y);
            let x_2544 : vec2<f32> = u_xlat52;
            let x_2547 : vec2<f32> = ((vec2<f32>(x_2544.x, x_2544.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2548 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2547.x, x_2548.y, x_2547.y, x_2548.w);
            let x_2551 : f32 = u_xlat9.x;
            u_xlat10.y = x_2551;
            let x_2554 : f32 = u_xlat11.y;
            u_xlat10.w = x_2554;
            let x_2556 : vec4<f32> = u_xlat10;
            let x_2557 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2556 + x_2557);
            let x_2559 : vec2<f32> = u_xlat52;
            let x_2562 : vec2<f32> = ((vec2<f32>(x_2559.y, x_2559.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2563 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2563.x, x_2562.x, x_2563.z, x_2562.y);
            let x_2565 : vec2<f32> = u_xlat52;
            let x_2568 : vec2<f32> = ((vec2<f32>(x_2565.y, x_2565.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2569 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2568.x, x_2569.y, x_2568.y, x_2569.w);
            let x_2572 : f32 = u_xlat9.y;
            u_xlat11.y = x_2572;
            let x_2574 : vec4<f32> = u_xlat11;
            let x_2575 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2574 + x_2575);
            let x_2577 : vec4<f32> = u_xlat10;
            let x_2578 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2577 / x_2578);
            let x_2580 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2580 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2582 : vec4<f32> = u_xlat11;
            let x_2583 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2582 / x_2583);
            let x_2585 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2585 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2587 : vec4<f32> = u_xlat10;
            let x_2590 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2587.w, x_2587.x, x_2587.y, x_2587.z) * vec4<f32>(x_2590.x, x_2590.x, x_2590.x, x_2590.x));
            let x_2593 : vec4<f32> = u_xlat11;
            let x_2596 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2593.x, x_2593.w, x_2593.y, x_2593.z) * vec4<f32>(x_2596.y, x_2596.y, x_2596.y, x_2596.y));
            let x_2599 : vec4<f32> = u_xlat10;
            let x_2600 : vec3<f32> = vec3<f32>(x_2599.y, x_2599.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2600.x, x_2601.y, x_2600.y, x_2600.z);
            let x_2604 : f32 = u_xlat11.x;
            u_xlat13.y = x_2604;
            let x_2606 : vec4<f32> = u_xlat8;
            let x_2609 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2612 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2606.x, x_2606.y, x_2606.x, x_2606.y) * vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y)) + vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2612.y));
            let x_2615 : vec4<f32> = u_xlat8;
            let x_2618 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2621 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2615.x, x_2615.y) * vec2<f32>(x_2618.x, x_2618.y)) + vec2<f32>(x_2621.w, x_2621.y));
            let x_2625 : f32 = u_xlat13.y;
            u_xlat10.y = x_2625;
            let x_2628 : f32 = u_xlat11.z;
            u_xlat13.y = x_2628;
            let x_2630 : vec4<f32> = u_xlat8;
            let x_2633 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2636 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2630.x, x_2630.y, x_2630.x, x_2630.y) * vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.y)) + vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2636.y));
            let x_2639 : vec4<f32> = u_xlat8;
            let x_2642 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2645 : vec4<f32> = u_xlat13;
            let x_2647 : vec2<f32> = ((vec2<f32>(x_2639.x, x_2639.y) * vec2<f32>(x_2642.x, x_2642.y)) + vec2<f32>(x_2645.w, x_2645.y));
            let x_2648 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2647.x, x_2647.y, x_2648.z, x_2648.w);
            let x_2651 : f32 = u_xlat13.y;
            u_xlat10.z = x_2651;
            let x_2653 : vec4<f32> = u_xlat8;
            let x_2656 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2659 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2653.x, x_2653.y, x_2653.x, x_2653.y) * vec4<f32>(x_2656.x, x_2656.y, x_2656.x, x_2656.y)) + vec4<f32>(x_2659.x, x_2659.y, x_2659.x, x_2659.z));
            let x_2663 : f32 = u_xlat11.w;
            u_xlat13.y = x_2663;
            let x_2666 : vec4<f32> = u_xlat8;
            let x_2669 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2672 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2666.x, x_2666.y, x_2666.x, x_2666.y) * vec4<f32>(x_2669.x, x_2669.y, x_2669.x, x_2669.y)) + vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2672.y));
            let x_2676 : vec4<f32> = u_xlat8;
            let x_2679 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2682 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2676.x, x_2676.y) * vec2<f32>(x_2679.x, x_2679.y)) + vec2<f32>(x_2682.w, x_2682.y));
            let x_2686 : f32 = u_xlat13.y;
            u_xlat10.w = x_2686;
            let x_2689 : vec4<f32> = u_xlat8;
            let x_2692 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2695 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2692.x, x_2692.y)) + vec2<f32>(x_2695.x, x_2695.w));
            let x_2698 : vec4<f32> = u_xlat13;
            let x_2699 : vec3<f32> = vec3<f32>(x_2698.x, x_2698.z, x_2698.w);
            let x_2700 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2699.x, x_2700.y, x_2699.y, x_2699.z);
            let x_2702 : vec4<f32> = u_xlat8;
            let x_2705 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2708 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2702.x, x_2702.y, x_2702.x, x_2702.y) * vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.y)) + vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2708.y));
            let x_2712 : vec4<f32> = u_xlat8;
            let x_2715 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2718 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2712.x, x_2712.y) * vec2<f32>(x_2715.x, x_2715.y)) + vec2<f32>(x_2718.w, x_2718.y));
            let x_2722 : f32 = u_xlat10.x;
            u_xlat11.x = x_2722;
            let x_2724 : vec4<f32> = u_xlat8;
            let x_2727 : vec4<f32> = x_292.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat11;
            let x_2732 : vec2<f32> = ((vec2<f32>(x_2724.x, x_2724.y) * vec2<f32>(x_2727.x, x_2727.y)) + vec2<f32>(x_2730.x, x_2730.y));
            let x_2733 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2733.w);
            let x_2736 : vec4<f32> = u_xlat9;
            let x_2738 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2736.x, x_2736.x, x_2736.x, x_2736.x) * x_2738);
            let x_2741 : vec4<f32> = u_xlat9;
            let x_2743 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2741.y, x_2741.y, x_2741.y, x_2741.y) * x_2743);
            let x_2746 : vec4<f32> = u_xlat9;
            let x_2748 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2746.z, x_2746.z, x_2746.z, x_2746.z) * x_2748);
            let x_2750 : vec4<f32> = u_xlat9;
            let x_2752 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2750.w, x_2750.w, x_2750.w, x_2750.w) * x_2752);
            let x_2755 : vec4<f32> = u_xlat14;
            let x_2756 : vec2<f32> = vec2<f32>(x_2755.x, x_2755.y);
            let x_2758 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2756.x, x_2756.y, x_2758);
            let x_2765 : vec3<f32> = txVec43;
            let x_2767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2765.xy, x_2765.z);
            u_xlat72 = x_2767;
            let x_2769 : vec4<f32> = u_xlat14;
            let x_2770 : vec2<f32> = vec2<f32>(x_2769.z, x_2769.w);
            let x_2772 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2770.x, x_2770.y, x_2772);
            let x_2779 : vec3<f32> = txVec44;
            let x_2781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2779.xy, x_2779.z);
            u_xlat73 = x_2781;
            let x_2782 : f32 = u_xlat73;
            let x_2784 : f32 = u_xlat19.y;
            u_xlat73 = (x_2782 * x_2784);
            let x_2787 : f32 = u_xlat19.x;
            let x_2788 : f32 = u_xlat72;
            let x_2790 : f32 = u_xlat73;
            u_xlat72 = ((x_2787 * x_2788) + x_2790);
            let x_2793 : vec2<f32> = u_xlat52;
            let x_2795 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
            let x_2802 : vec3<f32> = txVec45;
            let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
            u_xlat73 = x_2804;
            let x_2806 : f32 = u_xlat19.z;
            let x_2807 : f32 = u_xlat73;
            let x_2809 : f32 = u_xlat72;
            u_xlat72 = ((x_2806 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat17;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.x, x_2812.y);
            let x_2815 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec46;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat73 = x_2824;
            let x_2826 : f32 = u_xlat19.w;
            let x_2827 : f32 = u_xlat73;
            let x_2829 : f32 = u_xlat72;
            u_xlat72 = ((x_2826 * x_2827) + x_2829);
            let x_2832 : vec4<f32> = u_xlat15;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.x, x_2832.y);
            let x_2835 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2842 : vec3<f32> = txVec47;
            let x_2844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2842.xy, x_2842.z);
            u_xlat73 = x_2844;
            let x_2846 : f32 = u_xlat20.x;
            let x_2847 : f32 = u_xlat73;
            let x_2849 : f32 = u_xlat72;
            u_xlat72 = ((x_2846 * x_2847) + x_2849);
            let x_2852 : vec4<f32> = u_xlat15;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.z, x_2852.w);
            let x_2855 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec48;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat73 = x_2864;
            let x_2866 : f32 = u_xlat20.y;
            let x_2867 : f32 = u_xlat73;
            let x_2869 : f32 = u_xlat72;
            u_xlat72 = ((x_2866 * x_2867) + x_2869);
            let x_2872 : vec4<f32> = u_xlat16;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
            let x_2875 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec49;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat73 = x_2884;
            let x_2886 : f32 = u_xlat20.z;
            let x_2887 : f32 = u_xlat73;
            let x_2889 : f32 = u_xlat72;
            u_xlat72 = ((x_2886 * x_2887) + x_2889);
            let x_2892 : vec4<f32> = u_xlat17;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.z, x_2892.w);
            let x_2895 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2902 : vec3<f32> = txVec50;
            let x_2904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
            u_xlat73 = x_2904;
            let x_2906 : f32 = u_xlat20.w;
            let x_2907 : f32 = u_xlat73;
            let x_2909 : f32 = u_xlat72;
            u_xlat72 = ((x_2906 * x_2907) + x_2909);
            let x_2912 : vec4<f32> = u_xlat18;
            let x_2913 : vec2<f32> = vec2<f32>(x_2912.x, x_2912.y);
            let x_2915 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
            let x_2922 : vec3<f32> = txVec51;
            let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
            u_xlat73 = x_2924;
            let x_2926 : f32 = u_xlat21.x;
            let x_2927 : f32 = u_xlat73;
            let x_2929 : f32 = u_xlat72;
            u_xlat72 = ((x_2926 * x_2927) + x_2929);
            let x_2932 : vec4<f32> = u_xlat18;
            let x_2933 : vec2<f32> = vec2<f32>(x_2932.z, x_2932.w);
            let x_2935 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2933.x, x_2933.y, x_2935);
            let x_2942 : vec3<f32> = txVec52;
            let x_2944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2942.xy, x_2942.z);
            u_xlat73 = x_2944;
            let x_2946 : f32 = u_xlat21.y;
            let x_2947 : f32 = u_xlat73;
            let x_2949 : f32 = u_xlat72;
            u_xlat72 = ((x_2946 * x_2947) + x_2949);
            let x_2952 : vec2<f32> = u_xlat32;
            let x_2954 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
            let x_2961 : vec3<f32> = txVec53;
            let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
            u_xlat73 = x_2963;
            let x_2965 : f32 = u_xlat21.z;
            let x_2966 : f32 = u_xlat73;
            let x_2968 : f32 = u_xlat72;
            u_xlat72 = ((x_2965 * x_2966) + x_2968);
            let x_2971 : vec2<f32> = u_xlat60;
            let x_2973 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec54;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat73 = x_2982;
            let x_2984 : f32 = u_xlat21.w;
            let x_2985 : f32 = u_xlat73;
            let x_2987 : f32 = u_xlat72;
            u_xlat72 = ((x_2984 * x_2985) + x_2987);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
            let x_2993 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec55;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat73 = x_3002;
            let x_3004 : f32 = u_xlat9.x;
            let x_3005 : f32 = u_xlat73;
            let x_3007 : f32 = u_xlat72;
            u_xlat72 = ((x_3004 * x_3005) + x_3007);
            let x_3010 : vec4<f32> = u_xlat13;
            let x_3011 : vec2<f32> = vec2<f32>(x_3010.z, x_3010.w);
            let x_3013 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3011.x, x_3011.y, x_3013);
            let x_3020 : vec3<f32> = txVec56;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat73 = x_3022;
            let x_3024 : f32 = u_xlat9.y;
            let x_3025 : f32 = u_xlat73;
            let x_3027 : f32 = u_xlat72;
            u_xlat72 = ((x_3024 * x_3025) + x_3027);
            let x_3030 : vec2<f32> = u_xlat55;
            let x_3032 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec57;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat73 = x_3041;
            let x_3043 : f32 = u_xlat9.z;
            let x_3044 : f32 = u_xlat73;
            let x_3046 : f32 = u_xlat72;
            u_xlat72 = ((x_3043 * x_3044) + x_3046);
            let x_3049 : vec4<f32> = u_xlat8;
            let x_3050 : vec2<f32> = vec2<f32>(x_3049.x, x_3049.y);
            let x_3052 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
            let x_3059 : vec3<f32> = txVec58;
            let x_3061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
            u_xlat73 = x_3061;
            let x_3063 : f32 = u_xlat9.w;
            let x_3064 : f32 = u_xlat73;
            let x_3066 : f32 = u_xlat72;
            u_xlat71 = ((x_3063 * x_3064) + x_3066);
          }
        }
      } else {
        let x_3070 : vec4<f32> = u_xlat7;
        let x_3071 : vec2<f32> = vec2<f32>(x_3070.x, x_3070.y);
        let x_3073 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
        let x_3080 : vec3<f32> = txVec59;
        let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
        u_xlat71 = x_3082;
      }
      let x_3083 : i32 = u_xlati69;
      let x_3085 : f32 = x_292.x_AdditionalShadowParams[x_3083].x;
      u_xlat72 = (1.0f + -(x_3085));
      let x_3088 : f32 = u_xlat71;
      let x_3089 : i32 = u_xlati69;
      let x_3091 : f32 = x_292.x_AdditionalShadowParams[x_3089].x;
      let x_3093 : f32 = u_xlat72;
      u_xlat71 = ((x_3088 * x_3091) + x_3093);
      let x_3096 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3096);
      let x_3099 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3099 >= 1.0f);
      let x_3102 : bool = u_xlatb72;
      let x_3104 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3102 | x_3104);
      let x_3106 : bool = u_xlatb72;
      let x_3107 : f32 = u_xlat71;
      u_xlat71 = select(x_3107, 1.0f, x_3106);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3110 : f32 = u_xlat71;
    u_xlat72 = (-(x_3110) + 1.0f);
    let x_3113 : f32 = u_xlat67;
    let x_3114 : f32 = u_xlat72;
    let x_3116 : f32 = u_xlat71;
    u_xlat71 = ((x_3113 * x_3114) + x_3116);
    let x_3118 : f32 = u_xlat70;
    let x_3119 : f32 = u_xlat71;
    u_xlat70 = (x_3118 * x_3119);
    let x_3121 : f32 = u_xlat70;
    let x_3123 : i32 = u_xlati69;
    let x_3125 : vec4<f32> = x_1672.x_AdditionalLightsColor[x_3123];
    let x_3127 : vec3<f32> = (vec3<f32>(x_3121, x_3121, x_3121) * vec3<f32>(x_3125.x, x_3125.y, x_3125.z));
    let x_3128 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3128.w);
    let x_3130 : vec4<f32> = u_xlat2;
    let x_3132 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_3130.x, x_3130.y, x_3130.z), vec3<f32>(x_3132.x, x_3132.y, x_3132.z));
    let x_3135 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3135, 0.0f, 1.0f);
    let x_3137 : f32 = u_xlat69;
    let x_3139 : vec4<f32> = u_xlat7;
    let x_3141 : vec3<f32> = (vec3<f32>(x_3137, x_3137, x_3137) * vec3<f32>(x_3139.x, x_3139.y, x_3139.z));
    let x_3142 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
    let x_3144 : vec4<f32> = u_xlat6;
    let x_3146 : vec4<f32> = u_xlat1;
    let x_3149 : vec4<f32> = u_xlat5;
    let x_3151 : vec3<f32> = ((vec3<f32>(x_3144.x, x_3144.y, x_3144.z) * vec3<f32>(x_3146.x, x_3146.y, x_3146.z)) + vec3<f32>(x_3149.x, x_3149.y, x_3149.z));
    let x_3152 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);

    continuing {
      let x_3154 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3154 + bitcast<u32>(1i));
    }
  }
  let x_3156 : vec3<f32> = u_xlat3;
  let x_3157 : vec4<f32> = u_xlat1;
  let x_3160 : vec4<f32> = u_xlat4;
  let x_3162 : vec3<f32> = ((x_3156 * vec3<f32>(x_3157.x, x_3157.y, x_3157.z)) + vec3<f32>(x_3160.x, x_3160.y, x_3160.z));
  let x_3163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3163.w);
  let x_3165 : vec4<f32> = u_xlat5;
  let x_3167 : vec4<f32> = u_xlat1;
  let x_3169 : vec3<f32> = (vec3<f32>(x_3165.x, x_3165.y, x_3165.z) + vec3<f32>(x_3167.x, x_3167.y, x_3167.z));
  let x_3170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3169.x, x_3169.y, x_3169.z, x_3170.w);
  let x_3173 : f32 = u_xlat0.x;
  let x_3175 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3173 * -(x_3175));
  let x_3180 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3180);
  let x_3183 : vec4<f32> = u_xlat1;
  let x_3186 : vec4<f32> = x_44.unity_FogColor;
  let x_3189 : vec3<f32> = (vec3<f32>(x_3183.x, x_3183.y, x_3183.z) + -(vec3<f32>(x_3186.x, x_3186.y, x_3186.z)));
  let x_3190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3189.x, x_3189.y, x_3189.z, x_3190.w);
  let x_3194 : vec4<f32> = u_xlat0;
  let x_3196 : vec4<f32> = u_xlat1;
  let x_3200 : vec4<f32> = x_44.unity_FogColor;
  let x_3202 : vec3<f32> = ((vec3<f32>(x_3194.x, x_3194.x, x_3194.x) * vec3<f32>(x_3196.x, x_3196.y, x_3196.z)) + vec3<f32>(x_3200.x, x_3200.y, x_3200.z));
  let x_3203 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3202.x, x_3202.y, x_3202.z, x_3203.w);
  let x_3205 : bool = u_xlatb44;
  let x_3206 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3206, x_3205);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


