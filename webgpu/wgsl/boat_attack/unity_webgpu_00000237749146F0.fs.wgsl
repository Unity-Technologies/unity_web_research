diagnostic(off, derivative_uniformity);

alias Arr = array<mat4x4<f32>, 5u>;

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
}

alias Arr_1 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_1,
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

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_FogColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_20 : LightShadows;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_231 : UnityPerDraw;

var<private> u_xlat51 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_328 : PGlobals;

var<private> u_xlatb51 : bool;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb52 : bool;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat45 : vec2<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb34 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

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
  var x_1620 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD6;
  let x_25 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres0;
  let x_28 : vec3<f32> = (x_13 + -(vec3<f32>(x_25.x, x_25.y, x_25.z)));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_28.z, x_29.w);
  let x_32 : vec3<f32> = vs_TEXCOORD6;
  let x_35 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres1;
  let x_38 : vec3<f32> = (x_32 + -(vec3<f32>(x_35.x, x_35.y, x_35.z)));
  let x_39 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_38.x, x_38.y, x_38.z, x_39.w);
  let x_42 : vec3<f32> = vs_TEXCOORD6;
  let x_45 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres2;
  let x_48 : vec3<f32> = (x_42 + -(vec3<f32>(x_45.x, x_45.y, x_45.z)));
  let x_49 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  let x_52 : vec3<f32> = vs_TEXCOORD6;
  let x_55 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres3;
  let x_58 : vec3<f32> = (x_52 + -(vec3<f32>(x_55.x, x_55.y, x_55.z)));
  let x_59 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_61.x, x_61.y, x_61.z), vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_69 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_76 : vec4<f32> = u_xlat2;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(x_76.x, x_76.y, x_76.z), vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_83 : vec4<f32> = u_xlat3;
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat0.w = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_94 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = x_20.x_CascadeShadowSplitSphereRadii;
  u_xlatb0 = (x_94 < x_97);
  let x_101 : bool = u_xlatb0.x;
  u_xlat1.x = select(0.0f, 1.0f, x_101);
  let x_107 : bool = u_xlatb0.y;
  u_xlat1.y = select(0.0f, 1.0f, x_107);
  let x_111 : bool = u_xlatb0.z;
  u_xlat1.z = select(0.0f, 1.0f, x_111);
  let x_115 : bool = u_xlatb0.w;
  u_xlat1.w = select(0.0f, 1.0f, x_115);
  let x_119 : bool = u_xlatb0.x;
  u_xlat0.x = select(-0.0f, -1.0f, x_119);
  let x_125 : bool = u_xlatb0.y;
  u_xlat0.y = select(-0.0f, -1.0f, x_125);
  let x_129 : bool = u_xlatb0.z;
  u_xlat0.z = select(-0.0f, -1.0f, x_129);
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) + vec3<f32>(x_134.y, x_134.z, x_134.w));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = max(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_142.x, x_142.y, x_142.z);
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_145, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_153) + 4.0f);
  let x_160 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_160);
  let x_164 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_164) << bitcast<u32>(2i));
  let x_169 : vec3<f32> = vs_TEXCOORD6;
  let x_172 : i32 = u_xlati0;
  let x_175 : i32 = u_xlati0;
  let x_179 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_172 + 1i) / 4i)][((x_175 + 1i) % 4i)];
  u_xlat17 = (vec3<f32>(x_169.y, x_169.y, x_169.y) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : i32 = u_xlati0;
  let x_184 : i32 = u_xlati0;
  let x_187 : vec4<f32> = x_20.x_MainLightWorldToShadow[(x_182 / 4i)][(x_184 % 4i)];
  let x_189 : vec3<f32> = vs_TEXCOORD6;
  let x_192 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(x_189.x, x_189.x, x_189.x)) + x_192);
  let x_194 : i32 = u_xlati0;
  let x_197 : i32 = u_xlati0;
  let x_201 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_194 + 2i) / 4i)][((x_197 + 2i) % 4i)];
  let x_203 : vec3<f32> = vs_TEXCOORD6;
  let x_206 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203.z, x_203.z, x_203.z)) + x_206);
  let x_208 : vec3<f32> = u_xlat17;
  let x_209 : i32 = u_xlati0;
  let x_212 : i32 = u_xlati0;
  let x_216 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_209 + 3i) / 4i)][((x_212 + 3i) % 4i)];
  let x_218 : vec3<f32> = (x_208 + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_223 : vec4<f32> = vs_TEXCOORD5;
  let x_224 : vec3<f32> = vec3<f32>(x_223.x, x_223.y, x_223.z);
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  u_xlat1.w = 1.0f;
  let x_234 : vec4<f32> = x_231.unity_SHAr;
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_234, x_235);
  let x_240 : vec4<f32> = x_231.unity_SHAg;
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_240, x_241);
  let x_246 : vec4<f32> = x_231.unity_SHAb;
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_246, x_247);
  let x_250 : vec4<f32> = vs_TEXCOORD5;
  let x_252 : vec4<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec4<f32>(x_250.y, x_250.z, x_250.z, x_250.x) * vec4<f32>(x_252.x, x_252.y, x_252.z, x_252.z));
  let x_257 : vec4<f32> = x_231.unity_SHBr;
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_257, x_258);
  let x_263 : vec4<f32> = x_231.unity_SHBg;
  let x_264 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_263, x_264);
  let x_269 : vec4<f32> = x_231.unity_SHBb;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_269, x_270);
  let x_276 : f32 = vs_TEXCOORD5.y;
  let x_278 : f32 = vs_TEXCOORD5.y;
  u_xlat51 = (x_276 * x_278);
  let x_281 : f32 = vs_TEXCOORD5.x;
  let x_283 : f32 = vs_TEXCOORD5.x;
  let x_285 : f32 = u_xlat51;
  u_xlat51 = ((x_281 * x_283) + -(x_285));
  let x_290 : vec4<f32> = x_231.unity_SHC;
  let x_292 : f32 = u_xlat51;
  let x_295 : vec4<f32> = u_xlat3;
  let x_297 : vec3<f32> = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292, x_292, x_292)) + vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = max(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_325 : vec2<f32> = vs_TEXCOORD0;
  let x_331 : f32 = x_328.x_GlobalMipBias.x;
  let x_332 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_325, x_331);
  u_xlat2 = x_332;
  let x_336 : f32 = x_20.x_MainLightShadowParams.y;
  u_xlatb51 = (0.0f < x_336);
  let x_338 : bool = u_xlatb51;
  if (x_338) {
    let x_342 : f32 = x_20.x_MainLightShadowParams.y;
    u_xlatb51 = (x_342 == 1.0f);
    let x_344 : bool = u_xlatb51;
    if (x_344) {
      let x_347 : vec4<f32> = u_xlat0;
      let x_351 : vec4<f32> = x_20.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_347.x, x_347.y, x_347.x, x_347.y) + x_351);
      let x_355 : vec4<f32> = u_xlat3;
      let x_356 : vec2<f32> = vec2<f32>(x_355.x, x_355.y);
      let x_358 : f32 = u_xlat0.z;
      txVec0 = vec3<f32>(x_356.x, x_356.y, x_358);
      let x_371 : vec3<f32> = txVec0;
      let x_373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_371.xy, x_371.z);
      u_xlat4.x = x_373;
      let x_376 : vec4<f32> = u_xlat3;
      let x_377 : vec2<f32> = vec2<f32>(x_376.z, x_376.w);
      let x_379 : f32 = u_xlat0.z;
      txVec1 = vec3<f32>(x_377.x, x_377.y, x_379);
      let x_386 : vec3<f32> = txVec1;
      let x_388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_386.xy, x_386.z);
      u_xlat4.y = x_388;
      let x_390 : vec4<f32> = u_xlat0;
      let x_394 : vec4<f32> = x_20.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_390.x, x_390.y, x_390.x, x_390.y) + x_394);
      let x_397 : vec4<f32> = u_xlat3;
      let x_398 : vec2<f32> = vec2<f32>(x_397.x, x_397.y);
      let x_400 : f32 = u_xlat0.z;
      txVec2 = vec3<f32>(x_398.x, x_398.y, x_400);
      let x_407 : vec3<f32> = txVec2;
      let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_407.xy, x_407.z);
      u_xlat4.z = x_409;
      let x_412 : vec4<f32> = u_xlat3;
      let x_413 : vec2<f32> = vec2<f32>(x_412.z, x_412.w);
      let x_415 : f32 = u_xlat0.z;
      txVec3 = vec3<f32>(x_413.x, x_413.y, x_415);
      let x_422 : vec3<f32> = txVec3;
      let x_424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_422.xy, x_422.z);
      u_xlat4.w = x_424;
      let x_426 : vec4<f32> = u_xlat4;
      u_xlat51 = dot(x_426, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_433 : f32 = x_20.x_MainLightShadowParams.y;
      u_xlatb52 = (x_433 == 2.0f);
      let x_435 : bool = u_xlatb52;
      if (x_435) {
        let x_438 : vec4<f32> = u_xlat0;
        let x_442 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_447 : vec2<f32> = ((vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_442.z, x_442.w)) + vec2<f32>(0.5f, 0.5f));
        let x_448 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_450 : vec4<f32> = u_xlat3;
        let x_452 : vec2<f32> = floor(vec2<f32>(x_450.x, x_450.y));
        let x_453 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_457 : vec4<f32> = u_xlat0;
        let x_460 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_463 : vec4<f32> = u_xlat3;
        u_xlat37 = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_460.z, x_460.w)) + -(vec2<f32>(x_463.x, x_463.y)));
        let x_467 : vec2<f32> = u_xlat37;
        u_xlat4 = (vec4<f32>(x_467.x, x_467.x, x_467.y, x_467.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_472 : vec4<f32> = u_xlat4;
        let x_474 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_472.x, x_472.x, x_472.z, x_472.z) * vec4<f32>(x_474.x, x_474.x, x_474.z, x_474.z));
        let x_477 : vec4<f32> = u_xlat5;
        let x_481 : vec2<f32> = (vec2<f32>(x_477.y, x_477.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_482 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_481.x, x_482.y, x_481.y, x_482.w);
        let x_484 : vec4<f32> = u_xlat5;
        let x_487 : vec2<f32> = u_xlat37;
        let x_489 : vec2<f32> = ((vec2<f32>(x_484.x, x_484.z) * vec2<f32>(0.5f, 0.5f)) + -(x_487));
        let x_490 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_493 : vec2<f32> = u_xlat37;
        u_xlat39 = (-(x_493) + vec2<f32>(1.0f, 1.0f));
        let x_498 : vec2<f32> = u_xlat37;
        let x_500 : vec2<f32> = min(x_498, vec2<f32>(0.0f, 0.0f));
        let x_501 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_503 : vec4<f32> = u_xlat6;
        let x_506 : vec4<f32> = u_xlat6;
        let x_509 : vec2<f32> = u_xlat39;
        let x_510 : vec2<f32> = ((-(vec2<f32>(x_503.x, x_503.y)) * vec2<f32>(x_506.x, x_506.y)) + x_509);
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_513 : vec2<f32> = u_xlat37;
        u_xlat37 = max(x_513, vec2<f32>(0.0f, 0.0f));
        let x_515 : vec2<f32> = u_xlat37;
        let x_517 : vec2<f32> = u_xlat37;
        let x_519 : vec4<f32> = u_xlat4;
        u_xlat37 = ((-(x_515) * x_517) + vec2<f32>(x_519.y, x_519.w));
        let x_522 : vec4<f32> = u_xlat6;
        let x_524 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) + vec2<f32>(1.0f, 1.0f));
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec2<f32> = u_xlat37;
        u_xlat37 = (x_527 + vec2<f32>(1.0f, 1.0f));
        let x_530 : vec4<f32> = u_xlat5;
        let x_534 : vec2<f32> = (vec2<f32>(x_530.x, x_530.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_537 : vec2<f32> = u_xlat39;
        let x_538 : vec2<f32> = (x_537 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_539 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat6;
        let x_543 : vec2<f32> = (vec2<f32>(x_541.x, x_541.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_544 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_547 : vec2<f32> = u_xlat37;
        let x_548 : vec2<f32> = (x_547 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat4;
        u_xlat37 = (vec2<f32>(x_551.y, x_551.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_555 : f32 = u_xlat6.x;
        u_xlat7.z = x_555;
        let x_558 : f32 = u_xlat37.x;
        u_xlat7.w = x_558;
        let x_561 : f32 = u_xlat8.x;
        u_xlat5.z = x_561;
        let x_564 : f32 = u_xlat4.x;
        u_xlat5.w = x_564;
        let x_567 : vec4<f32> = u_xlat5;
        let x_569 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_567.z, x_567.w, x_567.x, x_567.z) + vec4<f32>(x_569.z, x_569.w, x_569.x, x_569.z));
        let x_573 : f32 = u_xlat7.y;
        u_xlat6.z = x_573;
        let x_576 : f32 = u_xlat37.y;
        u_xlat6.w = x_576;
        let x_579 : f32 = u_xlat5.y;
        u_xlat8.z = x_579;
        let x_582 : f32 = u_xlat4.z;
        u_xlat8.w = x_582;
        let x_584 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = u_xlat8;
        let x_588 : vec3<f32> = (vec3<f32>(x_584.z, x_584.y, x_584.w) + vec3<f32>(x_586.z, x_586.y, x_586.w));
        let x_589 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat5;
        let x_593 : vec4<f32> = u_xlat9;
        let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.z, x_591.w) / vec3<f32>(x_593.z, x_593.w, x_593.y));
        let x_596 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat5;
        let x_604 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_605 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat8;
        let x_609 : vec4<f32> = u_xlat4;
        let x_611 : vec3<f32> = (vec3<f32>(x_607.z, x_607.y, x_607.w) / vec3<f32>(x_609.x, x_609.y, x_609.z));
        let x_612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
        let x_614 : vec4<f32> = u_xlat6;
        let x_616 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat5;
        let x_622 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_624 : vec3<f32> = (vec3<f32>(x_619.y, x_619.x, x_619.z) * vec3<f32>(x_622.x, x_622.x, x_622.x));
        let x_625 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat6;
        let x_630 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_632 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(x_630.y, x_630.y, x_630.y));
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_636 : f32 = u_xlat6.x;
        u_xlat5.w = x_636;
        let x_638 : vec4<f32> = u_xlat3;
        let x_641 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_638.x, x_638.y, x_638.x, x_638.y) * vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y)) + vec4<f32>(x_644.y, x_644.w, x_644.x, x_644.w));
        let x_647 : vec4<f32> = u_xlat3;
        let x_650 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_653 : vec4<f32> = u_xlat5;
        u_xlat37 = ((vec2<f32>(x_647.x, x_647.y) * vec2<f32>(x_650.x, x_650.y)) + vec2<f32>(x_653.z, x_653.w));
        let x_657 : f32 = u_xlat5.y;
        u_xlat6.w = x_657;
        let x_659 : vec4<f32> = u_xlat6;
        let x_660 : vec2<f32> = vec2<f32>(x_659.y, x_659.z);
        let x_661 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_661.x, x_660.x, x_661.z, x_660.y);
        let x_663 : vec4<f32> = u_xlat3;
        let x_666 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.x, x_669.y, x_669.z, x_669.y));
        let x_672 : vec4<f32> = u_xlat3;
        let x_675 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.w, x_678.y, x_678.w, x_678.z));
        let x_681 : vec4<f32> = u_xlat3;
        let x_684 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_687 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_681.x, x_681.y, x_681.x, x_681.y) * vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y)) + vec4<f32>(x_687.x, x_687.w, x_687.z, x_687.w));
        let x_691 : vec4<f32> = u_xlat4;
        let x_693 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_691.x, x_691.x, x_691.x, x_691.y) * vec4<f32>(x_693.z, x_693.w, x_693.y, x_693.z));
        let x_697 : vec4<f32> = u_xlat4;
        let x_699 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_697.y, x_697.y, x_697.z, x_697.z) * x_699);
        let x_703 : f32 = u_xlat4.z;
        let x_705 : f32 = u_xlat9.y;
        u_xlat52 = (x_703 * x_705);
        let x_708 : vec4<f32> = u_xlat7;
        let x_709 : vec2<f32> = vec2<f32>(x_708.x, x_708.y);
        let x_711 : f32 = u_xlat0.z;
        txVec4 = vec3<f32>(x_709.x, x_709.y, x_711);
        let x_718 : vec3<f32> = txVec4;
        let x_720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_718.xy, x_718.z);
        u_xlat3.x = x_720;
        let x_723 : vec4<f32> = u_xlat7;
        let x_724 : vec2<f32> = vec2<f32>(x_723.z, x_723.w);
        let x_726 : f32 = u_xlat0.z;
        txVec5 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_734 : vec3<f32> = txVec5;
        let x_736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_734.xy, x_734.z);
        u_xlat20 = x_736;
        let x_737 : f32 = u_xlat20;
        let x_739 : f32 = u_xlat10.y;
        u_xlat20 = (x_737 * x_739);
        let x_742 : f32 = u_xlat10.x;
        let x_744 : f32 = u_xlat3.x;
        let x_746 : f32 = u_xlat20;
        u_xlat3.x = ((x_742 * x_744) + x_746);
        let x_750 : vec2<f32> = u_xlat37;
        let x_752 : f32 = u_xlat0.z;
        txVec6 = vec3<f32>(x_750.x, x_750.y, x_752);
        let x_759 : vec3<f32> = txVec6;
        let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_759.xy, x_759.z);
        u_xlat20 = x_761;
        let x_763 : f32 = u_xlat10.z;
        let x_764 : f32 = u_xlat20;
        let x_767 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_763 * x_764) + x_767);
        let x_771 : vec4<f32> = u_xlat6;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = u_xlat0.z;
        txVec7 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec7;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat20 = x_783;
        let x_785 : f32 = u_xlat10.w;
        let x_786 : f32 = u_xlat20;
        let x_789 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_785 * x_786) + x_789);
        let x_793 : vec4<f32> = u_xlat8;
        let x_794 : vec2<f32> = vec2<f32>(x_793.x, x_793.y);
        let x_796 : f32 = u_xlat0.z;
        txVec8 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec8;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_803.xy, x_803.z);
        u_xlat20 = x_805;
        let x_807 : f32 = u_xlat11.x;
        let x_808 : f32 = u_xlat20;
        let x_811 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_807 * x_808) + x_811);
        let x_815 : vec4<f32> = u_xlat8;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = u_xlat0.z;
        txVec9 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec9;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat20 = x_827;
        let x_829 : f32 = u_xlat11.y;
        let x_830 : f32 = u_xlat20;
        let x_833 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_829 * x_830) + x_833);
        let x_837 : vec4<f32> = u_xlat6;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = u_xlat0.z;
        txVec10 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec10;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat20 = x_849;
        let x_851 : f32 = u_xlat11.z;
        let x_852 : f32 = u_xlat20;
        let x_855 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_851 * x_852) + x_855);
        let x_859 : vec4<f32> = u_xlat5;
        let x_860 : vec2<f32> = vec2<f32>(x_859.x, x_859.y);
        let x_862 : f32 = u_xlat0.z;
        txVec11 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_869 : vec3<f32> = txVec11;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
        u_xlat20 = x_871;
        let x_873 : f32 = u_xlat11.w;
        let x_874 : f32 = u_xlat20;
        let x_877 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_873 * x_874) + x_877);
        let x_881 : vec4<f32> = u_xlat5;
        let x_882 : vec2<f32> = vec2<f32>(x_881.z, x_881.w);
        let x_884 : f32 = u_xlat0.z;
        txVec12 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_891 : vec3<f32> = txVec12;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat20 = x_893;
        let x_894 : f32 = u_xlat52;
        let x_895 : f32 = u_xlat20;
        let x_898 : f32 = u_xlat3.x;
        u_xlat51 = ((x_894 * x_895) + x_898);
      } else {
        let x_901 : vec4<f32> = u_xlat0;
        let x_904 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_907 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.y) * vec2<f32>(x_904.z, x_904.w)) + vec2<f32>(0.5f, 0.5f));
        let x_908 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat3;
        let x_912 : vec2<f32> = floor(vec2<f32>(x_910.x, x_910.y));
        let x_913 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat0;
        let x_918 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_921 : vec4<f32> = u_xlat3;
        u_xlat37 = ((vec2<f32>(x_915.x, x_915.y) * vec2<f32>(x_918.z, x_918.w)) + -(vec2<f32>(x_921.x, x_921.y)));
        let x_925 : vec2<f32> = u_xlat37;
        u_xlat4 = (vec4<f32>(x_925.x, x_925.x, x_925.y, x_925.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_928 : vec4<f32> = u_xlat4;
        let x_930 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_928.x, x_928.x, x_928.z, x_928.z) * vec4<f32>(x_930.x, x_930.x, x_930.z, x_930.z));
        let x_933 : vec4<f32> = u_xlat5;
        let x_937 : vec2<f32> = (vec2<f32>(x_933.y, x_933.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_938 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_938.x, x_937.x, x_938.z, x_937.y);
        let x_940 : vec4<f32> = u_xlat5;
        let x_943 : vec2<f32> = u_xlat37;
        let x_945 : vec2<f32> = ((vec2<f32>(x_940.x, x_940.z) * vec2<f32>(0.5f, 0.5f)) + -(x_943));
        let x_946 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_945.x, x_946.y, x_945.y, x_946.w);
        let x_948 : vec2<f32> = u_xlat37;
        let x_950 : vec2<f32> = (-(x_948) + vec2<f32>(1.0f, 1.0f));
        let x_951 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
        let x_953 : vec2<f32> = u_xlat37;
        u_xlat39 = min(x_953, vec2<f32>(0.0f, 0.0f));
        let x_955 : vec2<f32> = u_xlat39;
        let x_957 : vec2<f32> = u_xlat39;
        let x_959 : vec4<f32> = u_xlat5;
        let x_961 : vec2<f32> = ((-(x_955) * x_957) + vec2<f32>(x_959.x, x_959.y));
        let x_962 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec2<f32> = u_xlat37;
        u_xlat39 = max(x_964, vec2<f32>(0.0f, 0.0f));
        let x_967 : vec2<f32> = u_xlat39;
        let x_969 : vec2<f32> = u_xlat39;
        let x_971 : vec4<f32> = u_xlat4;
        let x_973 : vec2<f32> = ((-(x_967) * x_969) + vec2<f32>(x_971.y, x_971.w));
        let x_974 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_973.x, x_974.y, x_973.y);
        let x_976 : vec4<f32> = u_xlat5;
        let x_979 : vec2<f32> = (vec2<f32>(x_976.x, x_976.y) + vec2<f32>(2.0f, 2.0f));
        let x_980 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec3<f32> = u_xlat21;
        let x_984 : vec2<f32> = (vec2<f32>(x_982.x, x_982.z) + vec2<f32>(2.0f, 2.0f));
        let x_985 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_988 : f32 = u_xlat4.y;
        u_xlat7.z = (x_988 * 0.08163200318813323975f);
        let x_992 : vec4<f32> = u_xlat4;
        let x_995 : vec3<f32> = (vec3<f32>(x_992.z, x_992.x, x_992.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat5;
        let x_1001 : vec2<f32> = (vec2<f32>(x_998.x, x_998.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1002 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
        let x_1005 : f32 = u_xlat8.y;
        u_xlat7.x = x_1005;
        let x_1007 : vec2<f32> = u_xlat37;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1014.x, x_1015.z, x_1014.y);
        let x_1017 : vec2<f32> = u_xlat37;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1022 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1021.x, x_1022.y, x_1021.y, x_1022.w);
        let x_1025 : f32 = u_xlat4.x;
        u_xlat5.y = x_1025;
        let x_1028 : f32 = u_xlat6.y;
        u_xlat5.w = x_1028;
        let x_1030 : vec4<f32> = u_xlat5;
        let x_1031 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1030 + x_1031);
        let x_1033 : vec2<f32> = u_xlat37;
        let x_1036 : vec2<f32> = ((vec2<f32>(x_1033.y, x_1033.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec2<f32> = u_xlat37;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1039.y, x_1039.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1043.w);
        let x_1046 : f32 = u_xlat4.y;
        u_xlat6.y = x_1046;
        let x_1048 : vec4<f32> = u_xlat6;
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_1048 + x_1049);
        let x_1051 : vec4<f32> = u_xlat5;
        let x_1052 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_1051 / x_1052);
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1054 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1061 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_1060 / x_1061);
        let x_1063 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1063 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1065 : vec4<f32> = u_xlat5;
        let x_1068 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1065.w, x_1065.x, x_1065.y, x_1065.z) * vec4<f32>(x_1068.x, x_1068.x, x_1068.x, x_1068.x));
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1074 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1071.x, x_1071.w, x_1071.y, x_1071.z) * vec4<f32>(x_1074.y, x_1074.y, x_1074.y, x_1074.y));
        let x_1077 : vec4<f32> = u_xlat5;
        let x_1078 : vec3<f32> = vec3<f32>(x_1077.y, x_1077.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1078.x, x_1079.y, x_1078.y, x_1078.z);
        let x_1082 : f32 = u_xlat6.x;
        u_xlat8.y = x_1082;
        let x_1084 : vec4<f32> = u_xlat3;
        let x_1087 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1090.y));
        let x_1093 : vec4<f32> = u_xlat3;
        let x_1096 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat37 = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.w, x_1099.y));
        let x_1103 : f32 = u_xlat8.y;
        u_xlat5.y = x_1103;
        let x_1106 : f32 = u_xlat6.z;
        u_xlat8.y = x_1106;
        let x_1108 : vec4<f32> = u_xlat3;
        let x_1111 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat3;
        let x_1120 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.w, x_1123.y));
        let x_1126 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat8.y;
        u_xlat5.z = x_1129;
        let x_1132 : vec4<f32> = u_xlat3;
        let x_1135 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y) * vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y)) + vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.z));
        let x_1142 : f32 = u_xlat6.w;
        u_xlat8.y = x_1142;
        let x_1145 : vec4<f32> = u_xlat3;
        let x_1148 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1155 : vec4<f32> = u_xlat3;
        let x_1158 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat22 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1158.x, x_1158.y)) + vec2<f32>(x_1161.w, x_1161.y));
        let x_1165 : f32 = u_xlat8.y;
        u_xlat5.w = x_1165;
        let x_1168 : vec4<f32> = u_xlat3;
        let x_1171 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.x, x_1174.w));
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1178 : vec3<f32> = vec3<f32>(x_1177.x, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
        let x_1181 : vec4<f32> = u_xlat3;
        let x_1184 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.y));
        let x_1191 : vec4<f32> = u_xlat3;
        let x_1194 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
        let x_1201 : f32 = u_xlat5.x;
        u_xlat6.x = x_1201;
        let x_1203 : vec4<f32> = u_xlat3;
        let x_1206 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1209.x, x_1209.y));
        let x_1212 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        let x_1215 : vec4<f32> = u_xlat4;
        let x_1217 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1215.x, x_1215.x, x_1215.x, x_1215.x) * x_1217);
        let x_1220 : vec4<f32> = u_xlat4;
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1220.y, x_1220.y, x_1220.y, x_1220.y) * x_1222);
        let x_1225 : vec4<f32> = u_xlat4;
        let x_1227 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1225.z, x_1225.z, x_1225.z, x_1225.z) * x_1227);
        let x_1229 : vec4<f32> = u_xlat4;
        let x_1231 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1229.w, x_1229.w, x_1229.w, x_1229.w) * x_1231);
        let x_1234 : vec4<f32> = u_xlat9;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = u_xlat0.z;
        txVec13 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec13;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1244.xy, x_1244.z);
        u_xlat52 = x_1246;
        let x_1248 : vec4<f32> = u_xlat9;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.z, x_1248.w);
        let x_1251 : f32 = u_xlat0.z;
        txVec14 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec14;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat5.x = x_1260;
        let x_1263 : f32 = u_xlat5.x;
        let x_1265 : f32 = u_xlat14.y;
        u_xlat5.x = (x_1263 * x_1265);
        let x_1269 : f32 = u_xlat14.x;
        let x_1270 : f32 = u_xlat52;
        let x_1273 : f32 = u_xlat5.x;
        u_xlat52 = ((x_1269 * x_1270) + x_1273);
        let x_1276 : vec2<f32> = u_xlat37;
        let x_1278 : f32 = u_xlat0.z;
        txVec15 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec15;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1285.xy, x_1285.z);
        u_xlat37.x = x_1287;
        let x_1290 : f32 = u_xlat14.z;
        let x_1292 : f32 = u_xlat37.x;
        let x_1294 : f32 = u_xlat52;
        u_xlat52 = ((x_1290 * x_1292) + x_1294);
        let x_1297 : vec4<f32> = u_xlat12;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = u_xlat0.z;
        txVec16 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec16;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat37.x = x_1309;
        let x_1312 : f32 = u_xlat14.w;
        let x_1314 : f32 = u_xlat37.x;
        let x_1316 : f32 = u_xlat52;
        u_xlat52 = ((x_1312 * x_1314) + x_1316);
        let x_1319 : vec4<f32> = u_xlat10;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.x, x_1319.y);
        let x_1322 : f32 = u_xlat0.z;
        txVec17 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec17;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat37.x = x_1331;
        let x_1334 : f32 = u_xlat15.x;
        let x_1336 : f32 = u_xlat37.x;
        let x_1338 : f32 = u_xlat52;
        u_xlat52 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat10;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = u_xlat0.z;
        txVec18 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec18;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat37.x = x_1353;
        let x_1356 : f32 = u_xlat15.y;
        let x_1358 : f32 = u_xlat37.x;
        let x_1360 : f32 = u_xlat52;
        u_xlat52 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat11;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = u_xlat0.z;
        txVec19 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec19;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat37.x = x_1375;
        let x_1378 : f32 = u_xlat15.z;
        let x_1380 : f32 = u_xlat37.x;
        let x_1382 : f32 = u_xlat52;
        u_xlat52 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat12;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = u_xlat0.z;
        txVec20 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec20;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat37.x = x_1397;
        let x_1400 : f32 = u_xlat15.w;
        let x_1402 : f32 = u_xlat37.x;
        let x_1404 : f32 = u_xlat52;
        u_xlat52 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat13;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = u_xlat0.z;
        txVec21 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec21;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat37.x = x_1419;
        let x_1422 : f32 = u_xlat16.x;
        let x_1424 : f32 = u_xlat37.x;
        let x_1426 : f32 = u_xlat52;
        u_xlat52 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat13;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = u_xlat0.z;
        txVec22 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec22;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat37.x = x_1441;
        let x_1444 : f32 = u_xlat16.y;
        let x_1446 : f32 = u_xlat37.x;
        let x_1448 : f32 = u_xlat52;
        u_xlat52 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec2<f32> = u_xlat22;
        let x_1453 : f32 = u_xlat0.z;
        txVec23 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec23;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat37.x = x_1462;
        let x_1465 : f32 = u_xlat16.z;
        let x_1467 : f32 = u_xlat37.x;
        let x_1469 : f32 = u_xlat52;
        u_xlat52 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec2<f32> = u_xlat45;
        let x_1474 : f32 = u_xlat0.z;
        txVec24 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec24;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat37.x = x_1483;
        let x_1486 : f32 = u_xlat16.w;
        let x_1488 : f32 = u_xlat37.x;
        let x_1490 : f32 = u_xlat52;
        u_xlat52 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat8;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = u_xlat0.z;
        txVec25 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec25;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat37.x = x_1505;
        let x_1508 : f32 = u_xlat4.x;
        let x_1510 : f32 = u_xlat37.x;
        let x_1512 : f32 = u_xlat52;
        u_xlat52 = ((x_1508 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat8;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = u_xlat0.z;
        txVec26 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec26;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat37.x = x_1527;
        let x_1530 : f32 = u_xlat4.y;
        let x_1532 : f32 = u_xlat37.x;
        let x_1534 : f32 = u_xlat52;
        u_xlat52 = ((x_1530 * x_1532) + x_1534);
        let x_1537 : vec2<f32> = u_xlat40;
        let x_1539 : f32 = u_xlat0.z;
        txVec27 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec27;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat37.x = x_1548;
        let x_1551 : f32 = u_xlat4.z;
        let x_1553 : f32 = u_xlat37.x;
        let x_1555 : f32 = u_xlat52;
        u_xlat52 = ((x_1551 * x_1553) + x_1555);
        let x_1558 : vec4<f32> = u_xlat3;
        let x_1559 : vec2<f32> = vec2<f32>(x_1558.x, x_1558.y);
        let x_1561 : f32 = u_xlat0.z;
        txVec28 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec28;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1568.xy, x_1568.z);
        u_xlat3.x = x_1570;
        let x_1573 : f32 = u_xlat4.w;
        let x_1575 : f32 = u_xlat3.x;
        let x_1577 : f32 = u_xlat52;
        u_xlat51 = ((x_1573 * x_1575) + x_1577);
      }
    }
  } else {
    let x_1581 : vec4<f32> = u_xlat0;
    let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
    let x_1584 : f32 = u_xlat0.z;
    txVec29 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
    let x_1591 : vec3<f32> = txVec29;
    let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1591.xy, x_1591.z);
    u_xlat51 = x_1593;
  }
  let x_1595 : f32 = x_20.x_MainLightShadowParams.x;
  u_xlat0.x = (-(x_1595) + 1.0f);
  let x_1599 : f32 = u_xlat51;
  let x_1601 : f32 = x_20.x_MainLightShadowParams.x;
  let x_1604 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1599 * x_1601) + x_1604);
  let x_1609 : f32 = u_xlat0.z;
  u_xlatb17 = (0.0f >= x_1609);
  let x_1613 : f32 = u_xlat0.z;
  u_xlatb34 = (x_1613 >= 1.0f);
  let x_1615 : bool = u_xlatb34;
  let x_1616 : bool = u_xlatb17;
  u_xlatb17 = (x_1615 | x_1616);
  let x_1618 : bool = u_xlatb17;
  if (x_1618) {
    x_1620 = 1.0f;
  } else {
    let x_1625 : f32 = u_xlat0.x;
    x_1620 = x_1625;
  }
  let x_1626 : f32 = x_1620;
  u_xlat0.x = x_1626;
  let x_1629 : vec4<f32> = vs_TEXCOORD3;
  let x_1631 : vec4<f32> = u_xlat0;
  let x_1634 : vec4<f32> = u_xlat1;
  let x_1636 : vec3<f32> = ((vec3<f32>(x_1629.x, x_1629.y, x_1629.z) * vec3<f32>(x_1631.x, x_1631.x, x_1631.x)) + vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
  let x_1637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
  let x_1640 : f32 = vs_TEXCOORD3.w;
  let x_1642 : f32 = vs_TEXCOORD3.w;
  u_xlat51 = (x_1640 * -(x_1642));
  let x_1645 : f32 = u_xlat51;
  u_xlat51 = exp2(x_1645);
  let x_1647 : vec4<f32> = u_xlat2;
  let x_1649 : vec4<f32> = u_xlat0;
  let x_1653 : vec4<f32> = x_328.unity_FogColor;
  let x_1656 : vec3<f32> = ((vec3<f32>(x_1647.x, x_1647.y, x_1647.z) * vec3<f32>(x_1649.x, x_1649.y, x_1649.z)) + -(vec3<f32>(x_1653.x, x_1653.y, x_1653.z)));
  let x_1657 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1661 : f32 = u_xlat51;
  let x_1663 : vec4<f32> = u_xlat0;
  let x_1667 : vec4<f32> = x_328.unity_FogColor;
  let x_1669 : vec3<f32> = ((vec3<f32>(x_1661, x_1661, x_1661) * vec3<f32>(x_1663.x, x_1663.y, x_1663.z)) + vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1673 : f32 = u_xlat2.w;
  SV_Target0.w = x_1673;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD6_param : vec3<f32>, @location(2) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


