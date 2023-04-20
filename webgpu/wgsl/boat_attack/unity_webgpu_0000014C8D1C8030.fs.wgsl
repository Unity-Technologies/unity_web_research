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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_215 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(2) var<uniform> x_1507 : UnityPerDraw;

var<private> u_xlatu0 : u32;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1624 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1458 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1765 : f32;
  var x_1775 : f32;
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
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_157 : vec2<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_27.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_157, x_159);
  u_xlat3 = x_160;
  let x_166 : vec2<f32> = vs_TEXCOORD1;
  let x_168 : f32 = x_27.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_166, x_168);
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.z);
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat3;
  let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec3<f32> = u_xlat2;
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_180, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 + 0.5f);
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.x, x_189.x) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_197, 0.00009999999747378752f);
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) / vec3<f32>(x_202.x, x_202.x, x_202.x));
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_219 : f32 = x_215.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_219);
  let x_221 : bool = u_xlatb0;
  if (x_221) {
    let x_225 : f32 = x_215.x_MainLightShadowParams.y;
    u_xlatb0 = (x_225 == 1.0f);
    let x_227 : bool = u_xlatb0;
    if (x_227) {
      let x_231 : vec4<f32> = vs_TEXCOORD6;
      let x_236 : vec4<f32> = x_215.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_231.x, x_231.y, x_231.x, x_231.y) + x_236);
      let x_240 : vec4<f32> = u_xlat4;
      let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
      let x_244 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_241.x, x_241.y, x_244);
      let x_257 : vec3<f32> = txVec0;
      let x_259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_257.xy, x_257.z);
      u_xlat5.x = x_259;
      let x_262 : vec4<f32> = u_xlat4;
      let x_263 : vec2<f32> = vec2<f32>(x_262.z, x_262.w);
      let x_265 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_263.x, x_263.y, x_265);
      let x_272 : vec3<f32> = txVec1;
      let x_274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_272.xy, x_272.z);
      u_xlat5.y = x_274;
      let x_276 : vec4<f32> = vs_TEXCOORD6;
      let x_280 : vec4<f32> = x_215.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y) + x_280);
      let x_283 : vec4<f32> = u_xlat4;
      let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
      let x_286 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_284.x, x_284.y, x_286);
      let x_293 : vec3<f32> = txVec2;
      let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_293.xy, x_293.z);
      u_xlat5.z = x_295;
      let x_298 : vec4<f32> = u_xlat4;
      let x_299 : vec2<f32> = vec2<f32>(x_298.z, x_298.w);
      let x_301 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_299.x, x_299.y, x_301);
      let x_308 : vec3<f32> = txVec3;
      let x_310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_308.xy, x_308.z);
      u_xlat5.w = x_310;
      let x_312 : vec4<f32> = u_xlat5;
      u_xlat0.x = dot(x_312, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_320 : f32 = x_215.x_MainLightShadowParams.y;
      u_xlatb66 = (x_320 == 2.0f);
      let x_323 : bool = u_xlatb66;
      if (x_323) {
        let x_326 : vec4<f32> = vs_TEXCOORD6;
        let x_330 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_334 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(x_330.z, x_330.w)) + vec2<f32>(0.5f, 0.5f));
        let x_335 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_337 : vec4<f32> = u_xlat4;
        let x_339 : vec2<f32> = floor(vec2<f32>(x_337.x, x_337.y));
        let x_340 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
        let x_344 : vec4<f32> = vs_TEXCOORD6;
        let x_347 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_350 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_344.x, x_344.y) * vec2<f32>(x_347.z, x_347.w)) + -(vec2<f32>(x_350.x, x_350.y)));
        let x_354 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_354.x, x_354.x, x_354.y, x_354.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_359 : vec4<f32> = u_xlat5;
        let x_361 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_359.x, x_359.x, x_359.z, x_359.z) * vec4<f32>(x_361.x, x_361.x, x_361.z, x_361.z));
        let x_364 : vec4<f32> = u_xlat6;
        let x_368 : vec2<f32> = (vec2<f32>(x_364.y, x_364.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_369 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_368.x, x_369.y, x_368.y, x_369.w);
        let x_371 : vec4<f32> = u_xlat6;
        let x_374 : vec2<f32> = u_xlat48;
        let x_376 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.z) * vec2<f32>(0.5f, 0.5f)) + -(x_374));
        let x_377 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
        let x_380 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_380) + vec2<f32>(1.0f, 1.0f));
        let x_385 : vec2<f32> = u_xlat48;
        let x_387 : vec2<f32> = min(x_385, vec2<f32>(0.0f, 0.0f));
        let x_388 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_390 : vec4<f32> = u_xlat7;
        let x_393 : vec4<f32> = u_xlat7;
        let x_396 : vec2<f32> = u_xlat50;
        let x_397 : vec2<f32> = ((-(vec2<f32>(x_390.x, x_390.y)) * vec2<f32>(x_393.x, x_393.y)) + x_396);
        let x_398 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
        let x_400 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_400, vec2<f32>(0.0f, 0.0f));
        let x_402 : vec2<f32> = u_xlat48;
        let x_404 : vec2<f32> = u_xlat48;
        let x_406 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_402) * x_404) + vec2<f32>(x_406.y, x_406.w));
        let x_409 : vec4<f32> = u_xlat7;
        let x_411 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) + vec2<f32>(1.0f, 1.0f));
        let x_412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
        let x_414 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_414 + vec2<f32>(1.0f, 1.0f));
        let x_417 : vec4<f32> = u_xlat6;
        let x_421 : vec2<f32> = (vec2<f32>(x_417.x, x_417.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_424 : vec2<f32> = u_xlat50;
        let x_425 : vec2<f32> = (x_424 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_426 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_428 : vec4<f32> = u_xlat7;
        let x_430 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_431 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_434 : vec2<f32> = u_xlat48;
        let x_435 : vec2<f32> = (x_434 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_436 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_438 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_438.y, x_438.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_442 : f32 = u_xlat7.x;
        u_xlat8.z = x_442;
        let x_445 : f32 = u_xlat48.x;
        u_xlat8.w = x_445;
        let x_448 : f32 = u_xlat9.x;
        u_xlat6.z = x_448;
        let x_451 : f32 = u_xlat5.x;
        u_xlat6.w = x_451;
        let x_454 : vec4<f32> = u_xlat6;
        let x_456 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_454.z, x_454.w, x_454.x, x_454.z) + vec4<f32>(x_456.z, x_456.w, x_456.x, x_456.z));
        let x_460 : f32 = u_xlat8.y;
        u_xlat7.z = x_460;
        let x_463 : f32 = u_xlat48.y;
        u_xlat7.w = x_463;
        let x_466 : f32 = u_xlat6.y;
        u_xlat9.z = x_466;
        let x_469 : f32 = u_xlat5.z;
        u_xlat9.w = x_469;
        let x_471 : vec4<f32> = u_xlat7;
        let x_473 : vec4<f32> = u_xlat9;
        let x_475 : vec3<f32> = (vec3<f32>(x_471.z, x_471.y, x_471.w) + vec3<f32>(x_473.z, x_473.y, x_473.w));
        let x_476 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat6;
        let x_480 : vec4<f32> = u_xlat10;
        let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.z, x_478.w) / vec3<f32>(x_480.z, x_480.w, x_480.y));
        let x_483 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
        let x_485 : vec4<f32> = u_xlat6;
        let x_490 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_491 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat9;
        let x_495 : vec4<f32> = u_xlat5;
        let x_497 : vec3<f32> = (vec3<f32>(x_493.z, x_493.y, x_493.w) / vec3<f32>(x_495.x, x_495.y, x_495.z));
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat7;
        let x_502 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_508 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_510 : vec3<f32> = (vec3<f32>(x_505.y, x_505.x, x_505.z) * vec3<f32>(x_508.x, x_508.x, x_508.x));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat7;
        let x_516 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_518 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_516.y, x_516.y, x_516.y));
        let x_519 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
        let x_522 : f32 = u_xlat7.x;
        u_xlat6.w = x_522;
        let x_524 : vec4<f32> = u_xlat4;
        let x_527 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_524.x, x_524.y, x_524.x, x_524.y) * vec4<f32>(x_527.x, x_527.y, x_527.x, x_527.y)) + vec4<f32>(x_530.y, x_530.w, x_530.x, x_530.w));
        let x_533 : vec4<f32> = u_xlat4;
        let x_536 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.x, x_536.y)) + vec2<f32>(x_539.z, x_539.w));
        let x_543 : f32 = u_xlat6.y;
        u_xlat7.w = x_543;
        let x_545 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = vec2<f32>(x_545.y, x_545.z);
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_547.x, x_546.x, x_547.z, x_546.y);
        let x_549 : vec4<f32> = u_xlat4;
        let x_552 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y) * vec4<f32>(x_552.x, x_552.y, x_552.x, x_552.y)) + vec4<f32>(x_555.x, x_555.y, x_555.z, x_555.y));
        let x_558 : vec4<f32> = u_xlat4;
        let x_561 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_564 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y) * vec4<f32>(x_561.x, x_561.y, x_561.x, x_561.y)) + vec4<f32>(x_564.w, x_564.y, x_564.w, x_564.z));
        let x_567 : vec4<f32> = u_xlat4;
        let x_570 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) * vec4<f32>(x_570.x, x_570.y, x_570.x, x_570.y)) + vec4<f32>(x_573.x, x_573.w, x_573.z, x_573.w));
        let x_577 : vec4<f32> = u_xlat5;
        let x_579 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_577.x, x_577.x, x_577.x, x_577.y) * vec4<f32>(x_579.z, x_579.w, x_579.y, x_579.z));
        let x_583 : vec4<f32> = u_xlat5;
        let x_585 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_583.y, x_583.y, x_583.z, x_583.z) * x_585);
        let x_588 : f32 = u_xlat5.z;
        let x_590 : f32 = u_xlat10.y;
        u_xlat66 = (x_588 * x_590);
        let x_593 : vec4<f32> = u_xlat8;
        let x_594 : vec2<f32> = vec2<f32>(x_593.x, x_593.y);
        let x_596 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_594.x, x_594.y, x_596);
        let x_604 : vec3<f32> = txVec4;
        let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
        u_xlat67 = x_606;
        let x_608 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = vec2<f32>(x_608.z, x_608.w);
        let x_611 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_609.x, x_609.y, x_611);
        let x_619 : vec3<f32> = txVec5;
        let x_621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_619.xy, x_619.z);
        u_xlat68 = x_621;
        let x_622 : f32 = u_xlat68;
        let x_624 : f32 = u_xlat11.y;
        u_xlat68 = (x_622 * x_624);
        let x_627 : f32 = u_xlat11.x;
        let x_628 : f32 = u_xlat67;
        let x_630 : f32 = u_xlat68;
        u_xlat67 = ((x_627 * x_628) + x_630);
        let x_633 : vec2<f32> = u_xlat48;
        let x_635 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_633.x, x_633.y, x_635);
        let x_642 : vec3<f32> = txVec6;
        let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_642.xy, x_642.z);
        u_xlat68 = x_644;
        let x_646 : f32 = u_xlat11.z;
        let x_647 : f32 = u_xlat68;
        let x_649 : f32 = u_xlat67;
        u_xlat67 = ((x_646 * x_647) + x_649);
        let x_652 : vec4<f32> = u_xlat7;
        let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
        let x_655 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_662 : vec3<f32> = txVec7;
        let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_662.xy, x_662.z);
        u_xlat68 = x_664;
        let x_666 : f32 = u_xlat11.w;
        let x_667 : f32 = u_xlat68;
        let x_669 : f32 = u_xlat67;
        u_xlat67 = ((x_666 * x_667) + x_669);
        let x_672 : vec4<f32> = u_xlat9;
        let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
        let x_675 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_673.x, x_673.y, x_675);
        let x_682 : vec3<f32> = txVec8;
        let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
        u_xlat68 = x_684;
        let x_686 : f32 = u_xlat12.x;
        let x_687 : f32 = u_xlat68;
        let x_689 : f32 = u_xlat67;
        u_xlat67 = ((x_686 * x_687) + x_689);
        let x_692 : vec4<f32> = u_xlat9;
        let x_693 : vec2<f32> = vec2<f32>(x_692.z, x_692.w);
        let x_695 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_693.x, x_693.y, x_695);
        let x_702 : vec3<f32> = txVec9;
        let x_704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_702.xy, x_702.z);
        u_xlat68 = x_704;
        let x_706 : f32 = u_xlat12.y;
        let x_707 : f32 = u_xlat68;
        let x_709 : f32 = u_xlat67;
        u_xlat67 = ((x_706 * x_707) + x_709);
        let x_712 : vec4<f32> = u_xlat7;
        let x_713 : vec2<f32> = vec2<f32>(x_712.z, x_712.w);
        let x_715 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_722 : vec3<f32> = txVec10;
        let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
        u_xlat68 = x_724;
        let x_726 : f32 = u_xlat12.z;
        let x_727 : f32 = u_xlat68;
        let x_729 : f32 = u_xlat67;
        u_xlat67 = ((x_726 * x_727) + x_729);
        let x_732 : vec4<f32> = u_xlat6;
        let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
        let x_735 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_733.x, x_733.y, x_735);
        let x_742 : vec3<f32> = txVec11;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
        u_xlat68 = x_744;
        let x_746 : f32 = u_xlat12.w;
        let x_747 : f32 = u_xlat68;
        let x_749 : f32 = u_xlat67;
        u_xlat67 = ((x_746 * x_747) + x_749);
        let x_752 : vec4<f32> = u_xlat6;
        let x_753 : vec2<f32> = vec2<f32>(x_752.z, x_752.w);
        let x_755 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_753.x, x_753.y, x_755);
        let x_762 : vec3<f32> = txVec12;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
        u_xlat68 = x_764;
        let x_765 : f32 = u_xlat66;
        let x_766 : f32 = u_xlat68;
        let x_768 : f32 = u_xlat67;
        u_xlat0.x = ((x_765 * x_766) + x_768);
      } else {
        let x_772 : vec4<f32> = vs_TEXCOORD6;
        let x_775 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_778 : vec2<f32> = ((vec2<f32>(x_772.x, x_772.y) * vec2<f32>(x_775.z, x_775.w)) + vec2<f32>(0.5f, 0.5f));
        let x_779 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat4;
        let x_783 : vec2<f32> = floor(vec2<f32>(x_781.x, x_781.y));
        let x_784 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = vs_TEXCOORD6;
        let x_789 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_786.x, x_786.y) * vec2<f32>(x_789.z, x_789.w)) + -(vec2<f32>(x_792.x, x_792.y)));
        let x_796 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_796.x, x_796.x, x_796.y, x_796.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_799 : vec4<f32> = u_xlat5;
        let x_801 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_799.x, x_799.x, x_799.z, x_799.z) * vec4<f32>(x_801.x, x_801.x, x_801.z, x_801.z));
        let x_804 : vec4<f32> = u_xlat6;
        let x_808 : vec2<f32> = (vec2<f32>(x_804.y, x_804.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_809.x, x_808.x, x_809.z, x_808.y);
        let x_811 : vec4<f32> = u_xlat6;
        let x_814 : vec2<f32> = u_xlat48;
        let x_816 : vec2<f32> = ((vec2<f32>(x_811.x, x_811.z) * vec2<f32>(0.5f, 0.5f)) + -(x_814));
        let x_817 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_816.x, x_817.y, x_816.y, x_817.w);
        let x_819 : vec2<f32> = u_xlat48;
        let x_821 : vec2<f32> = (-(x_819) + vec2<f32>(1.0f, 1.0f));
        let x_822 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_824, vec2<f32>(0.0f, 0.0f));
        let x_826 : vec2<f32> = u_xlat50;
        let x_828 : vec2<f32> = u_xlat50;
        let x_830 : vec4<f32> = u_xlat6;
        let x_832 : vec2<f32> = ((-(x_826) * x_828) + vec2<f32>(x_830.x, x_830.y));
        let x_833 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
        let x_835 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_835, vec2<f32>(0.0f, 0.0f));
        let x_838 : vec2<f32> = u_xlat50;
        let x_840 : vec2<f32> = u_xlat50;
        let x_842 : vec4<f32> = u_xlat5;
        let x_844 : vec2<f32> = ((-(x_838) * x_840) + vec2<f32>(x_842.y, x_842.w));
        let x_845 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_844.x, x_845.y, x_844.y);
        let x_847 : vec4<f32> = u_xlat6;
        let x_850 : vec2<f32> = (vec2<f32>(x_847.x, x_847.y) + vec2<f32>(2.0f, 2.0f));
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec3<f32> = u_xlat27;
        let x_855 : vec2<f32> = (vec2<f32>(x_853.x, x_853.z) + vec2<f32>(2.0f, 2.0f));
        let x_856 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_856.x, x_855.x, x_856.z, x_855.y);
        let x_859 : f32 = u_xlat5.y;
        u_xlat8.z = (x_859 * 0.08163200318813323975f);
        let x_863 : vec4<f32> = u_xlat5;
        let x_866 : vec3<f32> = (vec3<f32>(x_863.z, x_863.x, x_863.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_867 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
        let x_869 : vec4<f32> = u_xlat6;
        let x_872 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_873 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_876 : f32 = u_xlat9.y;
        u_xlat8.x = x_876;
        let x_878 : vec2<f32> = u_xlat48;
        let x_885 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_885.x, x_886.z, x_885.y);
        let x_888 : vec2<f32> = u_xlat48;
        let x_892 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_893.y, x_892.y, x_893.w);
        let x_896 : f32 = u_xlat5.x;
        u_xlat6.y = x_896;
        let x_899 : f32 = u_xlat7.y;
        u_xlat6.w = x_899;
        let x_901 : vec4<f32> = u_xlat6;
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_901 + x_902);
        let x_904 : vec2<f32> = u_xlat48;
        let x_907 : vec2<f32> = ((vec2<f32>(x_904.y, x_904.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_908.x, x_907.x, x_908.z, x_907.y);
        let x_910 : vec2<f32> = u_xlat48;
        let x_913 : vec2<f32> = ((vec2<f32>(x_910.y, x_910.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_914 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_913.x, x_914.y, x_913.y, x_914.w);
        let x_917 : f32 = u_xlat5.y;
        u_xlat7.y = x_917;
        let x_919 : vec4<f32> = u_xlat7;
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_919 + x_920);
        let x_922 : vec4<f32> = u_xlat6;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_922 / x_923);
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_925 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_931 : vec4<f32> = u_xlat7;
        let x_932 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_931 / x_932);
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_934 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_936 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_936.w, x_936.x, x_936.y, x_936.z) * vec4<f32>(x_939.x, x_939.x, x_939.x, x_939.x));
        let x_942 : vec4<f32> = u_xlat7;
        let x_945 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_942.x, x_942.w, x_942.y, x_942.z) * vec4<f32>(x_945.y, x_945.y, x_945.y, x_945.y));
        let x_948 : vec4<f32> = u_xlat6;
        let x_949 : vec3<f32> = vec3<f32>(x_948.y, x_948.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_950.y, x_949.y, x_949.z);
        let x_953 : f32 = u_xlat7.x;
        u_xlat9.y = x_953;
        let x_955 : vec4<f32> = u_xlat4;
        let x_958 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_961 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_955.x, x_955.y, x_955.x, x_955.y) * vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.y)) + vec4<f32>(x_961.x, x_961.y, x_961.z, x_961.y));
        let x_964 : vec4<f32> = u_xlat4;
        let x_967 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.x, x_967.y)) + vec2<f32>(x_970.w, x_970.y));
        let x_974 : f32 = u_xlat9.y;
        u_xlat6.y = x_974;
        let x_977 : f32 = u_xlat7.z;
        u_xlat9.y = x_977;
        let x_979 : vec4<f32> = u_xlat4;
        let x_982 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) * vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.y)) + vec4<f32>(x_985.x, x_985.y, x_985.z, x_985.y));
        let x_988 : vec4<f32> = u_xlat4;
        let x_991 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_994 : vec4<f32> = u_xlat9;
        let x_996 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.y) * vec2<f32>(x_991.x, x_991.y)) + vec2<f32>(x_994.w, x_994.y));
        let x_997 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat9.y;
        u_xlat6.z = x_1000;
        let x_1003 : vec4<f32> = u_xlat4;
        let x_1006 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y) * vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y)) + vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.z));
        let x_1013 : f32 = u_xlat7.w;
        u_xlat9.y = x_1013;
        let x_1016 : vec4<f32> = u_xlat4;
        let x_1019 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.y));
        let x_1026 : vec4<f32> = u_xlat4;
        let x_1029 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.x, x_1029.y)) + vec2<f32>(x_1032.w, x_1032.y));
        let x_1036 : f32 = u_xlat9.y;
        u_xlat6.w = x_1036;
        let x_1039 : vec4<f32> = u_xlat4;
        let x_1042 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1039.x, x_1039.y) * vec2<f32>(x_1042.x, x_1042.y)) + vec2<f32>(x_1045.x, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1049 : vec3<f32> = vec3<f32>(x_1048.x, x_1048.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1049.z);
        let x_1052 : vec4<f32> = u_xlat4;
        let x_1055 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y) * vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y)) + vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.y));
        let x_1062 : vec4<f32> = u_xlat4;
        let x_1065 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1072 : f32 = u_xlat6.x;
        u_xlat7.x = x_1072;
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_215.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1086 : vec4<f32> = u_xlat5;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.x, x_1086.x) * x_1088);
        let x_1091 : vec4<f32> = u_xlat5;
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1091.y, x_1091.y, x_1091.y, x_1091.y) * x_1093);
        let x_1096 : vec4<f32> = u_xlat5;
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1096.z, x_1096.z, x_1096.z, x_1096.z) * x_1098);
        let x_1100 : vec4<f32> = u_xlat5;
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1100.w, x_1100.w, x_1100.w, x_1100.w) * x_1102);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
        let x_1108 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec13;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat66 = x_1117;
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1120 : vec2<f32> = vec2<f32>(x_1119.z, x_1119.w);
        let x_1122 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1120.x, x_1120.y, x_1122);
        let x_1129 : vec3<f32> = txVec14;
        let x_1131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1129.xy, x_1129.z);
        u_xlat67 = x_1131;
        let x_1132 : f32 = u_xlat67;
        let x_1134 : f32 = u_xlat15.y;
        u_xlat67 = (x_1132 * x_1134);
        let x_1137 : f32 = u_xlat15.x;
        let x_1138 : f32 = u_xlat66;
        let x_1140 : f32 = u_xlat67;
        u_xlat66 = ((x_1137 * x_1138) + x_1140);
        let x_1143 : vec2<f32> = u_xlat48;
        let x_1145 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec15;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat67 = x_1154;
        let x_1156 : f32 = u_xlat15.z;
        let x_1157 : f32 = u_xlat67;
        let x_1159 : f32 = u_xlat66;
        u_xlat66 = ((x_1156 * x_1157) + x_1159);
        let x_1162 : vec4<f32> = u_xlat13;
        let x_1163 : vec2<f32> = vec2<f32>(x_1162.x, x_1162.y);
        let x_1165 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1163.x, x_1163.y, x_1165);
        let x_1172 : vec3<f32> = txVec16;
        let x_1174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1172.xy, x_1172.z);
        u_xlat67 = x_1174;
        let x_1176 : f32 = u_xlat15.w;
        let x_1177 : f32 = u_xlat67;
        let x_1179 : f32 = u_xlat66;
        u_xlat66 = ((x_1176 * x_1177) + x_1179);
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
        let x_1185 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec17;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat67 = x_1194;
        let x_1196 : f32 = u_xlat16.x;
        let x_1197 : f32 = u_xlat67;
        let x_1199 : f32 = u_xlat66;
        u_xlat66 = ((x_1196 * x_1197) + x_1199);
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
        let x_1205 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec18;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat67 = x_1214;
        let x_1216 : f32 = u_xlat16.y;
        let x_1217 : f32 = u_xlat67;
        let x_1219 : f32 = u_xlat66;
        u_xlat66 = ((x_1216 * x_1217) + x_1219);
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
        let x_1225 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec19;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1232.xy, x_1232.z);
        u_xlat67 = x_1234;
        let x_1236 : f32 = u_xlat16.z;
        let x_1237 : f32 = u_xlat67;
        let x_1239 : f32 = u_xlat66;
        u_xlat66 = ((x_1236 * x_1237) + x_1239);
        let x_1242 : vec4<f32> = u_xlat13;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.z, x_1242.w);
        let x_1245 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec20;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1252.xy, x_1252.z);
        u_xlat67 = x_1254;
        let x_1256 : f32 = u_xlat16.w;
        let x_1257 : f32 = u_xlat67;
        let x_1259 : f32 = u_xlat66;
        u_xlat66 = ((x_1256 * x_1257) + x_1259);
        let x_1262 : vec4<f32> = u_xlat14;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec21;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat67 = x_1274;
        let x_1276 : f32 = u_xlat17.x;
        let x_1277 : f32 = u_xlat67;
        let x_1279 : f32 = u_xlat66;
        u_xlat66 = ((x_1276 * x_1277) + x_1279);
        let x_1282 : vec4<f32> = u_xlat14;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec22;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
        u_xlat67 = x_1294;
        let x_1296 : f32 = u_xlat17.y;
        let x_1297 : f32 = u_xlat67;
        let x_1299 : f32 = u_xlat66;
        u_xlat66 = ((x_1296 * x_1297) + x_1299);
        let x_1302 : vec2<f32> = u_xlat28;
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec23;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat67 = x_1313;
        let x_1315 : f32 = u_xlat17.z;
        let x_1316 : f32 = u_xlat67;
        let x_1318 : f32 = u_xlat66;
        u_xlat66 = ((x_1315 * x_1316) + x_1318);
        let x_1321 : vec2<f32> = u_xlat56;
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec24;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat67 = x_1332;
        let x_1334 : f32 = u_xlat17.w;
        let x_1335 : f32 = u_xlat67;
        let x_1337 : f32 = u_xlat66;
        u_xlat66 = ((x_1334 * x_1335) + x_1337);
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec25;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat67 = x_1352;
        let x_1354 : f32 = u_xlat5.x;
        let x_1355 : f32 = u_xlat67;
        let x_1357 : f32 = u_xlat66;
        u_xlat66 = ((x_1354 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat9;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec26;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat67 = x_1372;
        let x_1374 : f32 = u_xlat5.y;
        let x_1375 : f32 = u_xlat67;
        let x_1377 : f32 = u_xlat66;
        u_xlat66 = ((x_1374 * x_1375) + x_1377);
        let x_1380 : vec2<f32> = u_xlat51;
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec27;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat67 = x_1391;
        let x_1393 : f32 = u_xlat5.z;
        let x_1394 : f32 = u_xlat67;
        let x_1396 : f32 = u_xlat66;
        u_xlat66 = ((x_1393 * x_1394) + x_1396);
        let x_1399 : vec4<f32> = u_xlat4;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.x, x_1399.y);
        let x_1402 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec28;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1409.xy, x_1409.z);
        u_xlat67 = x_1411;
        let x_1413 : f32 = u_xlat5.w;
        let x_1414 : f32 = u_xlat67;
        let x_1416 : f32 = u_xlat66;
        u_xlat0.x = ((x_1413 * x_1414) + x_1416);
      }
    }
  } else {
    let x_1421 : vec4<f32> = vs_TEXCOORD6;
    let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
    let x_1424 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
    let x_1431 : vec3<f32> = txVec29;
    let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
    u_xlat0.x = x_1433;
  }
  let x_1436 : f32 = x_215.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1436) + 1.0f);
  let x_1440 : f32 = u_xlat0.x;
  let x_1442 : f32 = x_215.x_MainLightShadowParams.x;
  let x_1444 : f32 = u_xlat66;
  u_xlat0.x = ((x_1440 * x_1442) + x_1444);
  let x_1448 : f32 = vs_TEXCOORD6.z;
  u_xlatb66 = (0.0f >= x_1448);
  let x_1452 : f32 = vs_TEXCOORD6.z;
  u_xlatb67 = (x_1452 >= 1.0f);
  let x_1454 : bool = u_xlatb66;
  let x_1455 : bool = u_xlatb67;
  u_xlatb66 = (x_1454 | x_1455);
  let x_1457 : bool = u_xlatb66;
  if (x_1457) {
    x_1458 = 1.0f;
  } else {
    let x_1463 : f32 = u_xlat0.x;
    x_1458 = x_1463;
  }
  let x_1464 : f32 = x_1458;
  u_xlat0.x = x_1464;
  let x_1467 : vec4<f32> = vs_TEXCOORD2;
  let x_1472 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1474 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) + -(x_1472));
  let x_1475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
  let x_1477 : vec4<f32> = u_xlat4;
  let x_1479 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(vec3<f32>(x_1477.x, x_1477.y, x_1477.z), vec3<f32>(x_1479.x, x_1479.y, x_1479.z));
  let x_1482 : f32 = u_xlat66;
  let x_1484 : f32 = x_215.x_MainLightShadowParams.z;
  let x_1487 : f32 = x_215.x_MainLightShadowParams.w;
  u_xlat67 = ((x_1482 * x_1484) + x_1487);
  let x_1489 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1489, 0.0f, 1.0f);
  let x_1492 : f32 = u_xlat0.x;
  u_xlat68 = (-(x_1492) + 1.0f);
  let x_1495 : f32 = u_xlat67;
  let x_1496 : f32 = u_xlat68;
  let x_1499 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1495 * x_1496) + x_1499);
  let x_1503 : f32 = u_xlat0.x;
  let x_1509 : f32 = x_1507.unity_LightData.z;
  u_xlat0.x = (x_1503 * x_1509);
  let x_1512 : vec4<f32> = u_xlat0;
  let x_1516 : vec4<f32> = x_27.x_MainLightColor;
  let x_1518 : vec3<f32> = (vec3<f32>(x_1512.x, x_1512.x, x_1512.x) * vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
  let x_1521 : vec3<f32> = u_xlat2;
  let x_1524 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_1521, vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
  let x_1529 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1529, 0.0f, 1.0f);
  let x_1532 : vec4<f32> = u_xlat0;
  let x_1534 : vec4<f32> = u_xlat4;
  let x_1536 : vec3<f32> = (vec3<f32>(x_1532.x, x_1532.x, x_1532.x) * vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
  let x_1537 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
  let x_1539 : vec4<f32> = u_xlat1;
  let x_1541 : vec4<f32> = u_xlat4;
  let x_1543 : vec3<f32> = (vec3<f32>(x_1539.x, x_1539.y, x_1539.z) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
  let x_1544 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1547 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1549 : f32 = x_1507.unity_LightData.y;
  u_xlat0.x = min(x_1547, x_1549);
  let x_1555 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1555));
  let x_1558 : f32 = u_xlat66;
  let x_1561 : f32 = x_215.x_AdditionalShadowFadeParams.x;
  let x_1564 : f32 = x_215.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1558 * x_1561) + x_1564);
  let x_1566 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1566, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1578 : u32 = u_xlatu_loop_1;
    let x_1579 : u32 = u_xlatu0;
    if ((x_1578 < x_1579)) {
    } else {
      break;
    }
    let x_1582 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1582 >> 2u);
    let x_1586 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1586 & 3u));
    let x_1589 : u32 = u_xlatu68;
    let x_1592 : vec4<f32> = x_1507.unity_LightIndices[bitcast<i32>(x_1589)];
    let x_1602 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1607 : vec4<u32> = indexable[x_1602];
    u_xlat68 = dot(x_1592, bitcast<vec4<f32>>(x_1607));
    let x_1611 : f32 = u_xlat68;
    u_xlati68 = i32(x_1611);
    let x_1613 : vec4<f32> = vs_TEXCOORD2;
    let x_1625 : i32 = u_xlati68;
    let x_1627 : vec4<f32> = x_1624.x_AdditionalLightsPosition[x_1625];
    let x_1630 : i32 = u_xlati68;
    let x_1632 : vec4<f32> = x_1624.x_AdditionalLightsPosition[x_1630];
    let x_1634 : vec3<f32> = ((-(vec3<f32>(x_1613.x, x_1613.y, x_1613.z)) * vec3<f32>(x_1627.w, x_1627.w, x_1627.w)) + vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
    let x_1638 : vec4<f32> = u_xlat6;
    let x_1640 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1638.x, x_1638.y, x_1638.z), vec3<f32>(x_1640.x, x_1640.y, x_1640.z));
    let x_1643 : f32 = u_xlat69;
    u_xlat69 = max(x_1643, 0.00006103515625f);
    let x_1647 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1647);
    let x_1649 : f32 = u_xlat70;
    let x_1651 : vec4<f32> = u_xlat6;
    let x_1653 : vec3<f32> = (vec3<f32>(x_1649, x_1649, x_1649) * vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
    let x_1654 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
    let x_1656 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1656);
    let x_1658 : f32 = u_xlat69;
    let x_1659 : i32 = u_xlati68;
    let x_1661 : f32 = x_1624.x_AdditionalLightsAttenuation[x_1659].x;
    u_xlat69 = (x_1658 * x_1661);
    let x_1663 : f32 = u_xlat69;
    let x_1665 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1663) * x_1665) + 1.0f);
    let x_1668 : f32 = u_xlat69;
    u_xlat69 = max(x_1668, 0.0f);
    let x_1670 : f32 = u_xlat69;
    let x_1671 : f32 = u_xlat69;
    u_xlat69 = (x_1670 * x_1671);
    let x_1673 : f32 = u_xlat69;
    let x_1674 : f32 = u_xlat70;
    u_xlat69 = (x_1673 * x_1674);
    let x_1676 : i32 = u_xlati68;
    let x_1678 : vec4<f32> = x_1624.x_AdditionalLightsSpotDir[x_1676];
    let x_1680 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1678.x, x_1678.y, x_1678.z), vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
    let x_1683 : f32 = u_xlat70;
    let x_1684 : i32 = u_xlati68;
    let x_1686 : f32 = x_1624.x_AdditionalLightsAttenuation[x_1684].z;
    let x_1688 : i32 = u_xlati68;
    let x_1690 : f32 = x_1624.x_AdditionalLightsAttenuation[x_1688].w;
    u_xlat70 = ((x_1683 * x_1686) + x_1690);
    let x_1692 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1692, 0.0f, 1.0f);
    let x_1694 : f32 = u_xlat70;
    let x_1695 : f32 = u_xlat70;
    u_xlat70 = (x_1694 * x_1695);
    let x_1697 : f32 = u_xlat69;
    let x_1698 : f32 = u_xlat70;
    u_xlat69 = (x_1697 * x_1698);
    let x_1702 : i32 = u_xlati68;
    let x_1704 : f32 = x_215.x_AdditionalShadowParams[x_1702].w;
    u_xlati70 = i32(x_1704);
    let x_1707 : i32 = u_xlati70;
    u_xlatb71 = (x_1707 >= 0i);
    let x_1709 : bool = u_xlatb71;
    if (x_1709) {
      let x_1713 : i32 = u_xlati68;
      let x_1715 : f32 = x_215.x_AdditionalShadowParams[x_1713].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1715, x_1715, x_1715, x_1715))));
      let x_1720 : bool = u_xlatb71;
      if (x_1720) {
        let x_1725 : vec4<f32> = u_xlat6;
        let x_1728 : vec4<f32> = u_xlat6;
        let x_1731 : vec4<bool> = (abs(vec4<f32>(x_1725.z, x_1725.z, x_1725.y, x_1725.z)) >= abs(vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.x)));
        let x_1733 : vec3<bool> = vec3<bool>(x_1731.x, x_1731.y, x_1731.z);
        let x_1734 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
        let x_1737 : bool = u_xlatb7.y;
        let x_1739 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1737 & x_1739);
        let x_1741 : vec4<f32> = u_xlat6;
        let x_1744 : vec4<bool> = (-(vec4<f32>(x_1741.z, x_1741.y, x_1741.z, x_1741.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1745 : vec3<bool> = vec3<bool>(x_1744.x, x_1744.y, x_1744.w);
        let x_1746 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1745.x, x_1745.y, x_1746.z, x_1745.z);
        let x_1749 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1749);
        let x_1755 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1755);
        let x_1761 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1761);
        let x_1764 : bool = u_xlatb7.z;
        if (x_1764) {
          let x_1769 : f32 = u_xlat7.y;
          x_1765 = x_1769;
        } else {
          let x_1771 : f32 = u_xlat72;
          x_1765 = x_1771;
        }
        let x_1772 : f32 = x_1765;
        u_xlat72 = x_1772;
        let x_1774 : bool = u_xlatb71;
        if (x_1774) {
          let x_1779 : f32 = u_xlat7.x;
          x_1775 = x_1779;
        } else {
          let x_1781 : f32 = u_xlat72;
          x_1775 = x_1781;
        }
        let x_1782 : f32 = x_1775;
        u_xlat71 = x_1782;
        let x_1783 : i32 = u_xlati68;
        let x_1785 : f32 = x_215.x_AdditionalShadowParams[x_1783].w;
        u_xlat72 = trunc(x_1785);
        let x_1787 : f32 = u_xlat71;
        let x_1788 : f32 = u_xlat72;
        u_xlat71 = (x_1787 + x_1788);
        let x_1790 : f32 = u_xlat71;
        u_xlati70 = i32(x_1790);
      }
      let x_1792 : i32 = u_xlati70;
      u_xlati70 = (x_1792 << bitcast<u32>(2i));
      let x_1794 : vec4<f32> = vs_TEXCOORD2;
      let x_1797 : i32 = u_xlati70;
      let x_1800 : i32 = u_xlati70;
      let x_1804 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[((x_1797 + 1i) / 4i)][((x_1800 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1794.y, x_1794.y, x_1794.y, x_1794.y) * x_1804);
      let x_1806 : i32 = u_xlati70;
      let x_1808 : i32 = u_xlati70;
      let x_1811 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[(x_1806 / 4i)][(x_1808 % 4i)];
      let x_1812 : vec4<f32> = vs_TEXCOORD2;
      let x_1815 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1811 * vec4<f32>(x_1812.x, x_1812.x, x_1812.x, x_1812.x)) + x_1815);
      let x_1817 : i32 = u_xlati70;
      let x_1820 : i32 = u_xlati70;
      let x_1824 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[((x_1817 + 2i) / 4i)][((x_1820 + 2i) % 4i)];
      let x_1825 : vec4<f32> = vs_TEXCOORD2;
      let x_1828 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1824 * vec4<f32>(x_1825.z, x_1825.z, x_1825.z, x_1825.z)) + x_1828);
      let x_1830 : vec4<f32> = u_xlat7;
      let x_1831 : i32 = u_xlati70;
      let x_1834 : i32 = u_xlati70;
      let x_1838 : vec4<f32> = x_215.x_AdditionalLightsWorldToShadow[((x_1831 + 3i) / 4i)][((x_1834 + 3i) % 4i)];
      u_xlat7 = (x_1830 + x_1838);
      let x_1840 : vec4<f32> = u_xlat7;
      let x_1842 : vec4<f32> = u_xlat7;
      let x_1844 : vec3<f32> = (vec3<f32>(x_1840.x, x_1840.y, x_1840.z) / vec3<f32>(x_1842.w, x_1842.w, x_1842.w));
      let x_1845 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
      let x_1848 : i32 = u_xlati68;
      let x_1850 : f32 = x_215.x_AdditionalShadowParams[x_1848].y;
      u_xlatb70 = (0.0f < x_1850);
      let x_1852 : bool = u_xlatb70;
      if (x_1852) {
        let x_1855 : i32 = u_xlati68;
        let x_1857 : f32 = x_215.x_AdditionalShadowParams[x_1855].y;
        u_xlatb70 = (1.0f == x_1857);
        let x_1859 : bool = u_xlatb70;
        if (x_1859) {
          let x_1862 : vec4<f32> = u_xlat7;
          let x_1866 : vec4<f32> = x_215.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1862.x, x_1862.y, x_1862.x, x_1862.y) + x_1866);
          let x_1869 : vec4<f32> = u_xlat8;
          let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
          let x_1872 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
          let x_1880 : vec3<f32> = txVec30;
          let x_1882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
          u_xlat9.x = x_1882;
          let x_1885 : vec4<f32> = u_xlat8;
          let x_1886 : vec2<f32> = vec2<f32>(x_1885.z, x_1885.w);
          let x_1888 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1886.x, x_1886.y, x_1888);
          let x_1895 : vec3<f32> = txVec31;
          let x_1897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1895.xy, x_1895.z);
          u_xlat9.y = x_1897;
          let x_1899 : vec4<f32> = u_xlat7;
          let x_1903 : vec4<f32> = x_215.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1899.x, x_1899.y, x_1899.x, x_1899.y) + x_1903);
          let x_1906 : vec4<f32> = u_xlat8;
          let x_1907 : vec2<f32> = vec2<f32>(x_1906.x, x_1906.y);
          let x_1909 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1907.x, x_1907.y, x_1909);
          let x_1916 : vec3<f32> = txVec32;
          let x_1918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1916.xy, x_1916.z);
          u_xlat9.z = x_1918;
          let x_1921 : vec4<f32> = u_xlat8;
          let x_1922 : vec2<f32> = vec2<f32>(x_1921.z, x_1921.w);
          let x_1924 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1922.x, x_1922.y, x_1924);
          let x_1931 : vec3<f32> = txVec33;
          let x_1933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1931.xy, x_1931.z);
          u_xlat9.w = x_1933;
          let x_1935 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_1935, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1938 : i32 = u_xlati68;
          let x_1940 : f32 = x_215.x_AdditionalShadowParams[x_1938].y;
          u_xlatb71 = (2.0f == x_1940);
          let x_1942 : bool = u_xlatb71;
          if (x_1942) {
            let x_1945 : vec4<f32> = u_xlat7;
            let x_1949 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_1952 : vec2<f32> = ((vec2<f32>(x_1945.x, x_1945.y) * vec2<f32>(x_1949.z, x_1949.w)) + vec2<f32>(0.5f, 0.5f));
            let x_1953 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1952.x, x_1952.y, x_1953.z, x_1953.w);
            let x_1955 : vec4<f32> = u_xlat8;
            let x_1957 : vec2<f32> = floor(vec2<f32>(x_1955.x, x_1955.y));
            let x_1958 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
            let x_1961 : vec4<f32> = u_xlat7;
            let x_1964 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_1967 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_1961.x, x_1961.y) * vec2<f32>(x_1964.z, x_1964.w)) + -(vec2<f32>(x_1967.x, x_1967.y)));
            let x_1971 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_1971.x, x_1971.x, x_1971.y, x_1971.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_1974 : vec4<f32> = u_xlat9;
            let x_1976 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_1974.x, x_1974.x, x_1974.z, x_1974.z) * vec4<f32>(x_1976.x, x_1976.x, x_1976.z, x_1976.z));
            let x_1979 : vec4<f32> = u_xlat10;
            let x_1981 : vec2<f32> = (vec2<f32>(x_1979.y, x_1979.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_1982 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_1981.x, x_1982.y, x_1981.y, x_1982.w);
            let x_1984 : vec4<f32> = u_xlat10;
            let x_1987 : vec2<f32> = u_xlat52;
            let x_1989 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1987));
            let x_1990 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_1989.x, x_1989.y, x_1990.z, x_1990.w);
            let x_1993 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_1993) + vec2<f32>(1.0f, 1.0f));
            let x_1996 : vec2<f32> = u_xlat52;
            let x_1997 : vec2<f32> = min(x_1996, vec2<f32>(0.0f, 0.0f));
            let x_1998 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_1997.x, x_1997.y, x_1998.z, x_1998.w);
            let x_2000 : vec4<f32> = u_xlat11;
            let x_2003 : vec4<f32> = u_xlat11;
            let x_2006 : vec2<f32> = u_xlat54;
            let x_2007 : vec2<f32> = ((-(vec2<f32>(x_2000.x, x_2000.y)) * vec2<f32>(x_2003.x, x_2003.y)) + x_2006);
            let x_2008 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
            let x_2010 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2010, vec2<f32>(0.0f, 0.0f));
            let x_2012 : vec2<f32> = u_xlat52;
            let x_2014 : vec2<f32> = u_xlat52;
            let x_2016 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2012) * x_2014) + vec2<f32>(x_2016.y, x_2016.w));
            let x_2019 : vec4<f32> = u_xlat11;
            let x_2021 : vec2<f32> = (vec2<f32>(x_2019.x, x_2019.y) + vec2<f32>(1.0f, 1.0f));
            let x_2022 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2021.x, x_2021.y, x_2022.z, x_2022.w);
            let x_2024 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2024 + vec2<f32>(1.0f, 1.0f));
            let x_2026 : vec4<f32> = u_xlat10;
            let x_2028 : vec2<f32> = (vec2<f32>(x_2026.x, x_2026.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2029 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2028.x, x_2028.y, x_2029.z, x_2029.w);
            let x_2031 : vec2<f32> = u_xlat54;
            let x_2032 : vec2<f32> = (x_2031 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2033 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
            let x_2035 : vec4<f32> = u_xlat11;
            let x_2037 : vec2<f32> = (vec2<f32>(x_2035.x, x_2035.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2038 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2037.x, x_2037.y, x_2038.z, x_2038.w);
            let x_2040 : vec2<f32> = u_xlat52;
            let x_2041 : vec2<f32> = (x_2040 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2042 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2041.x, x_2041.y, x_2042.z, x_2042.w);
            let x_2044 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2044.y, x_2044.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2048 : f32 = u_xlat11.x;
            u_xlat12.z = x_2048;
            let x_2051 : f32 = u_xlat52.x;
            u_xlat12.w = x_2051;
            let x_2054 : f32 = u_xlat13.x;
            u_xlat10.z = x_2054;
            let x_2057 : f32 = u_xlat9.x;
            u_xlat10.w = x_2057;
            let x_2059 : vec4<f32> = u_xlat10;
            let x_2061 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2059.z, x_2059.w, x_2059.x, x_2059.z) + vec4<f32>(x_2061.z, x_2061.w, x_2061.x, x_2061.z));
            let x_2065 : f32 = u_xlat12.y;
            u_xlat11.z = x_2065;
            let x_2068 : f32 = u_xlat52.y;
            u_xlat11.w = x_2068;
            let x_2071 : f32 = u_xlat10.y;
            u_xlat13.z = x_2071;
            let x_2074 : f32 = u_xlat9.z;
            u_xlat13.w = x_2074;
            let x_2076 : vec4<f32> = u_xlat11;
            let x_2078 : vec4<f32> = u_xlat13;
            let x_2080 : vec3<f32> = (vec3<f32>(x_2076.z, x_2076.y, x_2076.w) + vec3<f32>(x_2078.z, x_2078.y, x_2078.w));
            let x_2081 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
            let x_2083 : vec4<f32> = u_xlat10;
            let x_2085 : vec4<f32> = u_xlat14;
            let x_2087 : vec3<f32> = (vec3<f32>(x_2083.x, x_2083.z, x_2083.w) / vec3<f32>(x_2085.z, x_2085.w, x_2085.y));
            let x_2088 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
            let x_2090 : vec4<f32> = u_xlat10;
            let x_2092 : vec3<f32> = (vec3<f32>(x_2090.x, x_2090.y, x_2090.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2093 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
            let x_2095 : vec4<f32> = u_xlat13;
            let x_2097 : vec4<f32> = u_xlat9;
            let x_2099 : vec3<f32> = (vec3<f32>(x_2095.z, x_2095.y, x_2095.w) / vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
            let x_2100 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2099.x, x_2099.y, x_2099.z, x_2100.w);
            let x_2102 : vec4<f32> = u_xlat11;
            let x_2104 : vec3<f32> = (vec3<f32>(x_2102.x, x_2102.y, x_2102.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2105 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
            let x_2107 : vec4<f32> = u_xlat10;
            let x_2110 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2112 : vec3<f32> = (vec3<f32>(x_2107.y, x_2107.x, x_2107.z) * vec3<f32>(x_2110.x, x_2110.x, x_2110.x));
            let x_2113 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
            let x_2115 : vec4<f32> = u_xlat11;
            let x_2118 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2120 : vec3<f32> = (vec3<f32>(x_2115.x, x_2115.y, x_2115.z) * vec3<f32>(x_2118.y, x_2118.y, x_2118.y));
            let x_2121 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
            let x_2124 : f32 = u_xlat11.x;
            u_xlat10.w = x_2124;
            let x_2126 : vec4<f32> = u_xlat8;
            let x_2129 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2132 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2126.x, x_2126.y, x_2126.x, x_2126.y) * vec4<f32>(x_2129.x, x_2129.y, x_2129.x, x_2129.y)) + vec4<f32>(x_2132.y, x_2132.w, x_2132.x, x_2132.w));
            let x_2135 : vec4<f32> = u_xlat8;
            let x_2138 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2141 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2135.x, x_2135.y) * vec2<f32>(x_2138.x, x_2138.y)) + vec2<f32>(x_2141.z, x_2141.w));
            let x_2145 : f32 = u_xlat10.y;
            u_xlat11.w = x_2145;
            let x_2147 : vec4<f32> = u_xlat11;
            let x_2148 : vec2<f32> = vec2<f32>(x_2147.y, x_2147.z);
            let x_2149 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2149.x, x_2148.x, x_2149.z, x_2148.y);
            let x_2151 : vec4<f32> = u_xlat8;
            let x_2154 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2157 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2151.x, x_2151.y, x_2151.x, x_2151.y) * vec4<f32>(x_2154.x, x_2154.y, x_2154.x, x_2154.y)) + vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2157.y));
            let x_2160 : vec4<f32> = u_xlat8;
            let x_2163 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2166 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2160.x, x_2160.y, x_2160.x, x_2160.y) * vec4<f32>(x_2163.x, x_2163.y, x_2163.x, x_2163.y)) + vec4<f32>(x_2166.w, x_2166.y, x_2166.w, x_2166.z));
            let x_2169 : vec4<f32> = u_xlat8;
            let x_2172 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2175 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2169.x, x_2169.y, x_2169.x, x_2169.y) * vec4<f32>(x_2172.x, x_2172.y, x_2172.x, x_2172.y)) + vec4<f32>(x_2175.x, x_2175.w, x_2175.z, x_2175.w));
            let x_2178 : vec4<f32> = u_xlat9;
            let x_2180 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2178.x, x_2178.x, x_2178.x, x_2178.y) * vec4<f32>(x_2180.z, x_2180.w, x_2180.y, x_2180.z));
            let x_2183 : vec4<f32> = u_xlat9;
            let x_2185 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2183.y, x_2183.y, x_2183.z, x_2183.z) * x_2185);
            let x_2188 : f32 = u_xlat9.z;
            let x_2190 : f32 = u_xlat14.y;
            u_xlat71 = (x_2188 * x_2190);
            let x_2193 : vec4<f32> = u_xlat12;
            let x_2194 : vec2<f32> = vec2<f32>(x_2193.x, x_2193.y);
            let x_2196 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2194.x, x_2194.y, x_2196);
            let x_2203 : vec3<f32> = txVec34;
            let x_2205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2203.xy, x_2203.z);
            u_xlat72 = x_2205;
            let x_2207 : vec4<f32> = u_xlat12;
            let x_2208 : vec2<f32> = vec2<f32>(x_2207.z, x_2207.w);
            let x_2210 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2208.x, x_2208.y, x_2210);
            let x_2218 : vec3<f32> = txVec35;
            let x_2220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
            u_xlat73 = x_2220;
            let x_2221 : f32 = u_xlat73;
            let x_2223 : f32 = u_xlat15.y;
            u_xlat73 = (x_2221 * x_2223);
            let x_2226 : f32 = u_xlat15.x;
            let x_2227 : f32 = u_xlat72;
            let x_2229 : f32 = u_xlat73;
            u_xlat72 = ((x_2226 * x_2227) + x_2229);
            let x_2232 : vec2<f32> = u_xlat52;
            let x_2234 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2232.x, x_2232.y, x_2234);
            let x_2241 : vec3<f32> = txVec36;
            let x_2243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
            u_xlat73 = x_2243;
            let x_2245 : f32 = u_xlat15.z;
            let x_2246 : f32 = u_xlat73;
            let x_2248 : f32 = u_xlat72;
            u_xlat72 = ((x_2245 * x_2246) + x_2248);
            let x_2251 : vec4<f32> = u_xlat11;
            let x_2252 : vec2<f32> = vec2<f32>(x_2251.x, x_2251.y);
            let x_2254 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
            let x_2261 : vec3<f32> = txVec37;
            let x_2263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2261.xy, x_2261.z);
            u_xlat73 = x_2263;
            let x_2265 : f32 = u_xlat15.w;
            let x_2266 : f32 = u_xlat73;
            let x_2268 : f32 = u_xlat72;
            u_xlat72 = ((x_2265 * x_2266) + x_2268);
            let x_2271 : vec4<f32> = u_xlat13;
            let x_2272 : vec2<f32> = vec2<f32>(x_2271.x, x_2271.y);
            let x_2274 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
            let x_2281 : vec3<f32> = txVec38;
            let x_2283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2281.xy, x_2281.z);
            u_xlat73 = x_2283;
            let x_2285 : f32 = u_xlat16.x;
            let x_2286 : f32 = u_xlat73;
            let x_2288 : f32 = u_xlat72;
            u_xlat72 = ((x_2285 * x_2286) + x_2288);
            let x_2291 : vec4<f32> = u_xlat13;
            let x_2292 : vec2<f32> = vec2<f32>(x_2291.z, x_2291.w);
            let x_2294 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2292.x, x_2292.y, x_2294);
            let x_2301 : vec3<f32> = txVec39;
            let x_2303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2301.xy, x_2301.z);
            u_xlat73 = x_2303;
            let x_2305 : f32 = u_xlat16.y;
            let x_2306 : f32 = u_xlat73;
            let x_2308 : f32 = u_xlat72;
            u_xlat72 = ((x_2305 * x_2306) + x_2308);
            let x_2311 : vec4<f32> = u_xlat11;
            let x_2312 : vec2<f32> = vec2<f32>(x_2311.z, x_2311.w);
            let x_2314 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2312.x, x_2312.y, x_2314);
            let x_2321 : vec3<f32> = txVec40;
            let x_2323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2321.xy, x_2321.z);
            u_xlat73 = x_2323;
            let x_2325 : f32 = u_xlat16.z;
            let x_2326 : f32 = u_xlat73;
            let x_2328 : f32 = u_xlat72;
            u_xlat72 = ((x_2325 * x_2326) + x_2328);
            let x_2331 : vec4<f32> = u_xlat10;
            let x_2332 : vec2<f32> = vec2<f32>(x_2331.x, x_2331.y);
            let x_2334 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
            let x_2341 : vec3<f32> = txVec41;
            let x_2343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2341.xy, x_2341.z);
            u_xlat73 = x_2343;
            let x_2345 : f32 = u_xlat16.w;
            let x_2346 : f32 = u_xlat73;
            let x_2348 : f32 = u_xlat72;
            u_xlat72 = ((x_2345 * x_2346) + x_2348);
            let x_2351 : vec4<f32> = u_xlat10;
            let x_2352 : vec2<f32> = vec2<f32>(x_2351.z, x_2351.w);
            let x_2354 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
            let x_2361 : vec3<f32> = txVec42;
            let x_2363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
            u_xlat73 = x_2363;
            let x_2364 : f32 = u_xlat71;
            let x_2365 : f32 = u_xlat73;
            let x_2367 : f32 = u_xlat72;
            u_xlat70 = ((x_2364 * x_2365) + x_2367);
          } else {
            let x_2370 : vec4<f32> = u_xlat7;
            let x_2373 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2376 : vec2<f32> = ((vec2<f32>(x_2370.x, x_2370.y) * vec2<f32>(x_2373.z, x_2373.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2377 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2376.x, x_2376.y, x_2377.z, x_2377.w);
            let x_2379 : vec4<f32> = u_xlat8;
            let x_2381 : vec2<f32> = floor(vec2<f32>(x_2379.x, x_2379.y));
            let x_2382 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
            let x_2384 : vec4<f32> = u_xlat7;
            let x_2387 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2390 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2384.x, x_2384.y) * vec2<f32>(x_2387.z, x_2387.w)) + -(vec2<f32>(x_2390.x, x_2390.y)));
            let x_2394 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2394.x, x_2394.x, x_2394.y, x_2394.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2397 : vec4<f32> = u_xlat9;
            let x_2399 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2397.x, x_2397.x, x_2397.z, x_2397.z) * vec4<f32>(x_2399.x, x_2399.x, x_2399.z, x_2399.z));
            let x_2402 : vec4<f32> = u_xlat10;
            let x_2404 : vec2<f32> = (vec2<f32>(x_2402.y, x_2402.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2405 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2405.x, x_2404.x, x_2405.z, x_2404.y);
            let x_2407 : vec4<f32> = u_xlat10;
            let x_2410 : vec2<f32> = u_xlat52;
            let x_2412 : vec2<f32> = ((vec2<f32>(x_2407.x, x_2407.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2410));
            let x_2413 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2412.x, x_2413.y, x_2412.y, x_2413.w);
            let x_2415 : vec2<f32> = u_xlat52;
            let x_2417 : vec2<f32> = (-(x_2415) + vec2<f32>(1.0f, 1.0f));
            let x_2418 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2420 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2420, vec2<f32>(0.0f, 0.0f));
            let x_2422 : vec2<f32> = u_xlat54;
            let x_2424 : vec2<f32> = u_xlat54;
            let x_2426 : vec4<f32> = u_xlat10;
            let x_2428 : vec2<f32> = ((-(x_2422) * x_2424) + vec2<f32>(x_2426.x, x_2426.y));
            let x_2429 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2428.x, x_2428.y, x_2429.z, x_2429.w);
            let x_2431 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2431, vec2<f32>(0.0f, 0.0f));
            let x_2434 : vec2<f32> = u_xlat54;
            let x_2436 : vec2<f32> = u_xlat54;
            let x_2438 : vec4<f32> = u_xlat9;
            let x_2440 : vec2<f32> = ((-(x_2434) * x_2436) + vec2<f32>(x_2438.y, x_2438.w));
            let x_2441 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2440.x, x_2441.y, x_2440.y);
            let x_2443 : vec4<f32> = u_xlat10;
            let x_2445 : vec2<f32> = (vec2<f32>(x_2443.x, x_2443.y) + vec2<f32>(2.0f, 2.0f));
            let x_2446 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec3<f32> = u_xlat31;
            let x_2450 : vec2<f32> = (vec2<f32>(x_2448.x, x_2448.z) + vec2<f32>(2.0f, 2.0f));
            let x_2451 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2451.x, x_2450.x, x_2451.z, x_2450.y);
            let x_2454 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2454 * 0.08163200318813323975f);
            let x_2457 : vec4<f32> = u_xlat9;
            let x_2459 : vec3<f32> = (vec3<f32>(x_2457.z, x_2457.x, x_2457.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2460 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
            let x_2462 : vec4<f32> = u_xlat10;
            let x_2464 : vec2<f32> = (vec2<f32>(x_2462.x, x_2462.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2465 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
            let x_2468 : f32 = u_xlat13.y;
            u_xlat12.x = x_2468;
            let x_2470 : vec2<f32> = u_xlat52;
            let x_2473 : vec2<f32> = ((vec2<f32>(x_2470.x, x_2470.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2474 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2474.x, x_2473.x, x_2474.z, x_2473.y);
            let x_2476 : vec2<f32> = u_xlat52;
            let x_2479 : vec2<f32> = ((vec2<f32>(x_2476.x, x_2476.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2480 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2479.x, x_2480.y, x_2479.y, x_2480.w);
            let x_2483 : f32 = u_xlat9.x;
            u_xlat10.y = x_2483;
            let x_2486 : f32 = u_xlat11.y;
            u_xlat10.w = x_2486;
            let x_2488 : vec4<f32> = u_xlat10;
            let x_2489 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2488 + x_2489);
            let x_2491 : vec2<f32> = u_xlat52;
            let x_2494 : vec2<f32> = ((vec2<f32>(x_2491.y, x_2491.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2495 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2495.x, x_2494.x, x_2495.z, x_2494.y);
            let x_2497 : vec2<f32> = u_xlat52;
            let x_2500 : vec2<f32> = ((vec2<f32>(x_2497.y, x_2497.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2501 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2500.x, x_2501.y, x_2500.y, x_2501.w);
            let x_2504 : f32 = u_xlat9.y;
            u_xlat11.y = x_2504;
            let x_2506 : vec4<f32> = u_xlat11;
            let x_2507 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2506 + x_2507);
            let x_2509 : vec4<f32> = u_xlat10;
            let x_2510 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2509 / x_2510);
            let x_2512 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2512 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2514 : vec4<f32> = u_xlat11;
            let x_2515 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2514 / x_2515);
            let x_2517 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2517 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2519 : vec4<f32> = u_xlat10;
            let x_2522 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2519.w, x_2519.x, x_2519.y, x_2519.z) * vec4<f32>(x_2522.x, x_2522.x, x_2522.x, x_2522.x));
            let x_2525 : vec4<f32> = u_xlat11;
            let x_2528 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2525.x, x_2525.w, x_2525.y, x_2525.z) * vec4<f32>(x_2528.y, x_2528.y, x_2528.y, x_2528.y));
            let x_2531 : vec4<f32> = u_xlat10;
            let x_2532 : vec3<f32> = vec3<f32>(x_2531.y, x_2531.z, x_2531.w);
            let x_2533 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2532.x, x_2533.y, x_2532.y, x_2532.z);
            let x_2536 : f32 = u_xlat11.x;
            u_xlat13.y = x_2536;
            let x_2538 : vec4<f32> = u_xlat8;
            let x_2541 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2544 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2538.x, x_2538.y, x_2538.x, x_2538.y) * vec4<f32>(x_2541.x, x_2541.y, x_2541.x, x_2541.y)) + vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2544.y));
            let x_2547 : vec4<f32> = u_xlat8;
            let x_2550 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2553 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2547.x, x_2547.y) * vec2<f32>(x_2550.x, x_2550.y)) + vec2<f32>(x_2553.w, x_2553.y));
            let x_2557 : f32 = u_xlat13.y;
            u_xlat10.y = x_2557;
            let x_2560 : f32 = u_xlat11.z;
            u_xlat13.y = x_2560;
            let x_2562 : vec4<f32> = u_xlat8;
            let x_2565 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2568 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2562.x, x_2562.y, x_2562.x, x_2562.y) * vec4<f32>(x_2565.x, x_2565.y, x_2565.x, x_2565.y)) + vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2568.y));
            let x_2571 : vec4<f32> = u_xlat8;
            let x_2574 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2577 : vec4<f32> = u_xlat13;
            let x_2579 : vec2<f32> = ((vec2<f32>(x_2571.x, x_2571.y) * vec2<f32>(x_2574.x, x_2574.y)) + vec2<f32>(x_2577.w, x_2577.y));
            let x_2580 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2579.x, x_2579.y, x_2580.z, x_2580.w);
            let x_2583 : f32 = u_xlat13.y;
            u_xlat10.z = x_2583;
            let x_2585 : vec4<f32> = u_xlat8;
            let x_2588 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2591 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2585.x, x_2585.y, x_2585.x, x_2585.y) * vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y)) + vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.z));
            let x_2595 : f32 = u_xlat11.w;
            u_xlat13.y = x_2595;
            let x_2598 : vec4<f32> = u_xlat8;
            let x_2601 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2604 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.y) * vec4<f32>(x_2601.x, x_2601.y, x_2601.x, x_2601.y)) + vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2604.y));
            let x_2608 : vec4<f32> = u_xlat8;
            let x_2611 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2614 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2608.x, x_2608.y) * vec2<f32>(x_2611.x, x_2611.y)) + vec2<f32>(x_2614.w, x_2614.y));
            let x_2618 : f32 = u_xlat13.y;
            u_xlat10.w = x_2618;
            let x_2621 : vec4<f32> = u_xlat8;
            let x_2624 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2627 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2621.x, x_2621.y) * vec2<f32>(x_2624.x, x_2624.y)) + vec2<f32>(x_2627.x, x_2627.w));
            let x_2630 : vec4<f32> = u_xlat13;
            let x_2631 : vec3<f32> = vec3<f32>(x_2630.x, x_2630.z, x_2630.w);
            let x_2632 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2631.x, x_2632.y, x_2631.y, x_2631.z);
            let x_2634 : vec4<f32> = u_xlat8;
            let x_2637 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2640 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.y) * vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.y)) + vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2640.y));
            let x_2644 : vec4<f32> = u_xlat8;
            let x_2647 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2650 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2644.x, x_2644.y) * vec2<f32>(x_2647.x, x_2647.y)) + vec2<f32>(x_2650.w, x_2650.y));
            let x_2654 : f32 = u_xlat10.x;
            u_xlat11.x = x_2654;
            let x_2656 : vec4<f32> = u_xlat8;
            let x_2659 : vec4<f32> = x_215.x_AdditionalShadowmapSize;
            let x_2662 : vec4<f32> = u_xlat11;
            let x_2664 : vec2<f32> = ((vec2<f32>(x_2656.x, x_2656.y) * vec2<f32>(x_2659.x, x_2659.y)) + vec2<f32>(x_2662.x, x_2662.y));
            let x_2665 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2664.x, x_2664.y, x_2665.z, x_2665.w);
            let x_2668 : vec4<f32> = u_xlat9;
            let x_2670 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2668.x, x_2668.x, x_2668.x, x_2668.x) * x_2670);
            let x_2673 : vec4<f32> = u_xlat9;
            let x_2675 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2673.y, x_2673.y, x_2673.y, x_2673.y) * x_2675);
            let x_2678 : vec4<f32> = u_xlat9;
            let x_2680 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2678.z, x_2678.z, x_2678.z, x_2678.z) * x_2680);
            let x_2682 : vec4<f32> = u_xlat9;
            let x_2684 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2682.w, x_2682.w, x_2682.w, x_2682.w) * x_2684);
            let x_2687 : vec4<f32> = u_xlat14;
            let x_2688 : vec2<f32> = vec2<f32>(x_2687.x, x_2687.y);
            let x_2690 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2688.x, x_2688.y, x_2690);
            let x_2697 : vec3<f32> = txVec43;
            let x_2699 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2697.xy, x_2697.z);
            u_xlat71 = x_2699;
            let x_2701 : vec4<f32> = u_xlat14;
            let x_2702 : vec2<f32> = vec2<f32>(x_2701.z, x_2701.w);
            let x_2704 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
            let x_2711 : vec3<f32> = txVec44;
            let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
            u_xlat72 = x_2713;
            let x_2714 : f32 = u_xlat72;
            let x_2716 : f32 = u_xlat19.y;
            u_xlat72 = (x_2714 * x_2716);
            let x_2719 : f32 = u_xlat19.x;
            let x_2720 : f32 = u_xlat71;
            let x_2722 : f32 = u_xlat72;
            u_xlat71 = ((x_2719 * x_2720) + x_2722);
            let x_2725 : vec2<f32> = u_xlat52;
            let x_2727 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2725.x, x_2725.y, x_2727);
            let x_2734 : vec3<f32> = txVec45;
            let x_2736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2734.xy, x_2734.z);
            u_xlat72 = x_2736;
            let x_2738 : f32 = u_xlat19.z;
            let x_2739 : f32 = u_xlat72;
            let x_2741 : f32 = u_xlat71;
            u_xlat71 = ((x_2738 * x_2739) + x_2741);
            let x_2744 : vec4<f32> = u_xlat17;
            let x_2745 : vec2<f32> = vec2<f32>(x_2744.x, x_2744.y);
            let x_2747 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2745.x, x_2745.y, x_2747);
            let x_2754 : vec3<f32> = txVec46;
            let x_2756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2754.xy, x_2754.z);
            u_xlat72 = x_2756;
            let x_2758 : f32 = u_xlat19.w;
            let x_2759 : f32 = u_xlat72;
            let x_2761 : f32 = u_xlat71;
            u_xlat71 = ((x_2758 * x_2759) + x_2761);
            let x_2764 : vec4<f32> = u_xlat15;
            let x_2765 : vec2<f32> = vec2<f32>(x_2764.x, x_2764.y);
            let x_2767 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2765.x, x_2765.y, x_2767);
            let x_2774 : vec3<f32> = txVec47;
            let x_2776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2774.xy, x_2774.z);
            u_xlat72 = x_2776;
            let x_2778 : f32 = u_xlat20.x;
            let x_2779 : f32 = u_xlat72;
            let x_2781 : f32 = u_xlat71;
            u_xlat71 = ((x_2778 * x_2779) + x_2781);
            let x_2784 : vec4<f32> = u_xlat15;
            let x_2785 : vec2<f32> = vec2<f32>(x_2784.z, x_2784.w);
            let x_2787 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2785.x, x_2785.y, x_2787);
            let x_2794 : vec3<f32> = txVec48;
            let x_2796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2794.xy, x_2794.z);
            u_xlat72 = x_2796;
            let x_2798 : f32 = u_xlat20.y;
            let x_2799 : f32 = u_xlat72;
            let x_2801 : f32 = u_xlat71;
            u_xlat71 = ((x_2798 * x_2799) + x_2801);
            let x_2804 : vec4<f32> = u_xlat16;
            let x_2805 : vec2<f32> = vec2<f32>(x_2804.x, x_2804.y);
            let x_2807 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2805.x, x_2805.y, x_2807);
            let x_2814 : vec3<f32> = txVec49;
            let x_2816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2814.xy, x_2814.z);
            u_xlat72 = x_2816;
            let x_2818 : f32 = u_xlat20.z;
            let x_2819 : f32 = u_xlat72;
            let x_2821 : f32 = u_xlat71;
            u_xlat71 = ((x_2818 * x_2819) + x_2821);
            let x_2824 : vec4<f32> = u_xlat17;
            let x_2825 : vec2<f32> = vec2<f32>(x_2824.z, x_2824.w);
            let x_2827 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2825.x, x_2825.y, x_2827);
            let x_2834 : vec3<f32> = txVec50;
            let x_2836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2834.xy, x_2834.z);
            u_xlat72 = x_2836;
            let x_2838 : f32 = u_xlat20.w;
            let x_2839 : f32 = u_xlat72;
            let x_2841 : f32 = u_xlat71;
            u_xlat71 = ((x_2838 * x_2839) + x_2841);
            let x_2844 : vec4<f32> = u_xlat18;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.x, x_2844.y);
            let x_2847 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec51;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat72 = x_2856;
            let x_2858 : f32 = u_xlat21.x;
            let x_2859 : f32 = u_xlat72;
            let x_2861 : f32 = u_xlat71;
            u_xlat71 = ((x_2858 * x_2859) + x_2861);
            let x_2864 : vec4<f32> = u_xlat18;
            let x_2865 : vec2<f32> = vec2<f32>(x_2864.z, x_2864.w);
            let x_2867 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2865.x, x_2865.y, x_2867);
            let x_2874 : vec3<f32> = txVec52;
            let x_2876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2874.xy, x_2874.z);
            u_xlat72 = x_2876;
            let x_2878 : f32 = u_xlat21.y;
            let x_2879 : f32 = u_xlat72;
            let x_2881 : f32 = u_xlat71;
            u_xlat71 = ((x_2878 * x_2879) + x_2881);
            let x_2884 : vec2<f32> = u_xlat32;
            let x_2886 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec53;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat72 = x_2895;
            let x_2897 : f32 = u_xlat21.z;
            let x_2898 : f32 = u_xlat72;
            let x_2900 : f32 = u_xlat71;
            u_xlat71 = ((x_2897 * x_2898) + x_2900);
            let x_2903 : vec2<f32> = u_xlat60;
            let x_2905 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
            let x_2912 : vec3<f32> = txVec54;
            let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
            u_xlat72 = x_2914;
            let x_2916 : f32 = u_xlat21.w;
            let x_2917 : f32 = u_xlat72;
            let x_2919 : f32 = u_xlat71;
            u_xlat71 = ((x_2916 * x_2917) + x_2919);
            let x_2922 : vec4<f32> = u_xlat13;
            let x_2923 : vec2<f32> = vec2<f32>(x_2922.x, x_2922.y);
            let x_2925 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
            let x_2932 : vec3<f32> = txVec55;
            let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
            u_xlat72 = x_2934;
            let x_2936 : f32 = u_xlat9.x;
            let x_2937 : f32 = u_xlat72;
            let x_2939 : f32 = u_xlat71;
            u_xlat71 = ((x_2936 * x_2937) + x_2939);
            let x_2942 : vec4<f32> = u_xlat13;
            let x_2943 : vec2<f32> = vec2<f32>(x_2942.z, x_2942.w);
            let x_2945 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
            let x_2952 : vec3<f32> = txVec56;
            let x_2954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
            u_xlat72 = x_2954;
            let x_2956 : f32 = u_xlat9.y;
            let x_2957 : f32 = u_xlat72;
            let x_2959 : f32 = u_xlat71;
            u_xlat71 = ((x_2956 * x_2957) + x_2959);
            let x_2962 : vec2<f32> = u_xlat55;
            let x_2964 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
            let x_2971 : vec3<f32> = txVec57;
            let x_2973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
            u_xlat72 = x_2973;
            let x_2975 : f32 = u_xlat9.z;
            let x_2976 : f32 = u_xlat72;
            let x_2978 : f32 = u_xlat71;
            u_xlat71 = ((x_2975 * x_2976) + x_2978);
            let x_2981 : vec4<f32> = u_xlat8;
            let x_2982 : vec2<f32> = vec2<f32>(x_2981.x, x_2981.y);
            let x_2984 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
            let x_2991 : vec3<f32> = txVec58;
            let x_2993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
            u_xlat72 = x_2993;
            let x_2995 : f32 = u_xlat9.w;
            let x_2996 : f32 = u_xlat72;
            let x_2998 : f32 = u_xlat71;
            u_xlat70 = ((x_2995 * x_2996) + x_2998);
          }
        }
      } else {
        let x_3002 : vec4<f32> = u_xlat7;
        let x_3003 : vec2<f32> = vec2<f32>(x_3002.x, x_3002.y);
        let x_3005 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
        let x_3012 : vec3<f32> = txVec59;
        let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
        u_xlat70 = x_3014;
      }
      let x_3015 : i32 = u_xlati68;
      let x_3017 : f32 = x_215.x_AdditionalShadowParams[x_3015].x;
      u_xlat71 = (1.0f + -(x_3017));
      let x_3020 : f32 = u_xlat70;
      let x_3021 : i32 = u_xlati68;
      let x_3023 : f32 = x_215.x_AdditionalShadowParams[x_3021].x;
      let x_3025 : f32 = u_xlat71;
      u_xlat70 = ((x_3020 * x_3023) + x_3025);
      let x_3028 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3028);
      let x_3032 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3032 >= 1.0f);
      let x_3034 : bool = u_xlatb71;
      let x_3035 : bool = u_xlatb72;
      u_xlatb71 = (x_3034 | x_3035);
      let x_3037 : bool = u_xlatb71;
      let x_3038 : f32 = u_xlat70;
      u_xlat70 = select(x_3038, 1.0f, x_3037);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3041 : f32 = u_xlat70;
    u_xlat71 = (-(x_3041) + 1.0f);
    let x_3044 : f32 = u_xlat66;
    let x_3045 : f32 = u_xlat71;
    let x_3047 : f32 = u_xlat70;
    u_xlat70 = ((x_3044 * x_3045) + x_3047);
    let x_3049 : f32 = u_xlat69;
    let x_3050 : f32 = u_xlat70;
    u_xlat69 = (x_3049 * x_3050);
    let x_3052 : f32 = u_xlat69;
    let x_3054 : i32 = u_xlati68;
    let x_3056 : vec4<f32> = x_1624.x_AdditionalLightsColor[x_3054];
    let x_3058 : vec3<f32> = (vec3<f32>(x_3052, x_3052, x_3052) * vec3<f32>(x_3056.x, x_3056.y, x_3056.z));
    let x_3059 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
    let x_3061 : vec3<f32> = u_xlat2;
    let x_3062 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(x_3061, vec3<f32>(x_3062.x, x_3062.y, x_3062.z));
    let x_3065 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3065, 0.0f, 1.0f);
    let x_3067 : f32 = u_xlat68;
    let x_3069 : vec4<f32> = u_xlat7;
    let x_3071 : vec3<f32> = (vec3<f32>(x_3067, x_3067, x_3067) * vec3<f32>(x_3069.x, x_3069.y, x_3069.z));
    let x_3072 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
    let x_3074 : vec4<f32> = u_xlat6;
    let x_3076 : vec4<f32> = u_xlat1;
    let x_3079 : vec4<f32> = u_xlat5;
    let x_3081 : vec3<f32> = ((vec3<f32>(x_3074.x, x_3074.y, x_3074.z) * vec3<f32>(x_3076.x, x_3076.y, x_3076.z)) + vec3<f32>(x_3079.x, x_3079.y, x_3079.z));
    let x_3082 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);

    continuing {
      let x_3084 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3084 + bitcast<u32>(1i));
    }
  }
  let x_3086 : vec4<f32> = u_xlat3;
  let x_3088 : vec4<f32> = u_xlat1;
  let x_3091 : vec4<f32> = u_xlat4;
  let x_3093 : vec3<f32> = ((vec3<f32>(x_3086.x, x_3086.y, x_3086.z) * vec3<f32>(x_3088.x, x_3088.y, x_3088.z)) + vec3<f32>(x_3091.x, x_3091.y, x_3091.z));
  let x_3094 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3093.x, x_3093.y, x_3093.z, x_3094.w);
  let x_3098 : vec4<f32> = u_xlat5;
  let x_3100 : vec4<f32> = u_xlat1;
  let x_3102 : vec3<f32> = (vec3<f32>(x_3098.x, x_3098.y, x_3098.z) + vec3<f32>(x_3100.x, x_3100.y, x_3100.z));
  let x_3103 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
  let x_3105 : bool = u_xlatb44;
  let x_3106 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3106, x_3105);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


