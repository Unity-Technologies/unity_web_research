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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb66 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_327 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlatu22 : u32;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1783 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
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
  var x_1612 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1924 : f32;
  var x_1934 : f32;
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
  var x_3278 : f32;
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
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat22.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat66;
  let x_107 : f32 = u_xlat44;
  u_xlat44 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat44;
  u_xlat44 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat22.x;
  let x_115 : f32 = u_xlat44;
  u_xlat22.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat22.x;
  u_xlat22.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb44;
  if (x_131) {
    let x_136 : f32 = u_xlat22.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat22.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat22.x;
  u_xlatb22 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb22;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat22;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat22.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb66 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb66;
  if (x_191) {
    let x_196 : f32 = u_xlat22.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat22.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat22.x = x_203;
  let x_206 : f32 = u_xlat22.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat22.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat22.x;
  u_xlatb22 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb22;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat22;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  u_xlat2.w = 1.0f;
  let x_243 : vec4<f32> = x_186.unity_SHAr;
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_186.unity_SHAg;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_249, x_250);
  let x_256 : vec4<f32> = x_186.unity_SHAb;
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_256, x_257);
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_261.y, x_261.z, x_261.z, x_261.x) * vec4<f32>(x_263.x, x_263.y, x_263.z, x_263.z));
  let x_269 : vec4<f32> = x_186.unity_SHBr;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_269, x_270);
  let x_275 : vec4<f32> = x_186.unity_SHBg;
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_275, x_276);
  let x_281 : vec4<f32> = x_186.unity_SHBb;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_281, x_282);
  let x_286 : f32 = u_xlat2.y;
  let x_288 : f32 = u_xlat2.y;
  u_xlat22.x = (x_286 * x_288);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_292 * x_294) + -(x_297));
  let x_303 : vec4<f32> = x_186.unity_SHC;
  let x_305 : vec3<f32> = u_xlat22;
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec3<f32> = u_xlat3;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_313 + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_317, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_330 : f32 = x_327.x_MainLightShadowParams.y;
  u_xlatb22 = (0.0f < x_330);
  let x_332 : bool = u_xlatb22;
  if (x_332) {
    let x_336 : f32 = x_327.x_MainLightShadowParams.y;
    u_xlatb22 = (x_336 == 1.0f);
    let x_338 : bool = u_xlatb22;
    if (x_338) {
      let x_342 : vec4<f32> = vs_TEXCOORD6;
      let x_345 : vec4<f32> = x_327.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_342.x, x_342.y, x_342.x, x_342.y) + x_345);
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_364 : vec3<f32> = txVec0;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.x = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec1;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.y = x_381;
      let x_383 : vec4<f32> = vs_TEXCOORD6;
      let x_387 : vec4<f32> = x_327.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y) + x_387);
      let x_390 : vec4<f32> = u_xlat4;
      let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
      let x_393 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec2;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_400.xy, x_400.z);
      u_xlat5.z = x_402;
      let x_405 : vec4<f32> = u_xlat4;
      let x_406 : vec2<f32> = vec2<f32>(x_405.z, x_405.w);
      let x_408 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_406.x, x_406.y, x_408);
      let x_415 : vec3<f32> = txVec3;
      let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_415.xy, x_415.z);
      u_xlat5.w = x_417;
      let x_419 : vec4<f32> = u_xlat5;
      u_xlat22.x = dot(x_419, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_426 : f32 = x_327.x_MainLightShadowParams.y;
      u_xlatb66 = (x_426 == 2.0f);
      let x_429 : bool = u_xlatb66;
      if (x_429) {
        let x_432 : vec4<f32> = vs_TEXCOORD6;
        let x_436 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_440 : vec2<f32> = ((vec2<f32>(x_432.x, x_432.y) * vec2<f32>(x_436.z, x_436.w)) + vec2<f32>(0.5f, 0.5f));
        let x_441 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
        let x_443 : vec4<f32> = u_xlat4;
        let x_445 : vec2<f32> = floor(vec2<f32>(x_443.x, x_443.y));
        let x_446 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_450 : vec4<f32> = vs_TEXCOORD6;
        let x_453 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_456 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_453.z, x_453.w)) + -(vec2<f32>(x_456.x, x_456.y)));
        let x_460 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_460.x, x_460.x, x_460.y, x_460.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_465 : vec4<f32> = u_xlat5;
        let x_467 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z) * vec4<f32>(x_467.x, x_467.x, x_467.z, x_467.z));
        let x_470 : vec4<f32> = u_xlat6;
        let x_474 : vec2<f32> = (vec2<f32>(x_470.y, x_470.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_475 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_474.x, x_475.y, x_474.y, x_475.w);
        let x_477 : vec4<f32> = u_xlat6;
        let x_480 : vec2<f32> = u_xlat48;
        let x_482 : vec2<f32> = ((vec2<f32>(x_477.x, x_477.z) * vec2<f32>(0.5f, 0.5f)) + -(x_480));
        let x_483 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_486 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_486) + vec2<f32>(1.0f, 1.0f));
        let x_491 : vec2<f32> = u_xlat48;
        let x_493 : vec2<f32> = min(x_491, vec2<f32>(0.0f, 0.0f));
        let x_494 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec4<f32> = u_xlat7;
        let x_499 : vec4<f32> = u_xlat7;
        let x_502 : vec2<f32> = u_xlat50;
        let x_503 : vec2<f32> = ((-(vec2<f32>(x_496.x, x_496.y)) * vec2<f32>(x_499.x, x_499.y)) + x_502);
        let x_504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_506, vec2<f32>(0.0f, 0.0f));
        let x_508 : vec2<f32> = u_xlat48;
        let x_510 : vec2<f32> = u_xlat48;
        let x_512 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_508) * x_510) + vec2<f32>(x_512.y, x_512.w));
        let x_515 : vec4<f32> = u_xlat7;
        let x_517 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) + vec2<f32>(1.0f, 1.0f));
        let x_518 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_520 + vec2<f32>(1.0f, 1.0f));
        let x_523 : vec4<f32> = u_xlat6;
        let x_527 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_530 : vec2<f32> = u_xlat50;
        let x_531 : vec2<f32> = (x_530 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat7;
        let x_536 : vec2<f32> = (vec2<f32>(x_534.x, x_534.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_537 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
        let x_540 : vec2<f32> = u_xlat48;
        let x_541 : vec2<f32> = (x_540 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_542 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_544.y, x_544.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_548 : f32 = u_xlat7.x;
        u_xlat8.z = x_548;
        let x_551 : f32 = u_xlat48.x;
        u_xlat8.w = x_551;
        let x_554 : f32 = u_xlat9.x;
        u_xlat6.z = x_554;
        let x_557 : f32 = u_xlat5.x;
        u_xlat6.w = x_557;
        let x_560 : vec4<f32> = u_xlat6;
        let x_562 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z) + vec4<f32>(x_562.z, x_562.w, x_562.x, x_562.z));
        let x_566 : f32 = u_xlat8.y;
        u_xlat7.z = x_566;
        let x_569 : f32 = u_xlat48.y;
        u_xlat7.w = x_569;
        let x_572 : f32 = u_xlat6.y;
        u_xlat9.z = x_572;
        let x_575 : f32 = u_xlat5.z;
        u_xlat9.w = x_575;
        let x_577 : vec4<f32> = u_xlat7;
        let x_579 : vec4<f32> = u_xlat9;
        let x_581 : vec3<f32> = (vec3<f32>(x_577.z, x_577.y, x_577.w) + vec3<f32>(x_579.z, x_579.y, x_579.w));
        let x_582 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = u_xlat10;
        let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.z, x_584.w) / vec3<f32>(x_586.z, x_586.w, x_586.y));
        let x_589 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat6;
        let x_597 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_598 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat9;
        let x_602 : vec4<f32> = u_xlat5;
        let x_604 : vec3<f32> = (vec3<f32>(x_600.z, x_600.y, x_600.w) / vec3<f32>(x_602.x, x_602.y, x_602.z));
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat7;
        let x_609 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat6;
        let x_615 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_617 : vec3<f32> = (vec3<f32>(x_612.y, x_612.x, x_612.z) * vec3<f32>(x_615.x, x_615.x, x_615.x));
        let x_618 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat7;
        let x_623 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_623.y, x_623.y, x_623.y));
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_629 : f32 = u_xlat7.x;
        u_xlat6.w = x_629;
        let x_631 : vec4<f32> = u_xlat4;
        let x_634 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.y, x_637.w, x_637.x, x_637.w));
        let x_640 : vec4<f32> = u_xlat4;
        let x_643 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.x, x_643.y)) + vec2<f32>(x_646.z, x_646.w));
        let x_650 : f32 = u_xlat6.y;
        u_xlat7.w = x_650;
        let x_652 : vec4<f32> = u_xlat7;
        let x_653 : vec2<f32> = vec2<f32>(x_652.y, x_652.z);
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_654.x, x_653.x, x_654.z, x_653.y);
        let x_656 : vec4<f32> = u_xlat4;
        let x_659 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_662 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y) * vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y)) + vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.y));
        let x_665 : vec4<f32> = u_xlat4;
        let x_668 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_671 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y) * vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y)) + vec4<f32>(x_671.w, x_671.y, x_671.w, x_671.z));
        let x_674 : vec4<f32> = u_xlat4;
        let x_677 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y) * vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.y)) + vec4<f32>(x_680.x, x_680.w, x_680.z, x_680.w));
        let x_684 : vec4<f32> = u_xlat5;
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_684.x, x_684.x, x_684.x, x_684.y) * vec4<f32>(x_686.z, x_686.w, x_686.y, x_686.z));
        let x_690 : vec4<f32> = u_xlat5;
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_690.y, x_690.y, x_690.z, x_690.z) * x_692);
        let x_695 : f32 = u_xlat5.z;
        let x_697 : f32 = u_xlat10.y;
        u_xlat66 = (x_695 * x_697);
        let x_700 : vec4<f32> = u_xlat8;
        let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
        let x_703 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec4;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat1.x = x_712;
        let x_715 : vec4<f32> = u_xlat8;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_726 : vec3<f32> = txVec5;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_726.xy, x_726.z);
        u_xlat68 = x_728;
        let x_729 : f32 = u_xlat68;
        let x_731 : f32 = u_xlat11.y;
        u_xlat68 = (x_729 * x_731);
        let x_734 : f32 = u_xlat11.x;
        let x_736 : f32 = u_xlat1.x;
        let x_738 : f32 = u_xlat68;
        u_xlat1.x = ((x_734 * x_736) + x_738);
        let x_742 : vec2<f32> = u_xlat48;
        let x_744 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec6;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat68 = x_753;
        let x_755 : f32 = u_xlat11.z;
        let x_756 : f32 = u_xlat68;
        let x_759 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_755 * x_756) + x_759);
        let x_763 : vec4<f32> = u_xlat7;
        let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
        let x_766 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_764.x, x_764.y, x_766);
        let x_773 : vec3<f32> = txVec7;
        let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
        u_xlat68 = x_775;
        let x_777 : f32 = u_xlat11.w;
        let x_778 : f32 = u_xlat68;
        let x_781 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_777 * x_778) + x_781);
        let x_785 : vec4<f32> = u_xlat9;
        let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
        let x_788 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_795 : vec3<f32> = txVec8;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat68 = x_797;
        let x_799 : f32 = u_xlat12.x;
        let x_800 : f32 = u_xlat68;
        let x_803 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_799 * x_800) + x_803);
        let x_807 : vec4<f32> = u_xlat9;
        let x_808 : vec2<f32> = vec2<f32>(x_807.z, x_807.w);
        let x_810 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec9;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat68 = x_819;
        let x_821 : f32 = u_xlat12.y;
        let x_822 : f32 = u_xlat68;
        let x_825 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_821 * x_822) + x_825);
        let x_829 : vec4<f32> = u_xlat7;
        let x_830 : vec2<f32> = vec2<f32>(x_829.z, x_829.w);
        let x_832 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec10;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_839.xy, x_839.z);
        u_xlat68 = x_841;
        let x_843 : f32 = u_xlat12.z;
        let x_844 : f32 = u_xlat68;
        let x_847 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_843 * x_844) + x_847);
        let x_851 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
        let x_854 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec11;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat68 = x_863;
        let x_865 : f32 = u_xlat12.w;
        let x_866 : f32 = u_xlat68;
        let x_869 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_865 * x_866) + x_869);
        let x_873 : vec4<f32> = u_xlat6;
        let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
        let x_876 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec12;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat68 = x_885;
        let x_886 : f32 = u_xlat66;
        let x_887 : f32 = u_xlat68;
        let x_890 : f32 = u_xlat1.x;
        u_xlat22.x = ((x_886 * x_887) + x_890);
      } else {
        let x_894 : vec4<f32> = vs_TEXCOORD6;
        let x_897 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat4;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = vs_TEXCOORD6;
        let x_911 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat5;
        let x_923 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = u_xlat48;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat48;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat50;
        let x_950 : vec2<f32> = u_xlat50;
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat50;
        let x_962 : vec2<f32> = u_xlat50;
        let x_964 : vec4<f32> = u_xlat5;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat6;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat27;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat5.y;
        u_xlat8.z = (x_981 * 0.08163200318813323975f);
        let x_985 : vec4<f32> = u_xlat5;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat6;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat9.y;
        u_xlat8.x = x_998;
        let x_1000 : vec2<f32> = u_xlat48;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat48;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat5.x;
        u_xlat6.y = x_1018;
        let x_1021 : f32 = u_xlat7.y;
        u_xlat6.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat48;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat48;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat5.y;
        u_xlat7.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat7.x;
        u_xlat9.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat4;
        let x_1080 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat9.y;
        u_xlat6.y = x_1096;
        let x_1099 : f32 = u_xlat7.z;
        u_xlat9.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat4;
        let x_1104 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat9.y;
        u_xlat6.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat7.w;
        u_xlat9.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat4;
        let x_1141 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat9.y;
        u_xlat6.w = x_1158;
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.x, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1174 : vec4<f32> = u_xlat4;
        let x_1177 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1187 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1194 : f32 = u_xlat6.x;
        u_xlat7.x = x_1194;
        let x_1196 : vec4<f32> = u_xlat4;
        let x_1199 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x) * x_1210);
        let x_1213 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1215);
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1218.z, x_1218.z, x_1218.z, x_1218.z) * x_1220);
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1222.w, x_1222.w, x_1222.w, x_1222.w) * x_1224);
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec13;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat66 = x_1239;
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec14;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat1.x = x_1253;
        let x_1256 : f32 = u_xlat1.x;
        let x_1258 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1256 * x_1258);
        let x_1262 : f32 = u_xlat15.x;
        let x_1263 : f32 = u_xlat66;
        let x_1266 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1262 * x_1263) + x_1266);
        let x_1269 : vec2<f32> = u_xlat48;
        let x_1271 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec15;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
        u_xlat1.x = x_1280;
        let x_1283 : f32 = u_xlat15.z;
        let x_1285 : f32 = u_xlat1.x;
        let x_1287 : f32 = u_xlat66;
        u_xlat66 = ((x_1283 * x_1285) + x_1287);
        let x_1290 : vec4<f32> = u_xlat13;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec16;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat1.x = x_1302;
        let x_1305 : f32 = u_xlat15.w;
        let x_1307 : f32 = u_xlat1.x;
        let x_1309 : f32 = u_xlat66;
        u_xlat66 = ((x_1305 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec17;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1322.xy, x_1322.z);
        u_xlat1.x = x_1324;
        let x_1327 : f32 = u_xlat16.x;
        let x_1329 : f32 = u_xlat1.x;
        let x_1331 : f32 = u_xlat66;
        u_xlat66 = ((x_1327 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.z, x_1334.w);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec18;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat1.x = x_1346;
        let x_1349 : f32 = u_xlat16.y;
        let x_1351 : f32 = u_xlat1.x;
        let x_1353 : f32 = u_xlat66;
        u_xlat66 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat12;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec19;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat1.x = x_1368;
        let x_1371 : f32 = u_xlat16.z;
        let x_1373 : f32 = u_xlat1.x;
        let x_1375 : f32 = u_xlat66;
        u_xlat66 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat13;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.z, x_1378.w);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec20;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat1.x = x_1390;
        let x_1393 : f32 = u_xlat16.w;
        let x_1395 : f32 = u_xlat1.x;
        let x_1397 : f32 = u_xlat66;
        u_xlat66 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat14;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
        let x_1403 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec21;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat1.x = x_1412;
        let x_1415 : f32 = u_xlat17.x;
        let x_1417 : f32 = u_xlat1.x;
        let x_1419 : f32 = u_xlat66;
        u_xlat66 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat14;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.z, x_1422.w);
        let x_1425 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec22;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat1.x = x_1434;
        let x_1437 : f32 = u_xlat17.y;
        let x_1439 : f32 = u_xlat1.x;
        let x_1441 : f32 = u_xlat66;
        u_xlat66 = ((x_1437 * x_1439) + x_1441);
        let x_1444 : vec2<f32> = u_xlat28;
        let x_1446 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec23;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat1.x = x_1455;
        let x_1458 : f32 = u_xlat17.z;
        let x_1460 : f32 = u_xlat1.x;
        let x_1462 : f32 = u_xlat66;
        u_xlat66 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec2<f32> = u_xlat56;
        let x_1467 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec24;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat1.x = x_1476;
        let x_1479 : f32 = u_xlat17.w;
        let x_1481 : f32 = u_xlat1.x;
        let x_1483 : f32 = u_xlat66;
        u_xlat66 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec25;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat1.x = x_1498;
        let x_1501 : f32 = u_xlat5.x;
        let x_1503 : f32 = u_xlat1.x;
        let x_1505 : f32 = u_xlat66;
        u_xlat66 = ((x_1501 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.z, x_1508.w);
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec26;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat1.x = x_1520;
        let x_1523 : f32 = u_xlat5.y;
        let x_1525 : f32 = u_xlat1.x;
        let x_1527 : f32 = u_xlat66;
        u_xlat66 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec2<f32> = u_xlat51;
        let x_1532 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec27;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat1.x = x_1541;
        let x_1544 : f32 = u_xlat5.z;
        let x_1546 : f32 = u_xlat1.x;
        let x_1548 : f32 = u_xlat66;
        u_xlat66 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat4;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec28;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat1.x = x_1563;
        let x_1566 : f32 = u_xlat5.w;
        let x_1568 : f32 = u_xlat1.x;
        let x_1570 : f32 = u_xlat66;
        u_xlat22.x = ((x_1566 * x_1568) + x_1570);
      }
    }
  } else {
    let x_1575 : vec4<f32> = vs_TEXCOORD6;
    let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
    let x_1578 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
    let x_1585 : vec3<f32> = txVec29;
    let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
    u_xlat22.x = x_1587;
  }
  let x_1590 : f32 = x_327.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1590) + 1.0f);
  let x_1594 : f32 = u_xlat22.x;
  let x_1596 : f32 = x_327.x_MainLightShadowParams.x;
  let x_1598 : f32 = u_xlat66;
  u_xlat22.x = ((x_1594 * x_1596) + x_1598);
  let x_1602 : f32 = vs_TEXCOORD6.z;
  u_xlatb66 = (0.0f >= x_1602);
  let x_1606 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1606 >= 1.0f);
  let x_1608 : bool = u_xlatb66;
  let x_1609 : bool = u_xlatb1;
  u_xlatb66 = (x_1608 | x_1609);
  let x_1611 : bool = u_xlatb66;
  if (x_1611) {
    x_1612 = 1.0f;
  } else {
    let x_1617 : f32 = u_xlat22.x;
    x_1612 = x_1617;
  }
  let x_1618 : f32 = x_1612;
  u_xlat22.x = x_1618;
  let x_1621 : vec3<f32> = vs_TEXCOORD1;
  let x_1625 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1627 : vec3<f32> = (x_1621 + -(x_1625));
  let x_1628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1630 : vec4<f32> = u_xlat4;
  let x_1632 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(vec3<f32>(x_1630.x, x_1630.y, x_1630.z), vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
  let x_1635 : f32 = u_xlat66;
  let x_1637 : f32 = x_327.x_MainLightShadowParams.z;
  let x_1640 : f32 = x_327.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1635 * x_1637) + x_1640);
  let x_1644 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1644, 0.0f, 1.0f);
  let x_1648 : f32 = u_xlat22.x;
  u_xlat68 = (-(x_1648) + 1.0f);
  let x_1652 : f32 = u_xlat1.x;
  let x_1653 : f32 = u_xlat68;
  let x_1656 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1652 * x_1653) + x_1656);
  let x_1660 : f32 = u_xlat22.x;
  let x_1662 : f32 = x_186.unity_LightData.z;
  u_xlat22.x = (x_1660 * x_1662);
  let x_1665 : vec3<f32> = u_xlat22;
  let x_1669 : vec4<f32> = x_44.x_MainLightColor;
  let x_1671 : vec3<f32> = (vec3<f32>(x_1665.x, x_1665.x, x_1665.x) * vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
  let x_1672 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec4<f32> = u_xlat2;
  let x_1677 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22.x = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
  let x_1682 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1682, 0.0f, 1.0f);
  let x_1685 : vec3<f32> = u_xlat22;
  let x_1687 : vec4<f32> = u_xlat4;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1685.x, x_1685.x, x_1685.x) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : vec4<f32> = u_xlat1;
  let x_1694 : vec4<f32> = u_xlat4;
  let x_1696 : vec3<f32> = (vec3<f32>(x_1692.y, x_1692.z, x_1692.w) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  let x_1699 : vec4<f32> = u_xlat0;
  let x_1701 : vec4<f32> = u_xlat4;
  let x_1703 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.x, x_1699.x) * vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
  let x_1707 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1709 : f32 = x_186.unity_LightData.y;
  u_xlat22.x = min(x_1707, x_1709);
  let x_1715 : f32 = u_xlat22.x;
  u_xlatu22 = bitcast<u32>(i32(x_1715));
  let x_1718 : f32 = u_xlat66;
  let x_1721 : f32 = x_327.x_AdditionalShadowFadeParams.x;
  let x_1724 : f32 = x_327.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1718 * x_1721) + x_1724);
  let x_1726 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1726, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1738 : u32 = u_xlatu_loop_1;
    let x_1739 : u32 = u_xlatu22;
    if ((x_1738 < x_1739)) {
    } else {
      break;
    }
    let x_1742 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1742 >> 2u);
    let x_1746 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1746 & 3u));
    let x_1749 : u32 = u_xlatu68;
    let x_1752 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1749)];
    let x_1762 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1767 : vec4<u32> = indexable[x_1762];
    u_xlat68 = dot(x_1752, bitcast<vec4<f32>>(x_1767));
    let x_1771 : f32 = u_xlat68;
    u_xlati68 = i32(x_1771);
    let x_1773 : vec3<f32> = vs_TEXCOORD1;
    let x_1784 : i32 = u_xlati68;
    let x_1786 : vec4<f32> = x_1783.x_AdditionalLightsPosition[x_1784];
    let x_1789 : i32 = u_xlati68;
    let x_1791 : vec4<f32> = x_1783.x_AdditionalLightsPosition[x_1789];
    let x_1793 : vec3<f32> = ((-(x_1773) * vec3<f32>(x_1786.w, x_1786.w, x_1786.w)) + vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
    let x_1794 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
    let x_1797 : vec4<f32> = u_xlat6;
    let x_1799 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1797.x, x_1797.y, x_1797.z), vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
    let x_1802 : f32 = u_xlat69;
    u_xlat69 = max(x_1802, 0.00006103515625f);
    let x_1806 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1806);
    let x_1808 : f32 = u_xlat70;
    let x_1810 : vec4<f32> = u_xlat6;
    let x_1812 : vec3<f32> = (vec3<f32>(x_1808, x_1808, x_1808) * vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
    let x_1813 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
    let x_1815 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1815);
    let x_1817 : f32 = u_xlat69;
    let x_1818 : i32 = u_xlati68;
    let x_1820 : f32 = x_1783.x_AdditionalLightsAttenuation[x_1818].x;
    u_xlat69 = (x_1817 * x_1820);
    let x_1822 : f32 = u_xlat69;
    let x_1824 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1822) * x_1824) + 1.0f);
    let x_1827 : f32 = u_xlat69;
    u_xlat69 = max(x_1827, 0.0f);
    let x_1829 : f32 = u_xlat69;
    let x_1830 : f32 = u_xlat69;
    u_xlat69 = (x_1829 * x_1830);
    let x_1832 : f32 = u_xlat69;
    let x_1833 : f32 = u_xlat70;
    u_xlat69 = (x_1832 * x_1833);
    let x_1835 : i32 = u_xlati68;
    let x_1837 : vec4<f32> = x_1783.x_AdditionalLightsSpotDir[x_1835];
    let x_1839 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1837.x, x_1837.y, x_1837.z), vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : f32 = u_xlat70;
    let x_1843 : i32 = u_xlati68;
    let x_1845 : f32 = x_1783.x_AdditionalLightsAttenuation[x_1843].z;
    let x_1847 : i32 = u_xlati68;
    let x_1849 : f32 = x_1783.x_AdditionalLightsAttenuation[x_1847].w;
    u_xlat70 = ((x_1842 * x_1845) + x_1849);
    let x_1851 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1851, 0.0f, 1.0f);
    let x_1853 : f32 = u_xlat70;
    let x_1854 : f32 = u_xlat70;
    u_xlat70 = (x_1853 * x_1854);
    let x_1856 : f32 = u_xlat69;
    let x_1857 : f32 = u_xlat70;
    u_xlat69 = (x_1856 * x_1857);
    let x_1861 : i32 = u_xlati68;
    let x_1863 : f32 = x_327.x_AdditionalShadowParams[x_1861].w;
    u_xlati70 = i32(x_1863);
    let x_1866 : i32 = u_xlati70;
    u_xlatb71 = (x_1866 >= 0i);
    let x_1868 : bool = u_xlatb71;
    if (x_1868) {
      let x_1872 : i32 = u_xlati68;
      let x_1874 : f32 = x_327.x_AdditionalShadowParams[x_1872].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1874, x_1874, x_1874, x_1874))));
      let x_1879 : bool = u_xlatb71;
      if (x_1879) {
        let x_1884 : vec4<f32> = u_xlat6;
        let x_1887 : vec4<f32> = u_xlat6;
        let x_1890 : vec4<bool> = (abs(vec4<f32>(x_1884.z, x_1884.z, x_1884.y, x_1884.z)) >= abs(vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.x)));
        let x_1892 : vec3<bool> = vec3<bool>(x_1890.x, x_1890.y, x_1890.z);
        let x_1893 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
        let x_1896 : bool = u_xlatb7.y;
        let x_1898 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1896 & x_1898);
        let x_1900 : vec4<f32> = u_xlat6;
        let x_1903 : vec4<bool> = (-(vec4<f32>(x_1900.z, x_1900.y, x_1900.z, x_1900.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1904 : vec3<bool> = vec3<bool>(x_1903.x, x_1903.y, x_1903.w);
        let x_1905 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1904.x, x_1904.y, x_1905.z, x_1904.z);
        let x_1908 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1908);
        let x_1914 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1914);
        let x_1920 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1920);
        let x_1923 : bool = u_xlatb7.z;
        if (x_1923) {
          let x_1928 : f32 = u_xlat7.y;
          x_1924 = x_1928;
        } else {
          let x_1930 : f32 = u_xlat72;
          x_1924 = x_1930;
        }
        let x_1931 : f32 = x_1924;
        u_xlat72 = x_1931;
        let x_1933 : bool = u_xlatb71;
        if (x_1933) {
          let x_1938 : f32 = u_xlat7.x;
          x_1934 = x_1938;
        } else {
          let x_1940 : f32 = u_xlat72;
          x_1934 = x_1940;
        }
        let x_1941 : f32 = x_1934;
        u_xlat71 = x_1941;
        let x_1942 : i32 = u_xlati68;
        let x_1944 : f32 = x_327.x_AdditionalShadowParams[x_1942].w;
        u_xlat72 = trunc(x_1944);
        let x_1946 : f32 = u_xlat71;
        let x_1947 : f32 = u_xlat72;
        u_xlat71 = (x_1946 + x_1947);
        let x_1949 : f32 = u_xlat71;
        u_xlati70 = i32(x_1949);
      }
      let x_1951 : i32 = u_xlati70;
      u_xlati70 = (x_1951 << bitcast<u32>(2i));
      let x_1953 : vec3<f32> = vs_TEXCOORD1;
      let x_1956 : i32 = u_xlati70;
      let x_1959 : i32 = u_xlati70;
      let x_1963 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_1956 + 1i) / 4i)][((x_1959 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1953.y, x_1953.y, x_1953.y, x_1953.y) * x_1963);
      let x_1965 : i32 = u_xlati70;
      let x_1967 : i32 = u_xlati70;
      let x_1970 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[(x_1965 / 4i)][(x_1967 % 4i)];
      let x_1971 : vec3<f32> = vs_TEXCOORD1;
      let x_1974 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1970 * vec4<f32>(x_1971.x, x_1971.x, x_1971.x, x_1971.x)) + x_1974);
      let x_1976 : i32 = u_xlati70;
      let x_1979 : i32 = u_xlati70;
      let x_1983 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_1976 + 2i) / 4i)][((x_1979 + 2i) % 4i)];
      let x_1984 : vec3<f32> = vs_TEXCOORD1;
      let x_1987 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1983 * vec4<f32>(x_1984.z, x_1984.z, x_1984.z, x_1984.z)) + x_1987);
      let x_1989 : vec4<f32> = u_xlat7;
      let x_1990 : i32 = u_xlati70;
      let x_1993 : i32 = u_xlati70;
      let x_1997 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_1990 + 3i) / 4i)][((x_1993 + 3i) % 4i)];
      u_xlat7 = (x_1989 + x_1997);
      let x_1999 : vec4<f32> = u_xlat7;
      let x_2001 : vec4<f32> = u_xlat7;
      let x_2003 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.y, x_1999.z) / vec3<f32>(x_2001.w, x_2001.w, x_2001.w));
      let x_2004 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
      let x_2007 : i32 = u_xlati68;
      let x_2009 : f32 = x_327.x_AdditionalShadowParams[x_2007].y;
      u_xlatb70 = (0.0f < x_2009);
      let x_2011 : bool = u_xlatb70;
      if (x_2011) {
        let x_2014 : i32 = u_xlati68;
        let x_2016 : f32 = x_327.x_AdditionalShadowParams[x_2014].y;
        u_xlatb70 = (1.0f == x_2016);
        let x_2018 : bool = u_xlatb70;
        if (x_2018) {
          let x_2021 : vec4<f32> = u_xlat7;
          let x_2025 : vec4<f32> = x_327.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2021.x, x_2021.y, x_2021.x, x_2021.y) + x_2025);
          let x_2028 : vec4<f32> = u_xlat8;
          let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
          let x_2031 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
          let x_2039 : vec3<f32> = txVec30;
          let x_2041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2039.xy, x_2039.z);
          u_xlat9.x = x_2041;
          let x_2044 : vec4<f32> = u_xlat8;
          let x_2045 : vec2<f32> = vec2<f32>(x_2044.z, x_2044.w);
          let x_2047 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
          let x_2054 : vec3<f32> = txVec31;
          let x_2056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
          u_xlat9.y = x_2056;
          let x_2058 : vec4<f32> = u_xlat7;
          let x_2062 : vec4<f32> = x_327.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2058.x, x_2058.y, x_2058.x, x_2058.y) + x_2062);
          let x_2065 : vec4<f32> = u_xlat8;
          let x_2066 : vec2<f32> = vec2<f32>(x_2065.x, x_2065.y);
          let x_2068 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2066.x, x_2066.y, x_2068);
          let x_2075 : vec3<f32> = txVec32;
          let x_2077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2075.xy, x_2075.z);
          u_xlat9.z = x_2077;
          let x_2080 : vec4<f32> = u_xlat8;
          let x_2081 : vec2<f32> = vec2<f32>(x_2080.z, x_2080.w);
          let x_2083 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2081.x, x_2081.y, x_2083);
          let x_2090 : vec3<f32> = txVec33;
          let x_2092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2090.xy, x_2090.z);
          u_xlat9.w = x_2092;
          let x_2094 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2094, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2097 : i32 = u_xlati68;
          let x_2099 : f32 = x_327.x_AdditionalShadowParams[x_2097].y;
          u_xlatb71 = (2.0f == x_2099);
          let x_2101 : bool = u_xlatb71;
          if (x_2101) {
            let x_2104 : vec4<f32> = u_xlat7;
            let x_2108 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2111 : vec2<f32> = ((vec2<f32>(x_2104.x, x_2104.y) * vec2<f32>(x_2108.z, x_2108.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2112 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
            let x_2114 : vec4<f32> = u_xlat8;
            let x_2116 : vec2<f32> = floor(vec2<f32>(x_2114.x, x_2114.y));
            let x_2117 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
            let x_2120 : vec4<f32> = u_xlat7;
            let x_2123 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2126 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2120.x, x_2120.y) * vec2<f32>(x_2123.z, x_2123.w)) + -(vec2<f32>(x_2126.x, x_2126.y)));
            let x_2130 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2130.x, x_2130.x, x_2130.y, x_2130.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2133 : vec4<f32> = u_xlat9;
            let x_2135 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2133.x, x_2133.x, x_2133.z, x_2133.z) * vec4<f32>(x_2135.x, x_2135.x, x_2135.z, x_2135.z));
            let x_2138 : vec4<f32> = u_xlat10;
            let x_2140 : vec2<f32> = (vec2<f32>(x_2138.y, x_2138.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2141 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2140.x, x_2141.y, x_2140.y, x_2141.w);
            let x_2143 : vec4<f32> = u_xlat10;
            let x_2146 : vec2<f32> = u_xlat52;
            let x_2148 : vec2<f32> = ((vec2<f32>(x_2143.x, x_2143.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2146));
            let x_2149 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
            let x_2152 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2152) + vec2<f32>(1.0f, 1.0f));
            let x_2155 : vec2<f32> = u_xlat52;
            let x_2156 : vec2<f32> = min(x_2155, vec2<f32>(0.0f, 0.0f));
            let x_2157 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2156.x, x_2156.y, x_2157.z, x_2157.w);
            let x_2159 : vec4<f32> = u_xlat11;
            let x_2162 : vec4<f32> = u_xlat11;
            let x_2165 : vec2<f32> = u_xlat54;
            let x_2166 : vec2<f32> = ((-(vec2<f32>(x_2159.x, x_2159.y)) * vec2<f32>(x_2162.x, x_2162.y)) + x_2165);
            let x_2167 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2166.x, x_2166.y, x_2167.z, x_2167.w);
            let x_2169 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2169, vec2<f32>(0.0f, 0.0f));
            let x_2171 : vec2<f32> = u_xlat52;
            let x_2173 : vec2<f32> = u_xlat52;
            let x_2175 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2171) * x_2173) + vec2<f32>(x_2175.y, x_2175.w));
            let x_2178 : vec4<f32> = u_xlat11;
            let x_2180 : vec2<f32> = (vec2<f32>(x_2178.x, x_2178.y) + vec2<f32>(1.0f, 1.0f));
            let x_2181 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
            let x_2183 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2183 + vec2<f32>(1.0f, 1.0f));
            let x_2185 : vec4<f32> = u_xlat10;
            let x_2187 : vec2<f32> = (vec2<f32>(x_2185.x, x_2185.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2188 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2187.x, x_2187.y, x_2188.z, x_2188.w);
            let x_2190 : vec2<f32> = u_xlat54;
            let x_2191 : vec2<f32> = (x_2190 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2192 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
            let x_2194 : vec4<f32> = u_xlat11;
            let x_2196 : vec2<f32> = (vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2197 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
            let x_2199 : vec2<f32> = u_xlat52;
            let x_2200 : vec2<f32> = (x_2199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2201 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
            let x_2203 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2203.y, x_2203.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2207 : f32 = u_xlat11.x;
            u_xlat12.z = x_2207;
            let x_2210 : f32 = u_xlat52.x;
            u_xlat12.w = x_2210;
            let x_2213 : f32 = u_xlat13.x;
            u_xlat10.z = x_2213;
            let x_2216 : f32 = u_xlat9.x;
            u_xlat10.w = x_2216;
            let x_2218 : vec4<f32> = u_xlat10;
            let x_2220 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2218.z, x_2218.w, x_2218.x, x_2218.z) + vec4<f32>(x_2220.z, x_2220.w, x_2220.x, x_2220.z));
            let x_2224 : f32 = u_xlat12.y;
            u_xlat11.z = x_2224;
            let x_2227 : f32 = u_xlat52.y;
            u_xlat11.w = x_2227;
            let x_2230 : f32 = u_xlat10.y;
            u_xlat13.z = x_2230;
            let x_2233 : f32 = u_xlat9.z;
            u_xlat13.w = x_2233;
            let x_2235 : vec4<f32> = u_xlat11;
            let x_2237 : vec4<f32> = u_xlat13;
            let x_2239 : vec3<f32> = (vec3<f32>(x_2235.z, x_2235.y, x_2235.w) + vec3<f32>(x_2237.z, x_2237.y, x_2237.w));
            let x_2240 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat10;
            let x_2244 : vec4<f32> = u_xlat14;
            let x_2246 : vec3<f32> = (vec3<f32>(x_2242.x, x_2242.z, x_2242.w) / vec3<f32>(x_2244.z, x_2244.w, x_2244.y));
            let x_2247 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
            let x_2249 : vec4<f32> = u_xlat10;
            let x_2251 : vec3<f32> = (vec3<f32>(x_2249.x, x_2249.y, x_2249.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2252 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
            let x_2254 : vec4<f32> = u_xlat13;
            let x_2256 : vec4<f32> = u_xlat9;
            let x_2258 : vec3<f32> = (vec3<f32>(x_2254.z, x_2254.y, x_2254.w) / vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
            let x_2259 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
            let x_2261 : vec4<f32> = u_xlat11;
            let x_2263 : vec3<f32> = (vec3<f32>(x_2261.x, x_2261.y, x_2261.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2264 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
            let x_2266 : vec4<f32> = u_xlat10;
            let x_2269 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2271 : vec3<f32> = (vec3<f32>(x_2266.y, x_2266.x, x_2266.z) * vec3<f32>(x_2269.x, x_2269.x, x_2269.x));
            let x_2272 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
            let x_2274 : vec4<f32> = u_xlat11;
            let x_2277 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2279 : vec3<f32> = (vec3<f32>(x_2274.x, x_2274.y, x_2274.z) * vec3<f32>(x_2277.y, x_2277.y, x_2277.y));
            let x_2280 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
            let x_2283 : f32 = u_xlat11.x;
            u_xlat10.w = x_2283;
            let x_2285 : vec4<f32> = u_xlat8;
            let x_2288 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2291 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2285.x, x_2285.y, x_2285.x, x_2285.y) * vec4<f32>(x_2288.x, x_2288.y, x_2288.x, x_2288.y)) + vec4<f32>(x_2291.y, x_2291.w, x_2291.x, x_2291.w));
            let x_2294 : vec4<f32> = u_xlat8;
            let x_2297 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2300 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2294.x, x_2294.y) * vec2<f32>(x_2297.x, x_2297.y)) + vec2<f32>(x_2300.z, x_2300.w));
            let x_2304 : f32 = u_xlat10.y;
            u_xlat11.w = x_2304;
            let x_2306 : vec4<f32> = u_xlat11;
            let x_2307 : vec2<f32> = vec2<f32>(x_2306.y, x_2306.z);
            let x_2308 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2308.x, x_2307.x, x_2308.z, x_2307.y);
            let x_2310 : vec4<f32> = u_xlat8;
            let x_2313 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2316 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2310.x, x_2310.y, x_2310.x, x_2310.y) * vec4<f32>(x_2313.x, x_2313.y, x_2313.x, x_2313.y)) + vec4<f32>(x_2316.x, x_2316.y, x_2316.z, x_2316.y));
            let x_2319 : vec4<f32> = u_xlat8;
            let x_2322 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2325 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2319.x, x_2319.y, x_2319.x, x_2319.y) * vec4<f32>(x_2322.x, x_2322.y, x_2322.x, x_2322.y)) + vec4<f32>(x_2325.w, x_2325.y, x_2325.w, x_2325.z));
            let x_2328 : vec4<f32> = u_xlat8;
            let x_2331 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2334 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y) * vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y)) + vec4<f32>(x_2334.x, x_2334.w, x_2334.z, x_2334.w));
            let x_2337 : vec4<f32> = u_xlat9;
            let x_2339 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2337.x, x_2337.x, x_2337.x, x_2337.y) * vec4<f32>(x_2339.z, x_2339.w, x_2339.y, x_2339.z));
            let x_2342 : vec4<f32> = u_xlat9;
            let x_2344 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2342.y, x_2342.y, x_2342.z, x_2342.z) * x_2344);
            let x_2347 : f32 = u_xlat9.z;
            let x_2349 : f32 = u_xlat14.y;
            u_xlat71 = (x_2347 * x_2349);
            let x_2352 : vec4<f32> = u_xlat12;
            let x_2353 : vec2<f32> = vec2<f32>(x_2352.x, x_2352.y);
            let x_2355 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
            let x_2362 : vec3<f32> = txVec34;
            let x_2364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
            u_xlat72 = x_2364;
            let x_2366 : vec4<f32> = u_xlat12;
            let x_2367 : vec2<f32> = vec2<f32>(x_2366.z, x_2366.w);
            let x_2369 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
            let x_2377 : vec3<f32> = txVec35;
            let x_2379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2377.xy, x_2377.z);
            u_xlat73 = x_2379;
            let x_2380 : f32 = u_xlat73;
            let x_2382 : f32 = u_xlat15.y;
            u_xlat73 = (x_2380 * x_2382);
            let x_2385 : f32 = u_xlat15.x;
            let x_2386 : f32 = u_xlat72;
            let x_2388 : f32 = u_xlat73;
            u_xlat72 = ((x_2385 * x_2386) + x_2388);
            let x_2391 : vec2<f32> = u_xlat52;
            let x_2393 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
            let x_2400 : vec3<f32> = txVec36;
            let x_2402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2400.xy, x_2400.z);
            u_xlat73 = x_2402;
            let x_2404 : f32 = u_xlat15.z;
            let x_2405 : f32 = u_xlat73;
            let x_2407 : f32 = u_xlat72;
            u_xlat72 = ((x_2404 * x_2405) + x_2407);
            let x_2410 : vec4<f32> = u_xlat11;
            let x_2411 : vec2<f32> = vec2<f32>(x_2410.x, x_2410.y);
            let x_2413 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2411.x, x_2411.y, x_2413);
            let x_2420 : vec3<f32> = txVec37;
            let x_2422 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2420.xy, x_2420.z);
            u_xlat73 = x_2422;
            let x_2424 : f32 = u_xlat15.w;
            let x_2425 : f32 = u_xlat73;
            let x_2427 : f32 = u_xlat72;
            u_xlat72 = ((x_2424 * x_2425) + x_2427);
            let x_2430 : vec4<f32> = u_xlat13;
            let x_2431 : vec2<f32> = vec2<f32>(x_2430.x, x_2430.y);
            let x_2433 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2431.x, x_2431.y, x_2433);
            let x_2440 : vec3<f32> = txVec38;
            let x_2442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2440.xy, x_2440.z);
            u_xlat73 = x_2442;
            let x_2444 : f32 = u_xlat16.x;
            let x_2445 : f32 = u_xlat73;
            let x_2447 : f32 = u_xlat72;
            u_xlat72 = ((x_2444 * x_2445) + x_2447);
            let x_2450 : vec4<f32> = u_xlat13;
            let x_2451 : vec2<f32> = vec2<f32>(x_2450.z, x_2450.w);
            let x_2453 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2451.x, x_2451.y, x_2453);
            let x_2460 : vec3<f32> = txVec39;
            let x_2462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2460.xy, x_2460.z);
            u_xlat73 = x_2462;
            let x_2464 : f32 = u_xlat16.y;
            let x_2465 : f32 = u_xlat73;
            let x_2467 : f32 = u_xlat72;
            u_xlat72 = ((x_2464 * x_2465) + x_2467);
            let x_2470 : vec4<f32> = u_xlat11;
            let x_2471 : vec2<f32> = vec2<f32>(x_2470.z, x_2470.w);
            let x_2473 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2471.x, x_2471.y, x_2473);
            let x_2480 : vec3<f32> = txVec40;
            let x_2482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2480.xy, x_2480.z);
            u_xlat73 = x_2482;
            let x_2484 : f32 = u_xlat16.z;
            let x_2485 : f32 = u_xlat73;
            let x_2487 : f32 = u_xlat72;
            u_xlat72 = ((x_2484 * x_2485) + x_2487);
            let x_2490 : vec4<f32> = u_xlat10;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.x, x_2490.y);
            let x_2493 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
            let x_2500 : vec3<f32> = txVec41;
            let x_2502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
            u_xlat73 = x_2502;
            let x_2504 : f32 = u_xlat16.w;
            let x_2505 : f32 = u_xlat73;
            let x_2507 : f32 = u_xlat72;
            u_xlat72 = ((x_2504 * x_2505) + x_2507);
            let x_2510 : vec4<f32> = u_xlat10;
            let x_2511 : vec2<f32> = vec2<f32>(x_2510.z, x_2510.w);
            let x_2513 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
            let x_2520 : vec3<f32> = txVec42;
            let x_2522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
            u_xlat73 = x_2522;
            let x_2523 : f32 = u_xlat71;
            let x_2524 : f32 = u_xlat73;
            let x_2526 : f32 = u_xlat72;
            u_xlat70 = ((x_2523 * x_2524) + x_2526);
          } else {
            let x_2529 : vec4<f32> = u_xlat7;
            let x_2532 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2535 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2532.z, x_2532.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2536 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2536.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat8;
            let x_2540 : vec2<f32> = floor(vec2<f32>(x_2538.x, x_2538.y));
            let x_2541 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2540.x, x_2540.y, x_2541.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat7;
            let x_2546 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2549 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2543.x, x_2543.y) * vec2<f32>(x_2546.z, x_2546.w)) + -(vec2<f32>(x_2549.x, x_2549.y)));
            let x_2553 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2553.x, x_2553.x, x_2553.y, x_2553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2556 : vec4<f32> = u_xlat9;
            let x_2558 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2556.x, x_2556.x, x_2556.z, x_2556.z) * vec4<f32>(x_2558.x, x_2558.x, x_2558.z, x_2558.z));
            let x_2561 : vec4<f32> = u_xlat10;
            let x_2563 : vec2<f32> = (vec2<f32>(x_2561.y, x_2561.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2564 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2564.x, x_2563.x, x_2564.z, x_2563.y);
            let x_2566 : vec4<f32> = u_xlat10;
            let x_2569 : vec2<f32> = u_xlat52;
            let x_2571 : vec2<f32> = ((vec2<f32>(x_2566.x, x_2566.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2569));
            let x_2572 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2571.x, x_2572.y, x_2571.y, x_2572.w);
            let x_2574 : vec2<f32> = u_xlat52;
            let x_2576 : vec2<f32> = (-(x_2574) + vec2<f32>(1.0f, 1.0f));
            let x_2577 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2579, vec2<f32>(0.0f, 0.0f));
            let x_2581 : vec2<f32> = u_xlat54;
            let x_2583 : vec2<f32> = u_xlat54;
            let x_2585 : vec4<f32> = u_xlat10;
            let x_2587 : vec2<f32> = ((-(x_2581) * x_2583) + vec2<f32>(x_2585.x, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2590 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2590, vec2<f32>(0.0f, 0.0f));
            let x_2593 : vec2<f32> = u_xlat54;
            let x_2595 : vec2<f32> = u_xlat54;
            let x_2597 : vec4<f32> = u_xlat9;
            let x_2599 : vec2<f32> = ((-(x_2593) * x_2595) + vec2<f32>(x_2597.y, x_2597.w));
            let x_2600 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2599.x, x_2600.y, x_2599.y);
            let x_2602 : vec4<f32> = u_xlat10;
            let x_2604 : vec2<f32> = (vec2<f32>(x_2602.x, x_2602.y) + vec2<f32>(2.0f, 2.0f));
            let x_2605 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2604.x, x_2604.y, x_2605.z, x_2605.w);
            let x_2607 : vec3<f32> = u_xlat31;
            let x_2609 : vec2<f32> = (vec2<f32>(x_2607.x, x_2607.z) + vec2<f32>(2.0f, 2.0f));
            let x_2610 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2610.x, x_2609.x, x_2610.z, x_2609.y);
            let x_2613 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2613 * 0.08163200318813323975f);
            let x_2616 : vec4<f32> = u_xlat9;
            let x_2618 : vec3<f32> = (vec3<f32>(x_2616.z, x_2616.x, x_2616.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat10;
            let x_2623 : vec2<f32> = (vec2<f32>(x_2621.x, x_2621.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2624 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
            let x_2627 : f32 = u_xlat13.y;
            u_xlat12.x = x_2627;
            let x_2629 : vec2<f32> = u_xlat52;
            let x_2632 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2633 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2633.x, x_2632.x, x_2633.z, x_2632.y);
            let x_2635 : vec2<f32> = u_xlat52;
            let x_2638 : vec2<f32> = ((vec2<f32>(x_2635.x, x_2635.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2639 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2638.x, x_2639.y, x_2638.y, x_2639.w);
            let x_2642 : f32 = u_xlat9.x;
            u_xlat10.y = x_2642;
            let x_2645 : f32 = u_xlat11.y;
            u_xlat10.w = x_2645;
            let x_2647 : vec4<f32> = u_xlat10;
            let x_2648 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2647 + x_2648);
            let x_2650 : vec2<f32> = u_xlat52;
            let x_2653 : vec2<f32> = ((vec2<f32>(x_2650.y, x_2650.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2654 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2654.x, x_2653.x, x_2654.z, x_2653.y);
            let x_2656 : vec2<f32> = u_xlat52;
            let x_2659 : vec2<f32> = ((vec2<f32>(x_2656.y, x_2656.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2660 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2659.x, x_2660.y, x_2659.y, x_2660.w);
            let x_2663 : f32 = u_xlat9.y;
            u_xlat11.y = x_2663;
            let x_2665 : vec4<f32> = u_xlat11;
            let x_2666 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2665 + x_2666);
            let x_2668 : vec4<f32> = u_xlat10;
            let x_2669 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2668 / x_2669);
            let x_2671 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2671 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2673 : vec4<f32> = u_xlat11;
            let x_2674 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2673 / x_2674);
            let x_2676 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2676 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2678 : vec4<f32> = u_xlat10;
            let x_2681 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2678.w, x_2678.x, x_2678.y, x_2678.z) * vec4<f32>(x_2681.x, x_2681.x, x_2681.x, x_2681.x));
            let x_2684 : vec4<f32> = u_xlat11;
            let x_2687 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2684.x, x_2684.w, x_2684.y, x_2684.z) * vec4<f32>(x_2687.y, x_2687.y, x_2687.y, x_2687.y));
            let x_2690 : vec4<f32> = u_xlat10;
            let x_2691 : vec3<f32> = vec3<f32>(x_2690.y, x_2690.z, x_2690.w);
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2691.x, x_2692.y, x_2691.y, x_2691.z);
            let x_2695 : f32 = u_xlat11.x;
            u_xlat13.y = x_2695;
            let x_2697 : vec4<f32> = u_xlat8;
            let x_2700 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2703 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2697.x, x_2697.y, x_2697.x, x_2697.y) * vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y)) + vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2703.y));
            let x_2706 : vec4<f32> = u_xlat8;
            let x_2709 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2712 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2706.x, x_2706.y) * vec2<f32>(x_2709.x, x_2709.y)) + vec2<f32>(x_2712.w, x_2712.y));
            let x_2716 : f32 = u_xlat13.y;
            u_xlat10.y = x_2716;
            let x_2719 : f32 = u_xlat11.z;
            u_xlat13.y = x_2719;
            let x_2721 : vec4<f32> = u_xlat8;
            let x_2724 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat8;
            let x_2733 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat13;
            let x_2738 : vec2<f32> = ((vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(x_2736.w, x_2736.y));
            let x_2739 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat13.y;
            u_xlat10.z = x_2742;
            let x_2744 : vec4<f32> = u_xlat8;
            let x_2747 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2750 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y) * vec4<f32>(x_2747.x, x_2747.y, x_2747.x, x_2747.y)) + vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.z));
            let x_2754 : f32 = u_xlat11.w;
            u_xlat13.y = x_2754;
            let x_2757 : vec4<f32> = u_xlat8;
            let x_2760 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2763 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y) * vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y)) + vec4<f32>(x_2763.x, x_2763.y, x_2763.z, x_2763.y));
            let x_2767 : vec4<f32> = u_xlat8;
            let x_2770 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2773 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2767.x, x_2767.y) * vec2<f32>(x_2770.x, x_2770.y)) + vec2<f32>(x_2773.w, x_2773.y));
            let x_2777 : f32 = u_xlat13.y;
            u_xlat10.w = x_2777;
            let x_2780 : vec4<f32> = u_xlat8;
            let x_2783 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2780.x, x_2780.y) * vec2<f32>(x_2783.x, x_2783.y)) + vec2<f32>(x_2786.x, x_2786.w));
            let x_2789 : vec4<f32> = u_xlat13;
            let x_2790 : vec3<f32> = vec3<f32>(x_2789.x, x_2789.z, x_2789.w);
            let x_2791 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2790.x, x_2791.y, x_2790.y, x_2790.z);
            let x_2793 : vec4<f32> = u_xlat8;
            let x_2796 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2799 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y) * vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y)) + vec4<f32>(x_2799.x, x_2799.y, x_2799.z, x_2799.y));
            let x_2803 : vec4<f32> = u_xlat8;
            let x_2806 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2809.w, x_2809.y));
            let x_2813 : f32 = u_xlat10.x;
            u_xlat11.x = x_2813;
            let x_2815 : vec4<f32> = u_xlat8;
            let x_2818 : vec4<f32> = x_327.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat11;
            let x_2823 : vec2<f32> = ((vec2<f32>(x_2815.x, x_2815.y) * vec2<f32>(x_2818.x, x_2818.y)) + vec2<f32>(x_2821.x, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2827 : vec4<f32> = u_xlat9;
            let x_2829 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2827.x, x_2827.x, x_2827.x, x_2827.x) * x_2829);
            let x_2832 : vec4<f32> = u_xlat9;
            let x_2834 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2832.y, x_2832.y, x_2832.y, x_2832.y) * x_2834);
            let x_2837 : vec4<f32> = u_xlat9;
            let x_2839 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2837.z, x_2837.z, x_2837.z, x_2837.z) * x_2839);
            let x_2841 : vec4<f32> = u_xlat9;
            let x_2843 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2841.w, x_2841.w, x_2841.w, x_2841.w) * x_2843);
            let x_2846 : vec4<f32> = u_xlat14;
            let x_2847 : vec2<f32> = vec2<f32>(x_2846.x, x_2846.y);
            let x_2849 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2847.x, x_2847.y, x_2849);
            let x_2856 : vec3<f32> = txVec43;
            let x_2858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2856.xy, x_2856.z);
            u_xlat71 = x_2858;
            let x_2860 : vec4<f32> = u_xlat14;
            let x_2861 : vec2<f32> = vec2<f32>(x_2860.z, x_2860.w);
            let x_2863 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
            let x_2870 : vec3<f32> = txVec44;
            let x_2872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2870.xy, x_2870.z);
            u_xlat72 = x_2872;
            let x_2873 : f32 = u_xlat72;
            let x_2875 : f32 = u_xlat19.y;
            u_xlat72 = (x_2873 * x_2875);
            let x_2878 : f32 = u_xlat19.x;
            let x_2879 : f32 = u_xlat71;
            let x_2881 : f32 = u_xlat72;
            u_xlat71 = ((x_2878 * x_2879) + x_2881);
            let x_2884 : vec2<f32> = u_xlat52;
            let x_2886 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec45;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat72 = x_2895;
            let x_2897 : f32 = u_xlat19.z;
            let x_2898 : f32 = u_xlat72;
            let x_2900 : f32 = u_xlat71;
            u_xlat71 = ((x_2897 * x_2898) + x_2900);
            let x_2903 : vec4<f32> = u_xlat17;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.x, x_2903.y);
            let x_2906 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec46;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat72 = x_2915;
            let x_2917 : f32 = u_xlat19.w;
            let x_2918 : f32 = u_xlat72;
            let x_2920 : f32 = u_xlat71;
            u_xlat71 = ((x_2917 * x_2918) + x_2920);
            let x_2923 : vec4<f32> = u_xlat15;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.x, x_2923.y);
            let x_2926 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2933 : vec3<f32> = txVec47;
            let x_2935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2933.xy, x_2933.z);
            u_xlat72 = x_2935;
            let x_2937 : f32 = u_xlat20.x;
            let x_2938 : f32 = u_xlat72;
            let x_2940 : f32 = u_xlat71;
            u_xlat71 = ((x_2937 * x_2938) + x_2940);
            let x_2943 : vec4<f32> = u_xlat15;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.z, x_2943.w);
            let x_2946 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec48;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat72 = x_2955;
            let x_2957 : f32 = u_xlat20.y;
            let x_2958 : f32 = u_xlat72;
            let x_2960 : f32 = u_xlat71;
            u_xlat71 = ((x_2957 * x_2958) + x_2960);
            let x_2963 : vec4<f32> = u_xlat16;
            let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
            let x_2966 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec49;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat72 = x_2975;
            let x_2977 : f32 = u_xlat20.z;
            let x_2978 : f32 = u_xlat72;
            let x_2980 : f32 = u_xlat71;
            u_xlat71 = ((x_2977 * x_2978) + x_2980);
            let x_2983 : vec4<f32> = u_xlat17;
            let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
            let x_2986 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec50;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat72 = x_2995;
            let x_2997 : f32 = u_xlat20.w;
            let x_2998 : f32 = u_xlat72;
            let x_3000 : f32 = u_xlat71;
            u_xlat71 = ((x_2997 * x_2998) + x_3000);
            let x_3003 : vec4<f32> = u_xlat18;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
            let x_3006 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec51;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat72 = x_3015;
            let x_3017 : f32 = u_xlat21.x;
            let x_3018 : f32 = u_xlat72;
            let x_3020 : f32 = u_xlat71;
            u_xlat71 = ((x_3017 * x_3018) + x_3020);
            let x_3023 : vec4<f32> = u_xlat18;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.z, x_3023.w);
            let x_3026 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec52;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat72 = x_3035;
            let x_3037 : f32 = u_xlat21.y;
            let x_3038 : f32 = u_xlat72;
            let x_3040 : f32 = u_xlat71;
            u_xlat71 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec2<f32> = u_xlat32;
            let x_3045 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec53;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat72 = x_3054;
            let x_3056 : f32 = u_xlat21.z;
            let x_3057 : f32 = u_xlat72;
            let x_3059 : f32 = u_xlat71;
            u_xlat71 = ((x_3056 * x_3057) + x_3059);
            let x_3062 : vec2<f32> = u_xlat60;
            let x_3064 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
            let x_3071 : vec3<f32> = txVec54;
            let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
            u_xlat72 = x_3073;
            let x_3075 : f32 = u_xlat21.w;
            let x_3076 : f32 = u_xlat72;
            let x_3078 : f32 = u_xlat71;
            u_xlat71 = ((x_3075 * x_3076) + x_3078);
            let x_3081 : vec4<f32> = u_xlat13;
            let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
            let x_3084 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec55;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat72 = x_3093;
            let x_3095 : f32 = u_xlat9.x;
            let x_3096 : f32 = u_xlat72;
            let x_3098 : f32 = u_xlat71;
            u_xlat71 = ((x_3095 * x_3096) + x_3098);
            let x_3101 : vec4<f32> = u_xlat13;
            let x_3102 : vec2<f32> = vec2<f32>(x_3101.z, x_3101.w);
            let x_3104 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
            let x_3111 : vec3<f32> = txVec56;
            let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
            u_xlat72 = x_3113;
            let x_3115 : f32 = u_xlat9.y;
            let x_3116 : f32 = u_xlat72;
            let x_3118 : f32 = u_xlat71;
            u_xlat71 = ((x_3115 * x_3116) + x_3118);
            let x_3121 : vec2<f32> = u_xlat55;
            let x_3123 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
            let x_3130 : vec3<f32> = txVec57;
            let x_3132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
            u_xlat72 = x_3132;
            let x_3134 : f32 = u_xlat9.z;
            let x_3135 : f32 = u_xlat72;
            let x_3137 : f32 = u_xlat71;
            u_xlat71 = ((x_3134 * x_3135) + x_3137);
            let x_3140 : vec4<f32> = u_xlat8;
            let x_3141 : vec2<f32> = vec2<f32>(x_3140.x, x_3140.y);
            let x_3143 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
            let x_3150 : vec3<f32> = txVec58;
            let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
            u_xlat72 = x_3152;
            let x_3154 : f32 = u_xlat9.w;
            let x_3155 : f32 = u_xlat72;
            let x_3157 : f32 = u_xlat71;
            u_xlat70 = ((x_3154 * x_3155) + x_3157);
          }
        }
      } else {
        let x_3161 : vec4<f32> = u_xlat7;
        let x_3162 : vec2<f32> = vec2<f32>(x_3161.x, x_3161.y);
        let x_3164 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
        let x_3171 : vec3<f32> = txVec59;
        let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
        u_xlat70 = x_3173;
      }
      let x_3174 : i32 = u_xlati68;
      let x_3176 : f32 = x_327.x_AdditionalShadowParams[x_3174].x;
      u_xlat71 = (1.0f + -(x_3176));
      let x_3179 : f32 = u_xlat70;
      let x_3180 : i32 = u_xlati68;
      let x_3182 : f32 = x_327.x_AdditionalShadowParams[x_3180].x;
      let x_3184 : f32 = u_xlat71;
      u_xlat70 = ((x_3179 * x_3182) + x_3184);
      let x_3187 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3187);
      let x_3191 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3191 >= 1.0f);
      let x_3193 : bool = u_xlatb71;
      let x_3194 : bool = u_xlatb72;
      u_xlatb71 = (x_3193 | x_3194);
      let x_3196 : bool = u_xlatb71;
      let x_3197 : f32 = u_xlat70;
      u_xlat70 = select(x_3197, 1.0f, x_3196);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3200 : f32 = u_xlat70;
    u_xlat71 = (-(x_3200) + 1.0f);
    let x_3203 : f32 = u_xlat66;
    let x_3204 : f32 = u_xlat71;
    let x_3206 : f32 = u_xlat70;
    u_xlat70 = ((x_3203 * x_3204) + x_3206);
    let x_3208 : f32 = u_xlat69;
    let x_3209 : f32 = u_xlat70;
    u_xlat69 = (x_3208 * x_3209);
    let x_3211 : f32 = u_xlat69;
    let x_3213 : i32 = u_xlati68;
    let x_3215 : vec4<f32> = x_1783.x_AdditionalLightsColor[x_3213];
    let x_3217 : vec3<f32> = (vec3<f32>(x_3211, x_3211, x_3211) * vec3<f32>(x_3215.x, x_3215.y, x_3215.z));
    let x_3218 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3218.w);
    let x_3220 : vec4<f32> = u_xlat2;
    let x_3222 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3220.x, x_3220.y, x_3220.z), vec3<f32>(x_3222.x, x_3222.y, x_3222.z));
    let x_3225 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3225, 0.0f, 1.0f);
    let x_3227 : f32 = u_xlat68;
    let x_3229 : vec4<f32> = u_xlat7;
    let x_3231 : vec3<f32> = (vec3<f32>(x_3227, x_3227, x_3227) * vec3<f32>(x_3229.x, x_3229.y, x_3229.z));
    let x_3232 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
    let x_3234 : vec4<f32> = u_xlat1;
    let x_3236 : vec4<f32> = u_xlat6;
    let x_3238 : vec3<f32> = (vec3<f32>(x_3234.y, x_3234.z, x_3234.w) * vec3<f32>(x_3236.x, x_3236.y, x_3236.z));
    let x_3239 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3238.x, x_3238.y, x_3238.z, x_3239.w);
    let x_3241 : vec4<f32> = u_xlat6;
    let x_3243 : vec4<f32> = u_xlat0;
    let x_3246 : vec4<f32> = u_xlat5;
    let x_3248 : vec3<f32> = ((vec3<f32>(x_3241.x, x_3241.y, x_3241.z) * vec3<f32>(x_3243.x, x_3243.x, x_3243.x)) + vec3<f32>(x_3246.x, x_3246.y, x_3246.z));
    let x_3249 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3248.x, x_3248.y, x_3248.z, x_3249.w);

    continuing {
      let x_3251 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3251 + bitcast<u32>(1i));
    }
  }
  let x_3253 : vec3<f32> = u_xlat3;
  let x_3254 : vec4<f32> = u_xlat1;
  let x_3257 : vec4<f32> = u_xlat4;
  let x_3259 : vec3<f32> = ((x_3253 * vec3<f32>(x_3254.y, x_3254.z, x_3254.w)) + vec3<f32>(x_3257.x, x_3257.y, x_3257.z));
  let x_3260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3260.w);
  let x_3264 : vec4<f32> = u_xlat5;
  let x_3266 : vec4<f32> = u_xlat1;
  let x_3268 : vec3<f32> = (vec3<f32>(x_3264.x, x_3264.y, x_3264.z) + vec3<f32>(x_3266.x, x_3266.y, x_3266.z));
  let x_3269 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3269.w);
  let x_3272 : f32 = x_57.x_Surface;
  u_xlatb22 = (x_3272 == 1.0f);
  let x_3274 : bool = u_xlatb22;
  let x_3275 : bool = u_xlatb44;
  u_xlatb22 = (x_3274 | x_3275);
  let x_3277 : bool = u_xlatb22;
  if (x_3277) {
    let x_3282 : f32 = u_xlat0.x;
    x_3278 = x_3282;
  } else {
    x_3278 = 1.0f;
  }
  let x_3284 : f32 = x_3278;
  SV_Target0.w = x_3284;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


