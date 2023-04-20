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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_159 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_247 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

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

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb67 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1650 : AdditionalLights;

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu67 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
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
  var x_1487 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1791 : f32;
  var x_1801 : f32;
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
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat22 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat44 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat66 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat66;
  let x_88 : f32 = u_xlat44;
  u_xlat44 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat44;
  u_xlat44 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat22;
  let x_95 : f32 = u_xlat44;
  u_xlat22 = (x_94 / x_95);
  let x_97 : f32 = u_xlat22;
  u_xlat22 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb44;
  if (x_108) {
    let x_112 : f32 = u_xlat22;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  u_xlat2.w = 1.0f;
  let x_163 : vec4<f32> = x_159.unity_SHAr;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_163, x_164);
  let x_169 : vec4<f32> = x_159.unity_SHAg;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_169, x_170);
  let x_176 : vec4<f32> = x_159.unity_SHAb;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_176, x_177);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_181.y, x_181.z, x_181.z, x_181.x) * vec4<f32>(x_183.x, x_183.y, x_183.z, x_183.z));
  let x_189 : vec4<f32> = x_159.unity_SHBr;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_189, x_190);
  let x_195 : vec4<f32> = x_159.unity_SHBg;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_159.unity_SHBb;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_201, x_202);
  let x_206 : f32 = u_xlat2.y;
  let x_208 : f32 = u_xlat2.y;
  u_xlat0.x = (x_206 * x_208);
  let x_212 : f32 = u_xlat2.x;
  let x_214 : f32 = u_xlat2.x;
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_212 * x_214) + -(x_217));
  let x_223 : vec4<f32> = x_159.unity_SHC;
  let x_225 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec3<f32> = u_xlat3;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_233 + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_237, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_250 : f32 = x_247.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_250);
  let x_252 : bool = u_xlatb0;
  if (x_252) {
    let x_256 : f32 = x_247.x_MainLightShadowParams.y;
    u_xlatb0 = (x_256 == 1.0f);
    let x_258 : bool = u_xlatb0;
    if (x_258) {
      let x_262 : vec4<f32> = vs_TEXCOORD6;
      let x_266 : vec4<f32> = x_247.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y) + x_266);
      let x_270 : vec4<f32> = u_xlat4;
      let x_271 : vec2<f32> = vec2<f32>(x_270.x, x_270.y);
      let x_273 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_271.x, x_271.y, x_273);
      let x_285 : vec3<f32> = txVec0;
      let x_287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_285.xy, x_285.z);
      u_xlat5.x = x_287;
      let x_290 : vec4<f32> = u_xlat4;
      let x_291 : vec2<f32> = vec2<f32>(x_290.z, x_290.w);
      let x_293 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_291.x, x_291.y, x_293);
      let x_300 : vec3<f32> = txVec1;
      let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
      u_xlat5.y = x_302;
      let x_304 : vec4<f32> = vs_TEXCOORD6;
      let x_308 : vec4<f32> = x_247.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_304.x, x_304.y, x_304.x, x_304.y) + x_308);
      let x_311 : vec4<f32> = u_xlat4;
      let x_312 : vec2<f32> = vec2<f32>(x_311.x, x_311.y);
      let x_314 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_321 : vec3<f32> = txVec2;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat5.z = x_323;
      let x_326 : vec4<f32> = u_xlat4;
      let x_327 : vec2<f32> = vec2<f32>(x_326.z, x_326.w);
      let x_329 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_327.x, x_327.y, x_329);
      let x_336 : vec3<f32> = txVec3;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat5.w = x_338;
      let x_340 : vec4<f32> = u_xlat5;
      u_xlat0.x = dot(x_340, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_348 : f32 = x_247.x_MainLightShadowParams.y;
      u_xlatb66 = (x_348 == 2.0f);
      let x_351 : bool = u_xlatb66;
      if (x_351) {
        let x_354 : vec4<f32> = vs_TEXCOORD6;
        let x_358 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_362 : vec2<f32> = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_358.z, x_358.w)) + vec2<f32>(0.5f, 0.5f));
        let x_363 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
        let x_365 : vec4<f32> = u_xlat4;
        let x_367 : vec2<f32> = floor(vec2<f32>(x_365.x, x_365.y));
        let x_368 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
        let x_372 : vec4<f32> = vs_TEXCOORD6;
        let x_375 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_378 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(x_375.z, x_375.w)) + -(vec2<f32>(x_378.x, x_378.y)));
        let x_382 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_382.x, x_382.x, x_382.y, x_382.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_387 : vec4<f32> = u_xlat5;
        let x_389 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_387.x, x_387.x, x_387.z, x_387.z) * vec4<f32>(x_389.x, x_389.x, x_389.z, x_389.z));
        let x_392 : vec4<f32> = u_xlat6;
        let x_396 : vec2<f32> = (vec2<f32>(x_392.y, x_392.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_397 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_396.x, x_397.y, x_396.y, x_397.w);
        let x_399 : vec4<f32> = u_xlat6;
        let x_402 : vec2<f32> = u_xlat48;
        let x_404 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.z) * vec2<f32>(0.5f, 0.5f)) + -(x_402));
        let x_405 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_408 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_408) + vec2<f32>(1.0f, 1.0f));
        let x_413 : vec2<f32> = u_xlat48;
        let x_415 : vec2<f32> = min(x_413, vec2<f32>(0.0f, 0.0f));
        let x_416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_418 : vec4<f32> = u_xlat7;
        let x_421 : vec4<f32> = u_xlat7;
        let x_424 : vec2<f32> = u_xlat50;
        let x_425 : vec2<f32> = ((-(vec2<f32>(x_418.x, x_418.y)) * vec2<f32>(x_421.x, x_421.y)) + x_424);
        let x_426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_428 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_428, vec2<f32>(0.0f, 0.0f));
        let x_430 : vec2<f32> = u_xlat48;
        let x_432 : vec2<f32> = u_xlat48;
        let x_434 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_430) * x_432) + vec2<f32>(x_434.y, x_434.w));
        let x_437 : vec4<f32> = u_xlat7;
        let x_439 : vec2<f32> = (vec2<f32>(x_437.x, x_437.y) + vec2<f32>(1.0f, 1.0f));
        let x_440 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_442 + vec2<f32>(1.0f, 1.0f));
        let x_445 : vec4<f32> = u_xlat6;
        let x_449 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_450 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_452 : vec2<f32> = u_xlat50;
        let x_453 : vec2<f32> = (x_452 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_454 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat7;
        let x_458 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_459 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_462 : vec2<f32> = u_xlat48;
        let x_463 : vec2<f32> = (x_462 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_466.y, x_466.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_470 : f32 = u_xlat7.x;
        u_xlat8.z = x_470;
        let x_473 : f32 = u_xlat48.x;
        u_xlat8.w = x_473;
        let x_476 : f32 = u_xlat9.x;
        u_xlat6.z = x_476;
        let x_479 : f32 = u_xlat5.x;
        u_xlat6.w = x_479;
        let x_482 : vec4<f32> = u_xlat6;
        let x_484 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_482.z, x_482.w, x_482.x, x_482.z) + vec4<f32>(x_484.z, x_484.w, x_484.x, x_484.z));
        let x_488 : f32 = u_xlat8.y;
        u_xlat7.z = x_488;
        let x_491 : f32 = u_xlat48.y;
        u_xlat7.w = x_491;
        let x_494 : f32 = u_xlat6.y;
        u_xlat9.z = x_494;
        let x_497 : f32 = u_xlat5.z;
        u_xlat9.w = x_497;
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec4<f32> = u_xlat9;
        let x_503 : vec3<f32> = (vec3<f32>(x_499.z, x_499.y, x_499.w) + vec3<f32>(x_501.z, x_501.y, x_501.w));
        let x_504 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat6;
        let x_508 : vec4<f32> = u_xlat10;
        let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.z, x_506.w) / vec3<f32>(x_508.z, x_508.w, x_508.y));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat6;
        let x_519 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_520 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat9;
        let x_524 : vec4<f32> = u_xlat5;
        let x_526 : vec3<f32> = (vec3<f32>(x_522.z, x_522.y, x_522.w) / vec3<f32>(x_524.x, x_524.y, x_524.z));
        let x_527 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat7;
        let x_531 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat6;
        let x_537 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_539 : vec3<f32> = (vec3<f32>(x_534.y, x_534.x, x_534.z) * vec3<f32>(x_537.x, x_537.x, x_537.x));
        let x_540 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat7;
        let x_545 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_547 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_545.y, x_545.y, x_545.y));
        let x_548 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_551 : f32 = u_xlat7.x;
        u_xlat6.w = x_551;
        let x_553 : vec4<f32> = u_xlat4;
        let x_556 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y) * vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y)) + vec4<f32>(x_559.y, x_559.w, x_559.x, x_559.w));
        let x_562 : vec4<f32> = u_xlat4;
        let x_565 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_565.x, x_565.y)) + vec2<f32>(x_568.z, x_568.w));
        let x_572 : f32 = u_xlat6.y;
        u_xlat7.w = x_572;
        let x_574 : vec4<f32> = u_xlat7;
        let x_575 : vec2<f32> = vec2<f32>(x_574.y, x_574.z);
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_576.x, x_575.x, x_576.z, x_575.y);
        let x_578 : vec4<f32> = u_xlat4;
        let x_581 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y) * vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y)) + vec4<f32>(x_584.x, x_584.y, x_584.z, x_584.y));
        let x_587 : vec4<f32> = u_xlat4;
        let x_590 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_593 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y) * vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y)) + vec4<f32>(x_593.w, x_593.y, x_593.w, x_593.z));
        let x_596 : vec4<f32> = u_xlat4;
        let x_599 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y) * vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y)) + vec4<f32>(x_602.x, x_602.w, x_602.z, x_602.w));
        let x_606 : vec4<f32> = u_xlat5;
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_606.x, x_606.x, x_606.x, x_606.y) * vec4<f32>(x_608.z, x_608.w, x_608.y, x_608.z));
        let x_612 : vec4<f32> = u_xlat5;
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_612.y, x_612.y, x_612.z, x_612.z) * x_614);
        let x_617 : f32 = u_xlat5.z;
        let x_619 : f32 = u_xlat10.y;
        u_xlat66 = (x_617 * x_619);
        let x_622 : vec4<f32> = u_xlat8;
        let x_623 : vec2<f32> = vec2<f32>(x_622.x, x_622.y);
        let x_625 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_623.x, x_623.y, x_625);
        let x_633 : vec3<f32> = txVec4;
        let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_633.xy, x_633.z);
        u_xlat67 = x_635;
        let x_637 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = vec2<f32>(x_637.z, x_637.w);
        let x_640 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_638.x, x_638.y, x_640);
        let x_648 : vec3<f32> = txVec5;
        let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
        u_xlat68 = x_650;
        let x_651 : f32 = u_xlat68;
        let x_653 : f32 = u_xlat11.y;
        u_xlat68 = (x_651 * x_653);
        let x_656 : f32 = u_xlat11.x;
        let x_657 : f32 = u_xlat67;
        let x_659 : f32 = u_xlat68;
        u_xlat67 = ((x_656 * x_657) + x_659);
        let x_662 : vec2<f32> = u_xlat48;
        let x_664 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_662.x, x_662.y, x_664);
        let x_671 : vec3<f32> = txVec6;
        let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_671.xy, x_671.z);
        u_xlat68 = x_673;
        let x_675 : f32 = u_xlat11.z;
        let x_676 : f32 = u_xlat68;
        let x_678 : f32 = u_xlat67;
        u_xlat67 = ((x_675 * x_676) + x_678);
        let x_681 : vec4<f32> = u_xlat7;
        let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
        let x_684 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec7;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
        u_xlat68 = x_693;
        let x_695 : f32 = u_xlat11.w;
        let x_696 : f32 = u_xlat68;
        let x_698 : f32 = u_xlat67;
        u_xlat67 = ((x_695 * x_696) + x_698);
        let x_701 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec8;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_711.xy, x_711.z);
        u_xlat68 = x_713;
        let x_715 : f32 = u_xlat12.x;
        let x_716 : f32 = u_xlat68;
        let x_718 : f32 = u_xlat67;
        u_xlat67 = ((x_715 * x_716) + x_718);
        let x_721 : vec4<f32> = u_xlat9;
        let x_722 : vec2<f32> = vec2<f32>(x_721.z, x_721.w);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec9;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat68 = x_733;
        let x_735 : f32 = u_xlat12.y;
        let x_736 : f32 = u_xlat68;
        let x_738 : f32 = u_xlat67;
        u_xlat67 = ((x_735 * x_736) + x_738);
        let x_741 : vec4<f32> = u_xlat7;
        let x_742 : vec2<f32> = vec2<f32>(x_741.z, x_741.w);
        let x_744 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec10;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat68 = x_753;
        let x_755 : f32 = u_xlat12.z;
        let x_756 : f32 = u_xlat68;
        let x_758 : f32 = u_xlat67;
        u_xlat67 = ((x_755 * x_756) + x_758);
        let x_761 : vec4<f32> = u_xlat6;
        let x_762 : vec2<f32> = vec2<f32>(x_761.x, x_761.y);
        let x_764 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_762.x, x_762.y, x_764);
        let x_771 : vec3<f32> = txVec11;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
        u_xlat68 = x_773;
        let x_775 : f32 = u_xlat12.w;
        let x_776 : f32 = u_xlat68;
        let x_778 : f32 = u_xlat67;
        u_xlat67 = ((x_775 * x_776) + x_778);
        let x_781 : vec4<f32> = u_xlat6;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec12;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat68 = x_793;
        let x_794 : f32 = u_xlat66;
        let x_795 : f32 = u_xlat68;
        let x_797 : f32 = u_xlat67;
        u_xlat0.x = ((x_794 * x_795) + x_797);
      } else {
        let x_801 : vec4<f32> = vs_TEXCOORD6;
        let x_804 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_807 : vec2<f32> = ((vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_804.z, x_804.w)) + vec2<f32>(0.5f, 0.5f));
        let x_808 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_810 : vec4<f32> = u_xlat4;
        let x_812 : vec2<f32> = floor(vec2<f32>(x_810.x, x_810.y));
        let x_813 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec4<f32> = vs_TEXCOORD6;
        let x_818 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_821 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_815.x, x_815.y) * vec2<f32>(x_818.z, x_818.w)) + -(vec2<f32>(x_821.x, x_821.y)));
        let x_825 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_825.x, x_825.x, x_825.y, x_825.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_828 : vec4<f32> = u_xlat5;
        let x_830 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_828.x, x_828.x, x_828.z, x_828.z) * vec4<f32>(x_830.x, x_830.x, x_830.z, x_830.z));
        let x_833 : vec4<f32> = u_xlat6;
        let x_837 : vec2<f32> = (vec2<f32>(x_833.y, x_833.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_838 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_838.x, x_837.x, x_838.z, x_837.y);
        let x_840 : vec4<f32> = u_xlat6;
        let x_843 : vec2<f32> = u_xlat48;
        let x_845 : vec2<f32> = ((vec2<f32>(x_840.x, x_840.z) * vec2<f32>(0.5f, 0.5f)) + -(x_843));
        let x_846 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_845.x, x_846.y, x_845.y, x_846.w);
        let x_848 : vec2<f32> = u_xlat48;
        let x_850 : vec2<f32> = (-(x_848) + vec2<f32>(1.0f, 1.0f));
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_853, vec2<f32>(0.0f, 0.0f));
        let x_855 : vec2<f32> = u_xlat50;
        let x_857 : vec2<f32> = u_xlat50;
        let x_859 : vec4<f32> = u_xlat6;
        let x_861 : vec2<f32> = ((-(x_855) * x_857) + vec2<f32>(x_859.x, x_859.y));
        let x_862 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_864, vec2<f32>(0.0f, 0.0f));
        let x_867 : vec2<f32> = u_xlat50;
        let x_869 : vec2<f32> = u_xlat50;
        let x_871 : vec4<f32> = u_xlat5;
        let x_873 : vec2<f32> = ((-(x_867) * x_869) + vec2<f32>(x_871.y, x_871.w));
        let x_874 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_873.x, x_874.y, x_873.y);
        let x_876 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) + vec2<f32>(2.0f, 2.0f));
        let x_880 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_882 : vec3<f32> = u_xlat27;
        let x_884 : vec2<f32> = (vec2<f32>(x_882.x, x_882.z) + vec2<f32>(2.0f, 2.0f));
        let x_885 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_884.x, x_885.z, x_884.y);
        let x_888 : f32 = u_xlat5.y;
        u_xlat8.z = (x_888 * 0.08163200318813323975f);
        let x_892 : vec4<f32> = u_xlat5;
        let x_895 : vec3<f32> = (vec3<f32>(x_892.z, x_892.x, x_892.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat6;
        let x_901 : vec2<f32> = (vec2<f32>(x_898.x, x_898.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_902 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_905 : f32 = u_xlat9.y;
        u_xlat8.x = x_905;
        let x_907 : vec2<f32> = u_xlat48;
        let x_914 : vec2<f32> = ((vec2<f32>(x_907.x, x_907.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_914.x, x_915.z, x_914.y);
        let x_917 : vec2<f32> = u_xlat48;
        let x_921 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_922 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_921.x, x_922.y, x_921.y, x_922.w);
        let x_925 : f32 = u_xlat5.x;
        u_xlat6.y = x_925;
        let x_928 : f32 = u_xlat7.y;
        u_xlat6.w = x_928;
        let x_930 : vec4<f32> = u_xlat6;
        let x_931 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_930 + x_931);
        let x_933 : vec2<f32> = u_xlat48;
        let x_936 : vec2<f32> = ((vec2<f32>(x_933.y, x_933.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_936.x, x_937.z, x_936.y);
        let x_939 : vec2<f32> = u_xlat48;
        let x_942 : vec2<f32> = ((vec2<f32>(x_939.y, x_939.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_942.x, x_943.y, x_942.y, x_943.w);
        let x_946 : f32 = u_xlat5.y;
        u_xlat7.y = x_946;
        let x_948 : vec4<f32> = u_xlat7;
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_948 + x_949);
        let x_951 : vec4<f32> = u_xlat6;
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_951 / x_952);
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_954 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_960 : vec4<f32> = u_xlat7;
        let x_961 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_960 / x_961);
        let x_963 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_963 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_965 : vec4<f32> = u_xlat6;
        let x_968 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_965.w, x_965.x, x_965.y, x_965.z) * vec4<f32>(x_968.x, x_968.x, x_968.x, x_968.x));
        let x_971 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_971.x, x_971.w, x_971.y, x_971.z) * vec4<f32>(x_974.y, x_974.y, x_974.y, x_974.y));
        let x_977 : vec4<f32> = u_xlat6;
        let x_978 : vec3<f32> = vec3<f32>(x_977.y, x_977.z, x_977.w);
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_978.z);
        let x_982 : f32 = u_xlat7.x;
        u_xlat9.y = x_982;
        let x_984 : vec4<f32> = u_xlat4;
        let x_987 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y)) + vec4<f32>(x_990.x, x_990.y, x_990.z, x_990.y));
        let x_993 : vec4<f32> = u_xlat4;
        let x_996 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_996.x, x_996.y)) + vec2<f32>(x_999.w, x_999.y));
        let x_1003 : f32 = u_xlat9.y;
        u_xlat6.y = x_1003;
        let x_1006 : f32 = u_xlat7.z;
        u_xlat9.y = x_1006;
        let x_1008 : vec4<f32> = u_xlat4;
        let x_1011 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y) * vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y)) + vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat4;
        let x_1020 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.y) * vec2<f32>(x_1020.x, x_1020.y)) + vec2<f32>(x_1023.w, x_1023.y));
        let x_1026 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1029 : f32 = u_xlat9.y;
        u_xlat6.z = x_1029;
        let x_1032 : vec4<f32> = u_xlat4;
        let x_1035 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y) * vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y)) + vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.z));
        let x_1042 : f32 = u_xlat7.w;
        u_xlat9.y = x_1042;
        let x_1045 : vec4<f32> = u_xlat4;
        let x_1048 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.y));
        let x_1055 : vec4<f32> = u_xlat4;
        let x_1058 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1061.w, x_1061.y));
        let x_1065 : f32 = u_xlat9.y;
        u_xlat6.w = x_1065;
        let x_1068 : vec4<f32> = u_xlat4;
        let x_1071 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1071.x, x_1071.y)) + vec2<f32>(x_1074.x, x_1074.w));
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1078 : vec3<f32> = vec3<f32>(x_1077.x, x_1077.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1079.y, x_1078.y, x_1078.z);
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1091 : vec4<f32> = u_xlat4;
        let x_1094 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1101 : f32 = u_xlat6.x;
        u_xlat7.x = x_1101;
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_247.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat7;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.x, x_1109.y));
        let x_1112 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1115.x, x_1115.x, x_1115.x, x_1115.x) * x_1117);
        let x_1120 : vec4<f32> = u_xlat5;
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1120.y, x_1120.y, x_1120.y, x_1120.y) * x_1122);
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1127 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1125.z, x_1125.z, x_1125.z, x_1125.z) * x_1127);
        let x_1129 : vec4<f32> = u_xlat5;
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1129.w, x_1129.w, x_1129.w, x_1129.w) * x_1131);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1135 : vec2<f32> = vec2<f32>(x_1134.x, x_1134.y);
        let x_1137 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec13;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat66 = x_1146;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec14;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1158.xy, x_1158.z);
        u_xlat67 = x_1160;
        let x_1161 : f32 = u_xlat67;
        let x_1163 : f32 = u_xlat15.y;
        u_xlat67 = (x_1161 * x_1163);
        let x_1166 : f32 = u_xlat15.x;
        let x_1167 : f32 = u_xlat66;
        let x_1169 : f32 = u_xlat67;
        u_xlat66 = ((x_1166 * x_1167) + x_1169);
        let x_1172 : vec2<f32> = u_xlat48;
        let x_1174 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec15;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat67 = x_1183;
        let x_1185 : f32 = u_xlat15.z;
        let x_1186 : f32 = u_xlat67;
        let x_1188 : f32 = u_xlat66;
        u_xlat66 = ((x_1185 * x_1186) + x_1188);
        let x_1191 : vec4<f32> = u_xlat13;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.x, x_1191.y);
        let x_1194 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec16;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat67 = x_1203;
        let x_1205 : f32 = u_xlat15.w;
        let x_1206 : f32 = u_xlat67;
        let x_1208 : f32 = u_xlat66;
        u_xlat66 = ((x_1205 * x_1206) + x_1208);
        let x_1211 : vec4<f32> = u_xlat11;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
        let x_1214 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec17;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1221.xy, x_1221.z);
        u_xlat67 = x_1223;
        let x_1225 : f32 = u_xlat16.x;
        let x_1226 : f32 = u_xlat67;
        let x_1228 : f32 = u_xlat66;
        u_xlat66 = ((x_1225 * x_1226) + x_1228);
        let x_1231 : vec4<f32> = u_xlat11;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.z, x_1231.w);
        let x_1234 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec18;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1241.xy, x_1241.z);
        u_xlat67 = x_1243;
        let x_1245 : f32 = u_xlat16.y;
        let x_1246 : f32 = u_xlat67;
        let x_1248 : f32 = u_xlat66;
        u_xlat66 = ((x_1245 * x_1246) + x_1248);
        let x_1251 : vec4<f32> = u_xlat12;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.x, x_1251.y);
        let x_1254 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec19;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1261.xy, x_1261.z);
        u_xlat67 = x_1263;
        let x_1265 : f32 = u_xlat16.z;
        let x_1266 : f32 = u_xlat67;
        let x_1268 : f32 = u_xlat66;
        u_xlat66 = ((x_1265 * x_1266) + x_1268);
        let x_1271 : vec4<f32> = u_xlat13;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec20;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat67 = x_1283;
        let x_1285 : f32 = u_xlat16.w;
        let x_1286 : f32 = u_xlat67;
        let x_1288 : f32 = u_xlat66;
        u_xlat66 = ((x_1285 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat14;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.x, x_1291.y);
        let x_1294 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec21;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1301.xy, x_1301.z);
        u_xlat67 = x_1303;
        let x_1305 : f32 = u_xlat17.x;
        let x_1306 : f32 = u_xlat67;
        let x_1308 : f32 = u_xlat66;
        u_xlat66 = ((x_1305 * x_1306) + x_1308);
        let x_1311 : vec4<f32> = u_xlat14;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec22;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat67 = x_1323;
        let x_1325 : f32 = u_xlat17.y;
        let x_1326 : f32 = u_xlat67;
        let x_1328 : f32 = u_xlat66;
        u_xlat66 = ((x_1325 * x_1326) + x_1328);
        let x_1331 : vec2<f32> = u_xlat28;
        let x_1333 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec23;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat67 = x_1342;
        let x_1344 : f32 = u_xlat17.z;
        let x_1345 : f32 = u_xlat67;
        let x_1347 : f32 = u_xlat66;
        u_xlat66 = ((x_1344 * x_1345) + x_1347);
        let x_1350 : vec2<f32> = u_xlat56;
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec24;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat67 = x_1361;
        let x_1363 : f32 = u_xlat17.w;
        let x_1364 : f32 = u_xlat67;
        let x_1366 : f32 = u_xlat66;
        u_xlat66 = ((x_1363 * x_1364) + x_1366);
        let x_1369 : vec4<f32> = u_xlat9;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec25;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat67 = x_1381;
        let x_1383 : f32 = u_xlat5.x;
        let x_1384 : f32 = u_xlat67;
        let x_1386 : f32 = u_xlat66;
        u_xlat66 = ((x_1383 * x_1384) + x_1386);
        let x_1389 : vec4<f32> = u_xlat9;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec26;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat67 = x_1401;
        let x_1403 : f32 = u_xlat5.y;
        let x_1404 : f32 = u_xlat67;
        let x_1406 : f32 = u_xlat66;
        u_xlat66 = ((x_1403 * x_1404) + x_1406);
        let x_1409 : vec2<f32> = u_xlat51;
        let x_1411 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec27;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat67 = x_1420;
        let x_1422 : f32 = u_xlat5.z;
        let x_1423 : f32 = u_xlat67;
        let x_1425 : f32 = u_xlat66;
        u_xlat66 = ((x_1422 * x_1423) + x_1425);
        let x_1428 : vec4<f32> = u_xlat4;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec28;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1438.xy, x_1438.z);
        u_xlat67 = x_1440;
        let x_1442 : f32 = u_xlat5.w;
        let x_1443 : f32 = u_xlat67;
        let x_1445 : f32 = u_xlat66;
        u_xlat0.x = ((x_1442 * x_1443) + x_1445);
      }
    }
  } else {
    let x_1450 : vec4<f32> = vs_TEXCOORD6;
    let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
    let x_1453 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
    let x_1460 : vec3<f32> = txVec29;
    let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
    u_xlat0.x = x_1462;
  }
  let x_1465 : f32 = x_247.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1465) + 1.0f);
  let x_1469 : f32 = u_xlat0.x;
  let x_1471 : f32 = x_247.x_MainLightShadowParams.x;
  let x_1473 : f32 = u_xlat66;
  u_xlat0.x = ((x_1469 * x_1471) + x_1473);
  let x_1477 : f32 = vs_TEXCOORD6.z;
  u_xlatb66 = (0.0f >= x_1477);
  let x_1481 : f32 = vs_TEXCOORD6.z;
  u_xlatb67 = (x_1481 >= 1.0f);
  let x_1483 : bool = u_xlatb66;
  let x_1484 : bool = u_xlatb67;
  u_xlatb66 = (x_1483 | x_1484);
  let x_1486 : bool = u_xlatb66;
  if (x_1486) {
    x_1487 = 1.0f;
  } else {
    let x_1492 : f32 = u_xlat0.x;
    x_1487 = x_1492;
  }
  let x_1493 : f32 = x_1487;
  u_xlat0.x = x_1493;
  let x_1496 : vec4<f32> = vs_TEXCOORD2;
  let x_1501 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1503 : vec3<f32> = (vec3<f32>(x_1496.x, x_1496.y, x_1496.z) + -(x_1501));
  let x_1504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
  let x_1506 : vec4<f32> = u_xlat4;
  let x_1508 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
  let x_1511 : f32 = u_xlat66;
  let x_1513 : f32 = x_247.x_MainLightShadowParams.z;
  let x_1516 : f32 = x_247.x_MainLightShadowParams.w;
  u_xlat67 = ((x_1511 * x_1513) + x_1516);
  let x_1518 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1518, 0.0f, 1.0f);
  let x_1521 : f32 = u_xlat0.x;
  u_xlat68 = (-(x_1521) + 1.0f);
  let x_1524 : f32 = u_xlat67;
  let x_1525 : f32 = u_xlat68;
  let x_1528 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1524 * x_1525) + x_1528);
  let x_1532 : f32 = u_xlat0.x;
  let x_1534 : f32 = x_159.unity_LightData.z;
  u_xlat0.x = (x_1532 * x_1534);
  let x_1537 : vec4<f32> = u_xlat0;
  let x_1541 : vec4<f32> = x_27.x_MainLightColor;
  let x_1543 : vec3<f32> = (vec3<f32>(x_1537.x, x_1537.x, x_1537.x) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
  let x_1544 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1546 : vec4<f32> = u_xlat2;
  let x_1550 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_1546.x, x_1546.y, x_1546.z), vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
  let x_1555 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1555, 0.0f, 1.0f);
  let x_1558 : vec4<f32> = u_xlat0;
  let x_1560 : vec4<f32> = u_xlat4;
  let x_1562 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.x, x_1558.x) * vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
  let x_1563 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
  let x_1565 : vec4<f32> = u_xlat1;
  let x_1567 : vec4<f32> = u_xlat4;
  let x_1569 : vec3<f32> = (vec3<f32>(x_1565.x, x_1565.y, x_1565.z) * vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
  let x_1570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1573 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1575 : f32 = x_159.unity_LightData.y;
  u_xlat0.x = min(x_1573, x_1575);
  let x_1581 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1581));
  let x_1584 : f32 = u_xlat66;
  let x_1587 : f32 = x_247.x_AdditionalShadowFadeParams.x;
  let x_1590 : f32 = x_247.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1584 * x_1587) + x_1590);
  let x_1592 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1592, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1604 : u32 = u_xlatu_loop_1;
    let x_1605 : u32 = u_xlatu0;
    if ((x_1604 < x_1605)) {
    } else {
      break;
    }
    let x_1608 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1608 >> 2u);
    let x_1612 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1612 & 3u));
    let x_1615 : u32 = u_xlatu68;
    let x_1618 : vec4<f32> = x_159.unity_LightIndices[bitcast<i32>(x_1615)];
    let x_1628 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1633 : vec4<u32> = indexable[x_1628];
    u_xlat68 = dot(x_1618, bitcast<vec4<f32>>(x_1633));
    let x_1637 : f32 = u_xlat68;
    u_xlati68 = i32(x_1637);
    let x_1639 : vec4<f32> = vs_TEXCOORD2;
    let x_1651 : i32 = u_xlati68;
    let x_1653 : vec4<f32> = x_1650.x_AdditionalLightsPosition[x_1651];
    let x_1656 : i32 = u_xlati68;
    let x_1658 : vec4<f32> = x_1650.x_AdditionalLightsPosition[x_1656];
    let x_1660 : vec3<f32> = ((-(vec3<f32>(x_1639.x, x_1639.y, x_1639.z)) * vec3<f32>(x_1653.w, x_1653.w, x_1653.w)) + vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
    let x_1661 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
    let x_1664 : vec4<f32> = u_xlat6;
    let x_1666 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1664.x, x_1664.y, x_1664.z), vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
    let x_1669 : f32 = u_xlat69;
    u_xlat69 = max(x_1669, 0.00006103515625f);
    let x_1673 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1673);
    let x_1675 : f32 = u_xlat70;
    let x_1677 : vec4<f32> = u_xlat6;
    let x_1679 : vec3<f32> = (vec3<f32>(x_1675, x_1675, x_1675) * vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
    let x_1680 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1679.x, x_1679.y, x_1679.z, x_1680.w);
    let x_1682 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1682);
    let x_1684 : f32 = u_xlat69;
    let x_1685 : i32 = u_xlati68;
    let x_1687 : f32 = x_1650.x_AdditionalLightsAttenuation[x_1685].x;
    u_xlat69 = (x_1684 * x_1687);
    let x_1689 : f32 = u_xlat69;
    let x_1691 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1689) * x_1691) + 1.0f);
    let x_1694 : f32 = u_xlat69;
    u_xlat69 = max(x_1694, 0.0f);
    let x_1696 : f32 = u_xlat69;
    let x_1697 : f32 = u_xlat69;
    u_xlat69 = (x_1696 * x_1697);
    let x_1699 : f32 = u_xlat69;
    let x_1700 : f32 = u_xlat70;
    u_xlat69 = (x_1699 * x_1700);
    let x_1702 : i32 = u_xlati68;
    let x_1704 : vec4<f32> = x_1650.x_AdditionalLightsSpotDir[x_1702];
    let x_1706 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
    let x_1709 : f32 = u_xlat70;
    let x_1710 : i32 = u_xlati68;
    let x_1712 : f32 = x_1650.x_AdditionalLightsAttenuation[x_1710].z;
    let x_1714 : i32 = u_xlati68;
    let x_1716 : f32 = x_1650.x_AdditionalLightsAttenuation[x_1714].w;
    u_xlat70 = ((x_1709 * x_1712) + x_1716);
    let x_1718 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1718, 0.0f, 1.0f);
    let x_1720 : f32 = u_xlat70;
    let x_1721 : f32 = u_xlat70;
    u_xlat70 = (x_1720 * x_1721);
    let x_1723 : f32 = u_xlat69;
    let x_1724 : f32 = u_xlat70;
    u_xlat69 = (x_1723 * x_1724);
    let x_1728 : i32 = u_xlati68;
    let x_1730 : f32 = x_247.x_AdditionalShadowParams[x_1728].w;
    u_xlati70 = i32(x_1730);
    let x_1733 : i32 = u_xlati70;
    u_xlatb71 = (x_1733 >= 0i);
    let x_1735 : bool = u_xlatb71;
    if (x_1735) {
      let x_1739 : i32 = u_xlati68;
      let x_1741 : f32 = x_247.x_AdditionalShadowParams[x_1739].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1741, x_1741, x_1741, x_1741))));
      let x_1746 : bool = u_xlatb71;
      if (x_1746) {
        let x_1751 : vec4<f32> = u_xlat6;
        let x_1754 : vec4<f32> = u_xlat6;
        let x_1757 : vec4<bool> = (abs(vec4<f32>(x_1751.z, x_1751.z, x_1751.y, x_1751.z)) >= abs(vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.x)));
        let x_1759 : vec3<bool> = vec3<bool>(x_1757.x, x_1757.y, x_1757.z);
        let x_1760 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
        let x_1763 : bool = u_xlatb7.y;
        let x_1765 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1763 & x_1765);
        let x_1767 : vec4<f32> = u_xlat6;
        let x_1770 : vec4<bool> = (-(vec4<f32>(x_1767.z, x_1767.y, x_1767.z, x_1767.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1771 : vec3<bool> = vec3<bool>(x_1770.x, x_1770.y, x_1770.w);
        let x_1772 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1771.x, x_1771.y, x_1772.z, x_1771.z);
        let x_1775 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1775);
        let x_1781 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1781);
        let x_1787 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1787);
        let x_1790 : bool = u_xlatb7.z;
        if (x_1790) {
          let x_1795 : f32 = u_xlat7.y;
          x_1791 = x_1795;
        } else {
          let x_1797 : f32 = u_xlat72;
          x_1791 = x_1797;
        }
        let x_1798 : f32 = x_1791;
        u_xlat72 = x_1798;
        let x_1800 : bool = u_xlatb71;
        if (x_1800) {
          let x_1805 : f32 = u_xlat7.x;
          x_1801 = x_1805;
        } else {
          let x_1807 : f32 = u_xlat72;
          x_1801 = x_1807;
        }
        let x_1808 : f32 = x_1801;
        u_xlat71 = x_1808;
        let x_1809 : i32 = u_xlati68;
        let x_1811 : f32 = x_247.x_AdditionalShadowParams[x_1809].w;
        u_xlat72 = trunc(x_1811);
        let x_1813 : f32 = u_xlat71;
        let x_1814 : f32 = u_xlat72;
        u_xlat71 = (x_1813 + x_1814);
        let x_1816 : f32 = u_xlat71;
        u_xlati70 = i32(x_1816);
      }
      let x_1818 : i32 = u_xlati70;
      u_xlati70 = (x_1818 << bitcast<u32>(2i));
      let x_1820 : vec4<f32> = vs_TEXCOORD2;
      let x_1823 : i32 = u_xlati70;
      let x_1826 : i32 = u_xlati70;
      let x_1830 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1823 + 1i) / 4i)][((x_1826 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1820.y, x_1820.y, x_1820.y, x_1820.y) * x_1830);
      let x_1832 : i32 = u_xlati70;
      let x_1834 : i32 = u_xlati70;
      let x_1837 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[(x_1832 / 4i)][(x_1834 % 4i)];
      let x_1838 : vec4<f32> = vs_TEXCOORD2;
      let x_1841 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1837 * vec4<f32>(x_1838.x, x_1838.x, x_1838.x, x_1838.x)) + x_1841);
      let x_1843 : i32 = u_xlati70;
      let x_1846 : i32 = u_xlati70;
      let x_1850 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1843 + 2i) / 4i)][((x_1846 + 2i) % 4i)];
      let x_1851 : vec4<f32> = vs_TEXCOORD2;
      let x_1854 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1850 * vec4<f32>(x_1851.z, x_1851.z, x_1851.z, x_1851.z)) + x_1854);
      let x_1856 : vec4<f32> = u_xlat7;
      let x_1857 : i32 = u_xlati70;
      let x_1860 : i32 = u_xlati70;
      let x_1864 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1857 + 3i) / 4i)][((x_1860 + 3i) % 4i)];
      u_xlat7 = (x_1856 + x_1864);
      let x_1866 : vec4<f32> = u_xlat7;
      let x_1868 : vec4<f32> = u_xlat7;
      let x_1870 : vec3<f32> = (vec3<f32>(x_1866.x, x_1866.y, x_1866.z) / vec3<f32>(x_1868.w, x_1868.w, x_1868.w));
      let x_1871 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
      let x_1874 : i32 = u_xlati68;
      let x_1876 : f32 = x_247.x_AdditionalShadowParams[x_1874].y;
      u_xlatb70 = (0.0f < x_1876);
      let x_1878 : bool = u_xlatb70;
      if (x_1878) {
        let x_1881 : i32 = u_xlati68;
        let x_1883 : f32 = x_247.x_AdditionalShadowParams[x_1881].y;
        u_xlatb70 = (1.0f == x_1883);
        let x_1885 : bool = u_xlatb70;
        if (x_1885) {
          let x_1888 : vec4<f32> = u_xlat7;
          let x_1892 : vec4<f32> = x_247.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1888.x, x_1888.y, x_1888.x, x_1888.y) + x_1892);
          let x_1895 : vec4<f32> = u_xlat8;
          let x_1896 : vec2<f32> = vec2<f32>(x_1895.x, x_1895.y);
          let x_1898 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
          let x_1906 : vec3<f32> = txVec30;
          let x_1908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
          u_xlat9.x = x_1908;
          let x_1911 : vec4<f32> = u_xlat8;
          let x_1912 : vec2<f32> = vec2<f32>(x_1911.z, x_1911.w);
          let x_1914 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
          let x_1921 : vec3<f32> = txVec31;
          let x_1923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1921.xy, x_1921.z);
          u_xlat9.y = x_1923;
          let x_1925 : vec4<f32> = u_xlat7;
          let x_1929 : vec4<f32> = x_247.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1925.x, x_1925.y, x_1925.x, x_1925.y) + x_1929);
          let x_1932 : vec4<f32> = u_xlat8;
          let x_1933 : vec2<f32> = vec2<f32>(x_1932.x, x_1932.y);
          let x_1935 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
          let x_1942 : vec3<f32> = txVec32;
          let x_1944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1942.xy, x_1942.z);
          u_xlat9.z = x_1944;
          let x_1947 : vec4<f32> = u_xlat8;
          let x_1948 : vec2<f32> = vec2<f32>(x_1947.z, x_1947.w);
          let x_1950 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
          let x_1957 : vec3<f32> = txVec33;
          let x_1959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1957.xy, x_1957.z);
          u_xlat9.w = x_1959;
          let x_1961 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_1961, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1964 : i32 = u_xlati68;
          let x_1966 : f32 = x_247.x_AdditionalShadowParams[x_1964].y;
          u_xlatb71 = (2.0f == x_1966);
          let x_1968 : bool = u_xlatb71;
          if (x_1968) {
            let x_1971 : vec4<f32> = u_xlat7;
            let x_1975 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_1978 : vec2<f32> = ((vec2<f32>(x_1971.x, x_1971.y) * vec2<f32>(x_1975.z, x_1975.w)) + vec2<f32>(0.5f, 0.5f));
            let x_1979 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1978.x, x_1978.y, x_1979.z, x_1979.w);
            let x_1981 : vec4<f32> = u_xlat8;
            let x_1983 : vec2<f32> = floor(vec2<f32>(x_1981.x, x_1981.y));
            let x_1984 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1983.x, x_1983.y, x_1984.z, x_1984.w);
            let x_1987 : vec4<f32> = u_xlat7;
            let x_1990 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_1993 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_1987.x, x_1987.y) * vec2<f32>(x_1990.z, x_1990.w)) + -(vec2<f32>(x_1993.x, x_1993.y)));
            let x_1997 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_1997.x, x_1997.x, x_1997.y, x_1997.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2000 : vec4<f32> = u_xlat9;
            let x_2002 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2000.x, x_2000.x, x_2000.z, x_2000.z) * vec4<f32>(x_2002.x, x_2002.x, x_2002.z, x_2002.z));
            let x_2005 : vec4<f32> = u_xlat10;
            let x_2007 : vec2<f32> = (vec2<f32>(x_2005.y, x_2005.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2008 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2007.x, x_2008.y, x_2007.y, x_2008.w);
            let x_2010 : vec4<f32> = u_xlat10;
            let x_2013 : vec2<f32> = u_xlat52;
            let x_2015 : vec2<f32> = ((vec2<f32>(x_2010.x, x_2010.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2013));
            let x_2016 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2015.x, x_2015.y, x_2016.z, x_2016.w);
            let x_2019 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2019) + vec2<f32>(1.0f, 1.0f));
            let x_2022 : vec2<f32> = u_xlat52;
            let x_2023 : vec2<f32> = min(x_2022, vec2<f32>(0.0f, 0.0f));
            let x_2024 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2023.x, x_2023.y, x_2024.z, x_2024.w);
            let x_2026 : vec4<f32> = u_xlat11;
            let x_2029 : vec4<f32> = u_xlat11;
            let x_2032 : vec2<f32> = u_xlat54;
            let x_2033 : vec2<f32> = ((-(vec2<f32>(x_2026.x, x_2026.y)) * vec2<f32>(x_2029.x, x_2029.y)) + x_2032);
            let x_2034 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2033.x, x_2033.y, x_2034.z, x_2034.w);
            let x_2036 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2036, vec2<f32>(0.0f, 0.0f));
            let x_2038 : vec2<f32> = u_xlat52;
            let x_2040 : vec2<f32> = u_xlat52;
            let x_2042 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2038) * x_2040) + vec2<f32>(x_2042.y, x_2042.w));
            let x_2045 : vec4<f32> = u_xlat11;
            let x_2047 : vec2<f32> = (vec2<f32>(x_2045.x, x_2045.y) + vec2<f32>(1.0f, 1.0f));
            let x_2048 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2047.x, x_2047.y, x_2048.z, x_2048.w);
            let x_2050 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2050 + vec2<f32>(1.0f, 1.0f));
            let x_2052 : vec4<f32> = u_xlat10;
            let x_2054 : vec2<f32> = (vec2<f32>(x_2052.x, x_2052.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2055 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2054.x, x_2054.y, x_2055.z, x_2055.w);
            let x_2057 : vec2<f32> = u_xlat54;
            let x_2058 : vec2<f32> = (x_2057 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2059 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2058.x, x_2058.y, x_2059.z, x_2059.w);
            let x_2061 : vec4<f32> = u_xlat11;
            let x_2063 : vec2<f32> = (vec2<f32>(x_2061.x, x_2061.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2064 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2063.x, x_2063.y, x_2064.z, x_2064.w);
            let x_2066 : vec2<f32> = u_xlat52;
            let x_2067 : vec2<f32> = (x_2066 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2068 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2067.x, x_2067.y, x_2068.z, x_2068.w);
            let x_2070 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2070.y, x_2070.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2074 : f32 = u_xlat11.x;
            u_xlat12.z = x_2074;
            let x_2077 : f32 = u_xlat52.x;
            u_xlat12.w = x_2077;
            let x_2080 : f32 = u_xlat13.x;
            u_xlat10.z = x_2080;
            let x_2083 : f32 = u_xlat9.x;
            u_xlat10.w = x_2083;
            let x_2085 : vec4<f32> = u_xlat10;
            let x_2087 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2085.z, x_2085.w, x_2085.x, x_2085.z) + vec4<f32>(x_2087.z, x_2087.w, x_2087.x, x_2087.z));
            let x_2091 : f32 = u_xlat12.y;
            u_xlat11.z = x_2091;
            let x_2094 : f32 = u_xlat52.y;
            u_xlat11.w = x_2094;
            let x_2097 : f32 = u_xlat10.y;
            u_xlat13.z = x_2097;
            let x_2100 : f32 = u_xlat9.z;
            u_xlat13.w = x_2100;
            let x_2102 : vec4<f32> = u_xlat11;
            let x_2104 : vec4<f32> = u_xlat13;
            let x_2106 : vec3<f32> = (vec3<f32>(x_2102.z, x_2102.y, x_2102.w) + vec3<f32>(x_2104.z, x_2104.y, x_2104.w));
            let x_2107 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
            let x_2109 : vec4<f32> = u_xlat10;
            let x_2111 : vec4<f32> = u_xlat14;
            let x_2113 : vec3<f32> = (vec3<f32>(x_2109.x, x_2109.z, x_2109.w) / vec3<f32>(x_2111.z, x_2111.w, x_2111.y));
            let x_2114 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
            let x_2116 : vec4<f32> = u_xlat10;
            let x_2118 : vec3<f32> = (vec3<f32>(x_2116.x, x_2116.y, x_2116.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2119 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
            let x_2121 : vec4<f32> = u_xlat13;
            let x_2123 : vec4<f32> = u_xlat9;
            let x_2125 : vec3<f32> = (vec3<f32>(x_2121.z, x_2121.y, x_2121.w) / vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
            let x_2126 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
            let x_2128 : vec4<f32> = u_xlat11;
            let x_2130 : vec3<f32> = (vec3<f32>(x_2128.x, x_2128.y, x_2128.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2131 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2131.w);
            let x_2133 : vec4<f32> = u_xlat10;
            let x_2136 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2138 : vec3<f32> = (vec3<f32>(x_2133.y, x_2133.x, x_2133.z) * vec3<f32>(x_2136.x, x_2136.x, x_2136.x));
            let x_2139 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
            let x_2141 : vec4<f32> = u_xlat11;
            let x_2144 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2146 : vec3<f32> = (vec3<f32>(x_2141.x, x_2141.y, x_2141.z) * vec3<f32>(x_2144.y, x_2144.y, x_2144.y));
            let x_2147 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
            let x_2150 : f32 = u_xlat11.x;
            u_xlat10.w = x_2150;
            let x_2152 : vec4<f32> = u_xlat8;
            let x_2155 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2158 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2152.x, x_2152.y, x_2152.x, x_2152.y) * vec4<f32>(x_2155.x, x_2155.y, x_2155.x, x_2155.y)) + vec4<f32>(x_2158.y, x_2158.w, x_2158.x, x_2158.w));
            let x_2161 : vec4<f32> = u_xlat8;
            let x_2164 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2167 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2161.x, x_2161.y) * vec2<f32>(x_2164.x, x_2164.y)) + vec2<f32>(x_2167.z, x_2167.w));
            let x_2171 : f32 = u_xlat10.y;
            u_xlat11.w = x_2171;
            let x_2173 : vec4<f32> = u_xlat11;
            let x_2174 : vec2<f32> = vec2<f32>(x_2173.y, x_2173.z);
            let x_2175 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2175.x, x_2174.x, x_2175.z, x_2174.y);
            let x_2177 : vec4<f32> = u_xlat8;
            let x_2180 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2183 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y) * vec4<f32>(x_2180.x, x_2180.y, x_2180.x, x_2180.y)) + vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2183.y));
            let x_2186 : vec4<f32> = u_xlat8;
            let x_2189 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2192 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2186.x, x_2186.y, x_2186.x, x_2186.y) * vec4<f32>(x_2189.x, x_2189.y, x_2189.x, x_2189.y)) + vec4<f32>(x_2192.w, x_2192.y, x_2192.w, x_2192.z));
            let x_2195 : vec4<f32> = u_xlat8;
            let x_2198 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2201 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2195.x, x_2195.y, x_2195.x, x_2195.y) * vec4<f32>(x_2198.x, x_2198.y, x_2198.x, x_2198.y)) + vec4<f32>(x_2201.x, x_2201.w, x_2201.z, x_2201.w));
            let x_2204 : vec4<f32> = u_xlat9;
            let x_2206 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2204.x, x_2204.x, x_2204.x, x_2204.y) * vec4<f32>(x_2206.z, x_2206.w, x_2206.y, x_2206.z));
            let x_2209 : vec4<f32> = u_xlat9;
            let x_2211 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2209.y, x_2209.y, x_2209.z, x_2209.z) * x_2211);
            let x_2214 : f32 = u_xlat9.z;
            let x_2216 : f32 = u_xlat14.y;
            u_xlat71 = (x_2214 * x_2216);
            let x_2219 : vec4<f32> = u_xlat12;
            let x_2220 : vec2<f32> = vec2<f32>(x_2219.x, x_2219.y);
            let x_2222 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2220.x, x_2220.y, x_2222);
            let x_2229 : vec3<f32> = txVec34;
            let x_2231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2229.xy, x_2229.z);
            u_xlat72 = x_2231;
            let x_2233 : vec4<f32> = u_xlat12;
            let x_2234 : vec2<f32> = vec2<f32>(x_2233.z, x_2233.w);
            let x_2236 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2234.x, x_2234.y, x_2236);
            let x_2244 : vec3<f32> = txVec35;
            let x_2246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2244.xy, x_2244.z);
            u_xlat73 = x_2246;
            let x_2247 : f32 = u_xlat73;
            let x_2249 : f32 = u_xlat15.y;
            u_xlat73 = (x_2247 * x_2249);
            let x_2252 : f32 = u_xlat15.x;
            let x_2253 : f32 = u_xlat72;
            let x_2255 : f32 = u_xlat73;
            u_xlat72 = ((x_2252 * x_2253) + x_2255);
            let x_2258 : vec2<f32> = u_xlat52;
            let x_2260 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
            let x_2267 : vec3<f32> = txVec36;
            let x_2269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2267.xy, x_2267.z);
            u_xlat73 = x_2269;
            let x_2271 : f32 = u_xlat15.z;
            let x_2272 : f32 = u_xlat73;
            let x_2274 : f32 = u_xlat72;
            u_xlat72 = ((x_2271 * x_2272) + x_2274);
            let x_2277 : vec4<f32> = u_xlat11;
            let x_2278 : vec2<f32> = vec2<f32>(x_2277.x, x_2277.y);
            let x_2280 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2278.x, x_2278.y, x_2280);
            let x_2287 : vec3<f32> = txVec37;
            let x_2289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2287.xy, x_2287.z);
            u_xlat73 = x_2289;
            let x_2291 : f32 = u_xlat15.w;
            let x_2292 : f32 = u_xlat73;
            let x_2294 : f32 = u_xlat72;
            u_xlat72 = ((x_2291 * x_2292) + x_2294);
            let x_2297 : vec4<f32> = u_xlat13;
            let x_2298 : vec2<f32> = vec2<f32>(x_2297.x, x_2297.y);
            let x_2300 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2298.x, x_2298.y, x_2300);
            let x_2307 : vec3<f32> = txVec38;
            let x_2309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2307.xy, x_2307.z);
            u_xlat73 = x_2309;
            let x_2311 : f32 = u_xlat16.x;
            let x_2312 : f32 = u_xlat73;
            let x_2314 : f32 = u_xlat72;
            u_xlat72 = ((x_2311 * x_2312) + x_2314);
            let x_2317 : vec4<f32> = u_xlat13;
            let x_2318 : vec2<f32> = vec2<f32>(x_2317.z, x_2317.w);
            let x_2320 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2318.x, x_2318.y, x_2320);
            let x_2327 : vec3<f32> = txVec39;
            let x_2329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
            u_xlat73 = x_2329;
            let x_2331 : f32 = u_xlat16.y;
            let x_2332 : f32 = u_xlat73;
            let x_2334 : f32 = u_xlat72;
            u_xlat72 = ((x_2331 * x_2332) + x_2334);
            let x_2337 : vec4<f32> = u_xlat11;
            let x_2338 : vec2<f32> = vec2<f32>(x_2337.z, x_2337.w);
            let x_2340 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2338.x, x_2338.y, x_2340);
            let x_2347 : vec3<f32> = txVec40;
            let x_2349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2347.xy, x_2347.z);
            u_xlat73 = x_2349;
            let x_2351 : f32 = u_xlat16.z;
            let x_2352 : f32 = u_xlat73;
            let x_2354 : f32 = u_xlat72;
            u_xlat72 = ((x_2351 * x_2352) + x_2354);
            let x_2357 : vec4<f32> = u_xlat10;
            let x_2358 : vec2<f32> = vec2<f32>(x_2357.x, x_2357.y);
            let x_2360 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2358.x, x_2358.y, x_2360);
            let x_2367 : vec3<f32> = txVec41;
            let x_2369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2367.xy, x_2367.z);
            u_xlat73 = x_2369;
            let x_2371 : f32 = u_xlat16.w;
            let x_2372 : f32 = u_xlat73;
            let x_2374 : f32 = u_xlat72;
            u_xlat72 = ((x_2371 * x_2372) + x_2374);
            let x_2377 : vec4<f32> = u_xlat10;
            let x_2378 : vec2<f32> = vec2<f32>(x_2377.z, x_2377.w);
            let x_2380 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
            let x_2387 : vec3<f32> = txVec42;
            let x_2389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
            u_xlat73 = x_2389;
            let x_2390 : f32 = u_xlat71;
            let x_2391 : f32 = u_xlat73;
            let x_2393 : f32 = u_xlat72;
            u_xlat70 = ((x_2390 * x_2391) + x_2393);
          } else {
            let x_2396 : vec4<f32> = u_xlat7;
            let x_2399 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2402 : vec2<f32> = ((vec2<f32>(x_2396.x, x_2396.y) * vec2<f32>(x_2399.z, x_2399.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2403 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat8;
            let x_2407 : vec2<f32> = floor(vec2<f32>(x_2405.x, x_2405.y));
            let x_2408 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2407.x, x_2407.y, x_2408.z, x_2408.w);
            let x_2410 : vec4<f32> = u_xlat7;
            let x_2413 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2416 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2410.x, x_2410.y) * vec2<f32>(x_2413.z, x_2413.w)) + -(vec2<f32>(x_2416.x, x_2416.y)));
            let x_2420 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2420.x, x_2420.x, x_2420.y, x_2420.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2423 : vec4<f32> = u_xlat9;
            let x_2425 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2423.x, x_2423.x, x_2423.z, x_2423.z) * vec4<f32>(x_2425.x, x_2425.x, x_2425.z, x_2425.z));
            let x_2428 : vec4<f32> = u_xlat10;
            let x_2430 : vec2<f32> = (vec2<f32>(x_2428.y, x_2428.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2431 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2431.x, x_2430.x, x_2431.z, x_2430.y);
            let x_2433 : vec4<f32> = u_xlat10;
            let x_2436 : vec2<f32> = u_xlat52;
            let x_2438 : vec2<f32> = ((vec2<f32>(x_2433.x, x_2433.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2436));
            let x_2439 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2438.x, x_2439.y, x_2438.y, x_2439.w);
            let x_2441 : vec2<f32> = u_xlat52;
            let x_2443 : vec2<f32> = (-(x_2441) + vec2<f32>(1.0f, 1.0f));
            let x_2444 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
            let x_2446 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2446, vec2<f32>(0.0f, 0.0f));
            let x_2448 : vec2<f32> = u_xlat54;
            let x_2450 : vec2<f32> = u_xlat54;
            let x_2452 : vec4<f32> = u_xlat10;
            let x_2454 : vec2<f32> = ((-(x_2448) * x_2450) + vec2<f32>(x_2452.x, x_2452.y));
            let x_2455 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2454.x, x_2454.y, x_2455.z, x_2455.w);
            let x_2457 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2457, vec2<f32>(0.0f, 0.0f));
            let x_2460 : vec2<f32> = u_xlat54;
            let x_2462 : vec2<f32> = u_xlat54;
            let x_2464 : vec4<f32> = u_xlat9;
            let x_2466 : vec2<f32> = ((-(x_2460) * x_2462) + vec2<f32>(x_2464.y, x_2464.w));
            let x_2467 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2466.x, x_2467.y, x_2466.y);
            let x_2469 : vec4<f32> = u_xlat10;
            let x_2471 : vec2<f32> = (vec2<f32>(x_2469.x, x_2469.y) + vec2<f32>(2.0f, 2.0f));
            let x_2472 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
            let x_2474 : vec3<f32> = u_xlat31;
            let x_2476 : vec2<f32> = (vec2<f32>(x_2474.x, x_2474.z) + vec2<f32>(2.0f, 2.0f));
            let x_2477 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2477.x, x_2476.x, x_2477.z, x_2476.y);
            let x_2480 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2480 * 0.08163200318813323975f);
            let x_2483 : vec4<f32> = u_xlat9;
            let x_2485 : vec3<f32> = (vec3<f32>(x_2483.z, x_2483.x, x_2483.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2486 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
            let x_2488 : vec4<f32> = u_xlat10;
            let x_2490 : vec2<f32> = (vec2<f32>(x_2488.x, x_2488.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2491 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2490.x, x_2490.y, x_2491.z, x_2491.w);
            let x_2494 : f32 = u_xlat13.y;
            u_xlat12.x = x_2494;
            let x_2496 : vec2<f32> = u_xlat52;
            let x_2499 : vec2<f32> = ((vec2<f32>(x_2496.x, x_2496.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2500 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2500.x, x_2499.x, x_2500.z, x_2499.y);
            let x_2502 : vec2<f32> = u_xlat52;
            let x_2505 : vec2<f32> = ((vec2<f32>(x_2502.x, x_2502.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2506 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2505.x, x_2506.y, x_2505.y, x_2506.w);
            let x_2509 : f32 = u_xlat9.x;
            u_xlat10.y = x_2509;
            let x_2512 : f32 = u_xlat11.y;
            u_xlat10.w = x_2512;
            let x_2514 : vec4<f32> = u_xlat10;
            let x_2515 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2514 + x_2515);
            let x_2517 : vec2<f32> = u_xlat52;
            let x_2520 : vec2<f32> = ((vec2<f32>(x_2517.y, x_2517.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2521 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2521.x, x_2520.x, x_2521.z, x_2520.y);
            let x_2523 : vec2<f32> = u_xlat52;
            let x_2526 : vec2<f32> = ((vec2<f32>(x_2523.y, x_2523.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2527 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2526.x, x_2527.y, x_2526.y, x_2527.w);
            let x_2530 : f32 = u_xlat9.y;
            u_xlat11.y = x_2530;
            let x_2532 : vec4<f32> = u_xlat11;
            let x_2533 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2532 + x_2533);
            let x_2535 : vec4<f32> = u_xlat10;
            let x_2536 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2535 / x_2536);
            let x_2538 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2538 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2540 : vec4<f32> = u_xlat11;
            let x_2541 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2540 / x_2541);
            let x_2543 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2543 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2545 : vec4<f32> = u_xlat10;
            let x_2548 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2545.w, x_2545.x, x_2545.y, x_2545.z) * vec4<f32>(x_2548.x, x_2548.x, x_2548.x, x_2548.x));
            let x_2551 : vec4<f32> = u_xlat11;
            let x_2554 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2551.x, x_2551.w, x_2551.y, x_2551.z) * vec4<f32>(x_2554.y, x_2554.y, x_2554.y, x_2554.y));
            let x_2557 : vec4<f32> = u_xlat10;
            let x_2558 : vec3<f32> = vec3<f32>(x_2557.y, x_2557.z, x_2557.w);
            let x_2559 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2558.x, x_2559.y, x_2558.y, x_2558.z);
            let x_2562 : f32 = u_xlat11.x;
            u_xlat13.y = x_2562;
            let x_2564 : vec4<f32> = u_xlat8;
            let x_2567 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2570 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2564.x, x_2564.y, x_2564.x, x_2564.y) * vec4<f32>(x_2567.x, x_2567.y, x_2567.x, x_2567.y)) + vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2570.y));
            let x_2573 : vec4<f32> = u_xlat8;
            let x_2576 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2579 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(x_2576.x, x_2576.y)) + vec2<f32>(x_2579.w, x_2579.y));
            let x_2583 : f32 = u_xlat13.y;
            u_xlat10.y = x_2583;
            let x_2586 : f32 = u_xlat11.z;
            u_xlat13.y = x_2586;
            let x_2588 : vec4<f32> = u_xlat8;
            let x_2591 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2594 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y) * vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y)) + vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2594.y));
            let x_2597 : vec4<f32> = u_xlat8;
            let x_2600 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2603 : vec4<f32> = u_xlat13;
            let x_2605 : vec2<f32> = ((vec2<f32>(x_2597.x, x_2597.y) * vec2<f32>(x_2600.x, x_2600.y)) + vec2<f32>(x_2603.w, x_2603.y));
            let x_2606 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2605.x, x_2605.y, x_2606.z, x_2606.w);
            let x_2609 : f32 = u_xlat13.y;
            u_xlat10.z = x_2609;
            let x_2611 : vec4<f32> = u_xlat8;
            let x_2614 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2617 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y) * vec4<f32>(x_2614.x, x_2614.y, x_2614.x, x_2614.y)) + vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.z));
            let x_2621 : f32 = u_xlat11.w;
            u_xlat13.y = x_2621;
            let x_2624 : vec4<f32> = u_xlat8;
            let x_2627 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2630 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y) * vec4<f32>(x_2627.x, x_2627.y, x_2627.x, x_2627.y)) + vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2630.y));
            let x_2634 : vec4<f32> = u_xlat8;
            let x_2637 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2640 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2634.x, x_2634.y) * vec2<f32>(x_2637.x, x_2637.y)) + vec2<f32>(x_2640.w, x_2640.y));
            let x_2644 : f32 = u_xlat13.y;
            u_xlat10.w = x_2644;
            let x_2647 : vec4<f32> = u_xlat8;
            let x_2650 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2653 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2647.x, x_2647.y) * vec2<f32>(x_2650.x, x_2650.y)) + vec2<f32>(x_2653.x, x_2653.w));
            let x_2656 : vec4<f32> = u_xlat13;
            let x_2657 : vec3<f32> = vec3<f32>(x_2656.x, x_2656.z, x_2656.w);
            let x_2658 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2657.x, x_2658.y, x_2657.y, x_2657.z);
            let x_2660 : vec4<f32> = u_xlat8;
            let x_2663 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2666 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y) * vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y)) + vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2666.y));
            let x_2670 : vec4<f32> = u_xlat8;
            let x_2673 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2676 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2670.x, x_2670.y) * vec2<f32>(x_2673.x, x_2673.y)) + vec2<f32>(x_2676.w, x_2676.y));
            let x_2680 : f32 = u_xlat10.x;
            u_xlat11.x = x_2680;
            let x_2682 : vec4<f32> = u_xlat8;
            let x_2685 : vec4<f32> = x_247.x_AdditionalShadowmapSize;
            let x_2688 : vec4<f32> = u_xlat11;
            let x_2690 : vec2<f32> = ((vec2<f32>(x_2682.x, x_2682.y) * vec2<f32>(x_2685.x, x_2685.y)) + vec2<f32>(x_2688.x, x_2688.y));
            let x_2691 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2694 : vec4<f32> = u_xlat9;
            let x_2696 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2694.x, x_2694.x, x_2694.x, x_2694.x) * x_2696);
            let x_2699 : vec4<f32> = u_xlat9;
            let x_2701 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2699.y, x_2699.y, x_2699.y, x_2699.y) * x_2701);
            let x_2704 : vec4<f32> = u_xlat9;
            let x_2706 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2704.z, x_2704.z, x_2704.z, x_2704.z) * x_2706);
            let x_2708 : vec4<f32> = u_xlat9;
            let x_2710 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2708.w, x_2708.w, x_2708.w, x_2708.w) * x_2710);
            let x_2713 : vec4<f32> = u_xlat14;
            let x_2714 : vec2<f32> = vec2<f32>(x_2713.x, x_2713.y);
            let x_2716 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2714.x, x_2714.y, x_2716);
            let x_2723 : vec3<f32> = txVec43;
            let x_2725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2723.xy, x_2723.z);
            u_xlat71 = x_2725;
            let x_2727 : vec4<f32> = u_xlat14;
            let x_2728 : vec2<f32> = vec2<f32>(x_2727.z, x_2727.w);
            let x_2730 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
            let x_2737 : vec3<f32> = txVec44;
            let x_2739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
            u_xlat72 = x_2739;
            let x_2740 : f32 = u_xlat72;
            let x_2742 : f32 = u_xlat19.y;
            u_xlat72 = (x_2740 * x_2742);
            let x_2745 : f32 = u_xlat19.x;
            let x_2746 : f32 = u_xlat71;
            let x_2748 : f32 = u_xlat72;
            u_xlat71 = ((x_2745 * x_2746) + x_2748);
            let x_2751 : vec2<f32> = u_xlat52;
            let x_2753 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec45;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat72 = x_2762;
            let x_2764 : f32 = u_xlat19.z;
            let x_2765 : f32 = u_xlat72;
            let x_2767 : f32 = u_xlat71;
            u_xlat71 = ((x_2764 * x_2765) + x_2767);
            let x_2770 : vec4<f32> = u_xlat17;
            let x_2771 : vec2<f32> = vec2<f32>(x_2770.x, x_2770.y);
            let x_2773 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2771.x, x_2771.y, x_2773);
            let x_2780 : vec3<f32> = txVec46;
            let x_2782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2780.xy, x_2780.z);
            u_xlat72 = x_2782;
            let x_2784 : f32 = u_xlat19.w;
            let x_2785 : f32 = u_xlat72;
            let x_2787 : f32 = u_xlat71;
            u_xlat71 = ((x_2784 * x_2785) + x_2787);
            let x_2790 : vec4<f32> = u_xlat15;
            let x_2791 : vec2<f32> = vec2<f32>(x_2790.x, x_2790.y);
            let x_2793 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2791.x, x_2791.y, x_2793);
            let x_2800 : vec3<f32> = txVec47;
            let x_2802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2800.xy, x_2800.z);
            u_xlat72 = x_2802;
            let x_2804 : f32 = u_xlat20.x;
            let x_2805 : f32 = u_xlat72;
            let x_2807 : f32 = u_xlat71;
            u_xlat71 = ((x_2804 * x_2805) + x_2807);
            let x_2810 : vec4<f32> = u_xlat15;
            let x_2811 : vec2<f32> = vec2<f32>(x_2810.z, x_2810.w);
            let x_2813 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2811.x, x_2811.y, x_2813);
            let x_2820 : vec3<f32> = txVec48;
            let x_2822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2820.xy, x_2820.z);
            u_xlat72 = x_2822;
            let x_2824 : f32 = u_xlat20.y;
            let x_2825 : f32 = u_xlat72;
            let x_2827 : f32 = u_xlat71;
            u_xlat71 = ((x_2824 * x_2825) + x_2827);
            let x_2830 : vec4<f32> = u_xlat16;
            let x_2831 : vec2<f32> = vec2<f32>(x_2830.x, x_2830.y);
            let x_2833 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2831.x, x_2831.y, x_2833);
            let x_2840 : vec3<f32> = txVec49;
            let x_2842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2840.xy, x_2840.z);
            u_xlat72 = x_2842;
            let x_2844 : f32 = u_xlat20.z;
            let x_2845 : f32 = u_xlat72;
            let x_2847 : f32 = u_xlat71;
            u_xlat71 = ((x_2844 * x_2845) + x_2847);
            let x_2850 : vec4<f32> = u_xlat17;
            let x_2851 : vec2<f32> = vec2<f32>(x_2850.z, x_2850.w);
            let x_2853 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
            let x_2860 : vec3<f32> = txVec50;
            let x_2862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
            u_xlat72 = x_2862;
            let x_2864 : f32 = u_xlat20.w;
            let x_2865 : f32 = u_xlat72;
            let x_2867 : f32 = u_xlat71;
            u_xlat71 = ((x_2864 * x_2865) + x_2867);
            let x_2870 : vec4<f32> = u_xlat18;
            let x_2871 : vec2<f32> = vec2<f32>(x_2870.x, x_2870.y);
            let x_2873 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
            let x_2880 : vec3<f32> = txVec51;
            let x_2882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
            u_xlat72 = x_2882;
            let x_2884 : f32 = u_xlat21.x;
            let x_2885 : f32 = u_xlat72;
            let x_2887 : f32 = u_xlat71;
            u_xlat71 = ((x_2884 * x_2885) + x_2887);
            let x_2890 : vec4<f32> = u_xlat18;
            let x_2891 : vec2<f32> = vec2<f32>(x_2890.z, x_2890.w);
            let x_2893 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2891.x, x_2891.y, x_2893);
            let x_2900 : vec3<f32> = txVec52;
            let x_2902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2900.xy, x_2900.z);
            u_xlat72 = x_2902;
            let x_2904 : f32 = u_xlat21.y;
            let x_2905 : f32 = u_xlat72;
            let x_2907 : f32 = u_xlat71;
            u_xlat71 = ((x_2904 * x_2905) + x_2907);
            let x_2910 : vec2<f32> = u_xlat32;
            let x_2912 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2910.x, x_2910.y, x_2912);
            let x_2919 : vec3<f32> = txVec53;
            let x_2921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2919.xy, x_2919.z);
            u_xlat72 = x_2921;
            let x_2923 : f32 = u_xlat21.z;
            let x_2924 : f32 = u_xlat72;
            let x_2926 : f32 = u_xlat71;
            u_xlat71 = ((x_2923 * x_2924) + x_2926);
            let x_2929 : vec2<f32> = u_xlat60;
            let x_2931 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
            let x_2938 : vec3<f32> = txVec54;
            let x_2940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
            u_xlat72 = x_2940;
            let x_2942 : f32 = u_xlat21.w;
            let x_2943 : f32 = u_xlat72;
            let x_2945 : f32 = u_xlat71;
            u_xlat71 = ((x_2942 * x_2943) + x_2945);
            let x_2948 : vec4<f32> = u_xlat13;
            let x_2949 : vec2<f32> = vec2<f32>(x_2948.x, x_2948.y);
            let x_2951 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2949.x, x_2949.y, x_2951);
            let x_2958 : vec3<f32> = txVec55;
            let x_2960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2958.xy, x_2958.z);
            u_xlat72 = x_2960;
            let x_2962 : f32 = u_xlat9.x;
            let x_2963 : f32 = u_xlat72;
            let x_2965 : f32 = u_xlat71;
            u_xlat71 = ((x_2962 * x_2963) + x_2965);
            let x_2968 : vec4<f32> = u_xlat13;
            let x_2969 : vec2<f32> = vec2<f32>(x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
            let x_2978 : vec3<f32> = txVec56;
            let x_2980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
            u_xlat72 = x_2980;
            let x_2982 : f32 = u_xlat9.y;
            let x_2983 : f32 = u_xlat72;
            let x_2985 : f32 = u_xlat71;
            u_xlat71 = ((x_2982 * x_2983) + x_2985);
            let x_2988 : vec2<f32> = u_xlat55;
            let x_2990 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
            let x_2997 : vec3<f32> = txVec57;
            let x_2999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
            u_xlat72 = x_2999;
            let x_3001 : f32 = u_xlat9.z;
            let x_3002 : f32 = u_xlat72;
            let x_3004 : f32 = u_xlat71;
            u_xlat71 = ((x_3001 * x_3002) + x_3004);
            let x_3007 : vec4<f32> = u_xlat8;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
            let x_3010 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec58;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat72 = x_3019;
            let x_3021 : f32 = u_xlat9.w;
            let x_3022 : f32 = u_xlat72;
            let x_3024 : f32 = u_xlat71;
            u_xlat70 = ((x_3021 * x_3022) + x_3024);
          }
        }
      } else {
        let x_3028 : vec4<f32> = u_xlat7;
        let x_3029 : vec2<f32> = vec2<f32>(x_3028.x, x_3028.y);
        let x_3031 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
        let x_3038 : vec3<f32> = txVec59;
        let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
        u_xlat70 = x_3040;
      }
      let x_3041 : i32 = u_xlati68;
      let x_3043 : f32 = x_247.x_AdditionalShadowParams[x_3041].x;
      u_xlat71 = (1.0f + -(x_3043));
      let x_3046 : f32 = u_xlat70;
      let x_3047 : i32 = u_xlati68;
      let x_3049 : f32 = x_247.x_AdditionalShadowParams[x_3047].x;
      let x_3051 : f32 = u_xlat71;
      u_xlat70 = ((x_3046 * x_3049) + x_3051);
      let x_3054 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3054);
      let x_3058 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3058 >= 1.0f);
      let x_3060 : bool = u_xlatb71;
      let x_3061 : bool = u_xlatb72;
      u_xlatb71 = (x_3060 | x_3061);
      let x_3063 : bool = u_xlatb71;
      let x_3064 : f32 = u_xlat70;
      u_xlat70 = select(x_3064, 1.0f, x_3063);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3067 : f32 = u_xlat70;
    u_xlat71 = (-(x_3067) + 1.0f);
    let x_3070 : f32 = u_xlat66;
    let x_3071 : f32 = u_xlat71;
    let x_3073 : f32 = u_xlat70;
    u_xlat70 = ((x_3070 * x_3071) + x_3073);
    let x_3075 : f32 = u_xlat69;
    let x_3076 : f32 = u_xlat70;
    u_xlat69 = (x_3075 * x_3076);
    let x_3078 : f32 = u_xlat69;
    let x_3080 : i32 = u_xlati68;
    let x_3082 : vec4<f32> = x_1650.x_AdditionalLightsColor[x_3080];
    let x_3084 : vec3<f32> = (vec3<f32>(x_3078, x_3078, x_3078) * vec3<f32>(x_3082.x, x_3082.y, x_3082.z));
    let x_3085 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3084.x, x_3084.y, x_3084.z, x_3085.w);
    let x_3087 : vec4<f32> = u_xlat2;
    let x_3089 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3087.x, x_3087.y, x_3087.z), vec3<f32>(x_3089.x, x_3089.y, x_3089.z));
    let x_3092 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3092, 0.0f, 1.0f);
    let x_3094 : f32 = u_xlat68;
    let x_3096 : vec4<f32> = u_xlat7;
    let x_3098 : vec3<f32> = (vec3<f32>(x_3094, x_3094, x_3094) * vec3<f32>(x_3096.x, x_3096.y, x_3096.z));
    let x_3099 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3099.w);
    let x_3101 : vec4<f32> = u_xlat6;
    let x_3103 : vec4<f32> = u_xlat1;
    let x_3106 : vec4<f32> = u_xlat5;
    let x_3108 : vec3<f32> = ((vec3<f32>(x_3101.x, x_3101.y, x_3101.z) * vec3<f32>(x_3103.x, x_3103.y, x_3103.z)) + vec3<f32>(x_3106.x, x_3106.y, x_3106.z));
    let x_3109 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3109.w);

    continuing {
      let x_3111 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3111 + bitcast<u32>(1i));
    }
  }
  let x_3113 : vec3<f32> = u_xlat3;
  let x_3114 : vec4<f32> = u_xlat1;
  let x_3117 : vec4<f32> = u_xlat4;
  let x_3119 : vec3<f32> = ((x_3113 * vec3<f32>(x_3114.x, x_3114.y, x_3114.z)) + vec3<f32>(x_3117.x, x_3117.y, x_3117.z));
  let x_3120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3119.x, x_3119.y, x_3119.z, x_3120.w);
  let x_3124 : vec4<f32> = u_xlat5;
  let x_3126 : vec4<f32> = u_xlat1;
  let x_3128 : vec3<f32> = (vec3<f32>(x_3124.x, x_3124.y, x_3124.z) + vec3<f32>(x_3126.x, x_3126.y, x_3126.z));
  let x_3129 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
  let x_3131 : bool = u_xlatb44;
  let x_3132 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3132, x_3131);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


