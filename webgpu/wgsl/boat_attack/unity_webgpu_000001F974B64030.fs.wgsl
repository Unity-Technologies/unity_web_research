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

@group(1) @binding(1) var<uniform> x_1785 : AdditionalLights;

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
  var x_1925 : f32;
  var x_1935 : f32;
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
  var x_3528 : f32;
  var x_3541 : f32;
  var x_3589 : f32;
  var x_3601 : vec3<f32>;
  var x_3686 : f32;
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
  let x_1695 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1697 : f32 = x_1662.unity_LightData.y;
  u_xlat23 = min(x_1695, x_1697);
  let x_1701 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1701));
  let x_1704 : f32 = u_xlat69;
  let x_1707 : f32 = x_208.x_AdditionalShadowFadeParams.x;
  let x_1710 : f32 = x_208.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1704 * x_1707) + x_1710);
  let x_1712 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1712, 0.0f, 1.0f);
  let x_1715 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1717 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1719 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1721 : f32 = x_1536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1722 : vec4<f32> = vec4<f32>(x_1715, x_1717, x_1719, x_1721);
  let x_1728 : vec4<bool> = (vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1722.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1728.x, x_1728.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1740 : u32 = u_xlatu_loop_1;
    let x_1741 : u32 = u_xlatu23;
    if ((x_1740 < x_1741)) {
    } else {
      break;
    }
    let x_1744 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1744 >> 2u);
    let x_1748 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1748 & 3u));
    let x_1751 : u32 = u_xlatu71;
    let x_1754 : vec4<f32> = x_1662.unity_LightIndices[bitcast<i32>(x_1751)];
    let x_1764 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1769 : vec4<u32> = indexable[x_1764];
    u_xlat71 = dot(x_1754, bitcast<vec4<f32>>(x_1769));
    let x_1773 : f32 = u_xlat71;
    u_xlati71 = i32(x_1773);
    let x_1775 : vec3<f32> = vs_TEXCOORD1;
    let x_1786 : i32 = u_xlati71;
    let x_1788 : vec4<f32> = x_1785.x_AdditionalLightsPosition[x_1786];
    let x_1791 : i32 = u_xlati71;
    let x_1793 : vec4<f32> = x_1785.x_AdditionalLightsPosition[x_1791];
    let x_1795 : vec3<f32> = ((-(x_1775) * vec3<f32>(x_1788.w, x_1788.w, x_1788.w)) + vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
    let x_1796 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
    let x_1799 : vec4<f32> = u_xlat7;
    let x_1801 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1799.x, x_1799.y, x_1799.z), vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
    let x_1804 : f32 = u_xlat72;
    u_xlat72 = max(x_1804, 0.00006103515625f);
    let x_1808 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1808);
    let x_1810 : f32 = u_xlat73;
    let x_1812 : vec4<f32> = u_xlat7;
    let x_1814 : vec3<f32> = (vec3<f32>(x_1810, x_1810, x_1810) * vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
    let x_1817 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1817);
    let x_1819 : f32 = u_xlat72;
    let x_1820 : i32 = u_xlati71;
    let x_1822 : f32 = x_1785.x_AdditionalLightsAttenuation[x_1820].x;
    u_xlat72 = (x_1819 * x_1822);
    let x_1824 : f32 = u_xlat72;
    let x_1826 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1824) * x_1826) + 1.0f);
    let x_1829 : f32 = u_xlat72;
    u_xlat72 = max(x_1829, 0.0f);
    let x_1831 : f32 = u_xlat72;
    let x_1832 : f32 = u_xlat72;
    u_xlat72 = (x_1831 * x_1832);
    let x_1834 : f32 = u_xlat72;
    let x_1835 : f32 = u_xlat73;
    u_xlat72 = (x_1834 * x_1835);
    let x_1837 : i32 = u_xlati71;
    let x_1839 : vec4<f32> = x_1785.x_AdditionalLightsSpotDir[x_1837];
    let x_1841 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1839.x, x_1839.y, x_1839.z), vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
    let x_1844 : f32 = u_xlat73;
    let x_1845 : i32 = u_xlati71;
    let x_1847 : f32 = x_1785.x_AdditionalLightsAttenuation[x_1845].z;
    let x_1849 : i32 = u_xlati71;
    let x_1851 : f32 = x_1785.x_AdditionalLightsAttenuation[x_1849].w;
    u_xlat73 = ((x_1844 * x_1847) + x_1851);
    let x_1853 : f32 = u_xlat73;
    u_xlat73 = clamp(x_1853, 0.0f, 1.0f);
    let x_1855 : f32 = u_xlat73;
    let x_1856 : f32 = u_xlat73;
    u_xlat73 = (x_1855 * x_1856);
    let x_1858 : f32 = u_xlat72;
    let x_1859 : f32 = u_xlat73;
    u_xlat72 = (x_1858 * x_1859);
    let x_1863 : i32 = u_xlati71;
    let x_1865 : f32 = x_208.x_AdditionalShadowParams[x_1863].w;
    u_xlati73 = i32(x_1865);
    let x_1868 : i32 = u_xlati73;
    u_xlatb51 = (x_1868 >= 0i);
    let x_1870 : bool = u_xlatb51;
    if (x_1870) {
      let x_1874 : i32 = u_xlati71;
      let x_1876 : f32 = x_208.x_AdditionalShadowParams[x_1874].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1876, x_1876, x_1876, x_1876))));
      let x_1880 : bool = u_xlatb51;
      if (x_1880) {
        let x_1885 : vec4<f32> = u_xlat7;
        let x_1888 : vec4<f32> = u_xlat7;
        let x_1891 : vec4<bool> = (abs(vec4<f32>(x_1885.z, x_1885.z, x_1885.y, x_1885.z)) >= abs(vec4<f32>(x_1888.x, x_1888.y, x_1888.x, x_1888.x)));
        let x_1893 : vec3<bool> = vec3<bool>(x_1891.x, x_1891.y, x_1891.z);
        let x_1894 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
        let x_1897 : bool = u_xlatb8.y;
        let x_1899 : bool = u_xlatb8.x;
        u_xlatb51 = (x_1897 & x_1899);
        let x_1901 : vec4<f32> = u_xlat7;
        let x_1904 : vec4<bool> = (-(vec4<f32>(x_1901.z, x_1901.y, x_1901.z, x_1901.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1905 : vec3<bool> = vec3<bool>(x_1904.x, x_1904.y, x_1904.w);
        let x_1906 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1905.x, x_1905.y, x_1906.z, x_1905.z);
        let x_1909 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1909);
        let x_1915 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1915);
        let x_1921 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_1921);
        let x_1924 : bool = u_xlatb8.z;
        if (x_1924) {
          let x_1929 : f32 = u_xlat8.y;
          x_1925 = x_1929;
        } else {
          let x_1931 : f32 = u_xlat74;
          x_1925 = x_1931;
        }
        let x_1932 : f32 = x_1925;
        u_xlat74 = x_1932;
        let x_1934 : bool = u_xlatb51;
        if (x_1934) {
          let x_1939 : f32 = u_xlat8.x;
          x_1935 = x_1939;
        } else {
          let x_1941 : f32 = u_xlat74;
          x_1935 = x_1941;
        }
        let x_1942 : f32 = x_1935;
        u_xlat51.x = x_1942;
        let x_1944 : i32 = u_xlati71;
        let x_1946 : f32 = x_208.x_AdditionalShadowParams[x_1944].w;
        u_xlat74 = trunc(x_1946);
        let x_1949 : f32 = u_xlat51.x;
        let x_1950 : f32 = u_xlat74;
        u_xlat51.x = (x_1949 + x_1950);
        let x_1954 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_1954);
      }
      let x_1956 : i32 = u_xlati73;
      u_xlati73 = (x_1956 << bitcast<u32>(2i));
      let x_1958 : vec3<f32> = vs_TEXCOORD1;
      let x_1961 : i32 = u_xlati73;
      let x_1964 : i32 = u_xlati73;
      let x_1968 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1961 + 1i) / 4i)][((x_1964 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1958.y, x_1958.y, x_1958.y, x_1958.y) * x_1968);
      let x_1970 : i32 = u_xlati73;
      let x_1972 : i32 = u_xlati73;
      let x_1975 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[(x_1970 / 4i)][(x_1972 % 4i)];
      let x_1976 : vec3<f32> = vs_TEXCOORD1;
      let x_1979 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1975 * vec4<f32>(x_1976.x, x_1976.x, x_1976.x, x_1976.x)) + x_1979);
      let x_1981 : i32 = u_xlati73;
      let x_1984 : i32 = u_xlati73;
      let x_1988 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1981 + 2i) / 4i)][((x_1984 + 2i) % 4i)];
      let x_1989 : vec3<f32> = vs_TEXCOORD1;
      let x_1992 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1988 * vec4<f32>(x_1989.z, x_1989.z, x_1989.z, x_1989.z)) + x_1992);
      let x_1994 : vec4<f32> = u_xlat8;
      let x_1995 : i32 = u_xlati73;
      let x_1998 : i32 = u_xlati73;
      let x_2002 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1995 + 3i) / 4i)][((x_1998 + 3i) % 4i)];
      u_xlat8 = (x_1994 + x_2002);
      let x_2004 : vec4<f32> = u_xlat8;
      let x_2006 : vec4<f32> = u_xlat8;
      let x_2008 : vec3<f32> = (vec3<f32>(x_2004.x, x_2004.y, x_2004.z) / vec3<f32>(x_2006.w, x_2006.w, x_2006.w));
      let x_2009 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2009.w);
      let x_2012 : i32 = u_xlati71;
      let x_2014 : f32 = x_208.x_AdditionalShadowParams[x_2012].y;
      u_xlatb73 = (0.0f < x_2014);
      let x_2016 : bool = u_xlatb73;
      if (x_2016) {
        let x_2019 : i32 = u_xlati71;
        let x_2021 : f32 = x_208.x_AdditionalShadowParams[x_2019].y;
        u_xlatb73 = (1.0f == x_2021);
        let x_2023 : bool = u_xlatb73;
        if (x_2023) {
          let x_2026 : vec4<f32> = u_xlat8;
          let x_2030 : vec4<f32> = x_208.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2026.x, x_2026.y, x_2026.x, x_2026.y) + x_2030);
          let x_2033 : vec4<f32> = u_xlat9;
          let x_2034 : vec2<f32> = vec2<f32>(x_2033.x, x_2033.y);
          let x_2036 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2034.x, x_2034.y, x_2036);
          let x_2044 : vec3<f32> = txVec30;
          let x_2046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2044.xy, x_2044.z);
          u_xlat10.x = x_2046;
          let x_2049 : vec4<f32> = u_xlat9;
          let x_2050 : vec2<f32> = vec2<f32>(x_2049.z, x_2049.w);
          let x_2052 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2050.x, x_2050.y, x_2052);
          let x_2059 : vec3<f32> = txVec31;
          let x_2061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2059.xy, x_2059.z);
          u_xlat10.y = x_2061;
          let x_2063 : vec4<f32> = u_xlat8;
          let x_2067 : vec4<f32> = x_208.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2063.x, x_2063.y, x_2063.x, x_2063.y) + x_2067);
          let x_2070 : vec4<f32> = u_xlat9;
          let x_2071 : vec2<f32> = vec2<f32>(x_2070.x, x_2070.y);
          let x_2073 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
          let x_2080 : vec3<f32> = txVec32;
          let x_2082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2080.xy, x_2080.z);
          u_xlat10.z = x_2082;
          let x_2085 : vec4<f32> = u_xlat9;
          let x_2086 : vec2<f32> = vec2<f32>(x_2085.z, x_2085.w);
          let x_2088 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
          let x_2095 : vec3<f32> = txVec33;
          let x_2097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2095.xy, x_2095.z);
          u_xlat10.w = x_2097;
          let x_2099 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2099, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2102 : i32 = u_xlati71;
          let x_2104 : f32 = x_208.x_AdditionalShadowParams[x_2102].y;
          u_xlatb51 = (2.0f == x_2104);
          let x_2106 : bool = u_xlatb51;
          if (x_2106) {
            let x_2109 : vec4<f32> = u_xlat8;
            let x_2113 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(x_2113.z, x_2113.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2117 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2117);
            let x_2119 : vec4<f32> = u_xlat8;
            let x_2122 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2125 : vec2<f32> = u_xlat51;
            let x_2127 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(x_2122.z, x_2122.w)) + -(x_2125));
            let x_2128 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2127.x, x_2127.y, x_2128.z, x_2128.w);
            let x_2130 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2130.x, x_2130.x, x_2130.y, x_2130.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2133 : vec4<f32> = u_xlat10;
            let x_2135 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2133.x, x_2133.x, x_2133.z, x_2133.z) * vec4<f32>(x_2135.x, x_2135.x, x_2135.z, x_2135.z));
            let x_2139 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2139.y, x_2139.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2142 : vec4<f32> = u_xlat11;
            let x_2145 : vec4<f32> = u_xlat9;
            let x_2148 : vec2<f32> = ((vec2<f32>(x_2142.x, x_2142.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2145.x, x_2145.y)));
            let x_2149 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2148.x, x_2149.y, x_2148.y, x_2149.w);
            let x_2151 : vec4<f32> = u_xlat9;
            let x_2154 : vec2<f32> = (-(vec2<f32>(x_2151.x, x_2151.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2155 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
            let x_2158 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2158.x, x_2158.y), vec2<f32>(0.0f, 0.0f));
            let x_2161 : vec2<f32> = u_xlat57;
            let x_2163 : vec2<f32> = u_xlat57;
            let x_2165 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2161) * x_2163) + vec2<f32>(x_2165.x, x_2165.y));
            let x_2168 : vec4<f32> = u_xlat9;
            let x_2170 : vec2<f32> = max(vec2<f32>(x_2168.x, x_2168.y), vec2<f32>(0.0f, 0.0f));
            let x_2171 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2170.x, x_2170.y, x_2171.z, x_2171.w);
            let x_2173 : vec4<f32> = u_xlat9;
            let x_2176 : vec4<f32> = u_xlat9;
            let x_2179 : vec4<f32> = u_xlat10;
            let x_2181 : vec2<f32> = ((-(vec2<f32>(x_2173.x, x_2173.y)) * vec2<f32>(x_2176.x, x_2176.y)) + vec2<f32>(x_2179.y, x_2179.w));
            let x_2182 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2181.x, x_2181.y, x_2182.z, x_2182.w);
            let x_2184 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2184 + vec2<f32>(1.0f, 1.0f));
            let x_2186 : vec4<f32> = u_xlat9;
            let x_2188 : vec2<f32> = (vec2<f32>(x_2186.x, x_2186.y) + vec2<f32>(1.0f, 1.0f));
            let x_2189 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
            let x_2191 : vec4<f32> = u_xlat10;
            let x_2193 : vec2<f32> = (vec2<f32>(x_2191.x, x_2191.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2194 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
            let x_2196 : vec4<f32> = u_xlat11;
            let x_2198 : vec2<f32> = (vec2<f32>(x_2196.x, x_2196.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2199 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2198.x, x_2198.y, x_2199.z, x_2199.w);
            let x_2201 : vec2<f32> = u_xlat57;
            let x_2202 : vec2<f32> = (x_2201 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2203 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
            let x_2205 : vec4<f32> = u_xlat9;
            let x_2207 : vec2<f32> = (vec2<f32>(x_2205.x, x_2205.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2208 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2207.x, x_2207.y, x_2208.z, x_2208.w);
            let x_2210 : vec4<f32> = u_xlat10;
            let x_2212 : vec2<f32> = (vec2<f32>(x_2210.y, x_2210.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2213 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
            let x_2216 : f32 = u_xlat11.x;
            u_xlat12.z = x_2216;
            let x_2219 : f32 = u_xlat9.x;
            u_xlat12.w = x_2219;
            let x_2222 : f32 = u_xlat14.x;
            u_xlat13.z = x_2222;
            let x_2225 : f32 = u_xlat55.x;
            u_xlat13.w = x_2225;
            let x_2227 : vec4<f32> = u_xlat12;
            let x_2229 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2227.z, x_2227.w, x_2227.x, x_2227.z) + vec4<f32>(x_2229.z, x_2229.w, x_2229.x, x_2229.z));
            let x_2233 : f32 = u_xlat12.y;
            u_xlat11.z = x_2233;
            let x_2236 : f32 = u_xlat9.y;
            u_xlat11.w = x_2236;
            let x_2239 : f32 = u_xlat13.y;
            u_xlat14.z = x_2239;
            let x_2242 : f32 = u_xlat55.y;
            u_xlat14.w = x_2242;
            let x_2244 : vec4<f32> = u_xlat11;
            let x_2246 : vec4<f32> = u_xlat14;
            let x_2248 : vec3<f32> = (vec3<f32>(x_2244.z, x_2244.y, x_2244.w) + vec3<f32>(x_2246.z, x_2246.y, x_2246.w));
            let x_2249 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
            let x_2251 : vec4<f32> = u_xlat13;
            let x_2253 : vec4<f32> = u_xlat10;
            let x_2255 : vec3<f32> = (vec3<f32>(x_2251.x, x_2251.z, x_2251.w) / vec3<f32>(x_2253.z, x_2253.w, x_2253.y));
            let x_2256 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
            let x_2258 : vec4<f32> = u_xlat11;
            let x_2260 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.y, x_2258.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2261 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
            let x_2263 : vec4<f32> = u_xlat14;
            let x_2265 : vec4<f32> = u_xlat9;
            let x_2267 : vec3<f32> = (vec3<f32>(x_2263.z, x_2263.y, x_2263.w) / vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
            let x_2268 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
            let x_2270 : vec4<f32> = u_xlat12;
            let x_2272 : vec3<f32> = (vec3<f32>(x_2270.x, x_2270.y, x_2270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2273 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
            let x_2275 : vec4<f32> = u_xlat11;
            let x_2278 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2280 : vec3<f32> = (vec3<f32>(x_2275.y, x_2275.x, x_2275.z) * vec3<f32>(x_2278.x, x_2278.x, x_2278.x));
            let x_2281 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
            let x_2283 : vec4<f32> = u_xlat12;
            let x_2286 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2288 : vec3<f32> = (vec3<f32>(x_2283.x, x_2283.y, x_2283.z) * vec3<f32>(x_2286.y, x_2286.y, x_2286.y));
            let x_2289 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
            let x_2292 : f32 = u_xlat12.x;
            u_xlat11.w = x_2292;
            let x_2294 : vec2<f32> = u_xlat51;
            let x_2297 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2300 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y) * vec4<f32>(x_2297.x, x_2297.y, x_2297.x, x_2297.y)) + vec4<f32>(x_2300.y, x_2300.w, x_2300.x, x_2300.w));
            let x_2303 : vec2<f32> = u_xlat51;
            let x_2305 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2308 : vec4<f32> = u_xlat11;
            let x_2310 : vec2<f32> = ((x_2303 * vec2<f32>(x_2305.x, x_2305.y)) + vec2<f32>(x_2308.z, x_2308.w));
            let x_2311 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
            let x_2314 : f32 = u_xlat11.y;
            u_xlat12.w = x_2314;
            let x_2316 : vec4<f32> = u_xlat12;
            let x_2317 : vec2<f32> = vec2<f32>(x_2316.y, x_2316.z);
            let x_2318 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2318.x, x_2317.x, x_2318.z, x_2317.y);
            let x_2320 : vec2<f32> = u_xlat51;
            let x_2323 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2326 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2320.x, x_2320.y, x_2320.x, x_2320.y) * vec4<f32>(x_2323.x, x_2323.y, x_2323.x, x_2323.y)) + vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2326.y));
            let x_2329 : vec2<f32> = u_xlat51;
            let x_2332 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2335 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2329.x, x_2329.y, x_2329.x, x_2329.y) * vec4<f32>(x_2332.x, x_2332.y, x_2332.x, x_2332.y)) + vec4<f32>(x_2335.w, x_2335.y, x_2335.w, x_2335.z));
            let x_2338 : vec2<f32> = u_xlat51;
            let x_2341 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2344 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2338.x, x_2338.y, x_2338.x, x_2338.y) * vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y)) + vec4<f32>(x_2344.x, x_2344.w, x_2344.z, x_2344.w));
            let x_2347 : vec4<f32> = u_xlat9;
            let x_2349 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2347.x, x_2347.x, x_2347.x, x_2347.y) * vec4<f32>(x_2349.z, x_2349.w, x_2349.y, x_2349.z));
            let x_2352 : vec4<f32> = u_xlat9;
            let x_2354 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2352.y, x_2352.y, x_2352.z, x_2352.z) * x_2354);
            let x_2357 : f32 = u_xlat9.z;
            let x_2359 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2357 * x_2359);
            let x_2363 : vec4<f32> = u_xlat13;
            let x_2364 : vec2<f32> = vec2<f32>(x_2363.x, x_2363.y);
            let x_2366 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2364.x, x_2364.y, x_2366);
            let x_2373 : vec3<f32> = txVec34;
            let x_2375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2373.xy, x_2373.z);
            u_xlat74 = x_2375;
            let x_2377 : vec4<f32> = u_xlat13;
            let x_2378 : vec2<f32> = vec2<f32>(x_2377.z, x_2377.w);
            let x_2380 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
            let x_2388 : vec3<f32> = txVec35;
            let x_2390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2388.xy, x_2388.z);
            u_xlat75 = x_2390;
            let x_2391 : f32 = u_xlat75;
            let x_2393 : f32 = u_xlat16.y;
            u_xlat75 = (x_2391 * x_2393);
            let x_2396 : f32 = u_xlat16.x;
            let x_2397 : f32 = u_xlat74;
            let x_2399 : f32 = u_xlat75;
            u_xlat74 = ((x_2396 * x_2397) + x_2399);
            let x_2402 : vec4<f32> = u_xlat14;
            let x_2403 : vec2<f32> = vec2<f32>(x_2402.x, x_2402.y);
            let x_2405 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2403.x, x_2403.y, x_2405);
            let x_2412 : vec3<f32> = txVec36;
            let x_2414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
            u_xlat75 = x_2414;
            let x_2416 : f32 = u_xlat16.z;
            let x_2417 : f32 = u_xlat75;
            let x_2419 : f32 = u_xlat74;
            u_xlat74 = ((x_2416 * x_2417) + x_2419);
            let x_2422 : vec4<f32> = u_xlat12;
            let x_2423 : vec2<f32> = vec2<f32>(x_2422.x, x_2422.y);
            let x_2425 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2423.x, x_2423.y, x_2425);
            let x_2432 : vec3<f32> = txVec37;
            let x_2434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2432.xy, x_2432.z);
            u_xlat75 = x_2434;
            let x_2436 : f32 = u_xlat16.w;
            let x_2437 : f32 = u_xlat75;
            let x_2439 : f32 = u_xlat74;
            u_xlat74 = ((x_2436 * x_2437) + x_2439);
            let x_2442 : vec4<f32> = u_xlat15;
            let x_2443 : vec2<f32> = vec2<f32>(x_2442.x, x_2442.y);
            let x_2445 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2443.x, x_2443.y, x_2445);
            let x_2452 : vec3<f32> = txVec38;
            let x_2454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2452.xy, x_2452.z);
            u_xlat75 = x_2454;
            let x_2456 : f32 = u_xlat17.x;
            let x_2457 : f32 = u_xlat75;
            let x_2459 : f32 = u_xlat74;
            u_xlat74 = ((x_2456 * x_2457) + x_2459);
            let x_2462 : vec4<f32> = u_xlat15;
            let x_2463 : vec2<f32> = vec2<f32>(x_2462.z, x_2462.w);
            let x_2465 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2463.x, x_2463.y, x_2465);
            let x_2472 : vec3<f32> = txVec39;
            let x_2474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2472.xy, x_2472.z);
            u_xlat75 = x_2474;
            let x_2476 : f32 = u_xlat17.y;
            let x_2477 : f32 = u_xlat75;
            let x_2479 : f32 = u_xlat74;
            u_xlat74 = ((x_2476 * x_2477) + x_2479);
            let x_2482 : vec4<f32> = u_xlat12;
            let x_2483 : vec2<f32> = vec2<f32>(x_2482.z, x_2482.w);
            let x_2485 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2483.x, x_2483.y, x_2485);
            let x_2492 : vec3<f32> = txVec40;
            let x_2494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2492.xy, x_2492.z);
            u_xlat75 = x_2494;
            let x_2496 : f32 = u_xlat17.z;
            let x_2497 : f32 = u_xlat75;
            let x_2499 : f32 = u_xlat74;
            u_xlat74 = ((x_2496 * x_2497) + x_2499);
            let x_2502 : vec4<f32> = u_xlat11;
            let x_2503 : vec2<f32> = vec2<f32>(x_2502.x, x_2502.y);
            let x_2505 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2503.x, x_2503.y, x_2505);
            let x_2512 : vec3<f32> = txVec41;
            let x_2514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2512.xy, x_2512.z);
            u_xlat75 = x_2514;
            let x_2516 : f32 = u_xlat17.w;
            let x_2517 : f32 = u_xlat75;
            let x_2519 : f32 = u_xlat74;
            u_xlat74 = ((x_2516 * x_2517) + x_2519);
            let x_2522 : vec4<f32> = u_xlat11;
            let x_2523 : vec2<f32> = vec2<f32>(x_2522.z, x_2522.w);
            let x_2525 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2523.x, x_2523.y, x_2525);
            let x_2532 : vec3<f32> = txVec42;
            let x_2534 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2532.xy, x_2532.z);
            u_xlat75 = x_2534;
            let x_2536 : f32 = u_xlat51.x;
            let x_2537 : f32 = u_xlat75;
            let x_2539 : f32 = u_xlat74;
            u_xlat73 = ((x_2536 * x_2537) + x_2539);
          } else {
            let x_2542 : vec4<f32> = u_xlat8;
            let x_2545 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2545.z, x_2545.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2549 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2549);
            let x_2551 : vec4<f32> = u_xlat8;
            let x_2554 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2557 : vec2<f32> = u_xlat51;
            let x_2559 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.y) * vec2<f32>(x_2554.z, x_2554.w)) + -(x_2557));
            let x_2560 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
            let x_2562 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2562.x, x_2562.x, x_2562.y, x_2562.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2565 : vec4<f32> = u_xlat10;
            let x_2567 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2565.x, x_2565.x, x_2565.z, x_2565.z) * vec4<f32>(x_2567.x, x_2567.x, x_2567.z, x_2567.z));
            let x_2570 : vec4<f32> = u_xlat11;
            let x_2572 : vec2<f32> = (vec2<f32>(x_2570.y, x_2570.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2573 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2573.x, x_2572.x, x_2573.z, x_2572.y);
            let x_2575 : vec4<f32> = u_xlat11;
            let x_2578 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2575.x, x_2575.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2578.x, x_2578.y)));
            let x_2582 : vec4<f32> = u_xlat9;
            let x_2585 : vec2<f32> = (-(vec2<f32>(x_2582.x, x_2582.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2586 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2585.x, x_2586.y, x_2585.y, x_2586.w);
            let x_2588 : vec4<f32> = u_xlat9;
            let x_2590 : vec2<f32> = min(vec2<f32>(x_2588.x, x_2588.y), vec2<f32>(0.0f, 0.0f));
            let x_2591 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
            let x_2593 : vec4<f32> = u_xlat11;
            let x_2596 : vec4<f32> = u_xlat11;
            let x_2599 : vec4<f32> = u_xlat10;
            let x_2601 : vec2<f32> = ((-(vec2<f32>(x_2593.x, x_2593.y)) * vec2<f32>(x_2596.x, x_2596.y)) + vec2<f32>(x_2599.x, x_2599.z));
            let x_2602 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2601.x, x_2602.y, x_2601.y, x_2602.w);
            let x_2604 : vec4<f32> = u_xlat9;
            let x_2606 : vec2<f32> = max(vec2<f32>(x_2604.x, x_2604.y), vec2<f32>(0.0f, 0.0f));
            let x_2607 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2606.x, x_2606.y, x_2607.z, x_2607.w);
            let x_2609 : vec4<f32> = u_xlat11;
            let x_2612 : vec4<f32> = u_xlat11;
            let x_2615 : vec4<f32> = u_xlat10;
            let x_2617 : vec2<f32> = ((-(vec2<f32>(x_2609.x, x_2609.y)) * vec2<f32>(x_2612.x, x_2612.y)) + vec2<f32>(x_2615.y, x_2615.w));
            let x_2618 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2618.x, x_2617.x, x_2618.z, x_2617.y);
            let x_2620 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2620 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2624 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2624 * 0.08163200318813323975f);
            let x_2627 : vec2<f32> = u_xlat55;
            let x_2629 : vec2<f32> = (vec2<f32>(x_2627.y, x_2627.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2630 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
            let x_2632 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2632.x, x_2632.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2636 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2636 * 0.08163200318813323975f);
            let x_2640 : f32 = u_xlat13.y;
            u_xlat11.x = x_2640;
            let x_2642 : vec4<f32> = u_xlat9;
            let x_2645 : vec2<f32> = ((vec2<f32>(x_2642.x, x_2642.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2646 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2646.x, x_2645.x, x_2646.z, x_2645.y);
            let x_2648 : vec4<f32> = u_xlat9;
            let x_2651 : vec2<f32> = ((vec2<f32>(x_2648.x, x_2648.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2652 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2651.x, x_2652.y, x_2651.y, x_2652.w);
            let x_2655 : f32 = u_xlat55.x;
            u_xlat10.y = x_2655;
            let x_2658 : f32 = u_xlat12.y;
            u_xlat10.w = x_2658;
            let x_2660 : vec4<f32> = u_xlat10;
            let x_2661 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2660 + x_2661);
            let x_2663 : vec4<f32> = u_xlat9;
            let x_2666 : vec2<f32> = ((vec2<f32>(x_2663.y, x_2663.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2667.x, x_2666.x, x_2667.z, x_2666.y);
            let x_2669 : vec4<f32> = u_xlat9;
            let x_2672 : vec2<f32> = ((vec2<f32>(x_2669.y, x_2669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2673 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2672.x, x_2673.y, x_2672.y, x_2673.w);
            let x_2676 : f32 = u_xlat55.y;
            u_xlat12.y = x_2676;
            let x_2678 : vec4<f32> = u_xlat12;
            let x_2679 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2678 + x_2679);
            let x_2681 : vec4<f32> = u_xlat10;
            let x_2682 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2681 / x_2682);
            let x_2684 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2684 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2686 : vec4<f32> = u_xlat12;
            let x_2687 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2686 / x_2687);
            let x_2689 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2691 : vec4<f32> = u_xlat10;
            let x_2694 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2691.w, x_2691.x, x_2691.y, x_2691.z) * vec4<f32>(x_2694.x, x_2694.x, x_2694.x, x_2694.x));
            let x_2697 : vec4<f32> = u_xlat12;
            let x_2700 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2697.x, x_2697.w, x_2697.y, x_2697.z) * vec4<f32>(x_2700.y, x_2700.y, x_2700.y, x_2700.y));
            let x_2703 : vec4<f32> = u_xlat10;
            let x_2704 : vec3<f32> = vec3<f32>(x_2703.y, x_2703.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2704.x, x_2705.y, x_2704.y, x_2704.z);
            let x_2708 : f32 = u_xlat12.x;
            u_xlat13.y = x_2708;
            let x_2710 : vec2<f32> = u_xlat51;
            let x_2713 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2716 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.y) * vec4<f32>(x_2713.x, x_2713.y, x_2713.x, x_2713.y)) + vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2716.y));
            let x_2719 : vec2<f32> = u_xlat51;
            let x_2721 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2724 : vec4<f32> = u_xlat13;
            let x_2726 : vec2<f32> = ((x_2719 * vec2<f32>(x_2721.x, x_2721.y)) + vec2<f32>(x_2724.w, x_2724.y));
            let x_2727 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2726.x, x_2726.y, x_2727.z, x_2727.w);
            let x_2730 : f32 = u_xlat13.y;
            u_xlat10.y = x_2730;
            let x_2733 : f32 = u_xlat12.z;
            u_xlat13.y = x_2733;
            let x_2735 : vec2<f32> = u_xlat51;
            let x_2738 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2741 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2735.x, x_2735.y, x_2735.x, x_2735.y) * vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.y)) + vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2741.y));
            let x_2745 : vec2<f32> = u_xlat51;
            let x_2747 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2750 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2745 * vec2<f32>(x_2747.x, x_2747.y)) + vec2<f32>(x_2750.w, x_2750.y));
            let x_2754 : f32 = u_xlat13.y;
            u_xlat10.z = x_2754;
            let x_2756 : vec2<f32> = u_xlat51;
            let x_2759 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y) * vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y)) + vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.z));
            let x_2766 : f32 = u_xlat12.w;
            u_xlat13.y = x_2766;
            let x_2769 : vec2<f32> = u_xlat51;
            let x_2772 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2775 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) * vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y)) + vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2775.y));
            let x_2779 : vec2<f32> = u_xlat51;
            let x_2781 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2779 * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2784.w, x_2784.y));
            let x_2788 : f32 = u_xlat13.y;
            u_xlat10.w = x_2788;
            let x_2791 : vec2<f32> = u_xlat51;
            let x_2793 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2791 * vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(x_2796.x, x_2796.w));
            let x_2799 : vec4<f32> = u_xlat13;
            let x_2800 : vec3<f32> = vec3<f32>(x_2799.x, x_2799.z, x_2799.w);
            let x_2801 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2800.x, x_2801.y, x_2800.y, x_2800.z);
            let x_2803 : vec2<f32> = u_xlat51;
            let x_2806 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2803.x, x_2803.y, x_2803.x, x_2803.y) * vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y)) + vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2809.y));
            let x_2812 : vec2<f32> = u_xlat51;
            let x_2814 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2817 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2812 * vec2<f32>(x_2814.x, x_2814.y)) + vec2<f32>(x_2817.w, x_2817.y));
            let x_2821 : f32 = u_xlat10.x;
            u_xlat12.x = x_2821;
            let x_2823 : vec2<f32> = u_xlat51;
            let x_2825 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2828 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2823 * vec2<f32>(x_2825.x, x_2825.y)) + vec2<f32>(x_2828.x, x_2828.y));
            let x_2832 : vec4<f32> = u_xlat9;
            let x_2834 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2832.x, x_2832.x, x_2832.x, x_2832.x) * x_2834);
            let x_2837 : vec4<f32> = u_xlat9;
            let x_2839 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2837.y, x_2837.y, x_2837.y, x_2837.y) * x_2839);
            let x_2842 : vec4<f32> = u_xlat9;
            let x_2844 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_2842.z, x_2842.z, x_2842.z, x_2842.z) * x_2844);
            let x_2846 : vec4<f32> = u_xlat9;
            let x_2848 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_2846.w, x_2846.w, x_2846.w, x_2846.w) * x_2848);
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2852 : vec2<f32> = vec2<f32>(x_2851.x, x_2851.y);
            let x_2854 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2852.x, x_2852.y, x_2854);
            let x_2861 : vec3<f32> = txVec43;
            let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
            u_xlat75 = x_2863;
            let x_2865 : vec4<f32> = u_xlat14;
            let x_2866 : vec2<f32> = vec2<f32>(x_2865.z, x_2865.w);
            let x_2868 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
            let x_2876 : vec3<f32> = txVec44;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat76 = x_2878;
            let x_2879 : f32 = u_xlat76;
            let x_2881 : f32 = u_xlat20.y;
            u_xlat76 = (x_2879 * x_2881);
            let x_2884 : f32 = u_xlat20.x;
            let x_2885 : f32 = u_xlat75;
            let x_2887 : f32 = u_xlat76;
            u_xlat75 = ((x_2884 * x_2885) + x_2887);
            let x_2890 : vec4<f32> = u_xlat15;
            let x_2891 : vec2<f32> = vec2<f32>(x_2890.x, x_2890.y);
            let x_2893 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2891.x, x_2891.y, x_2893);
            let x_2900 : vec3<f32> = txVec45;
            let x_2902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2900.xy, x_2900.z);
            u_xlat76 = x_2902;
            let x_2904 : f32 = u_xlat20.z;
            let x_2905 : f32 = u_xlat76;
            let x_2907 : f32 = u_xlat75;
            u_xlat75 = ((x_2904 * x_2905) + x_2907);
            let x_2910 : vec4<f32> = u_xlat17;
            let x_2911 : vec2<f32> = vec2<f32>(x_2910.x, x_2910.y);
            let x_2913 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
            let x_2920 : vec3<f32> = txVec46;
            let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
            u_xlat76 = x_2922;
            let x_2924 : f32 = u_xlat20.w;
            let x_2925 : f32 = u_xlat76;
            let x_2927 : f32 = u_xlat75;
            u_xlat75 = ((x_2924 * x_2925) + x_2927);
            let x_2930 : vec4<f32> = u_xlat16;
            let x_2931 : vec2<f32> = vec2<f32>(x_2930.x, x_2930.y);
            let x_2933 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
            let x_2940 : vec3<f32> = txVec47;
            let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
            u_xlat76 = x_2942;
            let x_2944 : f32 = u_xlat21.x;
            let x_2945 : f32 = u_xlat76;
            let x_2947 : f32 = u_xlat75;
            u_xlat75 = ((x_2944 * x_2945) + x_2947);
            let x_2950 : vec4<f32> = u_xlat16;
            let x_2951 : vec2<f32> = vec2<f32>(x_2950.z, x_2950.w);
            let x_2953 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec48;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat76 = x_2962;
            let x_2964 : f32 = u_xlat21.y;
            let x_2965 : f32 = u_xlat76;
            let x_2967 : f32 = u_xlat75;
            u_xlat75 = ((x_2964 * x_2965) + x_2967);
            let x_2970 : vec2<f32> = u_xlat61;
            let x_2972 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_2970.x, x_2970.y, x_2972);
            let x_2979 : vec3<f32> = txVec49;
            let x_2981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2979.xy, x_2979.z);
            u_xlat76 = x_2981;
            let x_2983 : f32 = u_xlat21.z;
            let x_2984 : f32 = u_xlat76;
            let x_2986 : f32 = u_xlat75;
            u_xlat75 = ((x_2983 * x_2984) + x_2986);
            let x_2989 : vec4<f32> = u_xlat17;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.z, x_2989.w);
            let x_2992 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec50;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat76 = x_3001;
            let x_3003 : f32 = u_xlat21.w;
            let x_3004 : f32 = u_xlat76;
            let x_3006 : f32 = u_xlat75;
            u_xlat75 = ((x_3003 * x_3004) + x_3006);
            let x_3009 : vec4<f32> = u_xlat18;
            let x_3010 : vec2<f32> = vec2<f32>(x_3009.x, x_3009.y);
            let x_3012 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3019 : vec3<f32> = txVec51;
            let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
            u_xlat76 = x_3021;
            let x_3023 : f32 = u_xlat22.x;
            let x_3024 : f32 = u_xlat76;
            let x_3026 : f32 = u_xlat75;
            u_xlat75 = ((x_3023 * x_3024) + x_3026);
            let x_3029 : vec4<f32> = u_xlat18;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.z, x_3029.w);
            let x_3032 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec52;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat76 = x_3041;
            let x_3043 : f32 = u_xlat22.y;
            let x_3044 : f32 = u_xlat76;
            let x_3046 : f32 = u_xlat75;
            u_xlat75 = ((x_3043 * x_3044) + x_3046);
            let x_3049 : vec2<f32> = u_xlat33;
            let x_3051 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
            let x_3058 : vec3<f32> = txVec53;
            let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
            u_xlat76 = x_3060;
            let x_3062 : f32 = u_xlat22.z;
            let x_3063 : f32 = u_xlat76;
            let x_3065 : f32 = u_xlat75;
            u_xlat75 = ((x_3062 * x_3063) + x_3065);
            let x_3068 : vec2<f32> = u_xlat19;
            let x_3070 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
            let x_3077 : vec3<f32> = txVec54;
            let x_3079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
            u_xlat76 = x_3079;
            let x_3081 : f32 = u_xlat22.w;
            let x_3082 : f32 = u_xlat76;
            let x_3084 : f32 = u_xlat75;
            u_xlat75 = ((x_3081 * x_3082) + x_3084);
            let x_3087 : vec4<f32> = u_xlat13;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.x, x_3087.y);
            let x_3090 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec55;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat76 = x_3099;
            let x_3101 : f32 = u_xlat9.x;
            let x_3102 : f32 = u_xlat76;
            let x_3104 : f32 = u_xlat75;
            u_xlat75 = ((x_3101 * x_3102) + x_3104);
            let x_3107 : vec4<f32> = u_xlat13;
            let x_3108 : vec2<f32> = vec2<f32>(x_3107.z, x_3107.w);
            let x_3110 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec56;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat76 = x_3119;
            let x_3121 : f32 = u_xlat9.y;
            let x_3122 : f32 = u_xlat76;
            let x_3124 : f32 = u_xlat75;
            u_xlat75 = ((x_3121 * x_3122) + x_3124);
            let x_3127 : vec2<f32> = u_xlat58;
            let x_3129 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
            let x_3136 : vec3<f32> = txVec57;
            let x_3138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3136.xy, x_3136.z);
            u_xlat76 = x_3138;
            let x_3140 : f32 = u_xlat9.z;
            let x_3141 : f32 = u_xlat76;
            let x_3143 : f32 = u_xlat75;
            u_xlat75 = ((x_3140 * x_3141) + x_3143);
            let x_3146 : vec2<f32> = u_xlat51;
            let x_3148 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec58;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat51.x = x_3157;
            let x_3160 : f32 = u_xlat9.w;
            let x_3162 : f32 = u_xlat51.x;
            let x_3164 : f32 = u_xlat75;
            u_xlat73 = ((x_3160 * x_3162) + x_3164);
          }
        }
      } else {
        let x_3168 : vec4<f32> = u_xlat8;
        let x_3169 : vec2<f32> = vec2<f32>(x_3168.x, x_3168.y);
        let x_3171 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3169.x, x_3169.y, x_3171);
        let x_3178 : vec3<f32> = txVec59;
        let x_3180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3178.xy, x_3178.z);
        u_xlat73 = x_3180;
      }
      let x_3181 : i32 = u_xlati71;
      let x_3183 : f32 = x_208.x_AdditionalShadowParams[x_3181].x;
      u_xlat51.x = (1.0f + -(x_3183));
      let x_3187 : f32 = u_xlat73;
      let x_3188 : i32 = u_xlati71;
      let x_3190 : f32 = x_208.x_AdditionalShadowParams[x_3188].x;
      let x_3193 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3187 * x_3190) + x_3193);
      let x_3196 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3196);
      let x_3200 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3200 >= 1.0f);
      let x_3202 : bool = u_xlatb74;
      let x_3203 : bool = u_xlatb51;
      u_xlatb51 = (x_3202 | x_3203);
      let x_3205 : bool = u_xlatb51;
      let x_3206 : f32 = u_xlat73;
      u_xlat73 = select(x_3206, 1.0f, x_3205);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3209 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3209) + 1.0f);
    let x_3213 : f32 = u_xlat69;
    let x_3215 : f32 = u_xlat51.x;
    let x_3217 : f32 = u_xlat73;
    u_xlat73 = ((x_3213 * x_3215) + x_3217);
    let x_3220 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3220 & 31i)));
    let x_3224 : i32 = u_xlati51;
    let x_3227 : f32 = x_1536.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3224) & bitcast<u32>(x_3227)));
    let x_3231 : i32 = u_xlati51;
    if ((x_3231 != 0i)) {
      let x_3235 : i32 = u_xlati71;
      let x_3237 : f32 = x_1536.x_AdditionalLightsLightTypes[x_3235].el;
      u_xlati51 = i32(x_3237);
      let x_3240 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3240 != 0i));
      let x_3244 : i32 = u_xlati71;
      u_xlati75 = (x_3244 << bitcast<u32>(2i));
      let x_3246 : i32 = u_xlati74;
      if ((x_3246 != 0i)) {
        let x_3250 : vec3<f32> = vs_TEXCOORD1;
        let x_3252 : i32 = u_xlati75;
        let x_3255 : i32 = u_xlati75;
        let x_3259 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3252 + 1i) / 4i)][((x_3255 + 1i) % 4i)];
        let x_3261 : vec3<f32> = (vec3<f32>(x_3250.y, x_3250.y, x_3250.y) * vec3<f32>(x_3259.x, x_3259.y, x_3259.w));
        let x_3262 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3261.x, x_3261.y, x_3261.z, x_3262.w);
        let x_3264 : i32 = u_xlati75;
        let x_3266 : i32 = u_xlati75;
        let x_3269 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3264 / 4i)][(x_3266 % 4i)];
        let x_3271 : vec3<f32> = vs_TEXCOORD1;
        let x_3274 : vec4<f32> = u_xlat8;
        let x_3276 : vec3<f32> = ((vec3<f32>(x_3269.x, x_3269.y, x_3269.w) * vec3<f32>(x_3271.x, x_3271.x, x_3271.x)) + vec3<f32>(x_3274.x, x_3274.y, x_3274.z));
        let x_3277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3276.x, x_3276.y, x_3276.z, x_3277.w);
        let x_3279 : i32 = u_xlati75;
        let x_3282 : i32 = u_xlati75;
        let x_3286 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3279 + 2i) / 4i)][((x_3282 + 2i) % 4i)];
        let x_3288 : vec3<f32> = vs_TEXCOORD1;
        let x_3291 : vec4<f32> = u_xlat8;
        let x_3293 : vec3<f32> = ((vec3<f32>(x_3286.x, x_3286.y, x_3286.w) * vec3<f32>(x_3288.z, x_3288.z, x_3288.z)) + vec3<f32>(x_3291.x, x_3291.y, x_3291.z));
        let x_3294 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3293.x, x_3293.y, x_3293.z, x_3294.w);
        let x_3296 : vec4<f32> = u_xlat8;
        let x_3298 : i32 = u_xlati75;
        let x_3301 : i32 = u_xlati75;
        let x_3305 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3298 + 3i) / 4i)][((x_3301 + 3i) % 4i)];
        let x_3307 : vec3<f32> = (vec3<f32>(x_3296.x, x_3296.y, x_3296.z) + vec3<f32>(x_3305.x, x_3305.y, x_3305.w));
        let x_3308 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);
        let x_3310 : vec4<f32> = u_xlat8;
        let x_3312 : vec4<f32> = u_xlat8;
        let x_3314 : vec2<f32> = (vec2<f32>(x_3310.x, x_3310.y) / vec2<f32>(x_3312.z, x_3312.z));
        let x_3315 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3314.x, x_3314.y, x_3315.z, x_3315.w);
        let x_3317 : vec4<f32> = u_xlat8;
        let x_3320 : vec2<f32> = ((vec2<f32>(x_3317.x, x_3317.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3321 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3320.x, x_3320.y, x_3321.z, x_3321.w);
        let x_3323 : vec4<f32> = u_xlat8;
        let x_3327 : vec2<f32> = clamp(vec2<f32>(x_3323.x, x_3323.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3327.x, x_3327.y, x_3328.z, x_3328.w);
        let x_3330 : i32 = u_xlati71;
        let x_3332 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3330];
        let x_3334 : vec4<f32> = u_xlat8;
        let x_3337 : i32 = u_xlati71;
        let x_3339 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3337];
        let x_3341 : vec2<f32> = ((vec2<f32>(x_3332.x, x_3332.y) * vec2<f32>(x_3334.x, x_3334.y)) + vec2<f32>(x_3339.z, x_3339.w));
        let x_3342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3341.x, x_3341.y, x_3342.z, x_3342.w);
      } else {
        let x_3345 : i32 = u_xlati51;
        u_xlatb51 = (x_3345 == 1i);
        let x_3347 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3347);
        let x_3349 : i32 = u_xlati51;
        if ((x_3349 != 0i)) {
          let x_3353 : vec3<f32> = vs_TEXCOORD1;
          let x_3355 : i32 = u_xlati75;
          let x_3358 : i32 = u_xlati75;
          let x_3362 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3355 + 1i) / 4i)][((x_3358 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3353.y, x_3353.y) * vec2<f32>(x_3362.x, x_3362.y));
          let x_3365 : i32 = u_xlati75;
          let x_3367 : i32 = u_xlati75;
          let x_3370 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3365 / 4i)][(x_3367 % 4i)];
          let x_3372 : vec3<f32> = vs_TEXCOORD1;
          let x_3375 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3370.x, x_3370.y) * vec2<f32>(x_3372.x, x_3372.x)) + x_3375);
          let x_3377 : i32 = u_xlati75;
          let x_3380 : i32 = u_xlati75;
          let x_3384 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3377 + 2i) / 4i)][((x_3380 + 2i) % 4i)];
          let x_3386 : vec3<f32> = vs_TEXCOORD1;
          let x_3389 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3384.x, x_3384.y) * vec2<f32>(x_3386.z, x_3386.z)) + x_3389);
          let x_3391 : vec2<f32> = u_xlat51;
          let x_3392 : i32 = u_xlati75;
          let x_3395 : i32 = u_xlati75;
          let x_3399 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3392 + 3i) / 4i)][((x_3395 + 3i) % 4i)];
          u_xlat51 = (x_3391 + vec2<f32>(x_3399.x, x_3399.y));
          let x_3402 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3402 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3405 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3405);
          let x_3407 : i32 = u_xlati71;
          let x_3409 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3407];
          let x_3411 : vec2<f32> = u_xlat51;
          let x_3413 : i32 = u_xlati71;
          let x_3415 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3413];
          let x_3417 : vec2<f32> = ((vec2<f32>(x_3409.x, x_3409.y) * x_3411) + vec2<f32>(x_3415.z, x_3415.w));
          let x_3418 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3417.x, x_3417.y, x_3418.z, x_3418.w);
        } else {
          let x_3421 : vec3<f32> = vs_TEXCOORD1;
          let x_3423 : i32 = u_xlati75;
          let x_3426 : i32 = u_xlati75;
          let x_3430 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3423 + 1i) / 4i)][((x_3426 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3421.y, x_3421.y, x_3421.y, x_3421.y) * x_3430);
          let x_3432 : i32 = u_xlati75;
          let x_3434 : i32 = u_xlati75;
          let x_3437 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[(x_3432 / 4i)][(x_3434 % 4i)];
          let x_3438 : vec3<f32> = vs_TEXCOORD1;
          let x_3441 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3437 * vec4<f32>(x_3438.x, x_3438.x, x_3438.x, x_3438.x)) + x_3441);
          let x_3443 : i32 = u_xlati75;
          let x_3446 : i32 = u_xlati75;
          let x_3450 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3443 + 2i) / 4i)][((x_3446 + 2i) % 4i)];
          let x_3451 : vec3<f32> = vs_TEXCOORD1;
          let x_3454 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3450 * vec4<f32>(x_3451.z, x_3451.z, x_3451.z, x_3451.z)) + x_3454);
          let x_3456 : vec4<f32> = u_xlat9;
          let x_3457 : i32 = u_xlati75;
          let x_3460 : i32 = u_xlati75;
          let x_3464 : vec4<f32> = x_1536.x_AdditionalLightsWorldToLights[((x_3457 + 3i) / 4i)][((x_3460 + 3i) % 4i)];
          u_xlat9 = (x_3456 + x_3464);
          let x_3466 : vec4<f32> = u_xlat9;
          let x_3468 : vec4<f32> = u_xlat9;
          let x_3470 : vec3<f32> = (vec3<f32>(x_3466.x, x_3466.y, x_3466.z) / vec3<f32>(x_3468.w, x_3468.w, x_3468.w));
          let x_3471 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3470.x, x_3470.y, x_3470.z, x_3471.w);
          let x_3473 : vec4<f32> = u_xlat9;
          let x_3475 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3473.x, x_3473.y, x_3473.z), vec3<f32>(x_3475.x, x_3475.y, x_3475.z));
          let x_3480 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3480);
          let x_3483 : vec2<f32> = u_xlat51;
          let x_3485 : vec4<f32> = u_xlat9;
          let x_3487 : vec3<f32> = (vec3<f32>(x_3483.x, x_3483.x, x_3483.x) * vec3<f32>(x_3485.x, x_3485.y, x_3485.z));
          let x_3488 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
          let x_3490 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3490.x, x_3490.y, x_3490.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3497 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3497, 0.00000099999999747524f);
          let x_3502 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3502);
          let x_3505 : vec2<f32> = u_xlat51;
          let x_3507 : vec4<f32> = u_xlat9;
          let x_3509 : vec3<f32> = (vec3<f32>(x_3505.x, x_3505.x, x_3505.x) * vec3<f32>(x_3507.z, x_3507.x, x_3507.y));
          let x_3510 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
          let x_3513 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3513);
          let x_3517 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3517, 0.0f, 1.0f);
          let x_3521 : vec4<f32> = u_xlat10;
          let x_3523 : vec4<bool> = (vec4<f32>(x_3521.y, x_3521.z, x_3521.y, x_3521.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3523.x, x_3523.y);
          let x_3527 : bool = u_xlatb54.x;
          if (x_3527) {
            let x_3532 : f32 = u_xlat10.x;
            x_3528 = x_3532;
          } else {
            let x_3535 : f32 = u_xlat10.x;
            x_3528 = -(x_3535);
          }
          let x_3537 : f32 = x_3528;
          u_xlat54.x = x_3537;
          let x_3540 : bool = u_xlatb54.y;
          if (x_3540) {
            let x_3545 : f32 = u_xlat10.x;
            x_3541 = x_3545;
          } else {
            let x_3548 : f32 = u_xlat10.x;
            x_3541 = -(x_3548);
          }
          let x_3550 : f32 = x_3541;
          u_xlat54.y = x_3550;
          let x_3552 : vec4<f32> = u_xlat9;
          let x_3554 : vec2<f32> = u_xlat51;
          let x_3557 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3552.x, x_3552.y) * vec2<f32>(x_3554.x, x_3554.x)) + x_3557);
          let x_3559 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3559 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3562 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3562, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3566 : i32 = u_xlati71;
          let x_3568 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3566];
          let x_3570 : vec2<f32> = u_xlat51;
          let x_3572 : i32 = u_xlati71;
          let x_3574 : vec4<f32> = x_1536.x_AdditionalLightsCookieAtlasUVRects[x_3572];
          let x_3576 : vec2<f32> = ((vec2<f32>(x_3568.x, x_3568.y) * x_3570) + vec2<f32>(x_3574.z, x_3574.w));
          let x_3577 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3576.x, x_3576.y, x_3577.z, x_3577.w);
        }
      }
      let x_3584 : vec4<f32> = u_xlat8;
      let x_3586 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3584.x, x_3584.y), 0.0f);
      u_xlat8 = x_3586;
      let x_3588 : bool = u_xlatb5.y;
      if (x_3588) {
        let x_3593 : f32 = u_xlat8.w;
        x_3589 = x_3593;
      } else {
        let x_3596 : f32 = u_xlat8.x;
        x_3589 = x_3596;
      }
      let x_3597 : f32 = x_3589;
      u_xlat51.x = x_3597;
      let x_3600 : bool = u_xlatb5.x;
      if (x_3600) {
        let x_3604 : vec4<f32> = u_xlat8;
        x_3601 = vec3<f32>(x_3604.x, x_3604.y, x_3604.z);
      } else {
        let x_3607 : vec2<f32> = u_xlat51;
        x_3601 = vec3<f32>(x_3607.x, x_3607.x, x_3607.x);
      }
      let x_3609 : vec3<f32> = x_3601;
      let x_3610 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3609.x, x_3609.y, x_3609.z, x_3610.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3616 : vec4<f32> = u_xlat8;
    let x_3618 : i32 = u_xlati71;
    let x_3620 : vec4<f32> = x_1785.x_AdditionalLightsColor[x_3618];
    let x_3622 : vec3<f32> = (vec3<f32>(x_3616.x, x_3616.y, x_3616.z) * vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
    let x_3623 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3622.x, x_3622.y, x_3622.z, x_3623.w);
    let x_3625 : f32 = u_xlat72;
    let x_3626 : f32 = u_xlat73;
    u_xlat71 = (x_3625 * x_3626);
    let x_3628 : f32 = u_xlat71;
    let x_3630 : vec4<f32> = u_xlat8;
    let x_3632 : vec3<f32> = (vec3<f32>(x_3628, x_3628, x_3628) * vec3<f32>(x_3630.x, x_3630.y, x_3630.z));
    let x_3633 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
    let x_3635 : vec3<f32> = u_xlat2;
    let x_3636 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3635, vec3<f32>(x_3636.x, x_3636.y, x_3636.z));
    let x_3639 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3639, 0.0f, 1.0f);
    let x_3641 : f32 = u_xlat71;
    let x_3643 : vec4<f32> = u_xlat8;
    let x_3645 : vec3<f32> = (vec3<f32>(x_3641, x_3641, x_3641) * vec3<f32>(x_3643.x, x_3643.y, x_3643.z));
    let x_3646 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3645.x, x_3645.y, x_3645.z, x_3646.w);
    let x_3648 : vec4<f32> = u_xlat7;
    let x_3650 : vec4<f32> = u_xlat1;
    let x_3653 : vec4<f32> = u_xlat6;
    let x_3655 : vec3<f32> = ((vec3<f32>(x_3648.x, x_3648.y, x_3648.z) * vec3<f32>(x_3650.y, x_3650.z, x_3650.w)) + vec3<f32>(x_3653.x, x_3653.y, x_3653.z));
    let x_3656 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3655.x, x_3655.y, x_3655.z, x_3656.w);

    continuing {
      let x_3658 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3658 + bitcast<u32>(1i));
    }
  }
  let x_3660 : vec4<f32> = u_xlat3;
  let x_3662 : vec4<f32> = u_xlat1;
  let x_3665 : vec4<f32> = u_xlat4;
  let x_3667 : vec3<f32> = ((vec3<f32>(x_3660.x, x_3660.y, x_3660.z) * vec3<f32>(x_3662.y, x_3662.z, x_3662.w)) + vec3<f32>(x_3665.x, x_3665.y, x_3665.z));
  let x_3668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3667.x, x_3667.y, x_3667.z, x_3668.w);
  let x_3672 : vec4<f32> = u_xlat6;
  let x_3674 : vec4<f32> = u_xlat1;
  let x_3676 : vec3<f32> = (vec3<f32>(x_3672.x, x_3672.y, x_3672.z) + vec3<f32>(x_3674.x, x_3674.y, x_3674.z));
  let x_3677 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3676.x, x_3676.y, x_3676.z, x_3677.w);
  let x_3680 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3680 == 1.0f);
  let x_3682 : bool = u_xlatb23;
  let x_3683 : bool = u_xlatb46;
  u_xlatb23 = (x_3682 | x_3683);
  let x_3685 : bool = u_xlatb23;
  if (x_3685) {
    let x_3690 : f32 = u_xlat0.x;
    x_3686 = x_3690;
  } else {
    x_3686 = 1.0f;
  }
  let x_3692 : f32 = x_3686;
  SV_Target0.w = x_3692;
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


