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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb66 : bool;

@group(1) @binding(4) var<uniform> x_261 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(2) var<uniform> x_1534 : UnityPerDraw;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1645 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1787 : f32;
  var x_1797 : f32;
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
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_163 : f32 = hlslcc_FragCoord.w;
  let x_166 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_163 * x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_174 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_170 / x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_178) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_185 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_189, 0.0f);
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_193 * x_196);
  let x_206 : vec2<f32> = vs_TEXCOORD1;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_206, x_208);
  u_xlat3 = x_209;
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_217 : f32 = x_44.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_215, x_217);
  let x_219 : vec3<f32> = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat3;
  let x_226 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec3<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(x_229, vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : f32 = u_xlat66;
  u_xlat66 = (x_233 + 0.5f);
  let x_235 : f32 = u_xlat66;
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : f32 = u_xlat3.w;
  u_xlat66 = max(x_243, 0.00009999999747378752f);
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : f32 = u_xlat66;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) / vec3<f32>(x_247, x_247, x_247));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_264 : f32 = x_261.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_264);
  let x_266 : bool = u_xlatb66;
  if (x_266) {
    let x_270 : f32 = x_261.x_MainLightShadowParams.y;
    u_xlatb66 = (x_270 == 1.0f);
    let x_272 : bool = u_xlatb66;
    if (x_272) {
      let x_276 : vec4<f32> = vs_TEXCOORD6;
      let x_280 : vec4<f32> = x_261.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y) + x_280);
      let x_284 : vec4<f32> = u_xlat4;
      let x_285 : vec2<f32> = vec2<f32>(x_284.x, x_284.y);
      let x_287 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_285.x, x_285.y, x_287);
      let x_300 : vec3<f32> = txVec0;
      let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
      u_xlat5.x = x_302;
      let x_305 : vec4<f32> = u_xlat4;
      let x_306 : vec2<f32> = vec2<f32>(x_305.z, x_305.w);
      let x_308 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_306.x, x_306.y, x_308);
      let x_315 : vec3<f32> = txVec1;
      let x_317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_315.xy, x_315.z);
      u_xlat5.y = x_317;
      let x_319 : vec4<f32> = vs_TEXCOORD6;
      let x_322 : vec4<f32> = x_261.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_319.x, x_319.y, x_319.x, x_319.y) + x_322);
      let x_325 : vec4<f32> = u_xlat4;
      let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
      let x_328 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_326.x, x_326.y, x_328);
      let x_335 : vec3<f32> = txVec2;
      let x_337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_335.xy, x_335.z);
      u_xlat5.z = x_337;
      let x_340 : vec4<f32> = u_xlat4;
      let x_341 : vec2<f32> = vec2<f32>(x_340.z, x_340.w);
      let x_343 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_341.x, x_341.y, x_343);
      let x_350 : vec3<f32> = txVec3;
      let x_352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_350.xy, x_350.z);
      u_xlat5.w = x_352;
      let x_354 : vec4<f32> = u_xlat5;
      u_xlat66 = dot(x_354, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_361 : f32 = x_261.x_MainLightShadowParams.y;
      u_xlatb67 = (x_361 == 2.0f);
      let x_364 : bool = u_xlatb67;
      if (x_364) {
        let x_367 : vec4<f32> = vs_TEXCOORD6;
        let x_371 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_375 : vec2<f32> = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_371.z, x_371.w)) + vec2<f32>(0.5f, 0.5f));
        let x_376 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
        let x_378 : vec4<f32> = u_xlat4;
        let x_380 : vec2<f32> = floor(vec2<f32>(x_378.x, x_378.y));
        let x_381 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
        let x_385 : vec4<f32> = vs_TEXCOORD6;
        let x_388 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_391 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_388.z, x_388.w)) + -(vec2<f32>(x_391.x, x_391.y)));
        let x_395 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_395.x, x_395.x, x_395.y, x_395.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_400 : vec4<f32> = u_xlat5;
        let x_402 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_400.x, x_400.x, x_400.z, x_400.z) * vec4<f32>(x_402.x, x_402.x, x_402.z, x_402.z));
        let x_405 : vec4<f32> = u_xlat6;
        let x_409 : vec2<f32> = (vec2<f32>(x_405.y, x_405.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_410 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_409.x, x_410.y, x_409.y, x_410.w);
        let x_412 : vec4<f32> = u_xlat6;
        let x_415 : vec2<f32> = u_xlat48;
        let x_417 : vec2<f32> = ((vec2<f32>(x_412.x, x_412.z) * vec2<f32>(0.5f, 0.5f)) + -(x_415));
        let x_418 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_421 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_421) + vec2<f32>(1.0f, 1.0f));
        let x_426 : vec2<f32> = u_xlat48;
        let x_428 : vec2<f32> = min(x_426, vec2<f32>(0.0f, 0.0f));
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_431 : vec4<f32> = u_xlat7;
        let x_434 : vec4<f32> = u_xlat7;
        let x_437 : vec2<f32> = u_xlat50;
        let x_438 : vec2<f32> = ((-(vec2<f32>(x_431.x, x_431.y)) * vec2<f32>(x_434.x, x_434.y)) + x_437);
        let x_439 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_441, vec2<f32>(0.0f, 0.0f));
        let x_443 : vec2<f32> = u_xlat48;
        let x_445 : vec2<f32> = u_xlat48;
        let x_447 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_443) * x_445) + vec2<f32>(x_447.y, x_447.w));
        let x_450 : vec4<f32> = u_xlat7;
        let x_452 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) + vec2<f32>(1.0f, 1.0f));
        let x_453 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_455 + vec2<f32>(1.0f, 1.0f));
        let x_458 : vec4<f32> = u_xlat6;
        let x_462 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_463 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_465 : vec2<f32> = u_xlat50;
        let x_466 : vec2<f32> = (x_465 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec4<f32> = u_xlat7;
        let x_471 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_472 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_475 : vec2<f32> = u_xlat48;
        let x_476 : vec2<f32> = (x_475 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_479.y, x_479.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_483 : f32 = u_xlat7.x;
        u_xlat8.z = x_483;
        let x_486 : f32 = u_xlat48.x;
        u_xlat8.w = x_486;
        let x_489 : f32 = u_xlat9.x;
        u_xlat6.z = x_489;
        let x_492 : f32 = u_xlat5.x;
        u_xlat6.w = x_492;
        let x_495 : vec4<f32> = u_xlat6;
        let x_497 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_495.z, x_495.w, x_495.x, x_495.z) + vec4<f32>(x_497.z, x_497.w, x_497.x, x_497.z));
        let x_501 : f32 = u_xlat8.y;
        u_xlat7.z = x_501;
        let x_504 : f32 = u_xlat48.y;
        u_xlat7.w = x_504;
        let x_507 : f32 = u_xlat6.y;
        u_xlat9.z = x_507;
        let x_510 : f32 = u_xlat5.z;
        u_xlat9.w = x_510;
        let x_512 : vec4<f32> = u_xlat7;
        let x_514 : vec4<f32> = u_xlat9;
        let x_516 : vec3<f32> = (vec3<f32>(x_512.z, x_512.y, x_512.w) + vec3<f32>(x_514.z, x_514.y, x_514.w));
        let x_517 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat6;
        let x_521 : vec4<f32> = u_xlat10;
        let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.z, x_519.w) / vec3<f32>(x_521.z, x_521.w, x_521.y));
        let x_524 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat6;
        let x_531 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat9;
        let x_536 : vec4<f32> = u_xlat5;
        let x_538 : vec3<f32> = (vec3<f32>(x_534.z, x_534.y, x_534.w) / vec3<f32>(x_536.x, x_536.y, x_536.z));
        let x_539 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat7;
        let x_543 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_544 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat6;
        let x_549 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_551 : vec3<f32> = (vec3<f32>(x_546.y, x_546.x, x_546.z) * vec3<f32>(x_549.x, x_549.x, x_549.x));
        let x_552 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat7;
        let x_557 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_559 : vec3<f32> = (vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_557.y, x_557.y, x_557.y));
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_563 : f32 = u_xlat7.x;
        u_xlat6.w = x_563;
        let x_565 : vec4<f32> = u_xlat4;
        let x_568 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_571 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_565.x, x_565.y, x_565.x, x_565.y) * vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y)) + vec4<f32>(x_571.y, x_571.w, x_571.x, x_571.w));
        let x_574 : vec4<f32> = u_xlat4;
        let x_577 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_577.x, x_577.y)) + vec2<f32>(x_580.z, x_580.w));
        let x_584 : f32 = u_xlat6.y;
        u_xlat7.w = x_584;
        let x_586 : vec4<f32> = u_xlat7;
        let x_587 : vec2<f32> = vec2<f32>(x_586.y, x_586.z);
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_588.x, x_587.x, x_588.z, x_587.y);
        let x_590 : vec4<f32> = u_xlat4;
        let x_593 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y) * vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y)) + vec4<f32>(x_596.x, x_596.y, x_596.z, x_596.y));
        let x_599 : vec4<f32> = u_xlat4;
        let x_602 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y)) + vec4<f32>(x_605.w, x_605.y, x_605.w, x_605.z));
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.x, x_614.w, x_614.z, x_614.w));
        let x_618 : vec4<f32> = u_xlat5;
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_618.x, x_618.x, x_618.x, x_618.y) * vec4<f32>(x_620.z, x_620.w, x_620.y, x_620.z));
        let x_624 : vec4<f32> = u_xlat5;
        let x_626 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_624.y, x_624.y, x_624.z, x_624.z) * x_626);
        let x_630 : f32 = u_xlat5.z;
        let x_632 : f32 = u_xlat10.y;
        u_xlat67 = (x_630 * x_632);
        let x_635 : vec4<f32> = u_xlat8;
        let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
        let x_638 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_636.x, x_636.y, x_638);
        let x_646 : vec3<f32> = txVec4;
        let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_646.xy, x_646.z);
        u_xlat68 = x_648;
        let x_650 : vec4<f32> = u_xlat8;
        let x_651 : vec2<f32> = vec2<f32>(x_650.z, x_650.w);
        let x_653 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_651.x, x_651.y, x_653);
        let x_661 : vec3<f32> = txVec5;
        let x_663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_661.xy, x_661.z);
        u_xlat69 = x_663;
        let x_664 : f32 = u_xlat69;
        let x_666 : f32 = u_xlat11.y;
        u_xlat69 = (x_664 * x_666);
        let x_669 : f32 = u_xlat11.x;
        let x_670 : f32 = u_xlat68;
        let x_672 : f32 = u_xlat69;
        u_xlat68 = ((x_669 * x_670) + x_672);
        let x_675 : vec2<f32> = u_xlat48;
        let x_677 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec6;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat69 = x_686;
        let x_688 : f32 = u_xlat11.z;
        let x_689 : f32 = u_xlat69;
        let x_691 : f32 = u_xlat68;
        u_xlat68 = ((x_688 * x_689) + x_691);
        let x_694 : vec4<f32> = u_xlat7;
        let x_695 : vec2<f32> = vec2<f32>(x_694.x, x_694.y);
        let x_697 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_704 : vec3<f32> = txVec7;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_704.xy, x_704.z);
        u_xlat69 = x_706;
        let x_708 : f32 = u_xlat11.w;
        let x_709 : f32 = u_xlat69;
        let x_711 : f32 = u_xlat68;
        u_xlat68 = ((x_708 * x_709) + x_711);
        let x_714 : vec4<f32> = u_xlat9;
        let x_715 : vec2<f32> = vec2<f32>(x_714.x, x_714.y);
        let x_717 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_724 : vec3<f32> = txVec8;
        let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_724.xy, x_724.z);
        u_xlat69 = x_726;
        let x_728 : f32 = u_xlat12.x;
        let x_729 : f32 = u_xlat69;
        let x_731 : f32 = u_xlat68;
        u_xlat68 = ((x_728 * x_729) + x_731);
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.z, x_734.w);
        let x_737 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec9;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
        u_xlat69 = x_746;
        let x_748 : f32 = u_xlat12.y;
        let x_749 : f32 = u_xlat69;
        let x_751 : f32 = u_xlat68;
        u_xlat68 = ((x_748 * x_749) + x_751);
        let x_754 : vec4<f32> = u_xlat7;
        let x_755 : vec2<f32> = vec2<f32>(x_754.z, x_754.w);
        let x_757 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec10;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_764.xy, x_764.z);
        u_xlat69 = x_766;
        let x_768 : f32 = u_xlat12.z;
        let x_769 : f32 = u_xlat69;
        let x_771 : f32 = u_xlat68;
        u_xlat68 = ((x_768 * x_769) + x_771);
        let x_774 : vec4<f32> = u_xlat6;
        let x_775 : vec2<f32> = vec2<f32>(x_774.x, x_774.y);
        let x_777 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_775.x, x_775.y, x_777);
        let x_784 : vec3<f32> = txVec11;
        let x_786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_784.xy, x_784.z);
        u_xlat69 = x_786;
        let x_788 : f32 = u_xlat12.w;
        let x_789 : f32 = u_xlat69;
        let x_791 : f32 = u_xlat68;
        u_xlat68 = ((x_788 * x_789) + x_791);
        let x_794 : vec4<f32> = u_xlat6;
        let x_795 : vec2<f32> = vec2<f32>(x_794.z, x_794.w);
        let x_797 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec12;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
        u_xlat69 = x_806;
        let x_807 : f32 = u_xlat67;
        let x_808 : f32 = u_xlat69;
        let x_810 : f32 = u_xlat68;
        u_xlat66 = ((x_807 * x_808) + x_810);
      } else {
        let x_813 : vec4<f32> = vs_TEXCOORD6;
        let x_816 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_819 : vec2<f32> = ((vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_816.z, x_816.w)) + vec2<f32>(0.5f, 0.5f));
        let x_820 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat4;
        let x_824 : vec2<f32> = floor(vec2<f32>(x_822.x, x_822.y));
        let x_825 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec4<f32> = vs_TEXCOORD6;
        let x_830 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_833 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_827.x, x_827.y) * vec2<f32>(x_830.z, x_830.w)) + -(vec2<f32>(x_833.x, x_833.y)));
        let x_837 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_837.x, x_837.x, x_837.y, x_837.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_840 : vec4<f32> = u_xlat5;
        let x_842 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_840.x, x_840.x, x_840.z, x_840.z) * vec4<f32>(x_842.x, x_842.x, x_842.z, x_842.z));
        let x_845 : vec4<f32> = u_xlat6;
        let x_849 : vec2<f32> = (vec2<f32>(x_845.y, x_845.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_850.x, x_849.x, x_850.z, x_849.y);
        let x_852 : vec4<f32> = u_xlat6;
        let x_855 : vec2<f32> = u_xlat48;
        let x_857 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.z) * vec2<f32>(0.5f, 0.5f)) + -(x_855));
        let x_858 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_857.x, x_858.y, x_857.y, x_858.w);
        let x_860 : vec2<f32> = u_xlat48;
        let x_862 : vec2<f32> = (-(x_860) + vec2<f32>(1.0f, 1.0f));
        let x_863 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_865, vec2<f32>(0.0f, 0.0f));
        let x_867 : vec2<f32> = u_xlat50;
        let x_869 : vec2<f32> = u_xlat50;
        let x_871 : vec4<f32> = u_xlat6;
        let x_873 : vec2<f32> = ((-(x_867) * x_869) + vec2<f32>(x_871.x, x_871.y));
        let x_874 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_876, vec2<f32>(0.0f, 0.0f));
        let x_879 : vec2<f32> = u_xlat50;
        let x_881 : vec2<f32> = u_xlat50;
        let x_883 : vec4<f32> = u_xlat5;
        let x_885 : vec2<f32> = ((-(x_879) * x_881) + vec2<f32>(x_883.y, x_883.w));
        let x_886 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_885.x, x_886.y, x_885.y);
        let x_888 : vec4<f32> = u_xlat6;
        let x_891 : vec2<f32> = (vec2<f32>(x_888.x, x_888.y) + vec2<f32>(2.0f, 2.0f));
        let x_892 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_894 : vec3<f32> = u_xlat27;
        let x_896 : vec2<f32> = (vec2<f32>(x_894.x, x_894.z) + vec2<f32>(2.0f, 2.0f));
        let x_897 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_897.x, x_896.x, x_897.z, x_896.y);
        let x_900 : f32 = u_xlat5.y;
        u_xlat8.z = (x_900 * 0.08163200318813323975f);
        let x_904 : vec4<f32> = u_xlat5;
        let x_907 : vec3<f32> = (vec3<f32>(x_904.z, x_904.x, x_904.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat6;
        let x_913 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_914 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_917 : f32 = u_xlat9.y;
        u_xlat8.x = x_917;
        let x_919 : vec2<f32> = u_xlat48;
        let x_926 : vec2<f32> = ((vec2<f32>(x_919.x, x_919.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_927 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_929 : vec2<f32> = u_xlat48;
        let x_933 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_934 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_934.w);
        let x_937 : f32 = u_xlat5.x;
        u_xlat6.y = x_937;
        let x_940 : f32 = u_xlat7.y;
        u_xlat6.w = x_940;
        let x_942 : vec4<f32> = u_xlat6;
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_942 + x_943);
        let x_945 : vec2<f32> = u_xlat48;
        let x_948 : vec2<f32> = ((vec2<f32>(x_945.y, x_945.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_951 : vec2<f32> = u_xlat48;
        let x_954 : vec2<f32> = ((vec2<f32>(x_951.y, x_951.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_954.x, x_955.y, x_954.y, x_955.w);
        let x_958 : f32 = u_xlat5.y;
        u_xlat7.y = x_958;
        let x_960 : vec4<f32> = u_xlat7;
        let x_961 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_960 + x_961);
        let x_963 : vec4<f32> = u_xlat6;
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_963 / x_964);
        let x_966 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_966 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_972 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_972 / x_973);
        let x_975 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_975 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_977.w, x_977.x, x_977.y, x_977.z) * vec4<f32>(x_980.x, x_980.x, x_980.x, x_980.x));
        let x_983 : vec4<f32> = u_xlat7;
        let x_986 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_983.x, x_983.w, x_983.y, x_983.z) * vec4<f32>(x_986.y, x_986.y, x_986.y, x_986.y));
        let x_989 : vec4<f32> = u_xlat6;
        let x_990 : vec3<f32> = vec3<f32>(x_989.y, x_989.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_990.z);
        let x_994 : f32 = u_xlat7.x;
        u_xlat9.y = x_994;
        let x_996 : vec4<f32> = u_xlat4;
        let x_999 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_996.x, x_996.y, x_996.x, x_996.y) * vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y)) + vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1002.y));
        let x_1005 : vec4<f32> = u_xlat4;
        let x_1008 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1008.x, x_1008.y)) + vec2<f32>(x_1011.w, x_1011.y));
        let x_1015 : f32 = u_xlat9.y;
        u_xlat6.y = x_1015;
        let x_1018 : f32 = u_xlat7.z;
        u_xlat9.y = x_1018;
        let x_1020 : vec4<f32> = u_xlat4;
        let x_1023 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) * vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y)) + vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat4;
        let x_1032 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat9;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.w, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1041 : f32 = u_xlat9.y;
        u_xlat6.z = x_1041;
        let x_1044 : vec4<f32> = u_xlat4;
        let x_1047 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.z));
        let x_1054 : f32 = u_xlat7.w;
        u_xlat9.y = x_1054;
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) * vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y)) + vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1063.y));
        let x_1067 : vec4<f32> = u_xlat4;
        let x_1070 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1073.w, x_1073.y));
        let x_1077 : f32 = u_xlat9.y;
        u_xlat6.w = x_1077;
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1083 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.x, x_1086.w));
        let x_1089 : vec4<f32> = u_xlat9;
        let x_1090 : vec3<f32> = vec3<f32>(x_1089.x, x_1089.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1090.x, x_1091.y, x_1090.y, x_1090.z);
        let x_1093 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1099.y));
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.w, x_1109.y));
        let x_1113 : f32 = u_xlat6.x;
        u_xlat7.x = x_1113;
        let x_1115 : vec4<f32> = u_xlat4;
        let x_1118 : vec4<f32> = x_261.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.x, x_1118.y)) + vec2<f32>(x_1121.x, x_1121.y));
        let x_1124 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1127 : vec4<f32> = u_xlat5;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1127.x, x_1127.x, x_1127.x, x_1127.x) * x_1129);
        let x_1132 : vec4<f32> = u_xlat5;
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1132.y, x_1132.y, x_1132.y, x_1132.y) * x_1134);
        let x_1137 : vec4<f32> = u_xlat5;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1137.z, x_1137.z, x_1137.z, x_1137.z) * x_1139);
        let x_1141 : vec4<f32> = u_xlat5;
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1141.w, x_1141.w, x_1141.w, x_1141.w) * x_1143);
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1147 : vec2<f32> = vec2<f32>(x_1146.x, x_1146.y);
        let x_1149 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
        let x_1156 : vec3<f32> = txVec13;
        let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1156.xy, x_1156.z);
        u_xlat67 = x_1158;
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1161 : vec2<f32> = vec2<f32>(x_1160.z, x_1160.w);
        let x_1163 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
        let x_1170 : vec3<f32> = txVec14;
        let x_1172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1170.xy, x_1170.z);
        u_xlat68 = x_1172;
        let x_1173 : f32 = u_xlat68;
        let x_1175 : f32 = u_xlat15.y;
        u_xlat68 = (x_1173 * x_1175);
        let x_1178 : f32 = u_xlat15.x;
        let x_1179 : f32 = u_xlat67;
        let x_1181 : f32 = u_xlat68;
        u_xlat67 = ((x_1178 * x_1179) + x_1181);
        let x_1184 : vec2<f32> = u_xlat48;
        let x_1186 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec15;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat68 = x_1195;
        let x_1197 : f32 = u_xlat15.z;
        let x_1198 : f32 = u_xlat68;
        let x_1200 : f32 = u_xlat67;
        u_xlat67 = ((x_1197 * x_1198) + x_1200);
        let x_1203 : vec4<f32> = u_xlat13;
        let x_1204 : vec2<f32> = vec2<f32>(x_1203.x, x_1203.y);
        let x_1206 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
        let x_1213 : vec3<f32> = txVec16;
        let x_1215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1213.xy, x_1213.z);
        u_xlat68 = x_1215;
        let x_1217 : f32 = u_xlat15.w;
        let x_1218 : f32 = u_xlat68;
        let x_1220 : f32 = u_xlat67;
        u_xlat67 = ((x_1217 * x_1218) + x_1220);
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.x, x_1223.y);
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec17;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
        u_xlat68 = x_1235;
        let x_1237 : f32 = u_xlat16.x;
        let x_1238 : f32 = u_xlat68;
        let x_1240 : f32 = u_xlat67;
        u_xlat67 = ((x_1237 * x_1238) + x_1240);
        let x_1243 : vec4<f32> = u_xlat11;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.z, x_1243.w);
        let x_1246 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec18;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
        u_xlat68 = x_1255;
        let x_1257 : f32 = u_xlat16.y;
        let x_1258 : f32 = u_xlat68;
        let x_1260 : f32 = u_xlat67;
        u_xlat67 = ((x_1257 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat12;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec19;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat68 = x_1275;
        let x_1277 : f32 = u_xlat16.z;
        let x_1278 : f32 = u_xlat68;
        let x_1280 : f32 = u_xlat67;
        u_xlat67 = ((x_1277 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat13;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec20;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat68 = x_1295;
        let x_1297 : f32 = u_xlat16.w;
        let x_1298 : f32 = u_xlat68;
        let x_1300 : f32 = u_xlat67;
        u_xlat67 = ((x_1297 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat14;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.x, x_1303.y);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec21;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat68 = x_1315;
        let x_1317 : f32 = u_xlat17.x;
        let x_1318 : f32 = u_xlat68;
        let x_1320 : f32 = u_xlat67;
        u_xlat67 = ((x_1317 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat14;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec22;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat68 = x_1335;
        let x_1337 : f32 = u_xlat17.y;
        let x_1338 : f32 = u_xlat68;
        let x_1340 : f32 = u_xlat67;
        u_xlat67 = ((x_1337 * x_1338) + x_1340);
        let x_1343 : vec2<f32> = u_xlat28;
        let x_1345 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec23;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat68 = x_1354;
        let x_1356 : f32 = u_xlat17.z;
        let x_1357 : f32 = u_xlat68;
        let x_1359 : f32 = u_xlat67;
        u_xlat67 = ((x_1356 * x_1357) + x_1359);
        let x_1362 : vec2<f32> = u_xlat56;
        let x_1364 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec24;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat68 = x_1373;
        let x_1375 : f32 = u_xlat17.w;
        let x_1376 : f32 = u_xlat68;
        let x_1378 : f32 = u_xlat67;
        u_xlat67 = ((x_1375 * x_1376) + x_1378);
        let x_1381 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec25;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat68 = x_1393;
        let x_1395 : f32 = u_xlat5.x;
        let x_1396 : f32 = u_xlat68;
        let x_1398 : f32 = u_xlat67;
        u_xlat67 = ((x_1395 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec26;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat68 = x_1413;
        let x_1415 : f32 = u_xlat5.y;
        let x_1416 : f32 = u_xlat68;
        let x_1418 : f32 = u_xlat67;
        u_xlat67 = ((x_1415 * x_1416) + x_1418);
        let x_1421 : vec2<f32> = u_xlat51;
        let x_1423 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec27;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat68 = x_1432;
        let x_1434 : f32 = u_xlat5.z;
        let x_1435 : f32 = u_xlat68;
        let x_1437 : f32 = u_xlat67;
        u_xlat67 = ((x_1434 * x_1435) + x_1437);
        let x_1440 : vec4<f32> = u_xlat4;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec28;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat68 = x_1452;
        let x_1454 : f32 = u_xlat5.w;
        let x_1455 : f32 = u_xlat68;
        let x_1457 : f32 = u_xlat67;
        u_xlat66 = ((x_1454 * x_1455) + x_1457);
      }
    }
  } else {
    let x_1461 : vec4<f32> = vs_TEXCOORD6;
    let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
    let x_1464 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
    let x_1471 : vec3<f32> = txVec29;
    let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
    u_xlat66 = x_1473;
  }
  let x_1475 : f32 = x_261.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_1475) + 1.0f);
  let x_1478 : f32 = u_xlat66;
  let x_1480 : f32 = x_261.x_MainLightShadowParams.x;
  let x_1482 : f32 = u_xlat67;
  u_xlat66 = ((x_1478 * x_1480) + x_1482);
  let x_1485 : f32 = vs_TEXCOORD6.z;
  u_xlatb67 = (0.0f >= x_1485);
  let x_1489 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (x_1489 >= 1.0f);
  let x_1491 : bool = u_xlatb67;
  let x_1492 : bool = u_xlatb68;
  u_xlatb67 = (x_1491 | x_1492);
  let x_1494 : bool = u_xlatb67;
  let x_1495 : f32 = u_xlat66;
  u_xlat66 = select(x_1495, 1.0f, x_1494);
  let x_1498 : vec4<f32> = vs_TEXCOORD2;
  let x_1503 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1505 : vec3<f32> = (vec3<f32>(x_1498.x, x_1498.y, x_1498.z) + -(x_1503));
  let x_1506 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
  let x_1508 : vec4<f32> = u_xlat4;
  let x_1510 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(vec3<f32>(x_1508.x, x_1508.y, x_1508.z), vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
  let x_1513 : f32 = u_xlat67;
  let x_1515 : f32 = x_261.x_MainLightShadowParams.z;
  let x_1518 : f32 = x_261.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1513 * x_1515) + x_1518);
  let x_1520 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1520, 0.0f, 1.0f);
  let x_1522 : f32 = u_xlat66;
  u_xlat69 = (-(x_1522) + 1.0f);
  let x_1525 : f32 = u_xlat68;
  let x_1526 : f32 = u_xlat69;
  let x_1528 : f32 = u_xlat66;
  u_xlat66 = ((x_1525 * x_1526) + x_1528);
  let x_1530 : f32 = u_xlat66;
  let x_1536 : f32 = x_1534.unity_LightData.z;
  u_xlat66 = (x_1530 * x_1536);
  let x_1538 : f32 = u_xlat66;
  let x_1542 : vec4<f32> = x_44.x_MainLightColor;
  let x_1544 : vec3<f32> = (vec3<f32>(x_1538, x_1538, x_1538) * vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
  let x_1545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
  let x_1547 : vec3<f32> = u_xlat2;
  let x_1550 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1547, vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
  let x_1553 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1553, 0.0f, 1.0f);
  let x_1555 : f32 = u_xlat66;
  let x_1557 : vec4<f32> = u_xlat4;
  let x_1559 : vec3<f32> = (vec3<f32>(x_1555, x_1555, x_1555) * vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
  let x_1560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1562 : vec4<f32> = u_xlat1;
  let x_1564 : vec4<f32> = u_xlat4;
  let x_1566 : vec3<f32> = (vec3<f32>(x_1562.x, x_1562.y, x_1562.z) * vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
  let x_1567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
  let x_1570 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1572 : f32 = x_1534.unity_LightData.y;
  u_xlat66 = min(x_1570, x_1572);
  let x_1576 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1576));
  let x_1579 : f32 = u_xlat67;
  let x_1582 : f32 = x_261.x_AdditionalShadowFadeParams.x;
  let x_1585 : f32 = x_261.x_AdditionalShadowFadeParams.y;
  u_xlat67 = ((x_1579 * x_1582) + x_1585);
  let x_1587 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1587, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1599 : u32 = u_xlatu_loop_1;
    let x_1600 : u32 = u_xlatu66;
    if ((x_1599 < x_1600)) {
    } else {
      break;
    }
    let x_1603 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1603 >> 2u);
    let x_1607 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1607 & 3u));
    let x_1610 : u32 = u_xlatu69;
    let x_1613 : vec4<f32> = x_1534.unity_LightIndices[bitcast<i32>(x_1610)];
    let x_1623 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1628 : vec4<u32> = indexable[x_1623];
    u_xlat69 = dot(x_1613, bitcast<vec4<f32>>(x_1628));
    let x_1632 : f32 = u_xlat69;
    u_xlati69 = i32(x_1632);
    let x_1634 : vec4<f32> = vs_TEXCOORD2;
    let x_1646 : i32 = u_xlati69;
    let x_1648 : vec4<f32> = x_1645.x_AdditionalLightsPosition[x_1646];
    let x_1651 : i32 = u_xlati69;
    let x_1653 : vec4<f32> = x_1645.x_AdditionalLightsPosition[x_1651];
    let x_1655 : vec3<f32> = ((-(vec3<f32>(x_1634.x, x_1634.y, x_1634.z)) * vec3<f32>(x_1648.w, x_1648.w, x_1648.w)) + vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
    let x_1659 : vec4<f32> = u_xlat6;
    let x_1661 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1659.x, x_1659.y, x_1659.z), vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
    let x_1664 : f32 = u_xlat70;
    u_xlat70 = max(x_1664, 0.00006103515625f);
    let x_1668 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1668);
    let x_1670 : f32 = u_xlat71;
    let x_1672 : vec4<f32> = u_xlat6;
    let x_1674 : vec3<f32> = (vec3<f32>(x_1670, x_1670, x_1670) * vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
    let x_1677 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1677);
    let x_1679 : f32 = u_xlat70;
    let x_1680 : i32 = u_xlati69;
    let x_1682 : f32 = x_1645.x_AdditionalLightsAttenuation[x_1680].x;
    u_xlat70 = (x_1679 * x_1682);
    let x_1684 : f32 = u_xlat70;
    let x_1686 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1684) * x_1686) + 1.0f);
    let x_1689 : f32 = u_xlat70;
    u_xlat70 = max(x_1689, 0.0f);
    let x_1691 : f32 = u_xlat70;
    let x_1692 : f32 = u_xlat70;
    u_xlat70 = (x_1691 * x_1692);
    let x_1694 : f32 = u_xlat70;
    let x_1695 : f32 = u_xlat71;
    u_xlat70 = (x_1694 * x_1695);
    let x_1697 : i32 = u_xlati69;
    let x_1699 : vec4<f32> = x_1645.x_AdditionalLightsSpotDir[x_1697];
    let x_1701 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1699.x, x_1699.y, x_1699.z), vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
    let x_1704 : f32 = u_xlat71;
    let x_1705 : i32 = u_xlati69;
    let x_1707 : f32 = x_1645.x_AdditionalLightsAttenuation[x_1705].z;
    let x_1709 : i32 = u_xlati69;
    let x_1711 : f32 = x_1645.x_AdditionalLightsAttenuation[x_1709].w;
    u_xlat71 = ((x_1704 * x_1707) + x_1711);
    let x_1713 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1713, 0.0f, 1.0f);
    let x_1715 : f32 = u_xlat71;
    let x_1716 : f32 = u_xlat71;
    u_xlat71 = (x_1715 * x_1716);
    let x_1718 : f32 = u_xlat70;
    let x_1719 : f32 = u_xlat71;
    u_xlat70 = (x_1718 * x_1719);
    let x_1723 : i32 = u_xlati69;
    let x_1725 : f32 = x_261.x_AdditionalShadowParams[x_1723].w;
    u_xlati71 = i32(x_1725);
    let x_1728 : i32 = u_xlati71;
    u_xlatb72 = (x_1728 >= 0i);
    let x_1730 : bool = u_xlatb72;
    if (x_1730) {
      let x_1734 : i32 = u_xlati69;
      let x_1736 : f32 = x_261.x_AdditionalShadowParams[x_1734].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1736, x_1736, x_1736, x_1736))));
      let x_1741 : bool = u_xlatb72;
      if (x_1741) {
        let x_1746 : vec4<f32> = u_xlat6;
        let x_1749 : vec4<f32> = u_xlat6;
        let x_1752 : vec4<bool> = (abs(vec4<f32>(x_1746.z, x_1746.z, x_1746.y, x_1746.z)) >= abs(vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.x)));
        let x_1754 : vec3<bool> = vec3<bool>(x_1752.x, x_1752.y, x_1752.z);
        let x_1755 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
        let x_1758 : bool = u_xlatb7.y;
        let x_1760 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1758 & x_1760);
        let x_1762 : vec4<f32> = u_xlat6;
        let x_1765 : vec4<bool> = (-(vec4<f32>(x_1762.z, x_1762.y, x_1762.z, x_1762.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1766 : vec3<bool> = vec3<bool>(x_1765.x, x_1765.y, x_1765.w);
        let x_1767 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1766.x, x_1766.y, x_1767.z, x_1766.z);
        let x_1770 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1770);
        let x_1776 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1776);
        let x_1782 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1782);
        let x_1786 : bool = u_xlatb7.z;
        if (x_1786) {
          let x_1791 : f32 = u_xlat7.y;
          x_1787 = x_1791;
        } else {
          let x_1793 : f32 = u_xlat73;
          x_1787 = x_1793;
        }
        let x_1794 : f32 = x_1787;
        u_xlat29 = x_1794;
        let x_1796 : bool = u_xlatb72;
        if (x_1796) {
          let x_1801 : f32 = u_xlat7.x;
          x_1797 = x_1801;
        } else {
          let x_1803 : f32 = u_xlat29;
          x_1797 = x_1803;
        }
        let x_1804 : f32 = x_1797;
        u_xlat72 = x_1804;
        let x_1805 : i32 = u_xlati69;
        let x_1807 : f32 = x_261.x_AdditionalShadowParams[x_1805].w;
        u_xlat7.x = trunc(x_1807);
        let x_1810 : f32 = u_xlat72;
        let x_1812 : f32 = u_xlat7.x;
        u_xlat72 = (x_1810 + x_1812);
        let x_1814 : f32 = u_xlat72;
        u_xlati71 = i32(x_1814);
      }
      let x_1816 : i32 = u_xlati71;
      u_xlati71 = (x_1816 << bitcast<u32>(2i));
      let x_1818 : vec4<f32> = vs_TEXCOORD2;
      let x_1821 : i32 = u_xlati71;
      let x_1824 : i32 = u_xlati71;
      let x_1828 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[((x_1821 + 1i) / 4i)][((x_1824 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1818.y, x_1818.y, x_1818.y, x_1818.y) * x_1828);
      let x_1830 : i32 = u_xlati71;
      let x_1832 : i32 = u_xlati71;
      let x_1835 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[(x_1830 / 4i)][(x_1832 % 4i)];
      let x_1836 : vec4<f32> = vs_TEXCOORD2;
      let x_1839 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1835 * vec4<f32>(x_1836.x, x_1836.x, x_1836.x, x_1836.x)) + x_1839);
      let x_1841 : i32 = u_xlati71;
      let x_1844 : i32 = u_xlati71;
      let x_1848 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[((x_1841 + 2i) / 4i)][((x_1844 + 2i) % 4i)];
      let x_1849 : vec4<f32> = vs_TEXCOORD2;
      let x_1852 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1848 * vec4<f32>(x_1849.z, x_1849.z, x_1849.z, x_1849.z)) + x_1852);
      let x_1854 : vec4<f32> = u_xlat7;
      let x_1855 : i32 = u_xlati71;
      let x_1858 : i32 = u_xlati71;
      let x_1862 : vec4<f32> = x_261.x_AdditionalLightsWorldToShadow[((x_1855 + 3i) / 4i)][((x_1858 + 3i) % 4i)];
      u_xlat7 = (x_1854 + x_1862);
      let x_1864 : vec4<f32> = u_xlat7;
      let x_1866 : vec4<f32> = u_xlat7;
      let x_1868 : vec3<f32> = (vec3<f32>(x_1864.x, x_1864.y, x_1864.z) / vec3<f32>(x_1866.w, x_1866.w, x_1866.w));
      let x_1869 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
      let x_1872 : i32 = u_xlati69;
      let x_1874 : f32 = x_261.x_AdditionalShadowParams[x_1872].y;
      u_xlatb71 = (0.0f < x_1874);
      let x_1876 : bool = u_xlatb71;
      if (x_1876) {
        let x_1879 : i32 = u_xlati69;
        let x_1881 : f32 = x_261.x_AdditionalShadowParams[x_1879].y;
        u_xlatb71 = (1.0f == x_1881);
        let x_1883 : bool = u_xlatb71;
        if (x_1883) {
          let x_1886 : vec4<f32> = u_xlat7;
          let x_1890 : vec4<f32> = x_261.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1886.x, x_1886.y, x_1886.x, x_1886.y) + x_1890);
          let x_1893 : vec4<f32> = u_xlat8;
          let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
          let x_1896 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
          let x_1904 : vec3<f32> = txVec30;
          let x_1906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1904.xy, x_1904.z);
          u_xlat9.x = x_1906;
          let x_1909 : vec4<f32> = u_xlat8;
          let x_1910 : vec2<f32> = vec2<f32>(x_1909.z, x_1909.w);
          let x_1912 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
          let x_1919 : vec3<f32> = txVec31;
          let x_1921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1919.xy, x_1919.z);
          u_xlat9.y = x_1921;
          let x_1923 : vec4<f32> = u_xlat7;
          let x_1927 : vec4<f32> = x_261.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y) + x_1927);
          let x_1930 : vec4<f32> = u_xlat8;
          let x_1931 : vec2<f32> = vec2<f32>(x_1930.x, x_1930.y);
          let x_1933 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1931.x, x_1931.y, x_1933);
          let x_1940 : vec3<f32> = txVec32;
          let x_1942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
          u_xlat9.z = x_1942;
          let x_1945 : vec4<f32> = u_xlat8;
          let x_1946 : vec2<f32> = vec2<f32>(x_1945.z, x_1945.w);
          let x_1948 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1946.x, x_1946.y, x_1948);
          let x_1955 : vec3<f32> = txVec33;
          let x_1957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1955.xy, x_1955.z);
          u_xlat9.w = x_1957;
          let x_1959 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_1959, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1962 : i32 = u_xlati69;
          let x_1964 : f32 = x_261.x_AdditionalShadowParams[x_1962].y;
          u_xlatb72 = (2.0f == x_1964);
          let x_1966 : bool = u_xlatb72;
          if (x_1966) {
            let x_1969 : vec4<f32> = u_xlat7;
            let x_1973 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_1976 : vec2<f32> = ((vec2<f32>(x_1969.x, x_1969.y) * vec2<f32>(x_1973.z, x_1973.w)) + vec2<f32>(0.5f, 0.5f));
            let x_1977 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1976.x, x_1976.y, x_1977.z, x_1977.w);
            let x_1979 : vec4<f32> = u_xlat8;
            let x_1981 : vec2<f32> = floor(vec2<f32>(x_1979.x, x_1979.y));
            let x_1982 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1981.x, x_1981.y, x_1982.z, x_1982.w);
            let x_1985 : vec4<f32> = u_xlat7;
            let x_1988 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_1991 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_1985.x, x_1985.y) * vec2<f32>(x_1988.z, x_1988.w)) + -(vec2<f32>(x_1991.x, x_1991.y)));
            let x_1995 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_1995.x, x_1995.x, x_1995.y, x_1995.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_1998 : vec4<f32> = u_xlat9;
            let x_2000 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_1998.x, x_1998.x, x_1998.z, x_1998.z) * vec4<f32>(x_2000.x, x_2000.x, x_2000.z, x_2000.z));
            let x_2003 : vec4<f32> = u_xlat10;
            let x_2005 : vec2<f32> = (vec2<f32>(x_2003.y, x_2003.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2006 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2005.x, x_2006.y, x_2005.y, x_2006.w);
            let x_2008 : vec4<f32> = u_xlat10;
            let x_2011 : vec2<f32> = u_xlat52;
            let x_2013 : vec2<f32> = ((vec2<f32>(x_2008.x, x_2008.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2011));
            let x_2014 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2013.x, x_2013.y, x_2014.z, x_2014.w);
            let x_2017 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2017) + vec2<f32>(1.0f, 1.0f));
            let x_2020 : vec2<f32> = u_xlat52;
            let x_2021 : vec2<f32> = min(x_2020, vec2<f32>(0.0f, 0.0f));
            let x_2022 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2021.x, x_2021.y, x_2022.z, x_2022.w);
            let x_2024 : vec4<f32> = u_xlat11;
            let x_2027 : vec4<f32> = u_xlat11;
            let x_2030 : vec2<f32> = u_xlat54;
            let x_2031 : vec2<f32> = ((-(vec2<f32>(x_2024.x, x_2024.y)) * vec2<f32>(x_2027.x, x_2027.y)) + x_2030);
            let x_2032 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2031.x, x_2031.y, x_2032.z, x_2032.w);
            let x_2034 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2034, vec2<f32>(0.0f, 0.0f));
            let x_2036 : vec2<f32> = u_xlat52;
            let x_2038 : vec2<f32> = u_xlat52;
            let x_2040 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2036) * x_2038) + vec2<f32>(x_2040.y, x_2040.w));
            let x_2043 : vec4<f32> = u_xlat11;
            let x_2045 : vec2<f32> = (vec2<f32>(x_2043.x, x_2043.y) + vec2<f32>(1.0f, 1.0f));
            let x_2046 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2045.x, x_2045.y, x_2046.z, x_2046.w);
            let x_2048 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2048 + vec2<f32>(1.0f, 1.0f));
            let x_2050 : vec4<f32> = u_xlat10;
            let x_2052 : vec2<f32> = (vec2<f32>(x_2050.x, x_2050.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2053 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2052.x, x_2052.y, x_2053.z, x_2053.w);
            let x_2055 : vec2<f32> = u_xlat54;
            let x_2056 : vec2<f32> = (x_2055 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2057 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2056.x, x_2056.y, x_2057.z, x_2057.w);
            let x_2059 : vec4<f32> = u_xlat11;
            let x_2061 : vec2<f32> = (vec2<f32>(x_2059.x, x_2059.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2062 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2062.w);
            let x_2064 : vec2<f32> = u_xlat52;
            let x_2065 : vec2<f32> = (x_2064 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2066 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2065.x, x_2065.y, x_2066.z, x_2066.w);
            let x_2068 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2068.y, x_2068.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2072 : f32 = u_xlat11.x;
            u_xlat12.z = x_2072;
            let x_2075 : f32 = u_xlat52.x;
            u_xlat12.w = x_2075;
            let x_2078 : f32 = u_xlat13.x;
            u_xlat10.z = x_2078;
            let x_2081 : f32 = u_xlat9.x;
            u_xlat10.w = x_2081;
            let x_2083 : vec4<f32> = u_xlat10;
            let x_2085 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2083.z, x_2083.w, x_2083.x, x_2083.z) + vec4<f32>(x_2085.z, x_2085.w, x_2085.x, x_2085.z));
            let x_2089 : f32 = u_xlat12.y;
            u_xlat11.z = x_2089;
            let x_2092 : f32 = u_xlat52.y;
            u_xlat11.w = x_2092;
            let x_2095 : f32 = u_xlat10.y;
            u_xlat13.z = x_2095;
            let x_2098 : f32 = u_xlat9.z;
            u_xlat13.w = x_2098;
            let x_2100 : vec4<f32> = u_xlat11;
            let x_2102 : vec4<f32> = u_xlat13;
            let x_2104 : vec3<f32> = (vec3<f32>(x_2100.z, x_2100.y, x_2100.w) + vec3<f32>(x_2102.z, x_2102.y, x_2102.w));
            let x_2105 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
            let x_2107 : vec4<f32> = u_xlat10;
            let x_2109 : vec4<f32> = u_xlat14;
            let x_2111 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.z, x_2107.w) / vec3<f32>(x_2109.z, x_2109.w, x_2109.y));
            let x_2112 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
            let x_2114 : vec4<f32> = u_xlat10;
            let x_2116 : vec3<f32> = (vec3<f32>(x_2114.x, x_2114.y, x_2114.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2117 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2116.x, x_2116.y, x_2116.z, x_2117.w);
            let x_2119 : vec4<f32> = u_xlat13;
            let x_2121 : vec4<f32> = u_xlat9;
            let x_2123 : vec3<f32> = (vec3<f32>(x_2119.z, x_2119.y, x_2119.w) / vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
            let x_2124 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
            let x_2126 : vec4<f32> = u_xlat11;
            let x_2128 : vec3<f32> = (vec3<f32>(x_2126.x, x_2126.y, x_2126.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2129 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
            let x_2131 : vec4<f32> = u_xlat10;
            let x_2134 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2136 : vec3<f32> = (vec3<f32>(x_2131.y, x_2131.x, x_2131.z) * vec3<f32>(x_2134.x, x_2134.x, x_2134.x));
            let x_2137 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
            let x_2139 : vec4<f32> = u_xlat11;
            let x_2142 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2144 : vec3<f32> = (vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * vec3<f32>(x_2142.y, x_2142.y, x_2142.y));
            let x_2145 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
            let x_2148 : f32 = u_xlat11.x;
            u_xlat10.w = x_2148;
            let x_2150 : vec4<f32> = u_xlat8;
            let x_2153 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2156 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2150.x, x_2150.y, x_2150.x, x_2150.y) * vec4<f32>(x_2153.x, x_2153.y, x_2153.x, x_2153.y)) + vec4<f32>(x_2156.y, x_2156.w, x_2156.x, x_2156.w));
            let x_2159 : vec4<f32> = u_xlat8;
            let x_2162 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2165 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2159.x, x_2159.y) * vec2<f32>(x_2162.x, x_2162.y)) + vec2<f32>(x_2165.z, x_2165.w));
            let x_2169 : f32 = u_xlat10.y;
            u_xlat11.w = x_2169;
            let x_2171 : vec4<f32> = u_xlat11;
            let x_2172 : vec2<f32> = vec2<f32>(x_2171.y, x_2171.z);
            let x_2173 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2173.x, x_2172.x, x_2173.z, x_2172.y);
            let x_2175 : vec4<f32> = u_xlat8;
            let x_2178 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2181 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2175.x, x_2175.y, x_2175.x, x_2175.y) * vec4<f32>(x_2178.x, x_2178.y, x_2178.x, x_2178.y)) + vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2181.y));
            let x_2184 : vec4<f32> = u_xlat8;
            let x_2187 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2190 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2184.x, x_2184.y, x_2184.x, x_2184.y) * vec4<f32>(x_2187.x, x_2187.y, x_2187.x, x_2187.y)) + vec4<f32>(x_2190.w, x_2190.y, x_2190.w, x_2190.z));
            let x_2193 : vec4<f32> = u_xlat8;
            let x_2196 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2199 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2193.x, x_2193.y, x_2193.x, x_2193.y) * vec4<f32>(x_2196.x, x_2196.y, x_2196.x, x_2196.y)) + vec4<f32>(x_2199.x, x_2199.w, x_2199.z, x_2199.w));
            let x_2202 : vec4<f32> = u_xlat9;
            let x_2204 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2202.x, x_2202.x, x_2202.x, x_2202.y) * vec4<f32>(x_2204.z, x_2204.w, x_2204.y, x_2204.z));
            let x_2207 : vec4<f32> = u_xlat9;
            let x_2209 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2207.y, x_2207.y, x_2207.z, x_2207.z) * x_2209);
            let x_2212 : f32 = u_xlat9.z;
            let x_2214 : f32 = u_xlat14.y;
            u_xlat72 = (x_2212 * x_2214);
            let x_2217 : vec4<f32> = u_xlat12;
            let x_2218 : vec2<f32> = vec2<f32>(x_2217.x, x_2217.y);
            let x_2220 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2218.x, x_2218.y, x_2220);
            let x_2227 : vec3<f32> = txVec34;
            let x_2229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2227.xy, x_2227.z);
            u_xlat73 = x_2229;
            let x_2231 : vec4<f32> = u_xlat12;
            let x_2232 : vec2<f32> = vec2<f32>(x_2231.z, x_2231.w);
            let x_2234 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2232.x, x_2232.y, x_2234);
            let x_2241 : vec3<f32> = txVec35;
            let x_2243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
            u_xlat8.x = x_2243;
            let x_2246 : f32 = u_xlat8.x;
            let x_2248 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2246 * x_2248);
            let x_2252 : f32 = u_xlat15.x;
            let x_2253 : f32 = u_xlat73;
            let x_2256 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2252 * x_2253) + x_2256);
            let x_2259 : vec2<f32> = u_xlat52;
            let x_2261 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2259.x, x_2259.y, x_2261);
            let x_2268 : vec3<f32> = txVec36;
            let x_2270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2268.xy, x_2268.z);
            u_xlat8.x = x_2270;
            let x_2273 : f32 = u_xlat15.z;
            let x_2275 : f32 = u_xlat8.x;
            let x_2277 : f32 = u_xlat73;
            u_xlat73 = ((x_2273 * x_2275) + x_2277);
            let x_2280 : vec4<f32> = u_xlat11;
            let x_2281 : vec2<f32> = vec2<f32>(x_2280.x, x_2280.y);
            let x_2283 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2281.x, x_2281.y, x_2283);
            let x_2290 : vec3<f32> = txVec37;
            let x_2292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2290.xy, x_2290.z);
            u_xlat8.x = x_2292;
            let x_2295 : f32 = u_xlat15.w;
            let x_2297 : f32 = u_xlat8.x;
            let x_2299 : f32 = u_xlat73;
            u_xlat73 = ((x_2295 * x_2297) + x_2299);
            let x_2302 : vec4<f32> = u_xlat13;
            let x_2303 : vec2<f32> = vec2<f32>(x_2302.x, x_2302.y);
            let x_2305 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2303.x, x_2303.y, x_2305);
            let x_2312 : vec3<f32> = txVec38;
            let x_2314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2312.xy, x_2312.z);
            u_xlat8.x = x_2314;
            let x_2317 : f32 = u_xlat16.x;
            let x_2319 : f32 = u_xlat8.x;
            let x_2321 : f32 = u_xlat73;
            u_xlat73 = ((x_2317 * x_2319) + x_2321);
            let x_2324 : vec4<f32> = u_xlat13;
            let x_2325 : vec2<f32> = vec2<f32>(x_2324.z, x_2324.w);
            let x_2327 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2325.x, x_2325.y, x_2327);
            let x_2334 : vec3<f32> = txVec39;
            let x_2336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2334.xy, x_2334.z);
            u_xlat8.x = x_2336;
            let x_2339 : f32 = u_xlat16.y;
            let x_2341 : f32 = u_xlat8.x;
            let x_2343 : f32 = u_xlat73;
            u_xlat73 = ((x_2339 * x_2341) + x_2343);
            let x_2346 : vec4<f32> = u_xlat11;
            let x_2347 : vec2<f32> = vec2<f32>(x_2346.z, x_2346.w);
            let x_2349 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2347.x, x_2347.y, x_2349);
            let x_2356 : vec3<f32> = txVec40;
            let x_2358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2356.xy, x_2356.z);
            u_xlat8.x = x_2358;
            let x_2361 : f32 = u_xlat16.z;
            let x_2363 : f32 = u_xlat8.x;
            let x_2365 : f32 = u_xlat73;
            u_xlat73 = ((x_2361 * x_2363) + x_2365);
            let x_2368 : vec4<f32> = u_xlat10;
            let x_2369 : vec2<f32> = vec2<f32>(x_2368.x, x_2368.y);
            let x_2371 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2369.x, x_2369.y, x_2371);
            let x_2378 : vec3<f32> = txVec41;
            let x_2380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2378.xy, x_2378.z);
            u_xlat8.x = x_2380;
            let x_2383 : f32 = u_xlat16.w;
            let x_2385 : f32 = u_xlat8.x;
            let x_2387 : f32 = u_xlat73;
            u_xlat73 = ((x_2383 * x_2385) + x_2387);
            let x_2390 : vec4<f32> = u_xlat10;
            let x_2391 : vec2<f32> = vec2<f32>(x_2390.z, x_2390.w);
            let x_2393 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
            let x_2400 : vec3<f32> = txVec42;
            let x_2402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
            u_xlat8.x = x_2402;
            let x_2404 : f32 = u_xlat72;
            let x_2406 : f32 = u_xlat8.x;
            let x_2408 : f32 = u_xlat73;
            u_xlat71 = ((x_2404 * x_2406) + x_2408);
          } else {
            let x_2411 : vec4<f32> = u_xlat7;
            let x_2414 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2417 : vec2<f32> = ((vec2<f32>(x_2411.x, x_2411.y) * vec2<f32>(x_2414.z, x_2414.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2418 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat8;
            let x_2422 : vec2<f32> = floor(vec2<f32>(x_2420.x, x_2420.y));
            let x_2423 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2422.x, x_2422.y, x_2423.z, x_2423.w);
            let x_2425 : vec4<f32> = u_xlat7;
            let x_2428 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2431 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2425.x, x_2425.y) * vec2<f32>(x_2428.z, x_2428.w)) + -(vec2<f32>(x_2431.x, x_2431.y)));
            let x_2435 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2435.x, x_2435.x, x_2435.y, x_2435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2438 : vec4<f32> = u_xlat9;
            let x_2440 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2438.x, x_2438.x, x_2438.z, x_2438.z) * vec4<f32>(x_2440.x, x_2440.x, x_2440.z, x_2440.z));
            let x_2443 : vec4<f32> = u_xlat10;
            let x_2445 : vec2<f32> = (vec2<f32>(x_2443.y, x_2443.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2446 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2446.x, x_2445.x, x_2446.z, x_2445.y);
            let x_2448 : vec4<f32> = u_xlat10;
            let x_2451 : vec2<f32> = u_xlat52;
            let x_2453 : vec2<f32> = ((vec2<f32>(x_2448.x, x_2448.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2451));
            let x_2454 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2453.x, x_2454.y, x_2453.y, x_2454.w);
            let x_2456 : vec2<f32> = u_xlat52;
            let x_2458 : vec2<f32> = (-(x_2456) + vec2<f32>(1.0f, 1.0f));
            let x_2459 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
            let x_2461 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2461, vec2<f32>(0.0f, 0.0f));
            let x_2463 : vec2<f32> = u_xlat54;
            let x_2465 : vec2<f32> = u_xlat54;
            let x_2467 : vec4<f32> = u_xlat10;
            let x_2469 : vec2<f32> = ((-(x_2463) * x_2465) + vec2<f32>(x_2467.x, x_2467.y));
            let x_2470 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2472, vec2<f32>(0.0f, 0.0f));
            let x_2475 : vec2<f32> = u_xlat54;
            let x_2477 : vec2<f32> = u_xlat54;
            let x_2479 : vec4<f32> = u_xlat9;
            let x_2481 : vec2<f32> = ((-(x_2475) * x_2477) + vec2<f32>(x_2479.y, x_2479.w));
            let x_2482 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2481.x, x_2482.y, x_2481.y);
            let x_2484 : vec4<f32> = u_xlat10;
            let x_2486 : vec2<f32> = (vec2<f32>(x_2484.x, x_2484.y) + vec2<f32>(2.0f, 2.0f));
            let x_2487 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2486.x, x_2486.y, x_2487.z, x_2487.w);
            let x_2489 : vec3<f32> = u_xlat31;
            let x_2491 : vec2<f32> = (vec2<f32>(x_2489.x, x_2489.z) + vec2<f32>(2.0f, 2.0f));
            let x_2492 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2492.x, x_2491.x, x_2492.z, x_2491.y);
            let x_2495 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2495 * 0.08163200318813323975f);
            let x_2498 : vec4<f32> = u_xlat9;
            let x_2500 : vec3<f32> = (vec3<f32>(x_2498.z, x_2498.x, x_2498.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2501 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
            let x_2503 : vec4<f32> = u_xlat10;
            let x_2505 : vec2<f32> = (vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2506 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2505.x, x_2505.y, x_2506.z, x_2506.w);
            let x_2509 : f32 = u_xlat13.y;
            u_xlat12.x = x_2509;
            let x_2511 : vec2<f32> = u_xlat52;
            let x_2514 : vec2<f32> = ((vec2<f32>(x_2511.x, x_2511.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2515 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2515.x, x_2514.x, x_2515.z, x_2514.y);
            let x_2517 : vec2<f32> = u_xlat52;
            let x_2520 : vec2<f32> = ((vec2<f32>(x_2517.x, x_2517.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2521 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2520.x, x_2521.y, x_2520.y, x_2521.w);
            let x_2524 : f32 = u_xlat9.x;
            u_xlat10.y = x_2524;
            let x_2527 : f32 = u_xlat11.y;
            u_xlat10.w = x_2527;
            let x_2529 : vec4<f32> = u_xlat10;
            let x_2530 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2529 + x_2530);
            let x_2532 : vec2<f32> = u_xlat52;
            let x_2535 : vec2<f32> = ((vec2<f32>(x_2532.y, x_2532.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2536 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2536.x, x_2535.x, x_2536.z, x_2535.y);
            let x_2538 : vec2<f32> = u_xlat52;
            let x_2541 : vec2<f32> = ((vec2<f32>(x_2538.y, x_2538.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2542 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2541.x, x_2542.y, x_2541.y, x_2542.w);
            let x_2545 : f32 = u_xlat9.y;
            u_xlat11.y = x_2545;
            let x_2547 : vec4<f32> = u_xlat11;
            let x_2548 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2547 + x_2548);
            let x_2550 : vec4<f32> = u_xlat10;
            let x_2551 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2550 / x_2551);
            let x_2553 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2553 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2555 : vec4<f32> = u_xlat11;
            let x_2556 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2555 / x_2556);
            let x_2558 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2558 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2560 : vec4<f32> = u_xlat10;
            let x_2563 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2560.w, x_2560.x, x_2560.y, x_2560.z) * vec4<f32>(x_2563.x, x_2563.x, x_2563.x, x_2563.x));
            let x_2566 : vec4<f32> = u_xlat11;
            let x_2569 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2566.x, x_2566.w, x_2566.y, x_2566.z) * vec4<f32>(x_2569.y, x_2569.y, x_2569.y, x_2569.y));
            let x_2572 : vec4<f32> = u_xlat10;
            let x_2573 : vec3<f32> = vec3<f32>(x_2572.y, x_2572.z, x_2572.w);
            let x_2574 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2573.x, x_2574.y, x_2573.y, x_2573.z);
            let x_2577 : f32 = u_xlat11.x;
            u_xlat13.y = x_2577;
            let x_2579 : vec4<f32> = u_xlat8;
            let x_2582 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2585 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y) * vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y)) + vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat8;
            let x_2591 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2594 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2588.x, x_2588.y) * vec2<f32>(x_2591.x, x_2591.y)) + vec2<f32>(x_2594.w, x_2594.y));
            let x_2598 : f32 = u_xlat13.y;
            u_xlat10.y = x_2598;
            let x_2601 : f32 = u_xlat11.z;
            u_xlat13.y = x_2601;
            let x_2603 : vec4<f32> = u_xlat8;
            let x_2606 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2609 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y) * vec4<f32>(x_2606.x, x_2606.y, x_2606.x, x_2606.y)) + vec4<f32>(x_2609.x, x_2609.y, x_2609.z, x_2609.y));
            let x_2612 : vec4<f32> = u_xlat8;
            let x_2615 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2618 : vec4<f32> = u_xlat13;
            let x_2620 : vec2<f32> = ((vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(x_2615.x, x_2615.y)) + vec2<f32>(x_2618.w, x_2618.y));
            let x_2621 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2620.x, x_2620.y, x_2621.z, x_2621.w);
            let x_2624 : f32 = u_xlat13.y;
            u_xlat10.z = x_2624;
            let x_2626 : vec4<f32> = u_xlat8;
            let x_2629 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y) * vec4<f32>(x_2629.x, x_2629.y, x_2629.x, x_2629.y)) + vec4<f32>(x_2632.x, x_2632.y, x_2632.x, x_2632.z));
            let x_2636 : f32 = u_xlat11.w;
            u_xlat13.y = x_2636;
            let x_2639 : vec4<f32> = u_xlat8;
            let x_2642 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2645 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) * vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y)) + vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2645.y));
            let x_2649 : vec4<f32> = u_xlat8;
            let x_2652 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2655 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2649.x, x_2649.y) * vec2<f32>(x_2652.x, x_2652.y)) + vec2<f32>(x_2655.w, x_2655.y));
            let x_2659 : f32 = u_xlat13.y;
            u_xlat10.w = x_2659;
            let x_2662 : vec4<f32> = u_xlat8;
            let x_2665 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2668 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2662.x, x_2662.y) * vec2<f32>(x_2665.x, x_2665.y)) + vec2<f32>(x_2668.x, x_2668.w));
            let x_2671 : vec4<f32> = u_xlat13;
            let x_2672 : vec3<f32> = vec3<f32>(x_2671.x, x_2671.z, x_2671.w);
            let x_2673 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2672.x, x_2673.y, x_2672.y, x_2672.z);
            let x_2675 : vec4<f32> = u_xlat8;
            let x_2678 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2681 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2675.x, x_2675.y, x_2675.x, x_2675.y) * vec4<f32>(x_2678.x, x_2678.y, x_2678.x, x_2678.y)) + vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2681.y));
            let x_2685 : vec4<f32> = u_xlat8;
            let x_2688 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2691 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2685.x, x_2685.y) * vec2<f32>(x_2688.x, x_2688.y)) + vec2<f32>(x_2691.w, x_2691.y));
            let x_2695 : f32 = u_xlat10.x;
            u_xlat11.x = x_2695;
            let x_2697 : vec4<f32> = u_xlat8;
            let x_2700 : vec4<f32> = x_261.x_AdditionalShadowmapSize;
            let x_2703 : vec4<f32> = u_xlat11;
            let x_2705 : vec2<f32> = ((vec2<f32>(x_2697.x, x_2697.y) * vec2<f32>(x_2700.x, x_2700.y)) + vec2<f32>(x_2703.x, x_2703.y));
            let x_2706 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
            let x_2709 : vec4<f32> = u_xlat9;
            let x_2711 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2709.x, x_2709.x, x_2709.x, x_2709.x) * x_2711);
            let x_2714 : vec4<f32> = u_xlat9;
            let x_2716 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2714.y, x_2714.y, x_2714.y, x_2714.y) * x_2716);
            let x_2719 : vec4<f32> = u_xlat9;
            let x_2721 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2719.z, x_2719.z, x_2719.z, x_2719.z) * x_2721);
            let x_2723 : vec4<f32> = u_xlat9;
            let x_2725 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2723.w, x_2723.w, x_2723.w, x_2723.w) * x_2725);
            let x_2728 : vec4<f32> = u_xlat14;
            let x_2729 : vec2<f32> = vec2<f32>(x_2728.x, x_2728.y);
            let x_2731 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec43;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat72 = x_2740;
            let x_2742 : vec4<f32> = u_xlat14;
            let x_2743 : vec2<f32> = vec2<f32>(x_2742.z, x_2742.w);
            let x_2745 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
            let x_2752 : vec3<f32> = txVec44;
            let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
            u_xlat73 = x_2754;
            let x_2755 : f32 = u_xlat73;
            let x_2757 : f32 = u_xlat19.y;
            u_xlat73 = (x_2755 * x_2757);
            let x_2760 : f32 = u_xlat19.x;
            let x_2761 : f32 = u_xlat72;
            let x_2763 : f32 = u_xlat73;
            u_xlat72 = ((x_2760 * x_2761) + x_2763);
            let x_2766 : vec2<f32> = u_xlat52;
            let x_2768 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2766.x, x_2766.y, x_2768);
            let x_2775 : vec3<f32> = txVec45;
            let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
            u_xlat73 = x_2777;
            let x_2779 : f32 = u_xlat19.z;
            let x_2780 : f32 = u_xlat73;
            let x_2782 : f32 = u_xlat72;
            u_xlat72 = ((x_2779 * x_2780) + x_2782);
            let x_2785 : vec4<f32> = u_xlat17;
            let x_2786 : vec2<f32> = vec2<f32>(x_2785.x, x_2785.y);
            let x_2788 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
            let x_2795 : vec3<f32> = txVec46;
            let x_2797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
            u_xlat73 = x_2797;
            let x_2799 : f32 = u_xlat19.w;
            let x_2800 : f32 = u_xlat73;
            let x_2802 : f32 = u_xlat72;
            u_xlat72 = ((x_2799 * x_2800) + x_2802);
            let x_2805 : vec4<f32> = u_xlat15;
            let x_2806 : vec2<f32> = vec2<f32>(x_2805.x, x_2805.y);
            let x_2808 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2806.x, x_2806.y, x_2808);
            let x_2815 : vec3<f32> = txVec47;
            let x_2817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2815.xy, x_2815.z);
            u_xlat73 = x_2817;
            let x_2819 : f32 = u_xlat20.x;
            let x_2820 : f32 = u_xlat73;
            let x_2822 : f32 = u_xlat72;
            u_xlat72 = ((x_2819 * x_2820) + x_2822);
            let x_2825 : vec4<f32> = u_xlat15;
            let x_2826 : vec2<f32> = vec2<f32>(x_2825.z, x_2825.w);
            let x_2828 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
            let x_2835 : vec3<f32> = txVec48;
            let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
            u_xlat73 = x_2837;
            let x_2839 : f32 = u_xlat20.y;
            let x_2840 : f32 = u_xlat73;
            let x_2842 : f32 = u_xlat72;
            u_xlat72 = ((x_2839 * x_2840) + x_2842);
            let x_2845 : vec4<f32> = u_xlat16;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.x, x_2845.y);
            let x_2848 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec49;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat73 = x_2857;
            let x_2859 : f32 = u_xlat20.z;
            let x_2860 : f32 = u_xlat73;
            let x_2862 : f32 = u_xlat72;
            u_xlat72 = ((x_2859 * x_2860) + x_2862);
            let x_2865 : vec4<f32> = u_xlat17;
            let x_2866 : vec2<f32> = vec2<f32>(x_2865.z, x_2865.w);
            let x_2868 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
            let x_2875 : vec3<f32> = txVec50;
            let x_2877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2875.xy, x_2875.z);
            u_xlat73 = x_2877;
            let x_2879 : f32 = u_xlat20.w;
            let x_2880 : f32 = u_xlat73;
            let x_2882 : f32 = u_xlat72;
            u_xlat72 = ((x_2879 * x_2880) + x_2882);
            let x_2885 : vec4<f32> = u_xlat18;
            let x_2886 : vec2<f32> = vec2<f32>(x_2885.x, x_2885.y);
            let x_2888 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
            let x_2895 : vec3<f32> = txVec51;
            let x_2897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
            u_xlat73 = x_2897;
            let x_2899 : f32 = u_xlat21.x;
            let x_2900 : f32 = u_xlat73;
            let x_2902 : f32 = u_xlat72;
            u_xlat72 = ((x_2899 * x_2900) + x_2902);
            let x_2905 : vec4<f32> = u_xlat18;
            let x_2906 : vec2<f32> = vec2<f32>(x_2905.z, x_2905.w);
            let x_2908 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
            let x_2915 : vec3<f32> = txVec52;
            let x_2917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
            u_xlat73 = x_2917;
            let x_2919 : f32 = u_xlat21.y;
            let x_2920 : f32 = u_xlat73;
            let x_2922 : f32 = u_xlat72;
            u_xlat72 = ((x_2919 * x_2920) + x_2922);
            let x_2925 : vec2<f32> = u_xlat32;
            let x_2927 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec53;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat73 = x_2936;
            let x_2938 : f32 = u_xlat21.z;
            let x_2939 : f32 = u_xlat73;
            let x_2941 : f32 = u_xlat72;
            u_xlat72 = ((x_2938 * x_2939) + x_2941);
            let x_2944 : vec2<f32> = u_xlat60;
            let x_2946 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec54;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat73 = x_2955;
            let x_2957 : f32 = u_xlat21.w;
            let x_2958 : f32 = u_xlat73;
            let x_2960 : f32 = u_xlat72;
            u_xlat72 = ((x_2957 * x_2958) + x_2960);
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
            let x_2966 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec55;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat73 = x_2975;
            let x_2977 : f32 = u_xlat9.x;
            let x_2978 : f32 = u_xlat73;
            let x_2980 : f32 = u_xlat72;
            u_xlat72 = ((x_2977 * x_2978) + x_2980);
            let x_2983 : vec4<f32> = u_xlat13;
            let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
            let x_2986 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec56;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat73 = x_2995;
            let x_2997 : f32 = u_xlat9.y;
            let x_2998 : f32 = u_xlat73;
            let x_3000 : f32 = u_xlat72;
            u_xlat72 = ((x_2997 * x_2998) + x_3000);
            let x_3003 : vec2<f32> = u_xlat55;
            let x_3005 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec57;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat73 = x_3014;
            let x_3016 : f32 = u_xlat9.z;
            let x_3017 : f32 = u_xlat73;
            let x_3019 : f32 = u_xlat72;
            u_xlat72 = ((x_3016 * x_3017) + x_3019);
            let x_3022 : vec4<f32> = u_xlat8;
            let x_3023 : vec2<f32> = vec2<f32>(x_3022.x, x_3022.y);
            let x_3025 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
            let x_3032 : vec3<f32> = txVec58;
            let x_3034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
            u_xlat73 = x_3034;
            let x_3036 : f32 = u_xlat9.w;
            let x_3037 : f32 = u_xlat73;
            let x_3039 : f32 = u_xlat72;
            u_xlat71 = ((x_3036 * x_3037) + x_3039);
          }
        }
      } else {
        let x_3043 : vec4<f32> = u_xlat7;
        let x_3044 : vec2<f32> = vec2<f32>(x_3043.x, x_3043.y);
        let x_3046 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
        let x_3053 : vec3<f32> = txVec59;
        let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
        u_xlat71 = x_3055;
      }
      let x_3056 : i32 = u_xlati69;
      let x_3058 : f32 = x_261.x_AdditionalShadowParams[x_3056].x;
      u_xlat72 = (1.0f + -(x_3058));
      let x_3061 : f32 = u_xlat71;
      let x_3062 : i32 = u_xlati69;
      let x_3064 : f32 = x_261.x_AdditionalShadowParams[x_3062].x;
      let x_3066 : f32 = u_xlat72;
      u_xlat71 = ((x_3061 * x_3064) + x_3066);
      let x_3069 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3069);
      let x_3072 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3072 >= 1.0f);
      let x_3075 : bool = u_xlatb72;
      let x_3077 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3075 | x_3077);
      let x_3079 : bool = u_xlatb72;
      let x_3080 : f32 = u_xlat71;
      u_xlat71 = select(x_3080, 1.0f, x_3079);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3083 : f32 = u_xlat71;
    u_xlat72 = (-(x_3083) + 1.0f);
    let x_3086 : f32 = u_xlat67;
    let x_3087 : f32 = u_xlat72;
    let x_3089 : f32 = u_xlat71;
    u_xlat71 = ((x_3086 * x_3087) + x_3089);
    let x_3091 : f32 = u_xlat70;
    let x_3092 : f32 = u_xlat71;
    u_xlat70 = (x_3091 * x_3092);
    let x_3094 : f32 = u_xlat70;
    let x_3096 : i32 = u_xlati69;
    let x_3098 : vec4<f32> = x_1645.x_AdditionalLightsColor[x_3096];
    let x_3100 : vec3<f32> = (vec3<f32>(x_3094, x_3094, x_3094) * vec3<f32>(x_3098.x, x_3098.y, x_3098.z));
    let x_3101 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3100.x, x_3100.y, x_3100.z, x_3101.w);
    let x_3103 : vec3<f32> = u_xlat2;
    let x_3104 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(x_3103, vec3<f32>(x_3104.x, x_3104.y, x_3104.z));
    let x_3107 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3107, 0.0f, 1.0f);
    let x_3109 : f32 = u_xlat69;
    let x_3111 : vec4<f32> = u_xlat7;
    let x_3113 : vec3<f32> = (vec3<f32>(x_3109, x_3109, x_3109) * vec3<f32>(x_3111.x, x_3111.y, x_3111.z));
    let x_3114 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3113.x, x_3113.y, x_3113.z, x_3114.w);
    let x_3116 : vec4<f32> = u_xlat6;
    let x_3118 : vec4<f32> = u_xlat1;
    let x_3121 : vec4<f32> = u_xlat5;
    let x_3123 : vec3<f32> = ((vec3<f32>(x_3116.x, x_3116.y, x_3116.z) * vec3<f32>(x_3118.x, x_3118.y, x_3118.z)) + vec3<f32>(x_3121.x, x_3121.y, x_3121.z));
    let x_3124 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3123.x, x_3123.y, x_3123.z, x_3124.w);

    continuing {
      let x_3126 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3126 + bitcast<u32>(1i));
    }
  }
  let x_3128 : vec4<f32> = u_xlat3;
  let x_3130 : vec4<f32> = u_xlat1;
  let x_3133 : vec4<f32> = u_xlat4;
  let x_3135 : vec3<f32> = ((vec3<f32>(x_3128.x, x_3128.y, x_3128.z) * vec3<f32>(x_3130.x, x_3130.y, x_3130.z)) + vec3<f32>(x_3133.x, x_3133.y, x_3133.z));
  let x_3136 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3135.x, x_3135.y, x_3135.z, x_3136.w);
  let x_3138 : vec4<f32> = u_xlat5;
  let x_3140 : vec4<f32> = u_xlat1;
  let x_3142 : vec3<f32> = (vec3<f32>(x_3138.x, x_3138.y, x_3138.z) + vec3<f32>(x_3140.x, x_3140.y, x_3140.z));
  let x_3143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3142.x, x_3142.y, x_3142.z, x_3143.w);
  let x_3146 : f32 = u_xlat0.x;
  let x_3148 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3146 * -(x_3148));
  let x_3153 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3153);
  let x_3156 : vec4<f32> = u_xlat1;
  let x_3159 : vec4<f32> = x_44.unity_FogColor;
  let x_3162 : vec3<f32> = (vec3<f32>(x_3156.x, x_3156.y, x_3156.z) + -(vec3<f32>(x_3159.x, x_3159.y, x_3159.z)));
  let x_3163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3163.w);
  let x_3167 : vec4<f32> = u_xlat0;
  let x_3169 : vec4<f32> = u_xlat1;
  let x_3173 : vec4<f32> = x_44.unity_FogColor;
  let x_3175 : vec3<f32> = ((vec3<f32>(x_3167.x, x_3167.x, x_3167.x) * vec3<f32>(x_3169.x, x_3169.y, x_3169.z)) + vec3<f32>(x_3173.x, x_3173.y, x_3173.z));
  let x_3176 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3175.x, x_3175.y, x_3175.z, x_3176.w);
  let x_3178 : bool = u_xlatb44;
  let x_3179 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3179, x_3178);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


