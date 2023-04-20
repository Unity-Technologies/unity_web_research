diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_MatrixInvVP : mat4x4<f32>,
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

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_91 : LightShadows;

var<private> u_xlatb45 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat45 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlatb30 : bool;

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
  var x_1431 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0.x = x_35.x;
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  u_xlat15 = ((x_41 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_49 : vec2<f32> = u_xlat15;
  let x_55 : vec4<f32> = x_27.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_49.y, x_49.y, x_49.y, x_49.y)) * x_55);
  let x_58 : vec4<f32> = x_27.unity_MatrixInvVP[0i];
  let x_59 : vec2<f32> = u_xlat15;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_66 : vec4<f32> = x_27.unity_MatrixInvVP[2i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_27.unity_MatrixInvVP[3i];
  u_xlat0 = (x_72 + x_75);
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec3<f32> = (vec3<f32>(x_78.x, x_78.y, x_78.z) / vec3<f32>(x_80.w, x_80.w, x_80.w));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_85 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][1i];
  let x_95 : vec3<f32> = (vec3<f32>(x_85.y, x_85.y, x_85.y) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][0i];
  let x_101 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : vec3<f32> = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_101.x, x_101.x, x_101.x)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_106.z);
  let x_110 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][2i];
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.z, x_112.z, x_112.z)) + vec3<f32>(x_115.x, x_115.y, x_115.w));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][3i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.x, x_120.y, x_120.z) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_135 : f32 = x_91.x_MainLightShadowParams.y;
  u_xlatb45 = (0.0f < x_135);
  let x_137 : bool = u_xlatb45;
  if (x_137) {
    let x_141 : f32 = x_91.x_MainLightShadowParams.y;
    u_xlatb45 = (x_141 == 1.0f);
    let x_144 : bool = u_xlatb45;
    if (x_144) {
      let x_147 : vec4<f32> = u_xlat0;
      let x_151 : vec4<f32> = x_91.x_MainLightShadowOffset0;
      u_xlat1 = (vec4<f32>(x_147.x, x_147.y, x_147.x, x_147.y) + x_151);
      let x_155 : vec4<f32> = u_xlat1;
      let x_156 : vec2<f32> = vec2<f32>(x_155.x, x_155.y);
      let x_159 : f32 = u_xlat0.z;
      txVec0 = vec3<f32>(x_156.x, x_156.y, x_159);
      let x_172 : vec3<f32> = txVec0;
      let x_174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_172.xy, x_172.z);
      u_xlat2.x = x_174;
      let x_177 : vec4<f32> = u_xlat1;
      let x_178 : vec2<f32> = vec2<f32>(x_177.z, x_177.w);
      let x_180 : f32 = u_xlat0.z;
      txVec1 = vec3<f32>(x_178.x, x_178.y, x_180);
      let x_187 : vec3<f32> = txVec1;
      let x_189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_187.xy, x_187.z);
      u_xlat2.y = x_189;
      let x_191 : vec4<f32> = u_xlat0;
      let x_195 : vec4<f32> = x_91.x_MainLightShadowOffset1;
      u_xlat1 = (vec4<f32>(x_191.x, x_191.y, x_191.x, x_191.y) + x_195);
      let x_198 : vec4<f32> = u_xlat1;
      let x_199 : vec2<f32> = vec2<f32>(x_198.x, x_198.y);
      let x_201 : f32 = u_xlat0.z;
      txVec2 = vec3<f32>(x_199.x, x_199.y, x_201);
      let x_208 : vec3<f32> = txVec2;
      let x_210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_208.xy, x_208.z);
      u_xlat2.z = x_210;
      let x_213 : vec4<f32> = u_xlat1;
      let x_214 : vec2<f32> = vec2<f32>(x_213.z, x_213.w);
      let x_216 : f32 = u_xlat0.z;
      txVec3 = vec3<f32>(x_214.x, x_214.y, x_216);
      let x_223 : vec3<f32> = txVec3;
      let x_225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_223.xy, x_223.z);
      u_xlat2.w = x_225;
      let x_229 : vec4<f32> = u_xlat2;
      u_xlat45 = dot(x_229, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_236 : f32 = x_91.x_MainLightShadowParams.y;
      u_xlatb1 = (x_236 == 2.0f);
      let x_238 : bool = u_xlatb1;
      if (x_238) {
        let x_241 : vec4<f32> = u_xlat0;
        let x_245 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_250 : vec2<f32> = ((vec2<f32>(x_241.x, x_241.y) * vec2<f32>(x_245.z, x_245.w)) + vec2<f32>(0.5f, 0.5f));
        let x_251 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
        let x_253 : vec4<f32> = u_xlat1;
        let x_255 : vec2<f32> = floor(vec2<f32>(x_253.x, x_253.y));
        let x_256 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_255.x, x_255.y, x_256.z, x_256.w);
        let x_259 : vec4<f32> = u_xlat0;
        let x_262 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_265 : vec4<f32> = u_xlat1;
        u_xlat31 = ((vec2<f32>(x_259.x, x_259.y) * vec2<f32>(x_262.z, x_262.w)) + -(vec2<f32>(x_265.x, x_265.y)));
        let x_269 : vec2<f32> = u_xlat31;
        u_xlat2 = (vec4<f32>(x_269.x, x_269.x, x_269.y, x_269.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_274 : vec4<f32> = u_xlat2;
        let x_276 : vec4<f32> = u_xlat2;
        u_xlat3 = (vec4<f32>(x_274.x, x_274.x, x_274.z, x_274.z) * vec4<f32>(x_276.x, x_276.x, x_276.z, x_276.z));
        let x_279 : vec4<f32> = u_xlat3;
        let x_283 : vec2<f32> = (vec2<f32>(x_279.y, x_279.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_284 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_283.x, x_284.y, x_283.y, x_284.w);
        let x_286 : vec4<f32> = u_xlat3;
        let x_289 : vec2<f32> = u_xlat31;
        let x_291 : vec2<f32> = ((vec2<f32>(x_286.x, x_286.z) * vec2<f32>(0.5f, 0.5f)) + -(x_289));
        let x_292 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
        let x_295 : vec2<f32> = u_xlat31;
        u_xlat33 = (-(x_295) + vec2<f32>(1.0f, 1.0f));
        let x_300 : vec2<f32> = u_xlat31;
        let x_302 : vec2<f32> = min(x_300, vec2<f32>(0.0f, 0.0f));
        let x_303 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
        let x_305 : vec4<f32> = u_xlat4;
        let x_308 : vec4<f32> = u_xlat4;
        let x_311 : vec2<f32> = u_xlat33;
        let x_312 : vec2<f32> = ((-(vec2<f32>(x_305.x, x_305.y)) * vec2<f32>(x_308.x, x_308.y)) + x_311);
        let x_313 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_312.x, x_312.y, x_313.z, x_313.w);
        let x_315 : vec2<f32> = u_xlat31;
        u_xlat31 = max(x_315, vec2<f32>(0.0f, 0.0f));
        let x_317 : vec2<f32> = u_xlat31;
        let x_319 : vec2<f32> = u_xlat31;
        let x_321 : vec4<f32> = u_xlat2;
        u_xlat31 = ((-(x_317) * x_319) + vec2<f32>(x_321.y, x_321.w));
        let x_324 : vec4<f32> = u_xlat4;
        let x_326 : vec2<f32> = (vec2<f32>(x_324.x, x_324.y) + vec2<f32>(1.0f, 1.0f));
        let x_327 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_327.z, x_327.w);
        let x_329 : vec2<f32> = u_xlat31;
        u_xlat31 = (x_329 + vec2<f32>(1.0f, 1.0f));
        let x_332 : vec4<f32> = u_xlat3;
        let x_336 : vec2<f32> = (vec2<f32>(x_332.x, x_332.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_337 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
        let x_339 : vec2<f32> = u_xlat33;
        let x_340 : vec2<f32> = (x_339 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_341 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_341.z, x_341.w);
        let x_343 : vec4<f32> = u_xlat4;
        let x_345 : vec2<f32> = (vec2<f32>(x_343.x, x_343.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_346 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
        let x_349 : vec2<f32> = u_xlat31;
        let x_350 : vec2<f32> = (x_349 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_351 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
        let x_353 : vec4<f32> = u_xlat2;
        u_xlat31 = (vec2<f32>(x_353.y, x_353.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_357 : f32 = u_xlat4.x;
        u_xlat5.z = x_357;
        let x_360 : f32 = u_xlat31.x;
        u_xlat5.w = x_360;
        let x_363 : f32 = u_xlat6.x;
        u_xlat3.z = x_363;
        let x_366 : f32 = u_xlat2.x;
        u_xlat3.w = x_366;
        let x_369 : vec4<f32> = u_xlat3;
        let x_371 : vec4<f32> = u_xlat5;
        u_xlat7 = (vec4<f32>(x_369.z, x_369.w, x_369.x, x_369.z) + vec4<f32>(x_371.z, x_371.w, x_371.x, x_371.z));
        let x_375 : f32 = u_xlat5.y;
        u_xlat4.z = x_375;
        let x_378 : f32 = u_xlat31.y;
        u_xlat4.w = x_378;
        let x_381 : f32 = u_xlat3.y;
        u_xlat6.z = x_381;
        let x_384 : f32 = u_xlat2.z;
        u_xlat6.w = x_384;
        let x_386 : vec4<f32> = u_xlat4;
        let x_388 : vec4<f32> = u_xlat6;
        let x_390 : vec3<f32> = (vec3<f32>(x_386.z, x_386.y, x_386.w) + vec3<f32>(x_388.z, x_388.y, x_388.w));
        let x_391 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
        let x_393 : vec4<f32> = u_xlat3;
        let x_395 : vec4<f32> = u_xlat7;
        let x_397 : vec3<f32> = (vec3<f32>(x_393.x, x_393.z, x_393.w) / vec3<f32>(x_395.z, x_395.w, x_395.y));
        let x_398 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
        let x_400 : vec4<f32> = u_xlat3;
        let x_406 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_407 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
        let x_409 : vec4<f32> = u_xlat6;
        let x_411 : vec4<f32> = u_xlat2;
        let x_413 : vec3<f32> = (vec3<f32>(x_409.z, x_409.y, x_409.w) / vec3<f32>(x_411.x, x_411.y, x_411.z));
        let x_414 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
        let x_416 : vec4<f32> = u_xlat4;
        let x_418 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_419 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
        let x_421 : vec4<f32> = u_xlat3;
        let x_424 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_426 : vec3<f32> = (vec3<f32>(x_421.y, x_421.x, x_421.z) * vec3<f32>(x_424.x, x_424.x, x_424.x));
        let x_427 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
        let x_429 : vec4<f32> = u_xlat4;
        let x_432 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_434 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_432.y, x_432.y, x_432.y));
        let x_435 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
        let x_438 : f32 = u_xlat4.x;
        u_xlat3.w = x_438;
        let x_440 : vec4<f32> = u_xlat1;
        let x_443 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_446 : vec4<f32> = u_xlat3;
        u_xlat5 = ((vec4<f32>(x_440.x, x_440.y, x_440.x, x_440.y) * vec4<f32>(x_443.x, x_443.y, x_443.x, x_443.y)) + vec4<f32>(x_446.y, x_446.w, x_446.x, x_446.w));
        let x_449 : vec4<f32> = u_xlat1;
        let x_452 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_455 : vec4<f32> = u_xlat3;
        u_xlat31 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.x, x_452.y)) + vec2<f32>(x_455.z, x_455.w));
        let x_459 : f32 = u_xlat3.y;
        u_xlat4.w = x_459;
        let x_461 : vec4<f32> = u_xlat4;
        let x_462 : vec2<f32> = vec2<f32>(x_461.y, x_461.z);
        let x_463 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_463.x, x_462.x, x_463.z, x_462.y);
        let x_465 : vec4<f32> = u_xlat1;
        let x_468 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_471 : vec4<f32> = u_xlat3;
        u_xlat6 = ((vec4<f32>(x_465.x, x_465.y, x_465.x, x_465.y) * vec4<f32>(x_468.x, x_468.y, x_468.x, x_468.y)) + vec4<f32>(x_471.x, x_471.y, x_471.z, x_471.y));
        let x_474 : vec4<f32> = u_xlat1;
        let x_477 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_480 : vec4<f32> = u_xlat4;
        u_xlat4 = ((vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) * vec4<f32>(x_477.x, x_477.y, x_477.x, x_477.y)) + vec4<f32>(x_480.w, x_480.y, x_480.w, x_480.z));
        let x_483 : vec4<f32> = u_xlat1;
        let x_486 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_489 : vec4<f32> = u_xlat3;
        u_xlat3 = ((vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y) * vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y)) + vec4<f32>(x_489.x, x_489.w, x_489.z, x_489.w));
        let x_493 : vec4<f32> = u_xlat2;
        let x_495 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_493.x, x_493.x, x_493.x, x_493.y) * vec4<f32>(x_495.z, x_495.w, x_495.y, x_495.z));
        let x_499 : vec4<f32> = u_xlat2;
        let x_501 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_499.y, x_499.y, x_499.z, x_499.z) * x_501);
        let x_504 : f32 = u_xlat2.z;
        let x_506 : f32 = u_xlat7.y;
        u_xlat1.x = (x_504 * x_506);
        let x_510 : vec4<f32> = u_xlat5;
        let x_511 : vec2<f32> = vec2<f32>(x_510.x, x_510.y);
        let x_513 : f32 = u_xlat0.z;
        txVec4 = vec3<f32>(x_511.x, x_511.y, x_513);
        let x_521 : vec3<f32> = txVec4;
        let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
        u_xlat16 = x_523;
        let x_525 : vec4<f32> = u_xlat5;
        let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
        let x_528 : f32 = u_xlat0.z;
        txVec5 = vec3<f32>(x_526.x, x_526.y, x_528);
        let x_535 : vec3<f32> = txVec5;
        let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_535.xy, x_535.z);
        u_xlat2.x = x_537;
        let x_540 : f32 = u_xlat2.x;
        let x_542 : f32 = u_xlat8.y;
        u_xlat2.x = (x_540 * x_542);
        let x_546 : f32 = u_xlat8.x;
        let x_547 : f32 = u_xlat16;
        let x_550 : f32 = u_xlat2.x;
        u_xlat16 = ((x_546 * x_547) + x_550);
        let x_553 : vec2<f32> = u_xlat31;
        let x_555 : f32 = u_xlat0.z;
        txVec6 = vec3<f32>(x_553.x, x_553.y, x_555);
        let x_562 : vec3<f32> = txVec6;
        let x_564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_562.xy, x_562.z);
        u_xlat31.x = x_564;
        let x_567 : f32 = u_xlat8.z;
        let x_569 : f32 = u_xlat31.x;
        let x_571 : f32 = u_xlat16;
        u_xlat16 = ((x_567 * x_569) + x_571);
        let x_574 : vec4<f32> = u_xlat4;
        let x_575 : vec2<f32> = vec2<f32>(x_574.x, x_574.y);
        let x_577 : f32 = u_xlat0.z;
        txVec7 = vec3<f32>(x_575.x, x_575.y, x_577);
        let x_584 : vec3<f32> = txVec7;
        let x_586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_584.xy, x_584.z);
        u_xlat31.x = x_586;
        let x_589 : f32 = u_xlat8.w;
        let x_591 : f32 = u_xlat31.x;
        let x_593 : f32 = u_xlat16;
        u_xlat16 = ((x_589 * x_591) + x_593);
        let x_596 : vec4<f32> = u_xlat6;
        let x_597 : vec2<f32> = vec2<f32>(x_596.x, x_596.y);
        let x_599 : f32 = u_xlat0.z;
        txVec8 = vec3<f32>(x_597.x, x_597.y, x_599);
        let x_606 : vec3<f32> = txVec8;
        let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_606.xy, x_606.z);
        u_xlat31.x = x_608;
        let x_611 : f32 = u_xlat9.x;
        let x_613 : f32 = u_xlat31.x;
        let x_615 : f32 = u_xlat16;
        u_xlat16 = ((x_611 * x_613) + x_615);
        let x_618 : vec4<f32> = u_xlat6;
        let x_619 : vec2<f32> = vec2<f32>(x_618.z, x_618.w);
        let x_621 : f32 = u_xlat0.z;
        txVec9 = vec3<f32>(x_619.x, x_619.y, x_621);
        let x_628 : vec3<f32> = txVec9;
        let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_628.xy, x_628.z);
        u_xlat31.x = x_630;
        let x_633 : f32 = u_xlat9.y;
        let x_635 : f32 = u_xlat31.x;
        let x_637 : f32 = u_xlat16;
        u_xlat16 = ((x_633 * x_635) + x_637);
        let x_640 : vec4<f32> = u_xlat4;
        let x_641 : vec2<f32> = vec2<f32>(x_640.z, x_640.w);
        let x_643 : f32 = u_xlat0.z;
        txVec10 = vec3<f32>(x_641.x, x_641.y, x_643);
        let x_650 : vec3<f32> = txVec10;
        let x_652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_650.xy, x_650.z);
        u_xlat31.x = x_652;
        let x_655 : f32 = u_xlat9.z;
        let x_657 : f32 = u_xlat31.x;
        let x_659 : f32 = u_xlat16;
        u_xlat16 = ((x_655 * x_657) + x_659);
        let x_662 : vec4<f32> = u_xlat3;
        let x_663 : vec2<f32> = vec2<f32>(x_662.x, x_662.y);
        let x_665 : f32 = u_xlat0.z;
        txVec11 = vec3<f32>(x_663.x, x_663.y, x_665);
        let x_672 : vec3<f32> = txVec11;
        let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_672.xy, x_672.z);
        u_xlat31.x = x_674;
        let x_677 : f32 = u_xlat9.w;
        let x_679 : f32 = u_xlat31.x;
        let x_681 : f32 = u_xlat16;
        u_xlat16 = ((x_677 * x_679) + x_681);
        let x_684 : vec4<f32> = u_xlat3;
        let x_685 : vec2<f32> = vec2<f32>(x_684.z, x_684.w);
        let x_687 : f32 = u_xlat0.z;
        txVec12 = vec3<f32>(x_685.x, x_685.y, x_687);
        let x_694 : vec3<f32> = txVec12;
        let x_696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_694.xy, x_694.z);
        u_xlat31.x = x_696;
        let x_699 : f32 = u_xlat1.x;
        let x_701 : f32 = u_xlat31.x;
        let x_703 : f32 = u_xlat16;
        u_xlat45 = ((x_699 * x_701) + x_703);
      } else {
        let x_706 : vec4<f32> = u_xlat0;
        let x_709 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_712 : vec2<f32> = ((vec2<f32>(x_706.x, x_706.y) * vec2<f32>(x_709.z, x_709.w)) + vec2<f32>(0.5f, 0.5f));
        let x_713 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat1;
        let x_717 : vec2<f32> = floor(vec2<f32>(x_715.x, x_715.y));
        let x_718 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat0;
        let x_723 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_726 : vec4<f32> = u_xlat1;
        u_xlat31 = ((vec2<f32>(x_720.x, x_720.y) * vec2<f32>(x_723.z, x_723.w)) + -(vec2<f32>(x_726.x, x_726.y)));
        let x_730 : vec2<f32> = u_xlat31;
        u_xlat2 = (vec4<f32>(x_730.x, x_730.x, x_730.y, x_730.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_733 : vec4<f32> = u_xlat2;
        let x_735 : vec4<f32> = u_xlat2;
        u_xlat3 = (vec4<f32>(x_733.x, x_733.x, x_733.z, x_733.z) * vec4<f32>(x_735.x, x_735.x, x_735.z, x_735.z));
        let x_738 : vec4<f32> = u_xlat3;
        let x_742 : vec2<f32> = (vec2<f32>(x_738.y, x_738.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_743 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_743.x, x_742.x, x_743.z, x_742.y);
        let x_745 : vec4<f32> = u_xlat3;
        let x_748 : vec2<f32> = u_xlat31;
        let x_750 : vec2<f32> = ((vec2<f32>(x_745.x, x_745.z) * vec2<f32>(0.5f, 0.5f)) + -(x_748));
        let x_751 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_750.x, x_751.y, x_750.y, x_751.w);
        let x_753 : vec2<f32> = u_xlat31;
        let x_755 : vec2<f32> = (-(x_753) + vec2<f32>(1.0f, 1.0f));
        let x_756 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_758 : vec2<f32> = u_xlat31;
        u_xlat33 = min(x_758, vec2<f32>(0.0f, 0.0f));
        let x_760 : vec2<f32> = u_xlat33;
        let x_762 : vec2<f32> = u_xlat33;
        let x_764 : vec4<f32> = u_xlat3;
        let x_766 : vec2<f32> = ((-(x_760) * x_762) + vec2<f32>(x_764.x, x_764.y));
        let x_767 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_769 : vec2<f32> = u_xlat31;
        u_xlat33 = max(x_769, vec2<f32>(0.0f, 0.0f));
        let x_773 : vec2<f32> = u_xlat33;
        let x_775 : vec2<f32> = u_xlat33;
        let x_777 : vec4<f32> = u_xlat2;
        let x_779 : vec2<f32> = ((-(x_773) * x_775) + vec2<f32>(x_777.y, x_777.w));
        let x_780 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_779.x, x_780.y, x_779.y);
        let x_782 : vec4<f32> = u_xlat3;
        let x_784 : vec2<f32> = (vec2<f32>(x_782.x, x_782.y) + vec2<f32>(2.0f, 2.0f));
        let x_785 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec3<f32> = u_xlat17;
        let x_789 : vec2<f32> = (vec2<f32>(x_787.x, x_787.z) + vec2<f32>(2.0f, 2.0f));
        let x_790 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_790.x, x_789.x, x_790.z, x_789.y);
        let x_793 : f32 = u_xlat2.y;
        u_xlat5.z = (x_793 * 0.08163200318813323975f);
        let x_797 : vec4<f32> = u_xlat2;
        let x_800 : vec3<f32> = (vec3<f32>(x_797.z, x_797.x, x_797.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_801 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat3;
        let x_806 : vec2<f32> = (vec2<f32>(x_803.x, x_803.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_807 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_810 : f32 = u_xlat6.y;
        u_xlat5.x = x_810;
        let x_812 : vec2<f32> = u_xlat31;
        let x_819 : vec2<f32> = ((vec2<f32>(x_812.x, x_812.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_820 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_820.x, x_819.x, x_820.z, x_819.y);
        let x_822 : vec2<f32> = u_xlat31;
        let x_826 : vec2<f32> = ((vec2<f32>(x_822.x, x_822.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_827 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_826.x, x_827.y, x_826.y, x_827.w);
        let x_830 : f32 = u_xlat2.x;
        u_xlat3.y = x_830;
        let x_833 : f32 = u_xlat4.y;
        u_xlat3.w = x_833;
        let x_835 : vec4<f32> = u_xlat3;
        let x_836 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_835 + x_836);
        let x_838 : vec2<f32> = u_xlat31;
        let x_841 : vec2<f32> = ((vec2<f32>(x_838.y, x_838.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_842 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_842.x, x_841.x, x_842.z, x_841.y);
        let x_844 : vec2<f32> = u_xlat31;
        let x_847 : vec2<f32> = ((vec2<f32>(x_844.y, x_844.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_848 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_847.x, x_848.y, x_847.y, x_848.w);
        let x_851 : f32 = u_xlat2.y;
        u_xlat4.y = x_851;
        let x_853 : vec4<f32> = u_xlat4;
        let x_854 : vec4<f32> = u_xlat6;
        u_xlat2 = (x_853 + x_854);
        let x_856 : vec4<f32> = u_xlat3;
        let x_857 : vec4<f32> = u_xlat5;
        u_xlat3 = (x_856 / x_857);
        let x_859 : vec4<f32> = u_xlat3;
        u_xlat3 = (x_859 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_865 : vec4<f32> = u_xlat4;
        let x_866 : vec4<f32> = u_xlat2;
        u_xlat4 = (x_865 / x_866);
        let x_868 : vec4<f32> = u_xlat4;
        u_xlat4 = (x_868 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_870 : vec4<f32> = u_xlat3;
        let x_873 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat3 = (vec4<f32>(x_870.w, x_870.x, x_870.y, x_870.z) * vec4<f32>(x_873.x, x_873.x, x_873.x, x_873.x));
        let x_876 : vec4<f32> = u_xlat4;
        let x_879 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat4 = (vec4<f32>(x_876.x, x_876.w, x_876.y, x_876.z) * vec4<f32>(x_879.y, x_879.y, x_879.y, x_879.y));
        let x_882 : vec4<f32> = u_xlat3;
        let x_883 : vec3<f32> = vec3<f32>(x_882.y, x_882.z, x_882.w);
        let x_884 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_883.x, x_884.y, x_883.y, x_883.z);
        let x_887 : f32 = u_xlat4.x;
        u_xlat6.y = x_887;
        let x_889 : vec4<f32> = u_xlat1;
        let x_892 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_895 : vec4<f32> = u_xlat6;
        u_xlat7 = ((vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y) * vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y)) + vec4<f32>(x_895.x, x_895.y, x_895.z, x_895.y));
        let x_898 : vec4<f32> = u_xlat1;
        let x_901 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_904 : vec4<f32> = u_xlat6;
        u_xlat31 = ((vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_901.x, x_901.y)) + vec2<f32>(x_904.w, x_904.y));
        let x_908 : f32 = u_xlat6.y;
        u_xlat3.y = x_908;
        let x_911 : f32 = u_xlat4.z;
        u_xlat6.y = x_911;
        let x_913 : vec4<f32> = u_xlat1;
        let x_916 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_919 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y) * vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y)) + vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.y));
        let x_922 : vec4<f32> = u_xlat1;
        let x_925 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_928 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_925.x, x_925.y)) + vec2<f32>(x_928.w, x_928.y));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_934 : f32 = u_xlat6.y;
        u_xlat3.z = x_934;
        let x_937 : vec4<f32> = u_xlat1;
        let x_940 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_943 : vec4<f32> = u_xlat3;
        u_xlat10 = ((vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y) * vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.y)) + vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.z));
        let x_947 : f32 = u_xlat4.w;
        u_xlat6.y = x_947;
        let x_950 : vec4<f32> = u_xlat1;
        let x_953 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_956 : vec4<f32> = u_xlat6;
        u_xlat11 = ((vec4<f32>(x_950.x, x_950.y, x_950.x, x_950.y) * vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y)) + vec4<f32>(x_956.x, x_956.y, x_956.z, x_956.y));
        let x_960 : vec4<f32> = u_xlat1;
        let x_963 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat6;
        u_xlat18 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.x, x_963.y)) + vec2<f32>(x_966.w, x_966.y));
        let x_970 : f32 = u_xlat6.y;
        u_xlat3.w = x_970;
        let x_973 : vec4<f32> = u_xlat1;
        let x_976 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat3;
        u_xlat39 = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_976.x, x_976.y)) + vec2<f32>(x_979.x, x_979.w));
        let x_982 : vec4<f32> = u_xlat6;
        let x_983 : vec3<f32> = vec3<f32>(x_982.x, x_982.z, x_982.w);
        let x_984 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_983.x, x_984.y, x_983.y, x_983.z);
        let x_986 : vec4<f32> = u_xlat1;
        let x_989 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_992 : vec4<f32> = u_xlat4;
        u_xlat6 = ((vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y) * vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y)) + vec4<f32>(x_992.x, x_992.y, x_992.z, x_992.y));
        let x_996 : vec4<f32> = u_xlat1;
        let x_999 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1002 : vec4<f32> = u_xlat4;
        u_xlat34 = ((vec2<f32>(x_996.x, x_996.y) * vec2<f32>(x_999.x, x_999.y)) + vec2<f32>(x_1002.w, x_1002.y));
        let x_1006 : f32 = u_xlat3.x;
        u_xlat4.x = x_1006;
        let x_1008 : vec4<f32> = u_xlat1;
        let x_1011 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat4;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.x, x_1011.y)) + vec2<f32>(x_1014.x, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1020 : vec4<f32> = u_xlat2;
        let x_1022 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_1020.x, x_1020.x, x_1020.x, x_1020.x) * x_1022);
        let x_1025 : vec4<f32> = u_xlat2;
        let x_1027 : vec4<f32> = u_xlat5;
        u_xlat13 = (vec4<f32>(x_1025.y, x_1025.y, x_1025.y, x_1025.y) * x_1027);
        let x_1030 : vec4<f32> = u_xlat2;
        let x_1032 : vec4<f32> = u_xlat5;
        u_xlat14 = (vec4<f32>(x_1030.z, x_1030.z, x_1030.z, x_1030.z) * x_1032);
        let x_1034 : vec4<f32> = u_xlat2;
        let x_1036 : vec4<f32> = u_xlat5;
        u_xlat2 = (vec4<f32>(x_1034.w, x_1034.w, x_1034.w, x_1034.w) * x_1036);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.x, x_1039.y);
        let x_1042 : f32 = u_xlat0.z;
        txVec13 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec13;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
        u_xlat3.x = x_1051;
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1055 : vec2<f32> = vec2<f32>(x_1054.z, x_1054.w);
        let x_1057 : f32 = u_xlat0.z;
        txVec14 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
        let x_1065 : vec3<f32> = txVec14;
        let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
        u_xlat48 = x_1067;
        let x_1068 : f32 = u_xlat48;
        let x_1070 : f32 = u_xlat12.y;
        u_xlat48 = (x_1068 * x_1070);
        let x_1073 : f32 = u_xlat12.x;
        let x_1075 : f32 = u_xlat3.x;
        let x_1077 : f32 = u_xlat48;
        u_xlat3.x = ((x_1073 * x_1075) + x_1077);
        let x_1081 : vec2<f32> = u_xlat31;
        let x_1083 : f32 = u_xlat0.z;
        txVec15 = vec3<f32>(x_1081.x, x_1081.y, x_1083);
        let x_1090 : vec3<f32> = txVec15;
        let x_1092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1090.xy, x_1090.z);
        u_xlat31.x = x_1092;
        let x_1095 : f32 = u_xlat12.z;
        let x_1097 : f32 = u_xlat31.x;
        let x_1100 : f32 = u_xlat3.x;
        u_xlat31.x = ((x_1095 * x_1097) + x_1100);
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.x, x_1104.y);
        let x_1107 : f32 = u_xlat0.z;
        txVec16 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1115 : vec3<f32> = txVec16;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat46 = x_1117;
        let x_1119 : f32 = u_xlat12.w;
        let x_1120 : f32 = u_xlat46;
        let x_1123 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1119 * x_1120) + x_1123);
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1128 : vec2<f32> = vec2<f32>(x_1127.x, x_1127.y);
        let x_1130 : f32 = u_xlat0.z;
        txVec17 = vec3<f32>(x_1128.x, x_1128.y, x_1130);
        let x_1137 : vec3<f32> = txVec17;
        let x_1139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1137.xy, x_1137.z);
        u_xlat46 = x_1139;
        let x_1141 : f32 = u_xlat13.x;
        let x_1142 : f32 = u_xlat46;
        let x_1145 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1141 * x_1142) + x_1145);
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1150 : vec2<f32> = vec2<f32>(x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat0.z;
        txVec18 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1159 : vec3<f32> = txVec18;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
        u_xlat46 = x_1161;
        let x_1163 : f32 = u_xlat13.y;
        let x_1164 : f32 = u_xlat46;
        let x_1167 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1163 * x_1164) + x_1167);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1172 : vec2<f32> = vec2<f32>(x_1171.x, x_1171.y);
        let x_1174 : f32 = u_xlat0.z;
        txVec19 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec19;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat46 = x_1183;
        let x_1185 : f32 = u_xlat13.z;
        let x_1186 : f32 = u_xlat46;
        let x_1189 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1185 * x_1186) + x_1189);
        let x_1193 : vec4<f32> = u_xlat10;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.z, x_1193.w);
        let x_1196 : f32 = u_xlat0.z;
        txVec20 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec20;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat46 = x_1205;
        let x_1207 : f32 = u_xlat13.w;
        let x_1208 : f32 = u_xlat46;
        let x_1211 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1207 * x_1208) + x_1211);
        let x_1215 : vec4<f32> = u_xlat11;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
        let x_1218 : f32 = u_xlat0.z;
        txVec21 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec21;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat46 = x_1227;
        let x_1229 : f32 = u_xlat14.x;
        let x_1230 : f32 = u_xlat46;
        let x_1233 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1229 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = u_xlat0.z;
        txVec22 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec22;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat46 = x_1249;
        let x_1251 : f32 = u_xlat14.y;
        let x_1252 : f32 = u_xlat46;
        let x_1255 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1251 * x_1252) + x_1255);
        let x_1259 : vec2<f32> = u_xlat18;
        let x_1261 : f32 = u_xlat0.z;
        txVec23 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec23;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat46 = x_1270;
        let x_1272 : f32 = u_xlat14.z;
        let x_1273 : f32 = u_xlat46;
        let x_1276 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1272 * x_1273) + x_1276);
        let x_1280 : vec2<f32> = u_xlat39;
        let x_1282 : f32 = u_xlat0.z;
        txVec24 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec24;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1289.xy, x_1289.z);
        u_xlat46 = x_1291;
        let x_1293 : f32 = u_xlat14.w;
        let x_1294 : f32 = u_xlat46;
        let x_1297 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1293 * x_1294) + x_1297);
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.x, x_1301.y);
        let x_1304 : f32 = u_xlat0.z;
        txVec25 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec25;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat46 = x_1313;
        let x_1315 : f32 = u_xlat2.x;
        let x_1316 : f32 = u_xlat46;
        let x_1319 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec4<f32> = u_xlat6;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = u_xlat0.z;
        txVec26 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec26;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat46 = x_1335;
        let x_1337 : f32 = u_xlat2.y;
        let x_1338 : f32 = u_xlat46;
        let x_1341 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1337 * x_1338) + x_1341);
        let x_1345 : vec2<f32> = u_xlat34;
        let x_1347 : f32 = u_xlat0.z;
        txVec27 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec27;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat46 = x_1356;
        let x_1358 : f32 = u_xlat2.z;
        let x_1359 : f32 = u_xlat46;
        let x_1362 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1358 * x_1359) + x_1362);
        let x_1366 : vec4<f32> = u_xlat1;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = u_xlat0.z;
        txVec28 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec28;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat1.x = x_1378;
        let x_1381 : f32 = u_xlat2.w;
        let x_1383 : f32 = u_xlat1.x;
        let x_1386 : f32 = u_xlat31.x;
        u_xlat45 = ((x_1381 * x_1383) + x_1386);
      }
    }
  } else {
    let x_1390 : vec4<f32> = u_xlat0;
    let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
    let x_1393 : f32 = u_xlat0.z;
    txVec29 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
    let x_1400 : vec3<f32> = txVec29;
    let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
    u_xlat45 = x_1402;
  }
  let x_1404 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat0.x = (-(x_1404) + 1.0f);
  let x_1408 : f32 = u_xlat45;
  let x_1410 : f32 = x_91.x_MainLightShadowParams.x;
  let x_1413 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1408 * x_1410) + x_1413);
  let x_1418 : f32 = u_xlat0.z;
  u_xlatb15 = (0.0f >= x_1418);
  let x_1422 : f32 = u_xlat0.z;
  u_xlatb30 = (x_1422 >= 1.0f);
  let x_1424 : bool = u_xlatb30;
  let x_1425 : bool = u_xlatb15;
  u_xlatb15 = (x_1424 | x_1425);
  let x_1429 : bool = u_xlatb15;
  if (x_1429) {
    x_1431 = vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f);
  } else {
    let x_1436 : vec4<f32> = u_xlat0;
    x_1431 = vec4<f32>(x_1436.x, x_1436.x, x_1436.x, x_1436.x);
  }
  let x_1438 : vec4<f32> = x_1431;
  SV_Target0 = x_1438;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


