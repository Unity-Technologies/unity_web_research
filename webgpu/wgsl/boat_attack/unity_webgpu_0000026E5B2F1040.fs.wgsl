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

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_FogColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_20 : LightShadows;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_237 : PGlobals;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat51 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb51 : bool;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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
  var x_1584 : f32;
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
  let x_234 : vec2<f32> = vs_TEXCOORD1;
  let x_240 : f32 = x_237.x_GlobalMipBias.x;
  let x_241 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_234, x_240);
  u_xlat1 = x_241;
  let x_246 : vec2<f32> = vs_TEXCOORD1;
  let x_248 : f32 = x_237.x_GlobalMipBias.x;
  let x_249 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_246, x_248);
  let x_250 : vec3<f32> = vec3<f32>(x_249.x, x_249.y, x_249.z);
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_263 : vec4<f32> = vs_TEXCOORD5;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : f32 = u_xlat51;
  u_xlat51 = (x_268 + 0.5f);
  let x_271 : f32 = u_xlat51;
  let x_273 : vec4<f32> = u_xlat2;
  let x_275 : vec3<f32> = (vec3<f32>(x_271, x_271, x_271) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : f32 = u_xlat1.w;
  u_xlat51 = max(x_279, 0.00009999999747378752f);
  let x_282 : vec4<f32> = u_xlat1;
  let x_284 : f32 = u_xlat51;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) / vec3<f32>(x_284, x_284, x_284));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_295 : vec2<f32> = vs_TEXCOORD0;
  let x_297 : f32 = x_237.x_GlobalMipBias.x;
  let x_298 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_295, x_297);
  u_xlat2 = x_298;
  let x_302 : f32 = x_20.x_MainLightShadowParams.y;
  u_xlatb51 = (0.0f < x_302);
  let x_304 : bool = u_xlatb51;
  if (x_304) {
    let x_308 : f32 = x_20.x_MainLightShadowParams.y;
    u_xlatb51 = (x_308 == 1.0f);
    let x_310 : bool = u_xlatb51;
    if (x_310) {
      let x_313 : vec4<f32> = u_xlat0;
      let x_317 : vec4<f32> = x_20.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y) + x_317);
      let x_321 : vec4<f32> = u_xlat3;
      let x_322 : vec2<f32> = vec2<f32>(x_321.x, x_321.y);
      let x_324 : f32 = u_xlat0.z;
      txVec0 = vec3<f32>(x_322.x, x_322.y, x_324);
      let x_337 : vec3<f32> = txVec0;
      let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_337.xy, x_337.z);
      u_xlat4.x = x_339;
      let x_342 : vec4<f32> = u_xlat3;
      let x_343 : vec2<f32> = vec2<f32>(x_342.z, x_342.w);
      let x_345 : f32 = u_xlat0.z;
      txVec1 = vec3<f32>(x_343.x, x_343.y, x_345);
      let x_352 : vec3<f32> = txVec1;
      let x_354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_352.xy, x_352.z);
      u_xlat4.y = x_354;
      let x_356 : vec4<f32> = u_xlat0;
      let x_360 : vec4<f32> = x_20.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_356.x, x_356.y, x_356.x, x_356.y) + x_360);
      let x_363 : vec4<f32> = u_xlat3;
      let x_364 : vec2<f32> = vec2<f32>(x_363.x, x_363.y);
      let x_366 : f32 = u_xlat0.z;
      txVec2 = vec3<f32>(x_364.x, x_364.y, x_366);
      let x_373 : vec3<f32> = txVec2;
      let x_375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_373.xy, x_373.z);
      u_xlat4.z = x_375;
      let x_378 : vec4<f32> = u_xlat3;
      let x_379 : vec2<f32> = vec2<f32>(x_378.z, x_378.w);
      let x_381 : f32 = u_xlat0.z;
      txVec3 = vec3<f32>(x_379.x, x_379.y, x_381);
      let x_388 : vec3<f32> = txVec3;
      let x_390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_388.xy, x_388.z);
      u_xlat4.w = x_390;
      let x_392 : vec4<f32> = u_xlat4;
      u_xlat51 = dot(x_392, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_399 : f32 = x_20.x_MainLightShadowParams.y;
      u_xlatb52 = (x_399 == 2.0f);
      let x_401 : bool = u_xlatb52;
      if (x_401) {
        let x_404 : vec4<f32> = u_xlat0;
        let x_408 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_412 : vec2<f32> = ((vec2<f32>(x_404.x, x_404.y) * vec2<f32>(x_408.z, x_408.w)) + vec2<f32>(0.5f, 0.5f));
        let x_413 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
        let x_415 : vec4<f32> = u_xlat3;
        let x_417 : vec2<f32> = floor(vec2<f32>(x_415.x, x_415.y));
        let x_418 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_422 : vec4<f32> = u_xlat0;
        let x_425 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_428 : vec4<f32> = u_xlat3;
        u_xlat37 = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425.z, x_425.w)) + -(vec2<f32>(x_428.x, x_428.y)));
        let x_432 : vec2<f32> = u_xlat37;
        u_xlat4 = (vec4<f32>(x_432.x, x_432.x, x_432.y, x_432.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_437 : vec4<f32> = u_xlat4;
        let x_439 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_437.x, x_437.x, x_437.z, x_437.z) * vec4<f32>(x_439.x, x_439.x, x_439.z, x_439.z));
        let x_442 : vec4<f32> = u_xlat5;
        let x_446 : vec2<f32> = (vec2<f32>(x_442.y, x_442.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_447 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_446.x, x_447.y, x_446.y, x_447.w);
        let x_449 : vec4<f32> = u_xlat5;
        let x_452 : vec2<f32> = u_xlat37;
        let x_454 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.z) * vec2<f32>(0.5f, 0.5f)) + -(x_452));
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_458 : vec2<f32> = u_xlat37;
        u_xlat39 = (-(x_458) + vec2<f32>(1.0f, 1.0f));
        let x_463 : vec2<f32> = u_xlat37;
        let x_465 : vec2<f32> = min(x_463, vec2<f32>(0.0f, 0.0f));
        let x_466 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_468 : vec4<f32> = u_xlat6;
        let x_471 : vec4<f32> = u_xlat6;
        let x_474 : vec2<f32> = u_xlat39;
        let x_475 : vec2<f32> = ((-(vec2<f32>(x_468.x, x_468.y)) * vec2<f32>(x_471.x, x_471.y)) + x_474);
        let x_476 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat37;
        u_xlat37 = max(x_478, vec2<f32>(0.0f, 0.0f));
        let x_480 : vec2<f32> = u_xlat37;
        let x_482 : vec2<f32> = u_xlat37;
        let x_484 : vec4<f32> = u_xlat4;
        u_xlat37 = ((-(x_480) * x_482) + vec2<f32>(x_484.y, x_484.w));
        let x_487 : vec4<f32> = u_xlat6;
        let x_489 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec2<f32> = u_xlat37;
        u_xlat37 = (x_492 + vec2<f32>(1.0f, 1.0f));
        let x_495 : vec4<f32> = u_xlat5;
        let x_499 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_500 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_502 : vec2<f32> = u_xlat39;
        let x_503 : vec2<f32> = (x_502 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_504 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_509 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_512 : vec2<f32> = u_xlat37;
        let x_513 : vec2<f32> = (x_512 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_514 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_516 : vec4<f32> = u_xlat4;
        u_xlat37 = (vec2<f32>(x_516.y, x_516.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_520 : f32 = u_xlat6.x;
        u_xlat7.z = x_520;
        let x_523 : f32 = u_xlat37.x;
        u_xlat7.w = x_523;
        let x_526 : f32 = u_xlat8.x;
        u_xlat5.z = x_526;
        let x_529 : f32 = u_xlat4.x;
        u_xlat5.w = x_529;
        let x_532 : vec4<f32> = u_xlat5;
        let x_534 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_532.z, x_532.w, x_532.x, x_532.z) + vec4<f32>(x_534.z, x_534.w, x_534.x, x_534.z));
        let x_538 : f32 = u_xlat7.y;
        u_xlat6.z = x_538;
        let x_541 : f32 = u_xlat37.y;
        u_xlat6.w = x_541;
        let x_544 : f32 = u_xlat5.y;
        u_xlat8.z = x_544;
        let x_547 : f32 = u_xlat4.z;
        u_xlat8.w = x_547;
        let x_549 : vec4<f32> = u_xlat6;
        let x_551 : vec4<f32> = u_xlat8;
        let x_553 : vec3<f32> = (vec3<f32>(x_549.z, x_549.y, x_549.w) + vec3<f32>(x_551.z, x_551.y, x_551.w));
        let x_554 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat5;
        let x_558 : vec4<f32> = u_xlat9;
        let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.z, x_556.w) / vec3<f32>(x_558.z, x_558.w, x_558.y));
        let x_561 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
        let x_563 : vec4<f32> = u_xlat5;
        let x_568 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_569 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat8;
        let x_573 : vec4<f32> = u_xlat4;
        let x_575 : vec3<f32> = (vec3<f32>(x_571.z, x_571.y, x_571.w) / vec3<f32>(x_573.x, x_573.y, x_573.z));
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat6;
        let x_580 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_581 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat5;
        let x_586 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_588 : vec3<f32> = (vec3<f32>(x_583.y, x_583.x, x_583.z) * vec3<f32>(x_586.x, x_586.x, x_586.x));
        let x_589 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat6;
        let x_594 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_596 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_594.y, x_594.y, x_594.y));
        let x_597 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_600 : f32 = u_xlat6.x;
        u_xlat5.w = x_600;
        let x_602 : vec4<f32> = u_xlat3;
        let x_605 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_608 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y) * vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y)) + vec4<f32>(x_608.y, x_608.w, x_608.x, x_608.w));
        let x_611 : vec4<f32> = u_xlat3;
        let x_614 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat5;
        u_xlat37 = ((vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_614.x, x_614.y)) + vec2<f32>(x_617.z, x_617.w));
        let x_621 : f32 = u_xlat5.y;
        u_xlat6.w = x_621;
        let x_623 : vec4<f32> = u_xlat6;
        let x_624 : vec2<f32> = vec2<f32>(x_623.y, x_623.z);
        let x_625 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_625.x, x_624.x, x_625.z, x_624.y);
        let x_627 : vec4<f32> = u_xlat3;
        let x_630 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_633 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_627.x, x_627.y, x_627.x, x_627.y) * vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y)) + vec4<f32>(x_633.x, x_633.y, x_633.z, x_633.y));
        let x_636 : vec4<f32> = u_xlat3;
        let x_639 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_636.x, x_636.y, x_636.x, x_636.y) * vec4<f32>(x_639.x, x_639.y, x_639.x, x_639.y)) + vec4<f32>(x_642.w, x_642.y, x_642.w, x_642.z));
        let x_645 : vec4<f32> = u_xlat3;
        let x_648 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_651 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y) * vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y)) + vec4<f32>(x_651.x, x_651.w, x_651.z, x_651.w));
        let x_655 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_655.x, x_655.x, x_655.x, x_655.y) * vec4<f32>(x_657.z, x_657.w, x_657.y, x_657.z));
        let x_661 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_661.y, x_661.y, x_661.z, x_661.z) * x_663);
        let x_667 : f32 = u_xlat4.z;
        let x_669 : f32 = u_xlat9.y;
        u_xlat52 = (x_667 * x_669);
        let x_672 : vec4<f32> = u_xlat7;
        let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
        let x_675 : f32 = u_xlat0.z;
        txVec4 = vec3<f32>(x_673.x, x_673.y, x_675);
        let x_682 : vec3<f32> = txVec4;
        let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
        u_xlat3.x = x_684;
        let x_687 : vec4<f32> = u_xlat7;
        let x_688 : vec2<f32> = vec2<f32>(x_687.z, x_687.w);
        let x_690 : f32 = u_xlat0.z;
        txVec5 = vec3<f32>(x_688.x, x_688.y, x_690);
        let x_698 : vec3<f32> = txVec5;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_698.xy, x_698.z);
        u_xlat20 = x_700;
        let x_701 : f32 = u_xlat20;
        let x_703 : f32 = u_xlat10.y;
        u_xlat20 = (x_701 * x_703);
        let x_706 : f32 = u_xlat10.x;
        let x_708 : f32 = u_xlat3.x;
        let x_710 : f32 = u_xlat20;
        u_xlat3.x = ((x_706 * x_708) + x_710);
        let x_714 : vec2<f32> = u_xlat37;
        let x_716 : f32 = u_xlat0.z;
        txVec6 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec6;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
        u_xlat20 = x_725;
        let x_727 : f32 = u_xlat10.z;
        let x_728 : f32 = u_xlat20;
        let x_731 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_727 * x_728) + x_731);
        let x_735 : vec4<f32> = u_xlat6;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = u_xlat0.z;
        txVec7 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec7;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
        u_xlat20 = x_747;
        let x_749 : f32 = u_xlat10.w;
        let x_750 : f32 = u_xlat20;
        let x_753 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_749 * x_750) + x_753);
        let x_757 : vec4<f32> = u_xlat8;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = u_xlat0.z;
        txVec8 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec8;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_767.xy, x_767.z);
        u_xlat20 = x_769;
        let x_771 : f32 = u_xlat11.x;
        let x_772 : f32 = u_xlat20;
        let x_775 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_771 * x_772) + x_775);
        let x_779 : vec4<f32> = u_xlat8;
        let x_780 : vec2<f32> = vec2<f32>(x_779.z, x_779.w);
        let x_782 : f32 = u_xlat0.z;
        txVec9 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec9;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_789.xy, x_789.z);
        u_xlat20 = x_791;
        let x_793 : f32 = u_xlat11.y;
        let x_794 : f32 = u_xlat20;
        let x_797 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_793 * x_794) + x_797);
        let x_801 : vec4<f32> = u_xlat6;
        let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
        let x_804 : f32 = u_xlat0.z;
        txVec10 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec10;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_811.xy, x_811.z);
        u_xlat20 = x_813;
        let x_815 : f32 = u_xlat11.z;
        let x_816 : f32 = u_xlat20;
        let x_819 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_815 * x_816) + x_819);
        let x_823 : vec4<f32> = u_xlat5;
        let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
        let x_826 : f32 = u_xlat0.z;
        txVec11 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_833 : vec3<f32> = txVec11;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat20 = x_835;
        let x_837 : f32 = u_xlat11.w;
        let x_838 : f32 = u_xlat20;
        let x_841 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_837 * x_838) + x_841);
        let x_845 : vec4<f32> = u_xlat5;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = u_xlat0.z;
        txVec12 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec12;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
        u_xlat20 = x_857;
        let x_858 : f32 = u_xlat52;
        let x_859 : f32 = u_xlat20;
        let x_862 : f32 = u_xlat3.x;
        u_xlat51 = ((x_858 * x_859) + x_862);
      } else {
        let x_865 : vec4<f32> = u_xlat0;
        let x_868 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_871 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_868.z, x_868.w)) + vec2<f32>(0.5f, 0.5f));
        let x_872 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat3;
        let x_876 : vec2<f32> = floor(vec2<f32>(x_874.x, x_874.y));
        let x_877 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat0;
        let x_882 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_885 : vec4<f32> = u_xlat3;
        u_xlat37 = ((vec2<f32>(x_879.x, x_879.y) * vec2<f32>(x_882.z, x_882.w)) + -(vec2<f32>(x_885.x, x_885.y)));
        let x_889 : vec2<f32> = u_xlat37;
        u_xlat4 = (vec4<f32>(x_889.x, x_889.x, x_889.y, x_889.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_892 : vec4<f32> = u_xlat4;
        let x_894 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_892.x, x_892.x, x_892.z, x_892.z) * vec4<f32>(x_894.x, x_894.x, x_894.z, x_894.z));
        let x_897 : vec4<f32> = u_xlat5;
        let x_901 : vec2<f32> = (vec2<f32>(x_897.y, x_897.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_902.x, x_901.x, x_902.z, x_901.y);
        let x_904 : vec4<f32> = u_xlat5;
        let x_907 : vec2<f32> = u_xlat37;
        let x_909 : vec2<f32> = ((vec2<f32>(x_904.x, x_904.z) * vec2<f32>(0.5f, 0.5f)) + -(x_907));
        let x_910 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_909.x, x_910.y, x_909.y, x_910.w);
        let x_912 : vec2<f32> = u_xlat37;
        let x_914 : vec2<f32> = (-(x_912) + vec2<f32>(1.0f, 1.0f));
        let x_915 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec2<f32> = u_xlat37;
        u_xlat39 = min(x_917, vec2<f32>(0.0f, 0.0f));
        let x_919 : vec2<f32> = u_xlat39;
        let x_921 : vec2<f32> = u_xlat39;
        let x_923 : vec4<f32> = u_xlat5;
        let x_925 : vec2<f32> = ((-(x_919) * x_921) + vec2<f32>(x_923.x, x_923.y));
        let x_926 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec2<f32> = u_xlat37;
        u_xlat39 = max(x_928, vec2<f32>(0.0f, 0.0f));
        let x_931 : vec2<f32> = u_xlat39;
        let x_933 : vec2<f32> = u_xlat39;
        let x_935 : vec4<f32> = u_xlat4;
        let x_937 : vec2<f32> = ((-(x_931) * x_933) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_937.x, x_938.y, x_937.y);
        let x_940 : vec4<f32> = u_xlat5;
        let x_943 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) + vec2<f32>(2.0f, 2.0f));
        let x_944 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec3<f32> = u_xlat21;
        let x_948 : vec2<f32> = (vec2<f32>(x_946.x, x_946.z) + vec2<f32>(2.0f, 2.0f));
        let x_949 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_952 : f32 = u_xlat4.y;
        u_xlat7.z = (x_952 * 0.08163200318813323975f);
        let x_956 : vec4<f32> = u_xlat4;
        let x_959 : vec3<f32> = (vec3<f32>(x_956.z, x_956.x, x_956.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec2<f32> = (vec2<f32>(x_962.x, x_962.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_966 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_969 : f32 = u_xlat8.y;
        u_xlat7.x = x_969;
        let x_971 : vec2<f32> = u_xlat37;
        let x_978 : vec2<f32> = ((vec2<f32>(x_971.x, x_971.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec2<f32> = u_xlat37;
        let x_985 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_986 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_985.x, x_986.y, x_985.y, x_986.w);
        let x_989 : f32 = u_xlat4.x;
        u_xlat5.y = x_989;
        let x_992 : f32 = u_xlat6.y;
        u_xlat5.w = x_992;
        let x_994 : vec4<f32> = u_xlat5;
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_994 + x_995);
        let x_997 : vec2<f32> = u_xlat37;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_997.y, x_997.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec2<f32> = u_xlat37;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1003.y, x_1003.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1010 : f32 = u_xlat4.y;
        u_xlat6.y = x_1010;
        let x_1012 : vec4<f32> = u_xlat6;
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_1012 + x_1013);
        let x_1015 : vec4<f32> = u_xlat5;
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_1015 / x_1016);
        let x_1018 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1018 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1024 : vec4<f32> = u_xlat6;
        let x_1025 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_1024 / x_1025);
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1027 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1029 : vec4<f32> = u_xlat5;
        let x_1032 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1029.w, x_1029.x, x_1029.y, x_1029.z) * vec4<f32>(x_1032.x, x_1032.x, x_1032.x, x_1032.x));
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1038 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1035.x, x_1035.w, x_1035.y, x_1035.z) * vec4<f32>(x_1038.y, x_1038.y, x_1038.y, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat5;
        let x_1042 : vec3<f32> = vec3<f32>(x_1041.y, x_1041.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1042.z);
        let x_1046 : f32 = u_xlat6.x;
        u_xlat8.y = x_1046;
        let x_1048 : vec4<f32> = u_xlat3;
        let x_1051 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat3;
        let x_1060 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat8;
        u_xlat37 = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1067 : f32 = u_xlat8.y;
        u_xlat5.y = x_1067;
        let x_1070 : f32 = u_xlat6.z;
        u_xlat8.y = x_1070;
        let x_1072 : vec4<f32> = u_xlat3;
        let x_1075 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat3;
        let x_1084 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.w, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1093 : f32 = u_xlat8.y;
        u_xlat5.z = x_1093;
        let x_1096 : vec4<f32> = u_xlat3;
        let x_1099 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) * vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y)) + vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.z));
        let x_1106 : f32 = u_xlat6.w;
        u_xlat8.y = x_1106;
        let x_1109 : vec4<f32> = u_xlat3;
        let x_1112 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y) * vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y)) + vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1115.y));
        let x_1119 : vec4<f32> = u_xlat3;
        let x_1122 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat22 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.x, x_1122.y)) + vec2<f32>(x_1125.w, x_1125.y));
        let x_1129 : f32 = u_xlat8.y;
        u_xlat5.w = x_1129;
        let x_1132 : vec4<f32> = u_xlat3;
        let x_1135 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.x, x_1138.w));
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1142 : vec3<f32> = vec3<f32>(x_1141.x, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1142.z);
        let x_1145 : vec4<f32> = u_xlat3;
        let x_1148 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1155 : vec4<f32> = u_xlat3;
        let x_1158 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1158.x, x_1158.y)) + vec2<f32>(x_1161.w, x_1161.y));
        let x_1165 : f32 = u_xlat5.x;
        u_xlat6.x = x_1165;
        let x_1167 : vec4<f32> = u_xlat3;
        let x_1170 : vec4<f32> = x_20.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat6;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1179 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1179.x, x_1179.x, x_1179.x, x_1179.x) * x_1181);
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1186 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1184.y, x_1184.y, x_1184.y, x_1184.y) * x_1186);
        let x_1189 : vec4<f32> = u_xlat4;
        let x_1191 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1189.z, x_1189.z, x_1189.z, x_1189.z) * x_1191);
        let x_1193 : vec4<f32> = u_xlat4;
        let x_1195 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1193.w, x_1193.w, x_1193.w, x_1193.w) * x_1195);
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1199 : vec2<f32> = vec2<f32>(x_1198.x, x_1198.y);
        let x_1201 : f32 = u_xlat0.z;
        txVec13 = vec3<f32>(x_1199.x, x_1199.y, x_1201);
        let x_1208 : vec3<f32> = txVec13;
        let x_1210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1208.xy, x_1208.z);
        u_xlat52 = x_1210;
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.z, x_1212.w);
        let x_1215 : f32 = u_xlat0.z;
        txVec14 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec14;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1222.xy, x_1222.z);
        u_xlat5.x = x_1224;
        let x_1227 : f32 = u_xlat5.x;
        let x_1229 : f32 = u_xlat14.y;
        u_xlat5.x = (x_1227 * x_1229);
        let x_1233 : f32 = u_xlat14.x;
        let x_1234 : f32 = u_xlat52;
        let x_1237 : f32 = u_xlat5.x;
        u_xlat52 = ((x_1233 * x_1234) + x_1237);
        let x_1240 : vec2<f32> = u_xlat37;
        let x_1242 : f32 = u_xlat0.z;
        txVec15 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec15;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
        u_xlat37.x = x_1251;
        let x_1254 : f32 = u_xlat14.z;
        let x_1256 : f32 = u_xlat37.x;
        let x_1258 : f32 = u_xlat52;
        u_xlat52 = ((x_1254 * x_1256) + x_1258);
        let x_1261 : vec4<f32> = u_xlat12;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = u_xlat0.z;
        txVec16 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec16;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat37.x = x_1273;
        let x_1276 : f32 = u_xlat14.w;
        let x_1278 : f32 = u_xlat37.x;
        let x_1280 : f32 = u_xlat52;
        u_xlat52 = ((x_1276 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat10;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.x, x_1283.y);
        let x_1286 : f32 = u_xlat0.z;
        txVec17 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec17;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat37.x = x_1295;
        let x_1298 : f32 = u_xlat15.x;
        let x_1300 : f32 = u_xlat37.x;
        let x_1302 : f32 = u_xlat52;
        u_xlat52 = ((x_1298 * x_1300) + x_1302);
        let x_1305 : vec4<f32> = u_xlat10;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.z, x_1305.w);
        let x_1308 : f32 = u_xlat0.z;
        txVec18 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec18;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat37.x = x_1317;
        let x_1320 : f32 = u_xlat15.y;
        let x_1322 : f32 = u_xlat37.x;
        let x_1324 : f32 = u_xlat52;
        u_xlat52 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = u_xlat0.z;
        txVec19 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec19;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat37.x = x_1339;
        let x_1342 : f32 = u_xlat15.z;
        let x_1344 : f32 = u_xlat37.x;
        let x_1346 : f32 = u_xlat52;
        u_xlat52 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat12;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = u_xlat0.z;
        txVec20 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec20;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat37.x = x_1361;
        let x_1364 : f32 = u_xlat15.w;
        let x_1366 : f32 = u_xlat37.x;
        let x_1368 : f32 = u_xlat52;
        u_xlat52 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat13;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = u_xlat0.z;
        txVec21 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec21;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat37.x = x_1383;
        let x_1386 : f32 = u_xlat16.x;
        let x_1388 : f32 = u_xlat37.x;
        let x_1390 : f32 = u_xlat52;
        u_xlat52 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat13;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = u_xlat0.z;
        txVec22 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec22;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat37.x = x_1405;
        let x_1408 : f32 = u_xlat16.y;
        let x_1410 : f32 = u_xlat37.x;
        let x_1412 : f32 = u_xlat52;
        u_xlat52 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec2<f32> = u_xlat22;
        let x_1417 : f32 = u_xlat0.z;
        txVec23 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec23;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat37.x = x_1426;
        let x_1429 : f32 = u_xlat16.z;
        let x_1431 : f32 = u_xlat37.x;
        let x_1433 : f32 = u_xlat52;
        u_xlat52 = ((x_1429 * x_1431) + x_1433);
        let x_1436 : vec2<f32> = u_xlat45;
        let x_1438 : f32 = u_xlat0.z;
        txVec24 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec24;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1445.xy, x_1445.z);
        u_xlat37.x = x_1447;
        let x_1450 : f32 = u_xlat16.w;
        let x_1452 : f32 = u_xlat37.x;
        let x_1454 : f32 = u_xlat52;
        u_xlat52 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat8;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat0.z;
        txVec25 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec25;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat37.x = x_1469;
        let x_1472 : f32 = u_xlat4.x;
        let x_1474 : f32 = u_xlat37.x;
        let x_1476 : f32 = u_xlat52;
        u_xlat52 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.z, x_1479.w);
        let x_1482 : f32 = u_xlat0.z;
        txVec26 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec26;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat37.x = x_1491;
        let x_1494 : f32 = u_xlat4.y;
        let x_1496 : f32 = u_xlat37.x;
        let x_1498 : f32 = u_xlat52;
        u_xlat52 = ((x_1494 * x_1496) + x_1498);
        let x_1501 : vec2<f32> = u_xlat40;
        let x_1503 : f32 = u_xlat0.z;
        txVec27 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec27;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat37.x = x_1512;
        let x_1515 : f32 = u_xlat4.z;
        let x_1517 : f32 = u_xlat37.x;
        let x_1519 : f32 = u_xlat52;
        u_xlat52 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat3;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.x, x_1522.y);
        let x_1525 : f32 = u_xlat0.z;
        txVec28 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec28;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1532.xy, x_1532.z);
        u_xlat3.x = x_1534;
        let x_1537 : f32 = u_xlat4.w;
        let x_1539 : f32 = u_xlat3.x;
        let x_1541 : f32 = u_xlat52;
        u_xlat51 = ((x_1537 * x_1539) + x_1541);
      }
    }
  } else {
    let x_1545 : vec4<f32> = u_xlat0;
    let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
    let x_1548 : f32 = u_xlat0.z;
    txVec29 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
    let x_1555 : vec3<f32> = txVec29;
    let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
    u_xlat51 = x_1557;
  }
  let x_1559 : f32 = x_20.x_MainLightShadowParams.x;
  u_xlat0.x = (-(x_1559) + 1.0f);
  let x_1563 : f32 = u_xlat51;
  let x_1565 : f32 = x_20.x_MainLightShadowParams.x;
  let x_1568 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1563 * x_1565) + x_1568);
  let x_1573 : f32 = u_xlat0.z;
  u_xlatb17 = (0.0f >= x_1573);
  let x_1577 : f32 = u_xlat0.z;
  u_xlatb34 = (x_1577 >= 1.0f);
  let x_1579 : bool = u_xlatb34;
  let x_1580 : bool = u_xlatb17;
  u_xlatb17 = (x_1579 | x_1580);
  let x_1582 : bool = u_xlatb17;
  if (x_1582) {
    x_1584 = 1.0f;
  } else {
    let x_1589 : f32 = u_xlat0.x;
    x_1584 = x_1589;
  }
  let x_1590 : f32 = x_1584;
  u_xlat0.x = x_1590;
  let x_1593 : vec4<f32> = vs_TEXCOORD3;
  let x_1595 : vec4<f32> = u_xlat0;
  let x_1598 : vec4<f32> = u_xlat1;
  let x_1600 : vec3<f32> = ((vec3<f32>(x_1593.x, x_1593.y, x_1593.z) * vec3<f32>(x_1595.x, x_1595.x, x_1595.x)) + vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1605 : f32 = vs_TEXCOORD3.w;
  let x_1607 : f32 = vs_TEXCOORD3.w;
  u_xlat51 = (x_1605 * -(x_1607));
  let x_1610 : f32 = u_xlat51;
  u_xlat51 = exp2(x_1610);
  let x_1612 : vec4<f32> = u_xlat2;
  let x_1614 : vec4<f32> = u_xlat0;
  let x_1618 : vec4<f32> = x_237.unity_FogColor;
  let x_1621 : vec3<f32> = ((vec3<f32>(x_1612.x, x_1612.y, x_1612.z) * vec3<f32>(x_1614.x, x_1614.y, x_1614.z)) + -(vec3<f32>(x_1618.x, x_1618.y, x_1618.z)));
  let x_1622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
  let x_1626 : f32 = u_xlat51;
  let x_1628 : vec4<f32> = u_xlat0;
  let x_1632 : vec4<f32> = x_237.unity_FogColor;
  let x_1634 : vec3<f32> = ((vec3<f32>(x_1626, x_1626, x_1626) * vec3<f32>(x_1628.x, x_1628.y, x_1628.z)) + vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
  let x_1635 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
  let x_1638 : f32 = u_xlat2.w;
  SV_Target0.w = x_1638;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD6_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


