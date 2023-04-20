diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_FogColor : vec4<f32>,
}

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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb48 : bool;

@group(1) @binding(1) var<uniform> x_108 : LightShadows;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb2 : bool;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat20 : vec2<f32>;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlatb18 : bool;

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
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_23, x_33);
  u_xlat0 = x_34;
  let x_40 : vec2<f32> = vs_TEXCOORD1;
  let x_42 : f32 = x_26.x_GlobalMipBias.x;
  let x_43 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_40, x_42);
  let x_45 : vec3<f32> = vec3<f32>(x_43.x, x_43.y, x_43.z);
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = (vec3<f32>(x_48.x, x_48.y, x_48.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_57 : vec4<f32> = vs_TEXCOORD5;
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_57.x, x_57.y, x_57.z), vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_65 : f32 = u_xlat0.x;
  u_xlat0.x = (x_65 + 0.5f);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat1;
  let x_73 : vec3<f32> = (vec3<f32>(x_69.x, x_69.x, x_69.x) * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_79 : f32 = u_xlat0.w;
  u_xlat48 = max(x_79, 0.00009999999747378752f);
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : f32 = u_xlat48;
  let x_86 : vec3<f32> = (vec3<f32>(x_82.x, x_82.y, x_82.z) / vec3<f32>(x_84, x_84, x_84));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_95 : vec2<f32> = vs_TEXCOORD0;
  let x_97 : f32 = x_26.x_GlobalMipBias.x;
  let x_98 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_95, x_97);
  u_xlat1 = x_98;
  let x_112 : f32 = x_108.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_112);
  let x_114 : bool = u_xlatb48;
  if (x_114) {
    let x_118 : f32 = x_108.x_MainLightShadowParams.y;
    u_xlatb48 = (x_118 == 1.0f);
    let x_121 : bool = u_xlatb48;
    if (x_121) {
      let x_126 : vec4<f32> = vs_TEXCOORD4;
      let x_131 : vec4<f32> = x_108.x_MainLightShadowOffset0;
      u_xlat2 = (vec4<f32>(x_126.x, x_126.y, x_126.x, x_126.y) + x_131);
      let x_135 : vec4<f32> = u_xlat2;
      let x_136 : vec2<f32> = vec2<f32>(x_135.x, x_135.y);
      let x_140 : f32 = vs_TEXCOORD4.z;
      txVec0 = vec3<f32>(x_136.x, x_136.y, x_140);
      let x_153 : vec3<f32> = txVec0;
      let x_155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_153.xy, x_153.z);
      u_xlat3.x = x_155;
      let x_158 : vec4<f32> = u_xlat2;
      let x_159 : vec2<f32> = vec2<f32>(x_158.z, x_158.w);
      let x_161 : f32 = vs_TEXCOORD4.z;
      txVec1 = vec3<f32>(x_159.x, x_159.y, x_161);
      let x_168 : vec3<f32> = txVec1;
      let x_170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_168.xy, x_168.z);
      u_xlat3.y = x_170;
      let x_172 : vec4<f32> = vs_TEXCOORD4;
      let x_176 : vec4<f32> = x_108.x_MainLightShadowOffset1;
      u_xlat2 = (vec4<f32>(x_172.x, x_172.y, x_172.x, x_172.y) + x_176);
      let x_179 : vec4<f32> = u_xlat2;
      let x_180 : vec2<f32> = vec2<f32>(x_179.x, x_179.y);
      let x_182 : f32 = vs_TEXCOORD4.z;
      txVec2 = vec3<f32>(x_180.x, x_180.y, x_182);
      let x_189 : vec3<f32> = txVec2;
      let x_191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_189.xy, x_189.z);
      u_xlat3.z = x_191;
      let x_194 : vec4<f32> = u_xlat2;
      let x_195 : vec2<f32> = vec2<f32>(x_194.z, x_194.w);
      let x_197 : f32 = vs_TEXCOORD4.z;
      txVec3 = vec3<f32>(x_195.x, x_195.y, x_197);
      let x_204 : vec3<f32> = txVec3;
      let x_206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_204.xy, x_204.z);
      u_xlat3.w = x_206;
      let x_208 : vec4<f32> = u_xlat3;
      u_xlat48 = dot(x_208, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_215 : f32 = x_108.x_MainLightShadowParams.y;
      u_xlatb2 = (x_215 == 2.0f);
      let x_218 : bool = u_xlatb2;
      if (x_218) {
        let x_221 : vec4<f32> = vs_TEXCOORD4;
        let x_225 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_229 : vec2<f32> = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(x_225.z, x_225.w)) + vec2<f32>(0.5f, 0.5f));
        let x_230 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_230.w);
        let x_232 : vec4<f32> = u_xlat2;
        let x_234 : vec2<f32> = floor(vec2<f32>(x_232.x, x_232.y));
        let x_235 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
        let x_239 : vec4<f32> = vs_TEXCOORD4;
        let x_242 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_245 : vec4<f32> = u_xlat2;
        u_xlat34 = ((vec2<f32>(x_239.x, x_239.y) * vec2<f32>(x_242.z, x_242.w)) + -(vec2<f32>(x_245.x, x_245.y)));
        let x_249 : vec2<f32> = u_xlat34;
        u_xlat3 = (vec4<f32>(x_249.x, x_249.x, x_249.y, x_249.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_254 : vec4<f32> = u_xlat3;
        let x_256 : vec4<f32> = u_xlat3;
        u_xlat4 = (vec4<f32>(x_254.x, x_254.x, x_254.z, x_254.z) * vec4<f32>(x_256.x, x_256.x, x_256.z, x_256.z));
        let x_259 : vec4<f32> = u_xlat4;
        let x_263 : vec2<f32> = (vec2<f32>(x_259.y, x_259.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_264 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_264.w);
        let x_266 : vec4<f32> = u_xlat4;
        let x_269 : vec2<f32> = u_xlat34;
        let x_271 : vec2<f32> = ((vec2<f32>(x_266.x, x_266.z) * vec2<f32>(0.5f, 0.5f)) + -(x_269));
        let x_272 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
        let x_275 : vec2<f32> = u_xlat34;
        u_xlat36 = (-(x_275) + vec2<f32>(1.0f, 1.0f));
        let x_280 : vec2<f32> = u_xlat34;
        let x_282 : vec2<f32> = min(x_280, vec2<f32>(0.0f, 0.0f));
        let x_283 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
        let x_285 : vec4<f32> = u_xlat5;
        let x_288 : vec4<f32> = u_xlat5;
        let x_291 : vec2<f32> = u_xlat36;
        let x_292 : vec2<f32> = ((-(vec2<f32>(x_285.x, x_285.y)) * vec2<f32>(x_288.x, x_288.y)) + x_291);
        let x_293 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
        let x_295 : vec2<f32> = u_xlat34;
        u_xlat34 = max(x_295, vec2<f32>(0.0f, 0.0f));
        let x_297 : vec2<f32> = u_xlat34;
        let x_299 : vec2<f32> = u_xlat34;
        let x_301 : vec4<f32> = u_xlat3;
        u_xlat34 = ((-(x_297) * x_299) + vec2<f32>(x_301.y, x_301.w));
        let x_304 : vec4<f32> = u_xlat5;
        let x_306 : vec2<f32> = (vec2<f32>(x_304.x, x_304.y) + vec2<f32>(1.0f, 1.0f));
        let x_307 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
        let x_309 : vec2<f32> = u_xlat34;
        u_xlat34 = (x_309 + vec2<f32>(1.0f, 1.0f));
        let x_312 : vec4<f32> = u_xlat4;
        let x_316 : vec2<f32> = (vec2<f32>(x_312.x, x_312.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_317 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
        let x_319 : vec2<f32> = u_xlat36;
        let x_320 : vec2<f32> = (x_319 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_321 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_321.z, x_321.w);
        let x_323 : vec4<f32> = u_xlat5;
        let x_325 : vec2<f32> = (vec2<f32>(x_323.x, x_323.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_326 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_326.z, x_326.w);
        let x_329 : vec2<f32> = u_xlat34;
        let x_330 : vec2<f32> = (x_329 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_331 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
        let x_333 : vec4<f32> = u_xlat3;
        u_xlat34 = (vec2<f32>(x_333.y, x_333.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_337 : f32 = u_xlat5.x;
        u_xlat6.z = x_337;
        let x_340 : f32 = u_xlat34.x;
        u_xlat6.w = x_340;
        let x_343 : f32 = u_xlat7.x;
        u_xlat4.z = x_343;
        let x_346 : f32 = u_xlat3.x;
        u_xlat4.w = x_346;
        let x_349 : vec4<f32> = u_xlat4;
        let x_351 : vec4<f32> = u_xlat6;
        u_xlat8 = (vec4<f32>(x_349.z, x_349.w, x_349.x, x_349.z) + vec4<f32>(x_351.z, x_351.w, x_351.x, x_351.z));
        let x_355 : f32 = u_xlat6.y;
        u_xlat5.z = x_355;
        let x_358 : f32 = u_xlat34.y;
        u_xlat5.w = x_358;
        let x_361 : f32 = u_xlat4.y;
        u_xlat7.z = x_361;
        let x_364 : f32 = u_xlat3.z;
        u_xlat7.w = x_364;
        let x_366 : vec4<f32> = u_xlat5;
        let x_368 : vec4<f32> = u_xlat7;
        let x_370 : vec3<f32> = (vec3<f32>(x_366.z, x_366.y, x_366.w) + vec3<f32>(x_368.z, x_368.y, x_368.w));
        let x_371 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
        let x_373 : vec4<f32> = u_xlat4;
        let x_375 : vec4<f32> = u_xlat8;
        let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.z, x_373.w) / vec3<f32>(x_375.z, x_375.w, x_375.y));
        let x_378 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
        let x_380 : vec4<f32> = u_xlat4;
        let x_385 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_386 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
        let x_388 : vec4<f32> = u_xlat7;
        let x_390 : vec4<f32> = u_xlat3;
        let x_392 : vec3<f32> = (vec3<f32>(x_388.z, x_388.y, x_388.w) / vec3<f32>(x_390.x, x_390.y, x_390.z));
        let x_393 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
        let x_395 : vec4<f32> = u_xlat5;
        let x_397 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_398 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
        let x_400 : vec4<f32> = u_xlat4;
        let x_403 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_405 : vec3<f32> = (vec3<f32>(x_400.y, x_400.x, x_400.z) * vec3<f32>(x_403.x, x_403.x, x_403.x));
        let x_406 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
        let x_408 : vec4<f32> = u_xlat5;
        let x_411 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_413 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_411.y, x_411.y, x_411.y));
        let x_414 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
        let x_417 : f32 = u_xlat5.x;
        u_xlat4.w = x_417;
        let x_419 : vec4<f32> = u_xlat2;
        let x_422 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_425 : vec4<f32> = u_xlat4;
        u_xlat6 = ((vec4<f32>(x_419.x, x_419.y, x_419.x, x_419.y) * vec4<f32>(x_422.x, x_422.y, x_422.x, x_422.y)) + vec4<f32>(x_425.y, x_425.w, x_425.x, x_425.w));
        let x_428 : vec4<f32> = u_xlat2;
        let x_431 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_434 : vec4<f32> = u_xlat4;
        u_xlat34 = ((vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_431.x, x_431.y)) + vec2<f32>(x_434.z, x_434.w));
        let x_438 : f32 = u_xlat4.y;
        u_xlat5.w = x_438;
        let x_440 : vec4<f32> = u_xlat5;
        let x_441 : vec2<f32> = vec2<f32>(x_440.y, x_440.z);
        let x_442 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_442.x, x_441.x, x_442.z, x_441.y);
        let x_444 : vec4<f32> = u_xlat2;
        let x_447 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_450 : vec4<f32> = u_xlat4;
        u_xlat7 = ((vec4<f32>(x_444.x, x_444.y, x_444.x, x_444.y) * vec4<f32>(x_447.x, x_447.y, x_447.x, x_447.y)) + vec4<f32>(x_450.x, x_450.y, x_450.z, x_450.y));
        let x_453 : vec4<f32> = u_xlat2;
        let x_456 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_459 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_453.x, x_453.y, x_453.x, x_453.y) * vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y)) + vec4<f32>(x_459.w, x_459.y, x_459.w, x_459.z));
        let x_462 : vec4<f32> = u_xlat2;
        let x_465 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_468 : vec4<f32> = u_xlat4;
        u_xlat4 = ((vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) * vec4<f32>(x_465.x, x_465.y, x_465.x, x_465.y)) + vec4<f32>(x_468.x, x_468.w, x_468.z, x_468.w));
        let x_472 : vec4<f32> = u_xlat3;
        let x_474 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_472.x, x_472.x, x_472.x, x_472.y) * vec4<f32>(x_474.z, x_474.w, x_474.y, x_474.z));
        let x_478 : vec4<f32> = u_xlat3;
        let x_480 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_478.y, x_478.y, x_478.z, x_478.z) * x_480);
        let x_483 : f32 = u_xlat3.z;
        let x_485 : f32 = u_xlat8.y;
        u_xlat2.x = (x_483 * x_485);
        let x_489 : vec4<f32> = u_xlat6;
        let x_490 : vec2<f32> = vec2<f32>(x_489.x, x_489.y);
        let x_492 : f32 = vs_TEXCOORD4.z;
        txVec4 = vec3<f32>(x_490.x, x_490.y, x_492);
        let x_500 : vec3<f32> = txVec4;
        let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
        u_xlat18 = x_502;
        let x_504 : vec4<f32> = u_xlat6;
        let x_505 : vec2<f32> = vec2<f32>(x_504.z, x_504.w);
        let x_507 : f32 = vs_TEXCOORD4.z;
        txVec5 = vec3<f32>(x_505.x, x_505.y, x_507);
        let x_514 : vec3<f32> = txVec5;
        let x_516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_514.xy, x_514.z);
        u_xlat3.x = x_516;
        let x_519 : f32 = u_xlat3.x;
        let x_521 : f32 = u_xlat9.y;
        u_xlat3.x = (x_519 * x_521);
        let x_525 : f32 = u_xlat9.x;
        let x_526 : f32 = u_xlat18;
        let x_529 : f32 = u_xlat3.x;
        u_xlat18 = ((x_525 * x_526) + x_529);
        let x_532 : vec2<f32> = u_xlat34;
        let x_534 : f32 = vs_TEXCOORD4.z;
        txVec6 = vec3<f32>(x_532.x, x_532.y, x_534);
        let x_541 : vec3<f32> = txVec6;
        let x_543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_541.xy, x_541.z);
        u_xlat34.x = x_543;
        let x_546 : f32 = u_xlat9.z;
        let x_548 : f32 = u_xlat34.x;
        let x_550 : f32 = u_xlat18;
        u_xlat18 = ((x_546 * x_548) + x_550);
        let x_553 : vec4<f32> = u_xlat5;
        let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
        let x_556 : f32 = vs_TEXCOORD4.z;
        txVec7 = vec3<f32>(x_554.x, x_554.y, x_556);
        let x_563 : vec3<f32> = txVec7;
        let x_565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_563.xy, x_563.z);
        u_xlat34.x = x_565;
        let x_568 : f32 = u_xlat9.w;
        let x_570 : f32 = u_xlat34.x;
        let x_572 : f32 = u_xlat18;
        u_xlat18 = ((x_568 * x_570) + x_572);
        let x_575 : vec4<f32> = u_xlat7;
        let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
        let x_578 : f32 = vs_TEXCOORD4.z;
        txVec8 = vec3<f32>(x_576.x, x_576.y, x_578);
        let x_585 : vec3<f32> = txVec8;
        let x_587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_585.xy, x_585.z);
        u_xlat34.x = x_587;
        let x_590 : f32 = u_xlat10.x;
        let x_592 : f32 = u_xlat34.x;
        let x_594 : f32 = u_xlat18;
        u_xlat18 = ((x_590 * x_592) + x_594);
        let x_597 : vec4<f32> = u_xlat7;
        let x_598 : vec2<f32> = vec2<f32>(x_597.z, x_597.w);
        let x_600 : f32 = vs_TEXCOORD4.z;
        txVec9 = vec3<f32>(x_598.x, x_598.y, x_600);
        let x_607 : vec3<f32> = txVec9;
        let x_609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_607.xy, x_607.z);
        u_xlat34.x = x_609;
        let x_612 : f32 = u_xlat10.y;
        let x_614 : f32 = u_xlat34.x;
        let x_616 : f32 = u_xlat18;
        u_xlat18 = ((x_612 * x_614) + x_616);
        let x_619 : vec4<f32> = u_xlat5;
        let x_620 : vec2<f32> = vec2<f32>(x_619.z, x_619.w);
        let x_622 : f32 = vs_TEXCOORD4.z;
        txVec10 = vec3<f32>(x_620.x, x_620.y, x_622);
        let x_629 : vec3<f32> = txVec10;
        let x_631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_629.xy, x_629.z);
        u_xlat34.x = x_631;
        let x_634 : f32 = u_xlat10.z;
        let x_636 : f32 = u_xlat34.x;
        let x_638 : f32 = u_xlat18;
        u_xlat18 = ((x_634 * x_636) + x_638);
        let x_641 : vec4<f32> = u_xlat4;
        let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
        let x_644 : f32 = vs_TEXCOORD4.z;
        txVec11 = vec3<f32>(x_642.x, x_642.y, x_644);
        let x_651 : vec3<f32> = txVec11;
        let x_653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_651.xy, x_651.z);
        u_xlat34.x = x_653;
        let x_656 : f32 = u_xlat10.w;
        let x_658 : f32 = u_xlat34.x;
        let x_660 : f32 = u_xlat18;
        u_xlat18 = ((x_656 * x_658) + x_660);
        let x_663 : vec4<f32> = u_xlat4;
        let x_664 : vec2<f32> = vec2<f32>(x_663.z, x_663.w);
        let x_666 : f32 = vs_TEXCOORD4.z;
        txVec12 = vec3<f32>(x_664.x, x_664.y, x_666);
        let x_673 : vec3<f32> = txVec12;
        let x_675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_673.xy, x_673.z);
        u_xlat34.x = x_675;
        let x_678 : f32 = u_xlat2.x;
        let x_680 : f32 = u_xlat34.x;
        let x_682 : f32 = u_xlat18;
        u_xlat48 = ((x_678 * x_680) + x_682);
      } else {
        let x_685 : vec4<f32> = vs_TEXCOORD4;
        let x_688 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_691 : vec2<f32> = ((vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_688.z, x_688.w)) + vec2<f32>(0.5f, 0.5f));
        let x_692 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat2;
        let x_696 : vec2<f32> = floor(vec2<f32>(x_694.x, x_694.y));
        let x_697 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
        let x_699 : vec4<f32> = vs_TEXCOORD4;
        let x_702 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_705 : vec4<f32> = u_xlat2;
        u_xlat34 = ((vec2<f32>(x_699.x, x_699.y) * vec2<f32>(x_702.z, x_702.w)) + -(vec2<f32>(x_705.x, x_705.y)));
        let x_709 : vec2<f32> = u_xlat34;
        u_xlat3 = (vec4<f32>(x_709.x, x_709.x, x_709.y, x_709.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_712 : vec4<f32> = u_xlat3;
        let x_714 : vec4<f32> = u_xlat3;
        u_xlat4 = (vec4<f32>(x_712.x, x_712.x, x_712.z, x_712.z) * vec4<f32>(x_714.x, x_714.x, x_714.z, x_714.z));
        let x_717 : vec4<f32> = u_xlat4;
        let x_721 : vec2<f32> = (vec2<f32>(x_717.y, x_717.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_722 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_722.x, x_721.x, x_722.z, x_721.y);
        let x_724 : vec4<f32> = u_xlat4;
        let x_727 : vec2<f32> = u_xlat34;
        let x_729 : vec2<f32> = ((vec2<f32>(x_724.x, x_724.z) * vec2<f32>(0.5f, 0.5f)) + -(x_727));
        let x_730 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_729.x, x_730.y, x_729.y, x_730.w);
        let x_732 : vec2<f32> = u_xlat34;
        let x_734 : vec2<f32> = (-(x_732) + vec2<f32>(1.0f, 1.0f));
        let x_735 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_737 : vec2<f32> = u_xlat34;
        u_xlat36 = min(x_737, vec2<f32>(0.0f, 0.0f));
        let x_739 : vec2<f32> = u_xlat36;
        let x_741 : vec2<f32> = u_xlat36;
        let x_743 : vec4<f32> = u_xlat4;
        let x_745 : vec2<f32> = ((-(x_739) * x_741) + vec2<f32>(x_743.x, x_743.y));
        let x_746 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_748 : vec2<f32> = u_xlat34;
        u_xlat36 = max(x_748, vec2<f32>(0.0f, 0.0f));
        let x_752 : vec2<f32> = u_xlat36;
        let x_754 : vec2<f32> = u_xlat36;
        let x_756 : vec4<f32> = u_xlat3;
        let x_758 : vec2<f32> = ((-(x_752) * x_754) + vec2<f32>(x_756.y, x_756.w));
        let x_759 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_758.x, x_759.y, x_758.y);
        let x_761 : vec4<f32> = u_xlat4;
        let x_764 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) + vec2<f32>(2.0f, 2.0f));
        let x_765 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
        let x_767 : vec3<f32> = u_xlat19;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.z) + vec2<f32>(2.0f, 2.0f));
        let x_770 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_770.x, x_769.x, x_770.z, x_769.y);
        let x_773 : f32 = u_xlat3.y;
        u_xlat6.z = (x_773 * 0.08163200318813323975f);
        let x_777 : vec4<f32> = u_xlat3;
        let x_780 : vec3<f32> = (vec3<f32>(x_777.z, x_777.x, x_777.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat4;
        let x_786 : vec2<f32> = (vec2<f32>(x_783.x, x_783.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_787 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
        let x_790 : f32 = u_xlat7.y;
        u_xlat6.x = x_790;
        let x_792 : vec2<f32> = u_xlat34;
        let x_799 : vec2<f32> = ((vec2<f32>(x_792.x, x_792.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_800 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_800.x, x_799.x, x_800.z, x_799.y);
        let x_802 : vec2<f32> = u_xlat34;
        let x_806 : vec2<f32> = ((vec2<f32>(x_802.x, x_802.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_807 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_806.x, x_807.y, x_806.y, x_807.w);
        let x_810 : f32 = u_xlat3.x;
        u_xlat4.y = x_810;
        let x_813 : f32 = u_xlat5.y;
        u_xlat4.w = x_813;
        let x_815 : vec4<f32> = u_xlat4;
        let x_816 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_815 + x_816);
        let x_818 : vec2<f32> = u_xlat34;
        let x_821 : vec2<f32> = ((vec2<f32>(x_818.y, x_818.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_822.x, x_821.x, x_822.z, x_821.y);
        let x_824 : vec2<f32> = u_xlat34;
        let x_827 : vec2<f32> = ((vec2<f32>(x_824.y, x_824.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_828 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_827.x, x_828.y, x_827.y, x_828.w);
        let x_831 : f32 = u_xlat3.y;
        u_xlat5.y = x_831;
        let x_833 : vec4<f32> = u_xlat5;
        let x_834 : vec4<f32> = u_xlat7;
        u_xlat3 = (x_833 + x_834);
        let x_836 : vec4<f32> = u_xlat4;
        let x_837 : vec4<f32> = u_xlat6;
        u_xlat4 = (x_836 / x_837);
        let x_839 : vec4<f32> = u_xlat4;
        u_xlat4 = (x_839 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_845 : vec4<f32> = u_xlat5;
        let x_846 : vec4<f32> = u_xlat3;
        u_xlat5 = (x_845 / x_846);
        let x_848 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_848 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_850 : vec4<f32> = u_xlat4;
        let x_853 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat4 = (vec4<f32>(x_850.w, x_850.x, x_850.y, x_850.z) * vec4<f32>(x_853.x, x_853.x, x_853.x, x_853.x));
        let x_856 : vec4<f32> = u_xlat5;
        let x_859 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_856.x, x_856.w, x_856.y, x_856.z) * vec4<f32>(x_859.y, x_859.y, x_859.y, x_859.y));
        let x_862 : vec4<f32> = u_xlat4;
        let x_863 : vec3<f32> = vec3<f32>(x_862.y, x_862.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_863.x, x_864.y, x_863.y, x_863.z);
        let x_867 : f32 = u_xlat5.x;
        u_xlat7.y = x_867;
        let x_869 : vec4<f32> = u_xlat2;
        let x_872 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_875 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_869.x, x_869.y, x_869.x, x_869.y) * vec4<f32>(x_872.x, x_872.y, x_872.x, x_872.y)) + vec4<f32>(x_875.x, x_875.y, x_875.z, x_875.y));
        let x_878 : vec4<f32> = u_xlat2;
        let x_881 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_884 : vec4<f32> = u_xlat7;
        u_xlat34 = ((vec2<f32>(x_878.x, x_878.y) * vec2<f32>(x_881.x, x_881.y)) + vec2<f32>(x_884.w, x_884.y));
        let x_888 : f32 = u_xlat7.y;
        u_xlat4.y = x_888;
        let x_891 : f32 = u_xlat5.z;
        u_xlat7.y = x_891;
        let x_893 : vec4<f32> = u_xlat2;
        let x_896 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_893.x, x_893.y, x_893.x, x_893.y) * vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y)) + vec4<f32>(x_899.x, x_899.y, x_899.z, x_899.y));
        let x_902 : vec4<f32> = u_xlat2;
        let x_905 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_908 : vec4<f32> = u_xlat7;
        let x_910 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(x_905.x, x_905.y)) + vec2<f32>(x_908.w, x_908.y));
        let x_911 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_914 : f32 = u_xlat7.y;
        u_xlat4.z = x_914;
        let x_917 : vec4<f32> = u_xlat2;
        let x_920 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_923 : vec4<f32> = u_xlat4;
        u_xlat11 = ((vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y) * vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y)) + vec4<f32>(x_923.x, x_923.y, x_923.x, x_923.z));
        let x_927 : f32 = u_xlat5.w;
        u_xlat7.y = x_927;
        let x_930 : vec4<f32> = u_xlat2;
        let x_933 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat12 = ((vec4<f32>(x_930.x, x_930.y, x_930.x, x_930.y) * vec4<f32>(x_933.x, x_933.y, x_933.x, x_933.y)) + vec4<f32>(x_936.x, x_936.y, x_936.z, x_936.y));
        let x_940 : vec4<f32> = u_xlat2;
        let x_943 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat20 = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_943.x, x_943.y)) + vec2<f32>(x_946.w, x_946.y));
        let x_950 : f32 = u_xlat7.y;
        u_xlat4.w = x_950;
        let x_953 : vec4<f32> = u_xlat2;
        let x_956 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat4;
        u_xlat42 = ((vec2<f32>(x_953.x, x_953.y) * vec2<f32>(x_956.x, x_956.y)) + vec2<f32>(x_959.x, x_959.w));
        let x_962 : vec4<f32> = u_xlat7;
        let x_963 : vec3<f32> = vec3<f32>(x_962.x, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_963.z);
        let x_966 : vec4<f32> = u_xlat2;
        let x_969 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_972 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_966.x, x_966.y, x_966.x, x_966.y) * vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y)) + vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.y));
        let x_976 : vec4<f32> = u_xlat2;
        let x_979 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat5;
        u_xlat37 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_982.w, x_982.y));
        let x_986 : f32 = u_xlat4.x;
        u_xlat5.x = x_986;
        let x_988 : vec4<f32> = u_xlat2;
        let x_991 : vec4<f32> = x_108.x_MainLightShadowmapSize;
        let x_994 : vec4<f32> = u_xlat5;
        let x_996 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.y) * vec2<f32>(x_991.x, x_991.y)) + vec2<f32>(x_994.x, x_994.y));
        let x_997 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : vec4<f32> = u_xlat3;
        let x_1002 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_1000.x, x_1000.x, x_1000.x, x_1000.x) * x_1002);
        let x_1005 : vec4<f32> = u_xlat3;
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat14 = (vec4<f32>(x_1005.y, x_1005.y, x_1005.y, x_1005.y) * x_1007);
        let x_1010 : vec4<f32> = u_xlat3;
        let x_1012 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1010.z, x_1010.z, x_1010.z, x_1010.z) * x_1012);
        let x_1014 : vec4<f32> = u_xlat3;
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat3 = (vec4<f32>(x_1014.w, x_1014.w, x_1014.w, x_1014.w) * x_1016);
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
        let x_1022 : f32 = vs_TEXCOORD4.z;
        txVec13 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
        let x_1029 : vec3<f32> = txVec13;
        let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
        u_xlat4.x = x_1031;
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
        let x_1037 : f32 = vs_TEXCOORD4.z;
        txVec14 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1045 : vec3<f32> = txVec14;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1045.xy, x_1045.z);
        u_xlat52 = x_1047;
        let x_1048 : f32 = u_xlat52;
        let x_1050 : f32 = u_xlat13.y;
        u_xlat52 = (x_1048 * x_1050);
        let x_1053 : f32 = u_xlat13.x;
        let x_1055 : f32 = u_xlat4.x;
        let x_1057 : f32 = u_xlat52;
        u_xlat4.x = ((x_1053 * x_1055) + x_1057);
        let x_1061 : vec2<f32> = u_xlat34;
        let x_1063 : f32 = vs_TEXCOORD4.z;
        txVec15 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec15;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1070.xy, x_1070.z);
        u_xlat34.x = x_1072;
        let x_1075 : f32 = u_xlat13.z;
        let x_1077 : f32 = u_xlat34.x;
        let x_1080 : f32 = u_xlat4.x;
        u_xlat34.x = ((x_1075 * x_1077) + x_1080);
        let x_1084 : vec4<f32> = u_xlat11;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.x, x_1084.y);
        let x_1087 : f32 = vs_TEXCOORD4.z;
        txVec16 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1095 : vec3<f32> = txVec16;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
        u_xlat50 = x_1097;
        let x_1099 : f32 = u_xlat13.w;
        let x_1100 : f32 = u_xlat50;
        let x_1103 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1099 * x_1100) + x_1103);
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1108 : vec2<f32> = vec2<f32>(x_1107.x, x_1107.y);
        let x_1110 : f32 = vs_TEXCOORD4.z;
        txVec17 = vec3<f32>(x_1108.x, x_1108.y, x_1110);
        let x_1117 : vec3<f32> = txVec17;
        let x_1119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1117.xy, x_1117.z);
        u_xlat50 = x_1119;
        let x_1121 : f32 = u_xlat14.x;
        let x_1122 : f32 = u_xlat50;
        let x_1125 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1121 * x_1122) + x_1125);
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1130 : vec2<f32> = vec2<f32>(x_1129.z, x_1129.w);
        let x_1132 : f32 = vs_TEXCOORD4.z;
        txVec18 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
        let x_1139 : vec3<f32> = txVec18;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1139.xy, x_1139.z);
        u_xlat50 = x_1141;
        let x_1143 : f32 = u_xlat14.y;
        let x_1144 : f32 = u_xlat50;
        let x_1147 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1143 * x_1144) + x_1147);
        let x_1151 : vec4<f32> = u_xlat10;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.x, x_1151.y);
        let x_1154 : f32 = vs_TEXCOORD4.z;
        txVec19 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec19;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
        u_xlat50 = x_1163;
        let x_1165 : f32 = u_xlat14.z;
        let x_1166 : f32 = u_xlat50;
        let x_1169 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1165 * x_1166) + x_1169);
        let x_1173 : vec4<f32> = u_xlat11;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.z, x_1173.w);
        let x_1176 : f32 = vs_TEXCOORD4.z;
        txVec20 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec20;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1183.xy, x_1183.z);
        u_xlat50 = x_1185;
        let x_1187 : f32 = u_xlat14.w;
        let x_1188 : f32 = u_xlat50;
        let x_1191 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1187 * x_1188) + x_1191);
        let x_1195 : vec4<f32> = u_xlat12;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD4.z;
        txVec21 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec21;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1205.xy, x_1205.z);
        u_xlat50 = x_1207;
        let x_1209 : f32 = u_xlat15.x;
        let x_1210 : f32 = u_xlat50;
        let x_1213 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1209 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat12;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = vs_TEXCOORD4.z;
        txVec22 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec22;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat50 = x_1229;
        let x_1231 : f32 = u_xlat15.y;
        let x_1232 : f32 = u_xlat50;
        let x_1235 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1231 * x_1232) + x_1235);
        let x_1239 : vec2<f32> = u_xlat20;
        let x_1241 : f32 = vs_TEXCOORD4.z;
        txVec23 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec23;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat50 = x_1250;
        let x_1252 : f32 = u_xlat15.z;
        let x_1253 : f32 = u_xlat50;
        let x_1256 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1252 * x_1253) + x_1256);
        let x_1260 : vec2<f32> = u_xlat42;
        let x_1262 : f32 = vs_TEXCOORD4.z;
        txVec24 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec24;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat50 = x_1271;
        let x_1273 : f32 = u_xlat15.w;
        let x_1274 : f32 = u_xlat50;
        let x_1277 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat7;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD4.z;
        txVec25 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec25;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat50 = x_1293;
        let x_1295 : f32 = u_xlat3.x;
        let x_1296 : f32 = u_xlat50;
        let x_1299 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1295 * x_1296) + x_1299);
        let x_1303 : vec4<f32> = u_xlat7;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD4.z;
        txVec26 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec26;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat50 = x_1315;
        let x_1317 : f32 = u_xlat3.y;
        let x_1318 : f32 = u_xlat50;
        let x_1321 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1317 * x_1318) + x_1321);
        let x_1325 : vec2<f32> = u_xlat37;
        let x_1327 : f32 = vs_TEXCOORD4.z;
        txVec27 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec27;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat50 = x_1336;
        let x_1338 : f32 = u_xlat3.z;
        let x_1339 : f32 = u_xlat50;
        let x_1342 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1338 * x_1339) + x_1342);
        let x_1346 : vec4<f32> = u_xlat2;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.x, x_1346.y);
        let x_1349 : f32 = vs_TEXCOORD4.z;
        txVec28 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec28;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat2.x = x_1358;
        let x_1361 : f32 = u_xlat3.w;
        let x_1363 : f32 = u_xlat2.x;
        let x_1366 : f32 = u_xlat34.x;
        u_xlat48 = ((x_1361 * x_1363) + x_1366);
      }
    }
  } else {
    let x_1370 : vec4<f32> = vs_TEXCOORD4;
    let x_1371 : vec2<f32> = vec2<f32>(x_1370.x, x_1370.y);
    let x_1373 : f32 = vs_TEXCOORD4.z;
    txVec29 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
    let x_1380 : vec3<f32> = txVec29;
    let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
    u_xlat48 = x_1382;
  }
  let x_1384 : f32 = x_108.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1384) + 1.0f);
  let x_1388 : f32 = u_xlat48;
  let x_1390 : f32 = x_108.x_MainLightShadowParams.x;
  let x_1393 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1388 * x_1390) + x_1393);
  let x_1396 : f32 = vs_TEXCOORD4.z;
  u_xlatb2 = (0.0f >= x_1396);
  let x_1400 : f32 = vs_TEXCOORD4.z;
  u_xlatb18 = (x_1400 >= 1.0f);
  let x_1402 : bool = u_xlatb18;
  let x_1403 : bool = u_xlatb2;
  u_xlatb2 = (x_1402 | x_1403);
  let x_1405 : bool = u_xlatb2;
  let x_1406 : f32 = u_xlat48;
  u_xlat48 = select(x_1406, 1.0f, x_1405);
  let x_1409 : vec4<f32> = vs_TEXCOORD3;
  let x_1411 : f32 = u_xlat48;
  let x_1414 : vec4<f32> = u_xlat0;
  let x_1416 : vec3<f32> = ((vec3<f32>(x_1409.x, x_1409.y, x_1409.z) * vec3<f32>(x_1411, x_1411, x_1411)) + vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
  let x_1417 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
  let x_1420 : f32 = vs_TEXCOORD3.w;
  let x_1422 : f32 = vs_TEXCOORD3.w;
  u_xlat48 = (x_1420 * -(x_1422));
  let x_1425 : f32 = u_xlat48;
  u_xlat48 = exp2(x_1425);
  let x_1427 : vec4<f32> = u_xlat1;
  let x_1429 : vec4<f32> = u_xlat0;
  let x_1434 : vec4<f32> = x_26.unity_FogColor;
  let x_1437 : vec3<f32> = ((vec3<f32>(x_1427.x, x_1427.y, x_1427.z) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z)) + -(vec3<f32>(x_1434.x, x_1434.y, x_1434.z)));
  let x_1438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
  let x_1442 : f32 = u_xlat48;
  let x_1444 : vec4<f32> = u_xlat0;
  let x_1448 : vec4<f32> = x_26.unity_FogColor;
  let x_1450 : vec3<f32> = ((vec3<f32>(x_1442, x_1442, x_1442) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z)) + vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
  let x_1451 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
  let x_1454 : f32 = u_xlat1.w;
  SV_Target0.w = x_1454;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


