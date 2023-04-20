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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_208 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1536 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1662 : UnityPerDraw;

var<private> u_xlatu23 : u32;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1792 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlatb73 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

var<private> u_xlat54 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var x_1623 : f32;
  var x_1635 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1932 : f32;
  var x_1942 : f32;
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
  var x_3535 : f32;
  var x_3548 : f32;
  var x_3596 : f32;
  var x_3608 : vec3<f32>;
  var x_3700 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat23 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat69;
  let x_90 : f32 = u_xlat46;
  u_xlat46 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat46;
  u_xlat46 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat23;
  let x_97 : f32 = u_xlat46;
  u_xlat23 = (x_96 / x_97);
  let x_99 : f32 = u_xlat23;
  u_xlat23 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat23;
  u_xlat23 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb46;
  if (x_109) {
    let x_113 : f32 = u_xlat23;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat23 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat23;
  u_xlatb23 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb23;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat23;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_27.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_154, x_156);
  u_xlat3 = x_157;
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_27.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec3<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat23 = dot(x_177, vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat23;
  u_xlat23 = (x_181 + 0.5f);
  let x_183 : f32 = u_xlat23;
  let x_185 : vec4<f32> = u_xlat4;
  let x_187 : vec3<f32> = (vec3<f32>(x_183, x_183, x_183) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : f32 = u_xlat3.w;
  u_xlat23 = max(x_191, 0.00009999999747378752f);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : f32 = u_xlat23;
  let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) / vec3<f32>(x_195, x_195, x_195));
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_212 : f32 = x_208.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_212);
  let x_214 : bool = u_xlatb23;
  if (x_214) {
    let x_218 : f32 = x_208.x_MainLightShadowParams.y;
    u_xlatb23 = (x_218 == 1.0f);
    let x_220 : bool = u_xlatb23;
    if (x_220) {
      let x_225 : vec4<f32> = vs_TEXCOORD6;
      let x_229 : vec4<f32> = x_208.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y) + x_229);
      let x_233 : vec4<f32> = u_xlat4;
      let x_234 : vec2<f32> = vec2<f32>(x_233.x, x_233.y);
      let x_238 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_234.x, x_234.y, x_238);
      let x_251 : vec3<f32> = txVec0;
      let x_253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_251.xy, x_251.z);
      u_xlat5.x = x_253;
      let x_256 : vec4<f32> = u_xlat4;
      let x_257 : vec2<f32> = vec2<f32>(x_256.z, x_256.w);
      let x_259 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_257.x, x_257.y, x_259);
      let x_266 : vec3<f32> = txVec1;
      let x_268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_266.xy, x_266.z);
      u_xlat5.y = x_268;
      let x_270 : vec4<f32> = vs_TEXCOORD6;
      let x_274 : vec4<f32> = x_208.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_270.x, x_270.y, x_270.x, x_270.y) + x_274);
      let x_277 : vec4<f32> = u_xlat4;
      let x_278 : vec2<f32> = vec2<f32>(x_277.x, x_277.y);
      let x_280 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_278.x, x_278.y, x_280);
      let x_287 : vec3<f32> = txVec2;
      let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_287.xy, x_287.z);
      u_xlat5.z = x_289;
      let x_292 : vec4<f32> = u_xlat4;
      let x_293 : vec2<f32> = vec2<f32>(x_292.z, x_292.w);
      let x_295 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_293.x, x_293.y, x_295);
      let x_302 : vec3<f32> = txVec3;
      let x_304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_302.xy, x_302.z);
      u_xlat5.w = x_304;
      let x_306 : vec4<f32> = u_xlat5;
      u_xlat23 = dot(x_306, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_313 : f32 = x_208.x_MainLightShadowParams.y;
      u_xlatb69 = (x_313 == 2.0f);
      let x_316 : bool = u_xlatb69;
      if (x_316) {
        let x_319 : vec4<f32> = vs_TEXCOORD6;
        let x_323 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_327 : vec2<f32> = ((vec2<f32>(x_319.x, x_319.y) * vec2<f32>(x_323.z, x_323.w)) + vec2<f32>(0.5f, 0.5f));
        let x_328 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
        let x_330 : vec4<f32> = u_xlat4;
        let x_332 : vec2<f32> = floor(vec2<f32>(x_330.x, x_330.y));
        let x_333 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
        let x_337 : vec4<f32> = vs_TEXCOORD6;
        let x_340 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_343 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_340.z, x_340.w)) + -(vec2<f32>(x_343.x, x_343.y)));
        let x_347 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_347.x, x_347.x, x_347.y, x_347.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_352 : vec4<f32> = u_xlat5;
        let x_354 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_352.x, x_352.x, x_352.z, x_352.z) * vec4<f32>(x_354.x, x_354.x, x_354.z, x_354.z));
        let x_357 : vec4<f32> = u_xlat6;
        let x_361 : vec2<f32> = (vec2<f32>(x_357.y, x_357.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_362 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_361.x, x_362.y, x_361.y, x_362.w);
        let x_364 : vec4<f32> = u_xlat6;
        let x_367 : vec2<f32> = u_xlat50;
        let x_369 : vec2<f32> = ((vec2<f32>(x_364.x, x_364.z) * vec2<f32>(0.5f, 0.5f)) + -(x_367));
        let x_370 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_373 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_373) + vec2<f32>(1.0f, 1.0f));
        let x_378 : vec2<f32> = u_xlat50;
        let x_380 : vec2<f32> = min(x_378, vec2<f32>(0.0f, 0.0f));
        let x_381 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
        let x_383 : vec4<f32> = u_xlat7;
        let x_386 : vec4<f32> = u_xlat7;
        let x_389 : vec2<f32> = u_xlat52;
        let x_390 : vec2<f32> = ((-(vec2<f32>(x_383.x, x_383.y)) * vec2<f32>(x_386.x, x_386.y)) + x_389);
        let x_391 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
        let x_393 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_393, vec2<f32>(0.0f, 0.0f));
        let x_395 : vec2<f32> = u_xlat50;
        let x_397 : vec2<f32> = u_xlat50;
        let x_399 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_395) * x_397) + vec2<f32>(x_399.y, x_399.w));
        let x_402 : vec4<f32> = u_xlat7;
        let x_404 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) + vec2<f32>(1.0f, 1.0f));
        let x_405 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_407 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_407 + vec2<f32>(1.0f, 1.0f));
        let x_410 : vec4<f32> = u_xlat6;
        let x_414 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
        let x_417 : vec2<f32> = u_xlat52;
        let x_418 : vec2<f32> = (x_417 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_419 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_421 : vec4<f32> = u_xlat7;
        let x_423 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_424 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_427 : vec2<f32> = u_xlat50;
        let x_428 : vec2<f32> = (x_427 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_431.y, x_431.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_435 : f32 = u_xlat7.x;
        u_xlat8.z = x_435;
        let x_438 : f32 = u_xlat50.x;
        u_xlat8.w = x_438;
        let x_441 : f32 = u_xlat9.x;
        u_xlat6.z = x_441;
        let x_444 : f32 = u_xlat5.x;
        u_xlat6.w = x_444;
        let x_447 : vec4<f32> = u_xlat6;
        let x_449 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_447.z, x_447.w, x_447.x, x_447.z) + vec4<f32>(x_449.z, x_449.w, x_449.x, x_449.z));
        let x_453 : f32 = u_xlat8.y;
        u_xlat7.z = x_453;
        let x_456 : f32 = u_xlat50.y;
        u_xlat7.w = x_456;
        let x_459 : f32 = u_xlat6.y;
        u_xlat9.z = x_459;
        let x_462 : f32 = u_xlat5.z;
        u_xlat9.w = x_462;
        let x_464 : vec4<f32> = u_xlat7;
        let x_466 : vec4<f32> = u_xlat9;
        let x_468 : vec3<f32> = (vec3<f32>(x_464.z, x_464.y, x_464.w) + vec3<f32>(x_466.z, x_466.y, x_466.w));
        let x_469 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
        let x_471 : vec4<f32> = u_xlat6;
        let x_473 : vec4<f32> = u_xlat10;
        let x_475 : vec3<f32> = (vec3<f32>(x_471.x, x_471.z, x_471.w) / vec3<f32>(x_473.z, x_473.w, x_473.y));
        let x_476 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat6;
        let x_483 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_484 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
        let x_486 : vec4<f32> = u_xlat9;
        let x_488 : vec4<f32> = u_xlat5;
        let x_490 : vec3<f32> = (vec3<f32>(x_486.z, x_486.y, x_486.w) / vec3<f32>(x_488.x, x_488.y, x_488.z));
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat6;
        let x_501 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_503 : vec3<f32> = (vec3<f32>(x_498.y, x_498.x, x_498.z) * vec3<f32>(x_501.x, x_501.x, x_501.x));
        let x_504 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat7;
        let x_509 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_511 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_509.y, x_509.y, x_509.y));
        let x_512 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
        let x_515 : f32 = u_xlat7.x;
        u_xlat6.w = x_515;
        let x_517 : vec4<f32> = u_xlat4;
        let x_520 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_523 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) * vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y)) + vec4<f32>(x_523.y, x_523.w, x_523.x, x_523.w));
        let x_526 : vec4<f32> = u_xlat4;
        let x_529 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_529.x, x_529.y)) + vec2<f32>(x_532.z, x_532.w));
        let x_536 : f32 = u_xlat6.y;
        u_xlat7.w = x_536;
        let x_538 : vec4<f32> = u_xlat7;
        let x_539 : vec2<f32> = vec2<f32>(x_538.y, x_538.z);
        let x_540 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_540.x, x_539.x, x_540.z, x_539.y);
        let x_542 : vec4<f32> = u_xlat4;
        let x_545 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_548 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y) * vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y)) + vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.y));
        let x_551 : vec4<f32> = u_xlat4;
        let x_554 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_557 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y) * vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y)) + vec4<f32>(x_557.w, x_557.y, x_557.w, x_557.z));
        let x_560 : vec4<f32> = u_xlat4;
        let x_563 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_560.x, x_560.y, x_560.x, x_560.y) * vec4<f32>(x_563.x, x_563.y, x_563.x, x_563.y)) + vec4<f32>(x_566.x, x_566.w, x_566.z, x_566.w));
        let x_570 : vec4<f32> = u_xlat5;
        let x_572 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_570.x, x_570.x, x_570.x, x_570.y) * vec4<f32>(x_572.z, x_572.w, x_572.y, x_572.z));
        let x_576 : vec4<f32> = u_xlat5;
        let x_578 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_576.y, x_576.y, x_576.z, x_576.z) * x_578);
        let x_581 : f32 = u_xlat5.z;
        let x_583 : f32 = u_xlat10.y;
        u_xlat69 = (x_581 * x_583);
        let x_586 : vec4<f32> = u_xlat8;
        let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
        let x_589 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_587.x, x_587.y, x_589);
        let x_596 : vec3<f32> = txVec4;
        let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_596.xy, x_596.z);
        u_xlat1.x = x_598;
        let x_601 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
        let x_604 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_602.x, x_602.y, x_604);
        let x_612 : vec3<f32> = txVec5;
        let x_614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_612.xy, x_612.z);
        u_xlat71 = x_614;
        let x_615 : f32 = u_xlat71;
        let x_617 : f32 = u_xlat11.y;
        u_xlat71 = (x_615 * x_617);
        let x_620 : f32 = u_xlat11.x;
        let x_622 : f32 = u_xlat1.x;
        let x_624 : f32 = u_xlat71;
        u_xlat1.x = ((x_620 * x_622) + x_624);
        let x_628 : vec2<f32> = u_xlat50;
        let x_630 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_628.x, x_628.y, x_630);
        let x_637 : vec3<f32> = txVec6;
        let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_637.xy, x_637.z);
        u_xlat71 = x_639;
        let x_641 : f32 = u_xlat11.z;
        let x_642 : f32 = u_xlat71;
        let x_645 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_641 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat7;
        let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec7;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat71 = x_661;
        let x_663 : f32 = u_xlat11.w;
        let x_664 : f32 = u_xlat71;
        let x_667 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_663 * x_664) + x_667);
        let x_671 : vec4<f32> = u_xlat9;
        let x_672 : vec2<f32> = vec2<f32>(x_671.x, x_671.y);
        let x_674 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_681 : vec3<f32> = txVec8;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
        u_xlat71 = x_683;
        let x_685 : f32 = u_xlat12.x;
        let x_686 : f32 = u_xlat71;
        let x_689 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_685 * x_686) + x_689);
        let x_693 : vec4<f32> = u_xlat9;
        let x_694 : vec2<f32> = vec2<f32>(x_693.z, x_693.w);
        let x_696 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_694.x, x_694.y, x_696);
        let x_703 : vec3<f32> = txVec9;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat71 = x_705;
        let x_707 : f32 = u_xlat12.y;
        let x_708 : f32 = u_xlat71;
        let x_711 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_707 * x_708) + x_711);
        let x_715 : vec4<f32> = u_xlat7;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec10;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat71 = x_727;
        let x_729 : f32 = u_xlat12.z;
        let x_730 : f32 = u_xlat71;
        let x_733 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_729 * x_730) + x_733);
        let x_737 : vec4<f32> = u_xlat6;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec11;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat71 = x_749;
        let x_751 : f32 = u_xlat12.w;
        let x_752 : f32 = u_xlat71;
        let x_755 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_751 * x_752) + x_755);
        let x_759 : vec4<f32> = u_xlat6;
        let x_760 : vec2<f32> = vec2<f32>(x_759.z, x_759.w);
        let x_762 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec12;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat71 = x_771;
        let x_772 : f32 = u_xlat69;
        let x_773 : f32 = u_xlat71;
        let x_776 : f32 = u_xlat1.x;
        u_xlat23 = ((x_772 * x_773) + x_776);
      } else {
        let x_779 : vec4<f32> = vs_TEXCOORD6;
        let x_782 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_785 : vec2<f32> = ((vec2<f32>(x_779.x, x_779.y) * vec2<f32>(x_782.z, x_782.w)) + vec2<f32>(0.5f, 0.5f));
        let x_786 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat4;
        let x_790 : vec2<f32> = floor(vec2<f32>(x_788.x, x_788.y));
        let x_791 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec4<f32> = vs_TEXCOORD6;
        let x_796 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_799 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_793.x, x_793.y) * vec2<f32>(x_796.z, x_796.w)) + -(vec2<f32>(x_799.x, x_799.y)));
        let x_803 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_803.x, x_803.x, x_803.y, x_803.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_806 : vec4<f32> = u_xlat5;
        let x_808 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_806.x, x_806.x, x_806.z, x_806.z) * vec4<f32>(x_808.x, x_808.x, x_808.z, x_808.z));
        let x_811 : vec4<f32> = u_xlat6;
        let x_815 : vec2<f32> = (vec2<f32>(x_811.y, x_811.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_816 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_816.x, x_815.x, x_816.z, x_815.y);
        let x_818 : vec4<f32> = u_xlat6;
        let x_821 : vec2<f32> = u_xlat50;
        let x_823 : vec2<f32> = ((vec2<f32>(x_818.x, x_818.z) * vec2<f32>(0.5f, 0.5f)) + -(x_821));
        let x_824 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_823.x, x_824.y, x_823.y, x_824.w);
        let x_826 : vec2<f32> = u_xlat50;
        let x_828 : vec2<f32> = (-(x_826) + vec2<f32>(1.0f, 1.0f));
        let x_829 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
        let x_831 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_831, vec2<f32>(0.0f, 0.0f));
        let x_833 : vec2<f32> = u_xlat52;
        let x_835 : vec2<f32> = u_xlat52;
        let x_837 : vec4<f32> = u_xlat6;
        let x_839 : vec2<f32> = ((-(x_833) * x_835) + vec2<f32>(x_837.x, x_837.y));
        let x_840 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_842, vec2<f32>(0.0f, 0.0f));
        let x_845 : vec2<f32> = u_xlat52;
        let x_847 : vec2<f32> = u_xlat52;
        let x_849 : vec4<f32> = u_xlat5;
        let x_851 : vec2<f32> = ((-(x_845) * x_847) + vec2<f32>(x_849.y, x_849.w));
        let x_852 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_851.x, x_852.y, x_851.y);
        let x_854 : vec4<f32> = u_xlat6;
        let x_857 : vec2<f32> = (vec2<f32>(x_854.x, x_854.y) + vec2<f32>(2.0f, 2.0f));
        let x_858 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
        let x_860 : vec3<f32> = u_xlat28;
        let x_862 : vec2<f32> = (vec2<f32>(x_860.x, x_860.z) + vec2<f32>(2.0f, 2.0f));
        let x_863 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_863.x, x_862.x, x_863.z, x_862.y);
        let x_866 : f32 = u_xlat5.y;
        u_xlat8.z = (x_866 * 0.08163200318813323975f);
        let x_870 : vec4<f32> = u_xlat5;
        let x_873 : vec3<f32> = (vec3<f32>(x_870.z, x_870.x, x_870.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_880 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_883 : f32 = u_xlat9.y;
        u_xlat8.x = x_883;
        let x_885 : vec2<f32> = u_xlat50;
        let x_892 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_893.x, x_892.x, x_893.z, x_892.y);
        let x_895 : vec2<f32> = u_xlat50;
        let x_899 : vec2<f32> = ((vec2<f32>(x_895.x, x_895.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_900.w);
        let x_903 : f32 = u_xlat5.x;
        u_xlat6.y = x_903;
        let x_906 : f32 = u_xlat7.y;
        u_xlat6.w = x_906;
        let x_908 : vec4<f32> = u_xlat6;
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_908 + x_909);
        let x_911 : vec2<f32> = u_xlat50;
        let x_914 : vec2<f32> = ((vec2<f32>(x_911.y, x_911.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_914.x, x_915.z, x_914.y);
        let x_917 : vec2<f32> = u_xlat50;
        let x_920 : vec2<f32> = ((vec2<f32>(x_917.y, x_917.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_920.x, x_921.y, x_920.y, x_921.w);
        let x_924 : f32 = u_xlat5.y;
        u_xlat7.y = x_924;
        let x_926 : vec4<f32> = u_xlat7;
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_926 + x_927);
        let x_929 : vec4<f32> = u_xlat6;
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_929 / x_930);
        let x_932 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_932 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_938 : vec4<f32> = u_xlat7;
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_938 / x_939);
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_941 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_943 : vec4<f32> = u_xlat6;
        let x_946 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_943.w, x_943.x, x_943.y, x_943.z) * vec4<f32>(x_946.x, x_946.x, x_946.x, x_946.x));
        let x_949 : vec4<f32> = u_xlat7;
        let x_952 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_949.x, x_949.w, x_949.y, x_949.z) * vec4<f32>(x_952.y, x_952.y, x_952.y, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        let x_956 : vec3<f32> = vec3<f32>(x_955.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_957.y, x_956.y, x_956.z);
        let x_960 : f32 = u_xlat7.x;
        u_xlat9.y = x_960;
        let x_962 : vec4<f32> = u_xlat4;
        let x_965 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.x, x_968.y, x_968.z, x_968.y));
        let x_971 : vec4<f32> = u_xlat4;
        let x_974 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_977 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_971.x, x_971.y) * vec2<f32>(x_974.x, x_974.y)) + vec2<f32>(x_977.w, x_977.y));
        let x_981 : f32 = u_xlat9.y;
        u_xlat6.y = x_981;
        let x_984 : f32 = u_xlat7.z;
        u_xlat9.y = x_984;
        let x_986 : vec4<f32> = u_xlat4;
        let x_989 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y) * vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y)) + vec4<f32>(x_992.x, x_992.y, x_992.z, x_992.y));
        let x_995 : vec4<f32> = u_xlat4;
        let x_998 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1003 : vec2<f32> = ((vec2<f32>(x_995.x, x_995.y) * vec2<f32>(x_998.x, x_998.y)) + vec2<f32>(x_1001.w, x_1001.y));
        let x_1004 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1007 : f32 = u_xlat9.y;
        u_xlat6.z = x_1007;
        let x_1010 : vec4<f32> = u_xlat4;
        let x_1013 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y) * vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y)) + vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.z));
        let x_1020 : f32 = u_xlat7.w;
        u_xlat9.y = x_1020;
        let x_1023 : vec4<f32> = u_xlat4;
        let x_1026 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.y));
        let x_1033 : vec4<f32> = u_xlat4;
        let x_1036 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1043 : f32 = u_xlat9.y;
        u_xlat6.w = x_1043;
        let x_1046 : vec4<f32> = u_xlat4;
        let x_1049 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.x, x_1049.y)) + vec2<f32>(x_1052.x, x_1052.w));
        let x_1055 : vec4<f32> = u_xlat9;
        let x_1056 : vec3<f32> = vec3<f32>(x_1055.x, x_1055.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1057.y, x_1056.y, x_1056.z);
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1062 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1065.y));
        let x_1069 : vec4<f32> = u_xlat4;
        let x_1072 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(x_1075.w, x_1075.y));
        let x_1079 : f32 = u_xlat6.x;
        u_xlat7.x = x_1079;
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.x, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1093 : vec4<f32> = u_xlat5;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.x, x_1093.x) * x_1095);
        let x_1098 : vec4<f32> = u_xlat5;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.y, x_1098.y) * x_1100);
        let x_1103 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1103.z, x_1103.z, x_1103.z, x_1103.z) * x_1105);
        let x_1107 : vec4<f32> = u_xlat5;
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1107.w, x_1107.w, x_1107.w, x_1107.w) * x_1109);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.x, x_1112.y);
        let x_1115 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec13;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1122.xy, x_1122.z);
        u_xlat69 = x_1124;
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec14;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat1.x = x_1138;
        let x_1141 : f32 = u_xlat1.x;
        let x_1143 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1141 * x_1143);
        let x_1147 : f32 = u_xlat15.x;
        let x_1148 : f32 = u_xlat69;
        let x_1151 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1147 * x_1148) + x_1151);
        let x_1154 : vec2<f32> = u_xlat50;
        let x_1156 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec15;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat1.x = x_1165;
        let x_1168 : f32 = u_xlat15.z;
        let x_1170 : f32 = u_xlat1.x;
        let x_1172 : f32 = u_xlat69;
        u_xlat69 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat13;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec16;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat1.x = x_1187;
        let x_1190 : f32 = u_xlat15.w;
        let x_1192 : f32 = u_xlat1.x;
        let x_1194 : f32 = u_xlat69;
        u_xlat69 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec17;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat1.x = x_1209;
        let x_1212 : f32 = u_xlat16.x;
        let x_1214 : f32 = u_xlat1.x;
        let x_1216 : f32 = u_xlat69;
        u_xlat69 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec18;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat1.x = x_1231;
        let x_1234 : f32 = u_xlat16.y;
        let x_1236 : f32 = u_xlat1.x;
        let x_1238 : f32 = u_xlat69;
        u_xlat69 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec19;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat1.x = x_1253;
        let x_1256 : f32 = u_xlat16.z;
        let x_1258 : f32 = u_xlat1.x;
        let x_1260 : f32 = u_xlat69;
        u_xlat69 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat13;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.z, x_1263.w);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec20;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat1.x = x_1275;
        let x_1278 : f32 = u_xlat16.w;
        let x_1280 : f32 = u_xlat1.x;
        let x_1282 : f32 = u_xlat69;
        u_xlat69 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat14;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec21;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat1.x = x_1297;
        let x_1300 : f32 = u_xlat17.x;
        let x_1302 : f32 = u_xlat1.x;
        let x_1304 : f32 = u_xlat69;
        u_xlat69 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec4<f32> = u_xlat14;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.z, x_1307.w);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec22;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat1.x = x_1319;
        let x_1322 : f32 = u_xlat17.y;
        let x_1324 : f32 = u_xlat1.x;
        let x_1326 : f32 = u_xlat69;
        u_xlat69 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec2<f32> = u_xlat29;
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec23;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat1.x = x_1340;
        let x_1343 : f32 = u_xlat17.z;
        let x_1345 : f32 = u_xlat1.x;
        let x_1347 : f32 = u_xlat69;
        u_xlat69 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec2<f32> = u_xlat58;
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec24;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat1.x = x_1361;
        let x_1364 : f32 = u_xlat17.w;
        let x_1366 : f32 = u_xlat1.x;
        let x_1368 : f32 = u_xlat69;
        u_xlat69 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec25;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat1.x = x_1383;
        let x_1386 : f32 = u_xlat5.x;
        let x_1388 : f32 = u_xlat1.x;
        let x_1390 : f32 = u_xlat69;
        u_xlat69 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat9;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec26;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat1.x = x_1405;
        let x_1408 : f32 = u_xlat5.y;
        let x_1410 : f32 = u_xlat1.x;
        let x_1412 : f32 = u_xlat69;
        u_xlat69 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec2<f32> = u_xlat53;
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec27;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat1.x = x_1426;
        let x_1429 : f32 = u_xlat5.z;
        let x_1431 : f32 = u_xlat1.x;
        let x_1433 : f32 = u_xlat69;
        u_xlat69 = ((x_1429 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat4;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec28;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat1.x = x_1448;
        let x_1451 : f32 = u_xlat5.w;
        let x_1453 : f32 = u_xlat1.x;
        let x_1455 : f32 = u_xlat69;
        u_xlat23 = ((x_1451 * x_1453) + x_1455);
      }
    }
  } else {
    let x_1459 : vec4<f32> = vs_TEXCOORD6;
    let x_1460 : vec2<f32> = vec2<f32>(x_1459.x, x_1459.y);
    let x_1462 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
    let x_1469 : vec3<f32> = txVec29;
    let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
    u_xlat23 = x_1471;
  }
  let x_1473 : f32 = x_208.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1473) + 1.0f);
  let x_1476 : f32 = u_xlat23;
  let x_1478 : f32 = x_208.x_MainLightShadowParams.x;
  let x_1480 : f32 = u_xlat69;
  u_xlat23 = ((x_1476 * x_1478) + x_1480);
  let x_1483 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1483);
  let x_1487 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1487 >= 1.0f);
  let x_1489 : bool = u_xlatb69;
  let x_1490 : bool = u_xlatb1;
  u_xlatb69 = (x_1489 | x_1490);
  let x_1492 : bool = u_xlatb69;
  let x_1493 : f32 = u_xlat23;
  u_xlat23 = select(x_1493, 1.0f, x_1492);
  let x_1496 : vec3<f32> = vs_TEXCOORD1;
  let x_1500 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1502 : vec3<f32> = (x_1496 + -(x_1500));
  let x_1503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
  let x_1505 : vec4<f32> = u_xlat4;
  let x_1507 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(vec3<f32>(x_1505.x, x_1505.y, x_1505.z), vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : f32 = u_xlat69;
  let x_1512 : f32 = x_208.x_MainLightShadowParams.z;
  let x_1515 : f32 = x_208.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1510 * x_1512) + x_1515);
  let x_1519 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1519, 0.0f, 1.0f);
  let x_1522 : f32 = u_xlat23;
  u_xlat71 = (-(x_1522) + 1.0f);
  let x_1526 : f32 = u_xlat1.x;
  let x_1527 : f32 = u_xlat71;
  let x_1529 : f32 = u_xlat23;
  u_xlat23 = ((x_1526 * x_1527) + x_1529);
  let x_1539 : f32 = x_1536.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1539 == -1.0f));
  let x_1542 : bool = u_xlatb1;
  if (x_1542) {
    let x_1545 : vec3<f32> = vs_TEXCOORD1;
    let x_1548 : vec4<f32> = x_1536.x_MainLightWorldToLight[1i];
    let x_1550 : vec2<f32> = (vec2<f32>(x_1545.y, x_1545.y) * vec2<f32>(x_1548.x, x_1548.y));
    let x_1551 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
    let x_1554 : vec4<f32> = x_1536.x_MainLightWorldToLight[0i];
    let x_1556 : vec3<f32> = vs_TEXCOORD1;
    let x_1559 : vec4<f32> = u_xlat4;
    let x_1561 : vec2<f32> = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(x_1556.x, x_1556.x)) + vec2<f32>(x_1559.x, x_1559.y));
    let x_1562 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
    let x_1565 : vec4<f32> = x_1536.x_MainLightWorldToLight[2i];
    let x_1567 : vec3<f32> = vs_TEXCOORD1;
    let x_1570 : vec4<f32> = u_xlat4;
    let x_1572 : vec2<f32> = ((vec2<f32>(x_1565.x, x_1565.y) * vec2<f32>(x_1567.z, x_1567.z)) + vec2<f32>(x_1570.x, x_1570.y));
    let x_1573 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
    let x_1575 : vec4<f32> = u_xlat4;
    let x_1579 : vec4<f32> = x_1536.x_MainLightWorldToLight[3i];
    let x_1581 : vec2<f32> = (vec2<f32>(x_1575.x, x_1575.y) + vec2<f32>(x_1579.x, x_1579.y));
    let x_1582 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
    let x_1584 : vec4<f32> = u_xlat4;
    let x_1587 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1588 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1587.x, x_1587.y, x_1588.z, x_1588.w);
    let x_1595 : vec4<f32> = u_xlat4;
    let x_1598 : f32 = x_27.x_GlobalMipBias.x;
    let x_1599 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1595.x, x_1595.y), x_1598);
    u_xlat4 = x_1599;
    let x_1604 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1606 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1608 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1610 : f32 = x_1536.x_MainLightCookieTextureFormat;
    let x_1611 : vec4<f32> = vec4<f32>(x_1604, x_1606, x_1608, x_1610);
    let x_1619 : vec4<bool> = (vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1611.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1619.x, x_1619.y);
    let x_1622 : bool = u_xlatb5.y;
    if (x_1622) {
      let x_1627 : f32 = u_xlat4.w;
      x_1623 = x_1627;
    } else {
      let x_1630 : f32 = u_xlat4.x;
      x_1623 = x_1630;
    }
    let x_1631 : f32 = x_1623;
    u_xlat1.x = x_1631;
    let x_1634 : bool = u_xlatb5.x;
    if (x_1634) {
      let x_1638 : vec4<f32> = u_xlat4;
      x_1635 = vec3<f32>(x_1638.x, x_1638.y, x_1638.z);
    } else {
      let x_1641 : vec4<f32> = u_xlat1;
      x_1635 = vec3<f32>(x_1641.x, x_1641.x, x_1641.x);
    }
    let x_1643 : vec3<f32> = x_1635;
    let x_1644 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1650 : vec4<f32> = u_xlat4;
  let x_1653 : vec4<f32> = x_27.x_MainLightColor;
  let x_1655 : vec3<f32> = (vec3<f32>(x_1650.x, x_1650.y, x_1650.z) * vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1658 : f32 = u_xlat23;
  let x_1664 : f32 = x_1662.unity_LightData.z;
  u_xlat23 = (x_1658 * x_1664);
  let x_1666 : f32 = u_xlat23;
  let x_1668 : vec4<f32> = u_xlat4;
  let x_1670 : vec3<f32> = (vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
  let x_1671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
  let x_1673 : vec3<f32> = u_xlat2;
  let x_1675 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat23 = dot(x_1673, vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
  let x_1678 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1678, 0.0f, 1.0f);
  let x_1680 : f32 = u_xlat23;
  let x_1682 : vec4<f32> = u_xlat4;
  let x_1684 : vec3<f32> = (vec3<f32>(x_1680, x_1680, x_1680) * vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
  let x_1685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
  let x_1687 : vec4<f32> = u_xlat1;
  let x_1689 : vec4<f32> = u_xlat4;
  let x_1691 : vec3<f32> = (vec3<f32>(x_1687.y, x_1687.z, x_1687.w) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
  let x_1692 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : vec4<f32> = u_xlat0;
  let x_1696 : vec4<f32> = u_xlat4;
  let x_1698 : vec3<f32> = (vec3<f32>(x_1694.x, x_1694.x, x_1694.x) * vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1702 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1704 : f32 = x_1662.unity_LightData.y;
  u_xlat23 = min(x_1702, x_1704);
  let x_1708 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1708));
  let x_1711 : f32 = u_xlat69;
  let x_1714 : f32 = x_208.x_AdditionalShadowFadeParams.x;
  let x_1717 : f32 = x_208.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1711 * x_1714) + x_1717);
  let x_1719 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1719, 0.0f, 1.0f);
  let x_1722 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1724 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1726 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1728 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1729 : vec4<f32> = vec4<f32>(x_1722, x_1724, x_1726, x_1728);
  let x_1735 : vec4<bool> = (vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1735.x, x_1735.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1747 : u32 = u_xlatu_loop_1;
    let x_1748 : u32 = u_xlatu23;
    if ((x_1747 < x_1748)) {
    } else {
      break;
    }
    let x_1751 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1751 >> 2u);
    let x_1755 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1755 & 3u));
    let x_1758 : u32 = u_xlatu71;
    let x_1761 : vec4<f32> = x_1662.unity_LightIndices[bitcast<i32>(x_1758)];
    let x_1771 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1776 : vec4<u32> = indexable[x_1771];
    u_xlat71 = dot(x_1761, bitcast<vec4<f32>>(x_1776));
    let x_1780 : f32 = u_xlat71;
    u_xlati71 = i32(x_1780);
    let x_1782 : vec3<f32> = vs_TEXCOORD1;
    let x_1793 : i32 = u_xlati71;
    let x_1795 : vec4<f32> = x_1792.x_AdditionalLightsPosition[x_1793];
    let x_1798 : i32 = u_xlati71;
    let x_1800 : vec4<f32> = x_1792.x_AdditionalLightsPosition[x_1798];
    let x_1802 : vec3<f32> = ((-(x_1782) * vec3<f32>(x_1795.w, x_1795.w, x_1795.w)) + vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
    let x_1803 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
    let x_1806 : vec4<f32> = u_xlat7;
    let x_1808 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1806.x, x_1806.y, x_1806.z), vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
    let x_1811 : f32 = u_xlat72;
    u_xlat72 = max(x_1811, 0.00006103515625f);
    let x_1815 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1815);
    let x_1817 : f32 = u_xlat73;
    let x_1819 : vec4<f32> = u_xlat7;
    let x_1821 : vec3<f32> = (vec3<f32>(x_1817, x_1817, x_1817) * vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
    let x_1824 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1824);
    let x_1826 : f32 = u_xlat72;
    let x_1827 : i32 = u_xlati71;
    let x_1829 : f32 = x_1792.x_AdditionalLightsAttenuation[x_1827].x;
    u_xlat72 = (x_1826 * x_1829);
    let x_1831 : f32 = u_xlat72;
    let x_1833 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1831) * x_1833) + 1.0f);
    let x_1836 : f32 = u_xlat72;
    u_xlat72 = max(x_1836, 0.0f);
    let x_1838 : f32 = u_xlat72;
    let x_1839 : f32 = u_xlat72;
    u_xlat72 = (x_1838 * x_1839);
    let x_1841 : f32 = u_xlat72;
    let x_1842 : f32 = u_xlat73;
    u_xlat72 = (x_1841 * x_1842);
    let x_1844 : i32 = u_xlati71;
    let x_1846 : vec4<f32> = x_1792.x_AdditionalLightsSpotDir[x_1844];
    let x_1848 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1846.x, x_1846.y, x_1846.z), vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
    let x_1851 : f32 = u_xlat73;
    let x_1852 : i32 = u_xlati71;
    let x_1854 : f32 = x_1792.x_AdditionalLightsAttenuation[x_1852].z;
    let x_1856 : i32 = u_xlati71;
    let x_1858 : f32 = x_1792.x_AdditionalLightsAttenuation[x_1856].w;
    u_xlat73 = ((x_1851 * x_1854) + x_1858);
    let x_1860 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1860, 0.0f, 1.0f);
    let x_1862 : f32 = u_xlat73;
    let x_1863 : f32 = u_xlat73;
    u_xlat73 = (x_1862 * x_1863);
    let x_1865 : f32 = u_xlat72;
    let x_1866 : f32 = u_xlat73;
    u_xlat72 = (x_1865 * x_1866);
    let x_1870 : i32 = u_xlati71;
    let x_1872 : f32 = x_208.x_AdditionalShadowParams[x_1870].w;
    u_xlati73 = i32(x_1872);
    let x_1875 : i32 = u_xlati73;
    u_xlatb51 = (x_1875 >= 0i);
    let x_1877 : bool = u_xlatb51;
    if (x_1877) {
      let x_1881 : i32 = u_xlati71;
      let x_1883 : f32 = x_208.x_AdditionalShadowParams[x_1881].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1883, x_1883, x_1883, x_1883))));
      let x_1887 : bool = u_xlatb51;
      if (x_1887) {
        let x_1892 : vec4<f32> = u_xlat7;
        let x_1895 : vec4<f32> = u_xlat7;
        let x_1898 : vec4<bool> = (abs(vec4<f32>(x_1892.z, x_1892.z, x_1892.y, x_1892.z)) >= abs(vec4<f32>(x_1895.x, x_1895.y, x_1895.x, x_1895.x)));
        let x_1900 : vec3<bool> = vec3<bool>(x_1898.x, x_1898.y, x_1898.z);
        let x_1901 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
        let x_1904 : bool = u_xlatb8.y;
        let x_1906 : bool = u_xlatb8.x;
        u_xlatb51 = (x_1904 & x_1906);
        let x_1908 : vec4<f32> = u_xlat7;
        let x_1911 : vec4<bool> = (-(vec4<f32>(x_1908.z, x_1908.y, x_1908.z, x_1908.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1912 : vec3<bool> = vec3<bool>(x_1911.x, x_1911.y, x_1911.w);
        let x_1913 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1912.x, x_1912.y, x_1913.z, x_1912.z);
        let x_1916 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1916);
        let x_1922 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1922);
        let x_1928 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_1928);
        let x_1931 : bool = u_xlatb8.z;
        if (x_1931) {
          let x_1936 : f32 = u_xlat8.y;
          x_1932 = x_1936;
        } else {
          let x_1938 : f32 = u_xlat74;
          x_1932 = x_1938;
        }
        let x_1939 : f32 = x_1932;
        u_xlat74 = x_1939;
        let x_1941 : bool = u_xlatb51;
        if (x_1941) {
          let x_1946 : f32 = u_xlat8.x;
          x_1942 = x_1946;
        } else {
          let x_1948 : f32 = u_xlat74;
          x_1942 = x_1948;
        }
        let x_1949 : f32 = x_1942;
        u_xlat51.x = x_1949;
        let x_1951 : i32 = u_xlati71;
        let x_1953 : f32 = x_208.x_AdditionalShadowParams[x_1951].w;
        u_xlat74 = trunc(x_1953);
        let x_1956 : f32 = u_xlat51.x;
        let x_1957 : f32 = u_xlat74;
        u_xlat51.x = (x_1956 + x_1957);
        let x_1961 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_1961);
      }
      let x_1963 : i32 = u_xlati73;
      u_xlati73 = (x_1963 << bitcast<u32>(2i));
      let x_1965 : vec3<f32> = vs_TEXCOORD1;
      let x_1968 : i32 = u_xlati73;
      let x_1971 : i32 = u_xlati73;
      let x_1975 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1968 + 1i) / 4i)][((x_1971 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1965.y, x_1965.y, x_1965.y, x_1965.y) * x_1975);
      let x_1977 : i32 = u_xlati73;
      let x_1979 : i32 = u_xlati73;
      let x_1982 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[(x_1977 / 4i)][(x_1979 % 4i)];
      let x_1983 : vec3<f32> = vs_TEXCOORD1;
      let x_1986 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1982 * vec4<f32>(x_1983.x, x_1983.x, x_1983.x, x_1983.x)) + x_1986);
      let x_1988 : i32 = u_xlati73;
      let x_1991 : i32 = u_xlati73;
      let x_1995 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1988 + 2i) / 4i)][((x_1991 + 2i) % 4i)];
      let x_1996 : vec3<f32> = vs_TEXCOORD1;
      let x_1999 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1995 * vec4<f32>(x_1996.z, x_1996.z, x_1996.z, x_1996.z)) + x_1999);
      let x_2001 : vec4<f32> = u_xlat8;
      let x_2002 : i32 = u_xlati73;
      let x_2005 : i32 = u_xlati73;
      let x_2009 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2002 + 3i) / 4i)][((x_2005 + 3i) % 4i)];
      u_xlat8 = (x_2001 + x_2009);
      let x_2011 : vec4<f32> = u_xlat8;
      let x_2013 : vec4<f32> = u_xlat8;
      let x_2015 : vec3<f32> = (vec3<f32>(x_2011.x, x_2011.y, x_2011.z) / vec3<f32>(x_2013.w, x_2013.w, x_2013.w));
      let x_2016 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
      let x_2019 : i32 = u_xlati71;
      let x_2021 : f32 = x_208.x_AdditionalShadowParams[x_2019].y;
      u_xlatb73 = (0.0f < x_2021);
      let x_2023 : bool = u_xlatb73;
      if (x_2023) {
        let x_2026 : i32 = u_xlati71;
        let x_2028 : f32 = x_208.x_AdditionalShadowParams[x_2026].y;
        u_xlatb73 = (1.0f == x_2028);
        let x_2030 : bool = u_xlatb73;
        if (x_2030) {
          let x_2033 : vec4<f32> = u_xlat8;
          let x_2037 : vec4<f32> = x_208.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2033.x, x_2033.y, x_2033.x, x_2033.y) + x_2037);
          let x_2040 : vec4<f32> = u_xlat9;
          let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
          let x_2043 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
          let x_2051 : vec3<f32> = txVec30;
          let x_2053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2051.xy, x_2051.z);
          u_xlat10.x = x_2053;
          let x_2056 : vec4<f32> = u_xlat9;
          let x_2057 : vec2<f32> = vec2<f32>(x_2056.z, x_2056.w);
          let x_2059 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
          let x_2066 : vec3<f32> = txVec31;
          let x_2068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
          u_xlat10.y = x_2068;
          let x_2070 : vec4<f32> = u_xlat8;
          let x_2074 : vec4<f32> = x_208.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2070.x, x_2070.y, x_2070.x, x_2070.y) + x_2074);
          let x_2077 : vec4<f32> = u_xlat9;
          let x_2078 : vec2<f32> = vec2<f32>(x_2077.x, x_2077.y);
          let x_2080 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
          let x_2087 : vec3<f32> = txVec32;
          let x_2089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2087.xy, x_2087.z);
          u_xlat10.z = x_2089;
          let x_2092 : vec4<f32> = u_xlat9;
          let x_2093 : vec2<f32> = vec2<f32>(x_2092.z, x_2092.w);
          let x_2095 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2093.x, x_2093.y, x_2095);
          let x_2102 : vec3<f32> = txVec33;
          let x_2104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2102.xy, x_2102.z);
          u_xlat10.w = x_2104;
          let x_2106 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2106, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2109 : i32 = u_xlati71;
          let x_2111 : f32 = x_208.x_AdditionalShadowParams[x_2109].y;
          u_xlatb51 = (2.0f == x_2111);
          let x_2113 : bool = u_xlatb51;
          if (x_2113) {
            let x_2116 : vec4<f32> = u_xlat8;
            let x_2120 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2116.x, x_2116.y) * vec2<f32>(x_2120.z, x_2120.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2124 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2124);
            let x_2126 : vec4<f32> = u_xlat8;
            let x_2129 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2132 : vec2<f32> = u_xlat51;
            let x_2134 : vec2<f32> = ((vec2<f32>(x_2126.x, x_2126.y) * vec2<f32>(x_2129.z, x_2129.w)) + -(x_2132));
            let x_2135 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2134.x, x_2134.y, x_2135.z, x_2135.w);
            let x_2137 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2137.x, x_2137.x, x_2137.y, x_2137.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2140 : vec4<f32> = u_xlat10;
            let x_2142 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2140.x, x_2140.x, x_2140.z, x_2140.z) * vec4<f32>(x_2142.x, x_2142.x, x_2142.z, x_2142.z));
            let x_2146 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2146.y, x_2146.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2149 : vec4<f32> = u_xlat11;
            let x_2152 : vec4<f32> = u_xlat9;
            let x_2155 : vec2<f32> = ((vec2<f32>(x_2149.x, x_2149.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2152.x, x_2152.y)));
            let x_2156 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2155.x, x_2156.y, x_2155.y, x_2156.w);
            let x_2158 : vec4<f32> = u_xlat9;
            let x_2161 : vec2<f32> = (-(vec2<f32>(x_2158.x, x_2158.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2162 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2161.x, x_2161.y, x_2162.z, x_2162.w);
            let x_2165 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2165.x, x_2165.y), vec2<f32>(0.0f, 0.0f));
            let x_2168 : vec2<f32> = u_xlat57;
            let x_2170 : vec2<f32> = u_xlat57;
            let x_2172 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2168) * x_2170) + vec2<f32>(x_2172.x, x_2172.y));
            let x_2175 : vec4<f32> = u_xlat9;
            let x_2177 : vec2<f32> = max(vec2<f32>(x_2175.x, x_2175.y), vec2<f32>(0.0f, 0.0f));
            let x_2178 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
            let x_2180 : vec4<f32> = u_xlat9;
            let x_2183 : vec4<f32> = u_xlat9;
            let x_2186 : vec4<f32> = u_xlat10;
            let x_2188 : vec2<f32> = ((-(vec2<f32>(x_2180.x, x_2180.y)) * vec2<f32>(x_2183.x, x_2183.y)) + vec2<f32>(x_2186.y, x_2186.w));
            let x_2189 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
            let x_2191 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2191 + vec2<f32>(1.0f, 1.0f));
            let x_2193 : vec4<f32> = u_xlat9;
            let x_2195 : vec2<f32> = (vec2<f32>(x_2193.x, x_2193.y) + vec2<f32>(1.0f, 1.0f));
            let x_2196 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2195.x, x_2195.y, x_2196.z, x_2196.w);
            let x_2198 : vec4<f32> = u_xlat10;
            let x_2200 : vec2<f32> = (vec2<f32>(x_2198.x, x_2198.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2201 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
            let x_2203 : vec4<f32> = u_xlat11;
            let x_2205 : vec2<f32> = (vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2206 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
            let x_2208 : vec2<f32> = u_xlat57;
            let x_2209 : vec2<f32> = (x_2208 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2210 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2209.x, x_2209.y, x_2210.z, x_2210.w);
            let x_2212 : vec4<f32> = u_xlat9;
            let x_2214 : vec2<f32> = (vec2<f32>(x_2212.x, x_2212.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2215 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
            let x_2217 : vec4<f32> = u_xlat10;
            let x_2219 : vec2<f32> = (vec2<f32>(x_2217.y, x_2217.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2220 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
            let x_2223 : f32 = u_xlat11.x;
            u_xlat12.z = x_2223;
            let x_2226 : f32 = u_xlat9.x;
            u_xlat12.w = x_2226;
            let x_2229 : f32 = u_xlat14.x;
            u_xlat13.z = x_2229;
            let x_2232 : f32 = u_xlat55.x;
            u_xlat13.w = x_2232;
            let x_2234 : vec4<f32> = u_xlat12;
            let x_2236 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2234.z, x_2234.w, x_2234.x, x_2234.z) + vec4<f32>(x_2236.z, x_2236.w, x_2236.x, x_2236.z));
            let x_2240 : f32 = u_xlat12.y;
            u_xlat11.z = x_2240;
            let x_2243 : f32 = u_xlat9.y;
            u_xlat11.w = x_2243;
            let x_2246 : f32 = u_xlat13.y;
            u_xlat14.z = x_2246;
            let x_2249 : f32 = u_xlat55.y;
            u_xlat14.w = x_2249;
            let x_2251 : vec4<f32> = u_xlat11;
            let x_2253 : vec4<f32> = u_xlat14;
            let x_2255 : vec3<f32> = (vec3<f32>(x_2251.z, x_2251.y, x_2251.w) + vec3<f32>(x_2253.z, x_2253.y, x_2253.w));
            let x_2256 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
            let x_2258 : vec4<f32> = u_xlat13;
            let x_2260 : vec4<f32> = u_xlat10;
            let x_2262 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.z, x_2258.w) / vec3<f32>(x_2260.z, x_2260.w, x_2260.y));
            let x_2263 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
            let x_2265 : vec4<f32> = u_xlat11;
            let x_2267 : vec3<f32> = (vec3<f32>(x_2265.x, x_2265.y, x_2265.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2268 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
            let x_2270 : vec4<f32> = u_xlat14;
            let x_2272 : vec4<f32> = u_xlat9;
            let x_2274 : vec3<f32> = (vec3<f32>(x_2270.z, x_2270.y, x_2270.w) / vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
            let x_2275 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
            let x_2277 : vec4<f32> = u_xlat12;
            let x_2279 : vec3<f32> = (vec3<f32>(x_2277.x, x_2277.y, x_2277.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2280 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
            let x_2282 : vec4<f32> = u_xlat11;
            let x_2285 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2287 : vec3<f32> = (vec3<f32>(x_2282.y, x_2282.x, x_2282.z) * vec3<f32>(x_2285.x, x_2285.x, x_2285.x));
            let x_2288 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
            let x_2290 : vec4<f32> = u_xlat12;
            let x_2293 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2295 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) * vec3<f32>(x_2293.y, x_2293.y, x_2293.y));
            let x_2296 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
            let x_2299 : f32 = u_xlat12.x;
            u_xlat11.w = x_2299;
            let x_2301 : vec2<f32> = u_xlat51;
            let x_2304 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2307 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y) * vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.y)) + vec4<f32>(x_2307.y, x_2307.w, x_2307.x, x_2307.w));
            let x_2310 : vec2<f32> = u_xlat51;
            let x_2312 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2315 : vec4<f32> = u_xlat11;
            let x_2317 : vec2<f32> = ((x_2310 * vec2<f32>(x_2312.x, x_2312.y)) + vec2<f32>(x_2315.z, x_2315.w));
            let x_2318 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2317.x, x_2317.y, x_2318.z, x_2318.w);
            let x_2321 : f32 = u_xlat11.y;
            u_xlat12.w = x_2321;
            let x_2323 : vec4<f32> = u_xlat12;
            let x_2324 : vec2<f32> = vec2<f32>(x_2323.y, x_2323.z);
            let x_2325 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2325.x, x_2324.x, x_2325.z, x_2324.y);
            let x_2327 : vec2<f32> = u_xlat51;
            let x_2330 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2333 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y) * vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y)) + vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2333.y));
            let x_2336 : vec2<f32> = u_xlat51;
            let x_2339 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2342 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y) * vec4<f32>(x_2339.x, x_2339.y, x_2339.x, x_2339.y)) + vec4<f32>(x_2342.w, x_2342.y, x_2342.w, x_2342.z));
            let x_2345 : vec2<f32> = u_xlat51;
            let x_2348 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2351 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2345.x, x_2345.y, x_2345.x, x_2345.y) * vec4<f32>(x_2348.x, x_2348.y, x_2348.x, x_2348.y)) + vec4<f32>(x_2351.x, x_2351.w, x_2351.z, x_2351.w));
            let x_2354 : vec4<f32> = u_xlat9;
            let x_2356 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2354.x, x_2354.x, x_2354.x, x_2354.y) * vec4<f32>(x_2356.z, x_2356.w, x_2356.y, x_2356.z));
            let x_2359 : vec4<f32> = u_xlat9;
            let x_2361 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2359.y, x_2359.y, x_2359.z, x_2359.z) * x_2361);
            let x_2364 : f32 = u_xlat9.z;
            let x_2366 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2364 * x_2366);
            let x_2370 : vec4<f32> = u_xlat13;
            let x_2371 : vec2<f32> = vec2<f32>(x_2370.x, x_2370.y);
            let x_2373 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
            let x_2380 : vec3<f32> = txVec34;
            let x_2382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
            u_xlat74 = x_2382;
            let x_2384 : vec4<f32> = u_xlat13;
            let x_2385 : vec2<f32> = vec2<f32>(x_2384.z, x_2384.w);
            let x_2387 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2385.x, x_2385.y, x_2387);
            let x_2395 : vec3<f32> = txVec35;
            let x_2397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2395.xy, x_2395.z);
            u_xlat75 = x_2397;
            let x_2398 : f32 = u_xlat75;
            let x_2400 : f32 = u_xlat16.y;
            u_xlat75 = (x_2398 * x_2400);
            let x_2403 : f32 = u_xlat16.x;
            let x_2404 : f32 = u_xlat74;
            let x_2406 : f32 = u_xlat75;
            u_xlat74 = ((x_2403 * x_2404) + x_2406);
            let x_2409 : vec4<f32> = u_xlat14;
            let x_2410 : vec2<f32> = vec2<f32>(x_2409.x, x_2409.y);
            let x_2412 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2410.x, x_2410.y, x_2412);
            let x_2419 : vec3<f32> = txVec36;
            let x_2421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
            u_xlat75 = x_2421;
            let x_2423 : f32 = u_xlat16.z;
            let x_2424 : f32 = u_xlat75;
            let x_2426 : f32 = u_xlat74;
            u_xlat74 = ((x_2423 * x_2424) + x_2426);
            let x_2429 : vec4<f32> = u_xlat12;
            let x_2430 : vec2<f32> = vec2<f32>(x_2429.x, x_2429.y);
            let x_2432 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2430.x, x_2430.y, x_2432);
            let x_2439 : vec3<f32> = txVec37;
            let x_2441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2439.xy, x_2439.z);
            u_xlat75 = x_2441;
            let x_2443 : f32 = u_xlat16.w;
            let x_2444 : f32 = u_xlat75;
            let x_2446 : f32 = u_xlat74;
            u_xlat74 = ((x_2443 * x_2444) + x_2446);
            let x_2449 : vec4<f32> = u_xlat15;
            let x_2450 : vec2<f32> = vec2<f32>(x_2449.x, x_2449.y);
            let x_2452 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
            let x_2459 : vec3<f32> = txVec38;
            let x_2461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
            u_xlat75 = x_2461;
            let x_2463 : f32 = u_xlat17.x;
            let x_2464 : f32 = u_xlat75;
            let x_2466 : f32 = u_xlat74;
            u_xlat74 = ((x_2463 * x_2464) + x_2466);
            let x_2469 : vec4<f32> = u_xlat15;
            let x_2470 : vec2<f32> = vec2<f32>(x_2469.z, x_2469.w);
            let x_2472 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2470.x, x_2470.y, x_2472);
            let x_2479 : vec3<f32> = txVec39;
            let x_2481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2479.xy, x_2479.z);
            u_xlat75 = x_2481;
            let x_2483 : f32 = u_xlat17.y;
            let x_2484 : f32 = u_xlat75;
            let x_2486 : f32 = u_xlat74;
            u_xlat74 = ((x_2483 * x_2484) + x_2486);
            let x_2489 : vec4<f32> = u_xlat12;
            let x_2490 : vec2<f32> = vec2<f32>(x_2489.z, x_2489.w);
            let x_2492 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
            let x_2499 : vec3<f32> = txVec40;
            let x_2501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
            u_xlat75 = x_2501;
            let x_2503 : f32 = u_xlat17.z;
            let x_2504 : f32 = u_xlat75;
            let x_2506 : f32 = u_xlat74;
            u_xlat74 = ((x_2503 * x_2504) + x_2506);
            let x_2509 : vec4<f32> = u_xlat11;
            let x_2510 : vec2<f32> = vec2<f32>(x_2509.x, x_2509.y);
            let x_2512 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2510.x, x_2510.y, x_2512);
            let x_2519 : vec3<f32> = txVec41;
            let x_2521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2519.xy, x_2519.z);
            u_xlat75 = x_2521;
            let x_2523 : f32 = u_xlat17.w;
            let x_2524 : f32 = u_xlat75;
            let x_2526 : f32 = u_xlat74;
            u_xlat74 = ((x_2523 * x_2524) + x_2526);
            let x_2529 : vec4<f32> = u_xlat11;
            let x_2530 : vec2<f32> = vec2<f32>(x_2529.z, x_2529.w);
            let x_2532 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2530.x, x_2530.y, x_2532);
            let x_2539 : vec3<f32> = txVec42;
            let x_2541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2539.xy, x_2539.z);
            u_xlat75 = x_2541;
            let x_2543 : f32 = u_xlat51.x;
            let x_2544 : f32 = u_xlat75;
            let x_2546 : f32 = u_xlat74;
            u_xlat73 = ((x_2543 * x_2544) + x_2546);
          } else {
            let x_2549 : vec4<f32> = u_xlat8;
            let x_2552 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2552.z, x_2552.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2556 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2556);
            let x_2558 : vec4<f32> = u_xlat8;
            let x_2561 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2564 : vec2<f32> = u_xlat51;
            let x_2566 : vec2<f32> = ((vec2<f32>(x_2558.x, x_2558.y) * vec2<f32>(x_2561.z, x_2561.w)) + -(x_2564));
            let x_2567 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2569.x, x_2569.x, x_2569.y, x_2569.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2572 : vec4<f32> = u_xlat10;
            let x_2574 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2572.x, x_2572.x, x_2572.z, x_2572.z) * vec4<f32>(x_2574.x, x_2574.x, x_2574.z, x_2574.z));
            let x_2577 : vec4<f32> = u_xlat11;
            let x_2579 : vec2<f32> = (vec2<f32>(x_2577.y, x_2577.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2580 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2580.x, x_2579.x, x_2580.z, x_2579.y);
            let x_2582 : vec4<f32> = u_xlat11;
            let x_2585 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2582.x, x_2582.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2585.x, x_2585.y)));
            let x_2589 : vec4<f32> = u_xlat9;
            let x_2592 : vec2<f32> = (-(vec2<f32>(x_2589.x, x_2589.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2593 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2592.x, x_2593.y, x_2592.y, x_2593.w);
            let x_2595 : vec4<f32> = u_xlat9;
            let x_2597 : vec2<f32> = min(vec2<f32>(x_2595.x, x_2595.y), vec2<f32>(0.0f, 0.0f));
            let x_2598 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
            let x_2600 : vec4<f32> = u_xlat11;
            let x_2603 : vec4<f32> = u_xlat11;
            let x_2606 : vec4<f32> = u_xlat10;
            let x_2608 : vec2<f32> = ((-(vec2<f32>(x_2600.x, x_2600.y)) * vec2<f32>(x_2603.x, x_2603.y)) + vec2<f32>(x_2606.x, x_2606.z));
            let x_2609 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2608.x, x_2609.y, x_2608.y, x_2609.w);
            let x_2611 : vec4<f32> = u_xlat9;
            let x_2613 : vec2<f32> = max(vec2<f32>(x_2611.x, x_2611.y), vec2<f32>(0.0f, 0.0f));
            let x_2614 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2613.x, x_2613.y, x_2614.z, x_2614.w);
            let x_2616 : vec4<f32> = u_xlat11;
            let x_2619 : vec4<f32> = u_xlat11;
            let x_2622 : vec4<f32> = u_xlat10;
            let x_2624 : vec2<f32> = ((-(vec2<f32>(x_2616.x, x_2616.y)) * vec2<f32>(x_2619.x, x_2619.y)) + vec2<f32>(x_2622.y, x_2622.w));
            let x_2625 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2625.x, x_2624.x, x_2625.z, x_2624.y);
            let x_2627 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2627 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2631 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2631 * 0.08163200318813323975f);
            let x_2634 : vec2<f32> = u_xlat55;
            let x_2636 : vec2<f32> = (vec2<f32>(x_2634.y, x_2634.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2637 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
            let x_2639 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2639.x, x_2639.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2643 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2643 * 0.08163200318813323975f);
            let x_2647 : f32 = u_xlat13.y;
            u_xlat11.x = x_2647;
            let x_2649 : vec4<f32> = u_xlat9;
            let x_2652 : vec2<f32> = ((vec2<f32>(x_2649.x, x_2649.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2653 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2653.x, x_2652.x, x_2653.z, x_2652.y);
            let x_2655 : vec4<f32> = u_xlat9;
            let x_2658 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2659 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2658.x, x_2659.y, x_2658.y, x_2659.w);
            let x_2662 : f32 = u_xlat55.x;
            u_xlat10.y = x_2662;
            let x_2665 : f32 = u_xlat12.y;
            u_xlat10.w = x_2665;
            let x_2667 : vec4<f32> = u_xlat10;
            let x_2668 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2667 + x_2668);
            let x_2670 : vec4<f32> = u_xlat9;
            let x_2673 : vec2<f32> = ((vec2<f32>(x_2670.y, x_2670.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2674 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2674.x, x_2673.x, x_2674.z, x_2673.y);
            let x_2676 : vec4<f32> = u_xlat9;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2676.y, x_2676.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2680 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2679.x, x_2680.y, x_2679.y, x_2680.w);
            let x_2683 : f32 = u_xlat55.y;
            u_xlat12.y = x_2683;
            let x_2685 : vec4<f32> = u_xlat12;
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2685 + x_2686);
            let x_2688 : vec4<f32> = u_xlat10;
            let x_2689 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2688 / x_2689);
            let x_2691 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2691 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2693 : vec4<f32> = u_xlat12;
            let x_2694 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2693 / x_2694);
            let x_2696 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2696 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2698 : vec4<f32> = u_xlat10;
            let x_2701 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2698.w, x_2698.x, x_2698.y, x_2698.z) * vec4<f32>(x_2701.x, x_2701.x, x_2701.x, x_2701.x));
            let x_2704 : vec4<f32> = u_xlat12;
            let x_2707 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2704.x, x_2704.w, x_2704.y, x_2704.z) * vec4<f32>(x_2707.y, x_2707.y, x_2707.y, x_2707.y));
            let x_2710 : vec4<f32> = u_xlat10;
            let x_2711 : vec3<f32> = vec3<f32>(x_2710.y, x_2710.z, x_2710.w);
            let x_2712 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2711.x, x_2712.y, x_2711.y, x_2711.z);
            let x_2715 : f32 = u_xlat12.x;
            u_xlat13.y = x_2715;
            let x_2717 : vec2<f32> = u_xlat51;
            let x_2720 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2723 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y) * vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y)) + vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2723.y));
            let x_2726 : vec2<f32> = u_xlat51;
            let x_2728 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2731 : vec4<f32> = u_xlat13;
            let x_2733 : vec2<f32> = ((x_2726 * vec2<f32>(x_2728.x, x_2728.y)) + vec2<f32>(x_2731.w, x_2731.y));
            let x_2734 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2733.x, x_2733.y, x_2734.z, x_2734.w);
            let x_2737 : f32 = u_xlat13.y;
            u_xlat10.y = x_2737;
            let x_2740 : f32 = u_xlat12.z;
            u_xlat13.y = x_2740;
            let x_2742 : vec2<f32> = u_xlat51;
            let x_2745 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2748 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y) * vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y)) + vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2748.y));
            let x_2752 : vec2<f32> = u_xlat51;
            let x_2754 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2757 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2752 * vec2<f32>(x_2754.x, x_2754.y)) + vec2<f32>(x_2757.w, x_2757.y));
            let x_2761 : f32 = u_xlat13.y;
            u_xlat10.z = x_2761;
            let x_2763 : vec2<f32> = u_xlat51;
            let x_2766 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y) * vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y)) + vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.z));
            let x_2773 : f32 = u_xlat12.w;
            u_xlat13.y = x_2773;
            let x_2776 : vec2<f32> = u_xlat51;
            let x_2779 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2782 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y) * vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y)) + vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2782.y));
            let x_2786 : vec2<f32> = u_xlat51;
            let x_2788 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2791 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2786 * vec2<f32>(x_2788.x, x_2788.y)) + vec2<f32>(x_2791.w, x_2791.y));
            let x_2795 : f32 = u_xlat13.y;
            u_xlat10.w = x_2795;
            let x_2798 : vec2<f32> = u_xlat51;
            let x_2800 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2803 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2798 * vec2<f32>(x_2800.x, x_2800.y)) + vec2<f32>(x_2803.x, x_2803.w));
            let x_2806 : vec4<f32> = u_xlat13;
            let x_2807 : vec3<f32> = vec3<f32>(x_2806.x, x_2806.z, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2807.x, x_2808.y, x_2807.y, x_2807.z);
            let x_2810 : vec2<f32> = u_xlat51;
            let x_2813 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2816 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2810.x, x_2810.y, x_2810.x, x_2810.y) * vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y)) + vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2816.y));
            let x_2819 : vec2<f32> = u_xlat51;
            let x_2821 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2824 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2819 * vec2<f32>(x_2821.x, x_2821.y)) + vec2<f32>(x_2824.w, x_2824.y));
            let x_2828 : f32 = u_xlat10.x;
            u_xlat12.x = x_2828;
            let x_2830 : vec2<f32> = u_xlat51;
            let x_2832 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2835 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2830 * vec2<f32>(x_2832.x, x_2832.y)) + vec2<f32>(x_2835.x, x_2835.y));
            let x_2839 : vec4<f32> = u_xlat9;
            let x_2841 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2839.x, x_2839.x, x_2839.x, x_2839.x) * x_2841);
            let x_2844 : vec4<f32> = u_xlat9;
            let x_2846 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2844.y, x_2844.y, x_2844.y, x_2844.y) * x_2846);
            let x_2849 : vec4<f32> = u_xlat9;
            let x_2851 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2849.z, x_2849.z, x_2849.z, x_2849.z) * x_2851);
            let x_2853 : vec4<f32> = u_xlat9;
            let x_2855 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2853.w, x_2853.w, x_2853.w, x_2853.w) * x_2855);
            let x_2858 : vec4<f32> = u_xlat14;
            let x_2859 : vec2<f32> = vec2<f32>(x_2858.x, x_2858.y);
            let x_2861 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
            let x_2868 : vec3<f32> = txVec43;
            let x_2870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
            u_xlat75 = x_2870;
            let x_2872 : vec4<f32> = u_xlat14;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.z, x_2872.w);
            let x_2875 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2883 : vec3<f32> = txVec44;
            let x_2885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
            u_xlat76 = x_2885;
            let x_2886 : f32 = u_xlat76;
            let x_2888 : f32 = u_xlat20.y;
            u_xlat76 = (x_2886 * x_2888);
            let x_2891 : f32 = u_xlat20.x;
            let x_2892 : f32 = u_xlat75;
            let x_2894 : f32 = u_xlat76;
            u_xlat75 = ((x_2891 * x_2892) + x_2894);
            let x_2897 : vec4<f32> = u_xlat15;
            let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
            let x_2900 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
            let x_2907 : vec3<f32> = txVec45;
            let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
            u_xlat76 = x_2909;
            let x_2911 : f32 = u_xlat20.z;
            let x_2912 : f32 = u_xlat76;
            let x_2914 : f32 = u_xlat75;
            u_xlat75 = ((x_2911 * x_2912) + x_2914);
            let x_2917 : vec4<f32> = u_xlat17;
            let x_2918 : vec2<f32> = vec2<f32>(x_2917.x, x_2917.y);
            let x_2920 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2918.x, x_2918.y, x_2920);
            let x_2927 : vec3<f32> = txVec46;
            let x_2929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2927.xy, x_2927.z);
            u_xlat76 = x_2929;
            let x_2931 : f32 = u_xlat20.w;
            let x_2932 : f32 = u_xlat76;
            let x_2934 : f32 = u_xlat75;
            u_xlat75 = ((x_2931 * x_2932) + x_2934);
            let x_2937 : vec4<f32> = u_xlat16;
            let x_2938 : vec2<f32> = vec2<f32>(x_2937.x, x_2937.y);
            let x_2940 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
            let x_2947 : vec3<f32> = txVec47;
            let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
            u_xlat76 = x_2949;
            let x_2951 : f32 = u_xlat21.x;
            let x_2952 : f32 = u_xlat76;
            let x_2954 : f32 = u_xlat75;
            u_xlat75 = ((x_2951 * x_2952) + x_2954);
            let x_2957 : vec4<f32> = u_xlat16;
            let x_2958 : vec2<f32> = vec2<f32>(x_2957.z, x_2957.w);
            let x_2960 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec48;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat76 = x_2969;
            let x_2971 : f32 = u_xlat21.y;
            let x_2972 : f32 = u_xlat76;
            let x_2974 : f32 = u_xlat75;
            u_xlat75 = ((x_2971 * x_2972) + x_2974);
            let x_2977 : vec2<f32> = u_xlat61;
            let x_2979 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
            let x_2986 : vec3<f32> = txVec49;
            let x_2988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
            u_xlat76 = x_2988;
            let x_2990 : f32 = u_xlat21.z;
            let x_2991 : f32 = u_xlat76;
            let x_2993 : f32 = u_xlat75;
            u_xlat75 = ((x_2990 * x_2991) + x_2993);
            let x_2996 : vec4<f32> = u_xlat17;
            let x_2997 : vec2<f32> = vec2<f32>(x_2996.z, x_2996.w);
            let x_2999 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_2997.x, x_2997.y, x_2999);
            let x_3006 : vec3<f32> = txVec50;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat76 = x_3008;
            let x_3010 : f32 = u_xlat21.w;
            let x_3011 : f32 = u_xlat76;
            let x_3013 : f32 = u_xlat75;
            u_xlat75 = ((x_3010 * x_3011) + x_3013);
            let x_3016 : vec4<f32> = u_xlat18;
            let x_3017 : vec2<f32> = vec2<f32>(x_3016.x, x_3016.y);
            let x_3019 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec51;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat76 = x_3028;
            let x_3030 : f32 = u_xlat22.x;
            let x_3031 : f32 = u_xlat76;
            let x_3033 : f32 = u_xlat75;
            u_xlat75 = ((x_3030 * x_3031) + x_3033);
            let x_3036 : vec4<f32> = u_xlat18;
            let x_3037 : vec2<f32> = vec2<f32>(x_3036.z, x_3036.w);
            let x_3039 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3037.x, x_3037.y, x_3039);
            let x_3046 : vec3<f32> = txVec52;
            let x_3048 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3046.xy, x_3046.z);
            u_xlat76 = x_3048;
            let x_3050 : f32 = u_xlat22.y;
            let x_3051 : f32 = u_xlat76;
            let x_3053 : f32 = u_xlat75;
            u_xlat75 = ((x_3050 * x_3051) + x_3053);
            let x_3056 : vec2<f32> = u_xlat33;
            let x_3058 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3065 : vec3<f32> = txVec53;
            let x_3067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
            u_xlat76 = x_3067;
            let x_3069 : f32 = u_xlat22.z;
            let x_3070 : f32 = u_xlat76;
            let x_3072 : f32 = u_xlat75;
            u_xlat75 = ((x_3069 * x_3070) + x_3072);
            let x_3075 : vec2<f32> = u_xlat19;
            let x_3077 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec54;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat76 = x_3086;
            let x_3088 : f32 = u_xlat22.w;
            let x_3089 : f32 = u_xlat76;
            let x_3091 : f32 = u_xlat75;
            u_xlat75 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat13;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec55;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat76 = x_3106;
            let x_3108 : f32 = u_xlat9.x;
            let x_3109 : f32 = u_xlat76;
            let x_3111 : f32 = u_xlat75;
            u_xlat75 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat13;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec56;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat76 = x_3126;
            let x_3128 : f32 = u_xlat9.y;
            let x_3129 : f32 = u_xlat76;
            let x_3131 : f32 = u_xlat75;
            u_xlat75 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec2<f32> = u_xlat58;
            let x_3136 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3134.x, x_3134.y, x_3136);
            let x_3143 : vec3<f32> = txVec57;
            let x_3145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
            u_xlat76 = x_3145;
            let x_3147 : f32 = u_xlat9.z;
            let x_3148 : f32 = u_xlat76;
            let x_3150 : f32 = u_xlat75;
            u_xlat75 = ((x_3147 * x_3148) + x_3150);
            let x_3153 : vec2<f32> = u_xlat51;
            let x_3155 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec58;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat51.x = x_3164;
            let x_3167 : f32 = u_xlat9.w;
            let x_3169 : f32 = u_xlat51.x;
            let x_3171 : f32 = u_xlat75;
            u_xlat73 = ((x_3167 * x_3169) + x_3171);
          }
        }
      } else {
        let x_3175 : vec4<f32> = u_xlat8;
        let x_3176 : vec2<f32> = vec2<f32>(x_3175.x, x_3175.y);
        let x_3178 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
        let x_3185 : vec3<f32> = txVec59;
        let x_3187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
        u_xlat73 = x_3187;
      }
      let x_3188 : i32 = u_xlati71;
      let x_3190 : f32 = x_208.x_AdditionalShadowParams[x_3188].x;
      u_xlat51.x = (1.0f + -(x_3190));
      let x_3194 : f32 = u_xlat73;
      let x_3195 : i32 = u_xlati71;
      let x_3197 : f32 = x_208.x_AdditionalShadowParams[x_3195].x;
      let x_3200 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3194 * x_3197) + x_3200);
      let x_3203 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3203);
      let x_3207 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3207 >= 1.0f);
      let x_3209 : bool = u_xlatb74;
      let x_3210 : bool = u_xlatb51;
      u_xlatb51 = (x_3209 | x_3210);
      let x_3212 : bool = u_xlatb51;
      let x_3213 : f32 = u_xlat73;
      u_xlat73 = select(x_3213, 1.0f, x_3212);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3216 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3216) + 1.0f);
    let x_3220 : f32 = u_xlat69;
    let x_3222 : f32 = u_xlat51.x;
    let x_3224 : f32 = u_xlat73;
    u_xlat73 = ((x_3220 * x_3222) + x_3224);
    let x_3227 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3227 & 31i)));
    let x_3231 : i32 = u_xlati51;
    let x_3234 : f32 = x_1536.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3231) & bitcast<u32>(x_3234)));
    let x_3238 : i32 = u_xlati51;
    if ((x_3238 != 0i)) {
      let x_3242 : i32 = u_xlati71;
      let x_3244 : f32 = x_1536.x_AdditionalLightsLightTypes[x_3242].el;
      u_xlati51 = i32(x_3244);
      let x_3247 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3247 != 0i));
      let x_3251 : i32 = u_xlati71;
      u_xlati75 = (x_3251 << bitcast<u32>(2i));
      let x_3253 : i32 = u_xlati74;
      if ((x_3253 != 0i)) {
        let x_3257 : vec3<f32> = vs_TEXCOORD1;
        let x_3259 : i32 = u_xlati75;
        let x_3262 : i32 = u_xlati75;
        let x_3266 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3259 + 1i) / 4i)][((x_3262 + 1i) % 4i)];
        let x_3268 : vec3<f32> = (vec3<f32>(x_3257.y, x_3257.y, x_3257.y) * vec3<f32>(x_3266.x, x_3266.y, x_3266.w));
        let x_3269 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3269.w);
        let x_3271 : i32 = u_xlati75;
        let x_3273 : i32 = u_xlati75;
        let x_3276 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3271 / 4i)][(x_3273 % 4i)];
        let x_3278 : vec3<f32> = vs_TEXCOORD1;
        let x_3281 : vec4<f32> = u_xlat8;
        let x_3283 : vec3<f32> = ((vec3<f32>(x_3276.x, x_3276.y, x_3276.w) * vec3<f32>(x_3278.x, x_3278.x, x_3278.x)) + vec3<f32>(x_3281.x, x_3281.y, x_3281.z));
        let x_3284 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3283.x, x_3283.y, x_3283.z, x_3284.w);
        let x_3286 : i32 = u_xlati75;
        let x_3289 : i32 = u_xlati75;
        let x_3293 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3286 + 2i) / 4i)][((x_3289 + 2i) % 4i)];
        let x_3295 : vec3<f32> = vs_TEXCOORD1;
        let x_3298 : vec4<f32> = u_xlat8;
        let x_3300 : vec3<f32> = ((vec3<f32>(x_3293.x, x_3293.y, x_3293.w) * vec3<f32>(x_3295.z, x_3295.z, x_3295.z)) + vec3<f32>(x_3298.x, x_3298.y, x_3298.z));
        let x_3301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3301.w);
        let x_3303 : vec4<f32> = u_xlat8;
        let x_3305 : i32 = u_xlati75;
        let x_3308 : i32 = u_xlati75;
        let x_3312 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3305 + 3i) / 4i)][((x_3308 + 3i) % 4i)];
        let x_3314 : vec3<f32> = (vec3<f32>(x_3303.x, x_3303.y, x_3303.z) + vec3<f32>(x_3312.x, x_3312.y, x_3312.w));
        let x_3315 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3314.x, x_3314.y, x_3314.z, x_3315.w);
        let x_3317 : vec4<f32> = u_xlat8;
        let x_3319 : vec4<f32> = u_xlat8;
        let x_3321 : vec2<f32> = (vec2<f32>(x_3317.x, x_3317.y) / vec2<f32>(x_3319.z, x_3319.z));
        let x_3322 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3321.x, x_3321.y, x_3322.z, x_3322.w);
        let x_3324 : vec4<f32> = u_xlat8;
        let x_3327 : vec2<f32> = ((vec2<f32>(x_3324.x, x_3324.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3327.x, x_3327.y, x_3328.z, x_3328.w);
        let x_3330 : vec4<f32> = u_xlat8;
        let x_3334 : vec2<f32> = clamp(vec2<f32>(x_3330.x, x_3330.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3335 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3334.x, x_3334.y, x_3335.z, x_3335.w);
        let x_3337 : i32 = u_xlati71;
        let x_3339 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3337];
        let x_3341 : vec4<f32> = u_xlat8;
        let x_3344 : i32 = u_xlati71;
        let x_3346 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3344];
        let x_3348 : vec2<f32> = ((vec2<f32>(x_3339.x, x_3339.y) * vec2<f32>(x_3341.x, x_3341.y)) + vec2<f32>(x_3346.z, x_3346.w));
        let x_3349 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3348.x, x_3348.y, x_3349.z, x_3349.w);
      } else {
        let x_3352 : i32 = u_xlati51;
        u_xlatb51 = (x_3352 == 1i);
        let x_3354 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3354);
        let x_3356 : i32 = u_xlati51;
        if ((x_3356 != 0i)) {
          let x_3360 : vec3<f32> = vs_TEXCOORD1;
          let x_3362 : i32 = u_xlati75;
          let x_3365 : i32 = u_xlati75;
          let x_3369 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3362 + 1i) / 4i)][((x_3365 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3360.y, x_3360.y) * vec2<f32>(x_3369.x, x_3369.y));
          let x_3372 : i32 = u_xlati75;
          let x_3374 : i32 = u_xlati75;
          let x_3377 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3372 / 4i)][(x_3374 % 4i)];
          let x_3379 : vec3<f32> = vs_TEXCOORD1;
          let x_3382 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3377.x, x_3377.y) * vec2<f32>(x_3379.x, x_3379.x)) + x_3382);
          let x_3384 : i32 = u_xlati75;
          let x_3387 : i32 = u_xlati75;
          let x_3391 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3384 + 2i) / 4i)][((x_3387 + 2i) % 4i)];
          let x_3393 : vec3<f32> = vs_TEXCOORD1;
          let x_3396 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3391.x, x_3391.y) * vec2<f32>(x_3393.z, x_3393.z)) + x_3396);
          let x_3398 : vec2<f32> = u_xlat51;
          let x_3399 : i32 = u_xlati75;
          let x_3402 : i32 = u_xlati75;
          let x_3406 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3399 + 3i) / 4i)][((x_3402 + 3i) % 4i)];
          u_xlat51 = (x_3398 + vec2<f32>(x_3406.x, x_3406.y));
          let x_3409 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3409 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3412 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3412);
          let x_3414 : i32 = u_xlati71;
          let x_3416 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3414];
          let x_3418 : vec2<f32> = u_xlat51;
          let x_3420 : i32 = u_xlati71;
          let x_3422 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3420];
          let x_3424 : vec2<f32> = ((vec2<f32>(x_3416.x, x_3416.y) * x_3418) + vec2<f32>(x_3422.z, x_3422.w));
          let x_3425 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3424.x, x_3424.y, x_3425.z, x_3425.w);
        } else {
          let x_3428 : vec3<f32> = vs_TEXCOORD1;
          let x_3430 : i32 = u_xlati75;
          let x_3433 : i32 = u_xlati75;
          let x_3437 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3430 + 1i) / 4i)][((x_3433 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3428.y, x_3428.y, x_3428.y, x_3428.y) * x_3437);
          let x_3439 : i32 = u_xlati75;
          let x_3441 : i32 = u_xlati75;
          let x_3444 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3439 / 4i)][(x_3441 % 4i)];
          let x_3445 : vec3<f32> = vs_TEXCOORD1;
          let x_3448 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3444 * vec4<f32>(x_3445.x, x_3445.x, x_3445.x, x_3445.x)) + x_3448);
          let x_3450 : i32 = u_xlati75;
          let x_3453 : i32 = u_xlati75;
          let x_3457 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3450 + 2i) / 4i)][((x_3453 + 2i) % 4i)];
          let x_3458 : vec3<f32> = vs_TEXCOORD1;
          let x_3461 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3457 * vec4<f32>(x_3458.z, x_3458.z, x_3458.z, x_3458.z)) + x_3461);
          let x_3463 : vec4<f32> = u_xlat9;
          let x_3464 : i32 = u_xlati75;
          let x_3467 : i32 = u_xlati75;
          let x_3471 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3464 + 3i) / 4i)][((x_3467 + 3i) % 4i)];
          u_xlat9 = (x_3463 + x_3471);
          let x_3473 : vec4<f32> = u_xlat9;
          let x_3475 : vec4<f32> = u_xlat9;
          let x_3477 : vec3<f32> = (vec3<f32>(x_3473.x, x_3473.y, x_3473.z) / vec3<f32>(x_3475.w, x_3475.w, x_3475.w));
          let x_3478 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3477.x, x_3477.y, x_3477.z, x_3478.w);
          let x_3480 : vec4<f32> = u_xlat9;
          let x_3482 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3480.x, x_3480.y, x_3480.z), vec3<f32>(x_3482.x, x_3482.y, x_3482.z));
          let x_3487 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3487);
          let x_3490 : vec2<f32> = u_xlat51;
          let x_3492 : vec4<f32> = u_xlat9;
          let x_3494 : vec3<f32> = (vec3<f32>(x_3490.x, x_3490.x, x_3490.x) * vec3<f32>(x_3492.x, x_3492.y, x_3492.z));
          let x_3495 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3494.x, x_3494.y, x_3494.z, x_3495.w);
          let x_3497 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3497.x, x_3497.y, x_3497.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3504 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3504, 0.00000099999999747524f);
          let x_3509 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3509);
          let x_3512 : vec2<f32> = u_xlat51;
          let x_3514 : vec4<f32> = u_xlat9;
          let x_3516 : vec3<f32> = (vec3<f32>(x_3512.x, x_3512.x, x_3512.x) * vec3<f32>(x_3514.z, x_3514.x, x_3514.y));
          let x_3517 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3516.x, x_3516.y, x_3516.z, x_3517.w);
          let x_3520 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3520);
          let x_3524 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3524, 0.0f, 1.0f);
          let x_3528 : vec4<f32> = u_xlat10;
          let x_3530 : vec4<bool> = (vec4<f32>(x_3528.y, x_3528.z, x_3528.y, x_3528.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3530.x, x_3530.y);
          let x_3534 : bool = u_xlatb54.x;
          if (x_3534) {
            let x_3539 : f32 = u_xlat10.x;
            x_3535 = x_3539;
          } else {
            let x_3542 : f32 = u_xlat10.x;
            x_3535 = -(x_3542);
          }
          let x_3544 : f32 = x_3535;
          u_xlat54.x = x_3544;
          let x_3547 : bool = u_xlatb54.y;
          if (x_3547) {
            let x_3552 : f32 = u_xlat10.x;
            x_3548 = x_3552;
          } else {
            let x_3555 : f32 = u_xlat10.x;
            x_3548 = -(x_3555);
          }
          let x_3557 : f32 = x_3548;
          u_xlat54.y = x_3557;
          let x_3559 : vec4<f32> = u_xlat9;
          let x_3561 : vec2<f32> = u_xlat51;
          let x_3564 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3559.x, x_3559.y) * vec2<f32>(x_3561.x, x_3561.x)) + x_3564);
          let x_3566 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3566 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3569 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3569, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3573 : i32 = u_xlati71;
          let x_3575 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3573];
          let x_3577 : vec2<f32> = u_xlat51;
          let x_3579 : i32 = u_xlati71;
          let x_3581 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3579];
          let x_3583 : vec2<f32> = ((vec2<f32>(x_3575.x, x_3575.y) * x_3577) + vec2<f32>(x_3581.z, x_3581.w));
          let x_3584 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3583.x, x_3583.y, x_3584.z, x_3584.w);
        }
      }
      let x_3591 : vec4<f32> = u_xlat8;
      let x_3593 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3591.x, x_3591.y), 0.0f);
      u_xlat8 = x_3593;
      let x_3595 : bool = u_xlatb5.y;
      if (x_3595) {
        let x_3600 : f32 = u_xlat8.w;
        x_3596 = x_3600;
      } else {
        let x_3603 : f32 = u_xlat8.x;
        x_3596 = x_3603;
      }
      let x_3604 : f32 = x_3596;
      u_xlat51.x = x_3604;
      let x_3607 : bool = u_xlatb5.x;
      if (x_3607) {
        let x_3611 : vec4<f32> = u_xlat8;
        x_3608 = vec3<f32>(x_3611.x, x_3611.y, x_3611.z);
      } else {
        let x_3614 : vec2<f32> = u_xlat51;
        x_3608 = vec3<f32>(x_3614.x, x_3614.x, x_3614.x);
      }
      let x_3616 : vec3<f32> = x_3608;
      let x_3617 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3616.x, x_3616.y, x_3616.z, x_3617.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3623 : vec4<f32> = u_xlat8;
    let x_3625 : i32 = u_xlati71;
    let x_3627 : vec4<f32> = x_1792.x_AdditionalLightsColor[x_3625];
    let x_3629 : vec3<f32> = (vec3<f32>(x_3623.x, x_3623.y, x_3623.z) * vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
    let x_3630 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3630.w);
    let x_3632 : f32 = u_xlat72;
    let x_3633 : f32 = u_xlat73;
    u_xlat71 = (x_3632 * x_3633);
    let x_3635 : f32 = u_xlat71;
    let x_3637 : vec4<f32> = u_xlat8;
    let x_3639 : vec3<f32> = (vec3<f32>(x_3635, x_3635, x_3635) * vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
    let x_3640 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3639.x, x_3639.y, x_3639.z, x_3640.w);
    let x_3642 : vec3<f32> = u_xlat2;
    let x_3643 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3642, vec3<f32>(x_3643.x, x_3643.y, x_3643.z));
    let x_3646 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3646, 0.0f, 1.0f);
    let x_3648 : f32 = u_xlat71;
    let x_3650 : vec4<f32> = u_xlat8;
    let x_3652 : vec3<f32> = (vec3<f32>(x_3648, x_3648, x_3648) * vec3<f32>(x_3650.x, x_3650.y, x_3650.z));
    let x_3653 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3652.x, x_3652.y, x_3652.z, x_3653.w);
    let x_3655 : vec4<f32> = u_xlat1;
    let x_3657 : vec4<f32> = u_xlat7;
    let x_3659 : vec3<f32> = (vec3<f32>(x_3655.y, x_3655.z, x_3655.w) * vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
    let x_3660 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
    let x_3662 : vec4<f32> = u_xlat7;
    let x_3664 : vec4<f32> = u_xlat0;
    let x_3667 : vec4<f32> = u_xlat6;
    let x_3669 : vec3<f32> = ((vec3<f32>(x_3662.x, x_3662.y, x_3662.z) * vec3<f32>(x_3664.x, x_3664.x, x_3664.x)) + vec3<f32>(x_3667.x, x_3667.y, x_3667.z));
    let x_3670 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3669.x, x_3669.y, x_3669.z, x_3670.w);

    continuing {
      let x_3672 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3672 + bitcast<u32>(1i));
    }
  }
  let x_3674 : vec4<f32> = u_xlat3;
  let x_3676 : vec4<f32> = u_xlat1;
  let x_3679 : vec4<f32> = u_xlat4;
  let x_3681 : vec3<f32> = ((vec3<f32>(x_3674.x, x_3674.y, x_3674.z) * vec3<f32>(x_3676.y, x_3676.z, x_3676.w)) + vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
  let x_3682 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
  let x_3686 : vec4<f32> = u_xlat6;
  let x_3688 : vec4<f32> = u_xlat1;
  let x_3690 : vec3<f32> = (vec3<f32>(x_3686.x, x_3686.y, x_3686.z) + vec3<f32>(x_3688.x, x_3688.y, x_3688.z));
  let x_3691 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3690.x, x_3690.y, x_3690.z, x_3691.w);
  let x_3694 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3694 == 1.0f);
  let x_3696 : bool = u_xlatb23;
  let x_3697 : bool = u_xlatb46;
  u_xlatb23 = (x_3696 | x_3697);
  let x_3699 : bool = u_xlatb23;
  if (x_3699) {
    let x_3704 : f32 = u_xlat0.x;
    x_3700 = x_3704;
  } else {
    x_3700 = 1.0f;
  }
  let x_3706 : f32 = x_3700;
  SV_Target0.w = x_3706;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


