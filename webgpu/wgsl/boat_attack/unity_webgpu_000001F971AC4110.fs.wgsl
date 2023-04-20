diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_ScreenSize : vec4<f32>,
  /* @offset(48) */
  x_BloomTexture_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_LensFlareScreenSpaceParams1 : vec4<f32>,
  /* @offset(80) */
  x_LensFlareScreenSpaceParams2 : vec4<f32>,
  /* @offset(96) */
  x_LensFlareScreenSpaceParams3 : vec4<f32>,
  /* @offset(112) */
  x_LensFlareScreenSpaceParams4 : vec4<f32>,
  /* @offset(128) */
  x_LensFlareScreenSpaceParams5 : vec4<f32>,
  /* @offset(144) */
  x_LensFlareScreenSpaceTintColor : vec3<f32>,
}

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_LensFlareScreenSpaceStreakTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> u_xlatb36 : bool;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb14 : vec3<bool>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlati41 : i32;

var<private> u_xlat42 : f32;

var<private> u_xlatb43 : bool;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat33 : vec2<f32>;

@group(0) @binding(1) var x_BloomTexture : texture_2d<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlatb44 : bool;

var<private> u_xlatb45 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlatb21 : vec2<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_407 : vec2<f32>;
  var x_534 : vec2<f32>;
  var x_707 : f32;
  var x_748 : f32;
  var x_765 : f32;
  var x_815 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_16.x_LensFlareScreenSpaceParams4.x;
  u_xlatb0 = (0.0f < x_23);
  let x_25 : bool = u_xlatb0;
  if (x_25) {
    let x_31 : f32 = x_16.x_LensFlareScreenSpaceParams3.z;
    u_xlatb0 = (0.0f < x_31);
    let x_33 : bool = u_xlatb0;
    if (x_33) {
      let x_40 : vec2<f32> = vs_TEXCOORD0;
      u_xlat0 = ((vec4<f32>(x_40.x, x_40.y, x_40.x, x_40.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
      let x_49 : vec4<f32> = u_xlat0;
      let x_51 : vec4<f32> = u_xlat0;
      u_xlat1.x = dot(vec2<f32>(x_49.z, x_49.w), vec2<f32>(x_51.z, x_51.w));
      let x_56 : vec4<f32> = u_xlat0;
      let x_57 : vec4<f32> = u_xlat1;
      u_xlat0 = (x_56 * vec4<f32>(x_57.x, x_57.x, x_57.x, x_57.x));
      let x_60 : vec4<f32> = u_xlat0;
      let x_63 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams3;
      u_xlat0 = (x_60 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z));
      let x_68 : vec4<f32> = x_16.x_ScreenSize;
      u_xlat1 = ((-(vec4<f32>(x_68.z, x_68.w, x_68.z, x_68.w)) * vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
      let x_78 : vec4<f32> = u_xlat1;
      let x_80 : vec2<f32> = vs_TEXCOORD0;
      let x_81 : vec2<f32> = min(vec2<f32>(x_78.z, x_78.w), x_80);
      let x_82 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_82.w);
      let x_84 : vec4<f32> = u_xlat2;
      let x_88 : vec4<f32> = x_16.x_RTHandleScale;
      let x_90 : vec2<f32> = (vec2<f32>(x_84.x, x_84.y) * vec2<f32>(x_88.x, x_88.y));
      let x_91 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
      let x_103 : vec4<f32> = u_xlat2;
      let x_107 : f32 = x_16.x_GlobalMipBias.x;
      let x_108 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_103.x, x_103.y), x_107);
      u_xlat2.x = x_108.x;
      let x_111 : vec4<f32> = u_xlat0;
      let x_116 : vec2<f32> = vs_TEXCOORD0;
      u_xlat0 = ((x_111 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_116.x, x_116.y, x_116.x, x_116.y));
      let x_119 : vec4<f32> = u_xlat1;
      let x_120 : vec4<f32> = u_xlat0;
      u_xlat0 = min(x_119, x_120);
      let x_122 : vec4<f32> = u_xlat0;
      let x_124 : vec4<f32> = x_16.x_RTHandleScale;
      u_xlat0 = (x_122 * vec4<f32>(x_124.x, x_124.y, x_124.x, x_124.y));
      let x_130 : vec4<f32> = u_xlat0;
      let x_133 : f32 = x_16.x_GlobalMipBias.x;
      let x_134 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_130.x, x_130.y), x_133);
      u_xlat2.y = x_134.y;
      let x_141 : vec4<f32> = u_xlat0;
      let x_144 : f32 = x_16.x_GlobalMipBias.x;
      let x_145 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_141.z, x_141.w), x_144);
      u_xlat2.z = x_145.z;
    } else {
      let x_150 : vec4<f32> = x_16.x_ScreenSize;
      let x_156 : vec2<f32> = ((-(vec2<f32>(x_150.z, x_150.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
      let x_157 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
      let x_159 : vec4<f32> = u_xlat0;
      let x_161 : vec2<f32> = vs_TEXCOORD0;
      let x_162 : vec2<f32> = min(vec2<f32>(x_159.x, x_159.y), x_161);
      let x_163 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_163.z, x_163.w);
      let x_165 : vec4<f32> = u_xlat0;
      let x_168 : vec4<f32> = x_16.x_RTHandleScale;
      let x_170 : vec2<f32> = (vec2<f32>(x_165.x, x_165.y) * vec2<f32>(x_168.x, x_168.y));
      let x_171 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
      let x_176 : vec4<f32> = u_xlat0;
      let x_179 : f32 = x_16.x_GlobalMipBias.x;
      let x_180 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_176.x, x_176.y), x_179);
      let x_181 : vec3<f32> = vec3<f32>(x_180.x, x_180.y, x_180.z);
      let x_182 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    }
    let x_184 : vec4<f32> = u_xlat2;
    let x_188 : f32 = x_16.x_LensFlareScreenSpaceTintColor.x;
    let x_190 : f32 = x_16.x_LensFlareScreenSpaceTintColor.y;
    let x_192 : f32 = x_16.x_LensFlareScreenSpaceTintColor.z;
    let x_194 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_188, x_190, x_192));
    let x_195 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat0;
    let x_200 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams4;
    let x_202 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_200.x, x_200.x, x_200.x));
    let x_203 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  } else {
    u_xlat0.x = 0.0f;
    u_xlat0.y = 0.0f;
    u_xlat0.z = 0.0f;
  }
  let x_212 : f32 = x_16.x_LensFlareScreenSpaceParams1.x;
  u_xlatb36 = (0.0f < x_212);
  let x_214 : bool = u_xlatb36;
  if (x_214) {
    let x_217 : vec2<f32> = vs_TEXCOORD0;
    let x_220 : vec2<f32> = (x_217 + vec2<f32>(-0.5f, -0.5f));
    let x_221 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
    let x_223 : vec2<f32> = vs_TEXCOORD0;
    u_xlat2 = ((vec4<f32>(x_223.x, x_223.y, x_223.x, x_223.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
    let x_229 : vec4<f32> = u_xlat2;
    u_xlat25 = max(abs(vec2<f32>(x_229.x, x_229.y)), vec2<f32>(0.00000005960464477539f, 0.00000005960464477539f));
    let x_235 : vec2<f32> = u_xlat25;
    let x_236 : vec2<f32> = u_xlat25;
    u_xlat25 = (x_235 * x_236);
    let x_238 : vec2<f32> = u_xlat25;
    u_xlat25 = min(x_238, vec2<f32>(1.0f, 1.0f));
    let x_242 : f32 = u_xlat25.y;
    let x_244 : f32 = u_xlat25.x;
    u_xlat36 = (x_242 + x_244);
    let x_246 : f32 = u_xlat36;
    u_xlat36 = max(x_246, 0.00000005960464477539f);
    let x_248 : f32 = u_xlat36;
    let x_249 : f32 = u_xlat36;
    u_xlat36 = (x_248 * x_249);
    let x_251 : f32 = u_xlat36;
    u_xlat36 = min(x_251, 1.0f);
    let x_253 : f32 = u_xlat36;
    u_xlat36 = (x_253 + -1.0f);
    let x_257 : f32 = x_16.x_LensFlareScreenSpaceParams2.x;
    let x_258 : f32 = u_xlat36;
    u_xlat36 = ((x_257 * x_258) + 1.0f);
    let x_263 : f32 = x_16.x_LensFlareScreenSpaceParams3.y;
    u_xlat37 = max(abs(x_263), 0.00000005960464477539f);
    let x_266 : f32 = u_xlat37;
    u_xlat37 = log2(x_266);
    let x_270 : f32 = x_16.x_LensFlareScreenSpaceParams3.z;
    u_xlatb2 = (0.0f < x_270);
    let x_273 : vec4<f32> = u_xlat2;
    let x_275 : vec4<f32> = u_xlat2;
    u_xlat14 = dot(vec2<f32>(x_273.z, x_273.w), vec2<f32>(x_275.z, x_275.w));
    let x_279 : f32 = u_xlat14;
    let x_281 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec4<f32>(x_279, x_279, x_279, x_279) * vec4<f32>(x_281.z, x_281.w, x_281.z, x_281.w));
    let x_284 : vec4<f32> = u_xlat3;
    let x_286 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams3;
    u_xlat3 = (x_284 * vec4<f32>(x_286.z, x_286.z, x_286.z, x_286.z));
    let x_294 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams1;
    let x_297 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_294.z, x_294.y, x_294.w, x_294.w));
    u_xlatb14 = vec3<bool>(x_297.x, x_297.y, x_297.z);
    let x_302 : vec4<f32> = x_16.x_BloomTexture_TexelSize;
    u_xlat4 = ((-(vec2<f32>(x_302.x, x_302.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
    let x_309 : vec4<f32> = x_16.x_ScreenSize;
    u_xlat28 = ((-(vec2<f32>(x_309.z, x_309.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
    let x_317 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams1;
    u_xlat5 = (vec3<f32>(x_317.z, x_317.y, x_317.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f));
    u_xlat6.x = 0.0f;
    u_xlat6.y = 0.0f;
    u_xlat6.z = 0.0f;
    u_xlat7.x = 0.0f;
    u_xlat7.y = 0.0f;
    u_xlat7.z = 0.0f;
    u_xlat8.x = 0.0f;
    u_xlat8.y = 0.0f;
    u_xlat8.z = 0.0f;
    u_xlati41 = 0i;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_343 : i32 = u_xlati41;
      u_xlat42 = f32(x_343);
      let x_346 : f32 = u_xlat42;
      let x_348 : f32 = x_16.x_LensFlareScreenSpaceParams3.x;
      u_xlatb43 = (x_346 >= x_348);
      let x_350 : bool = u_xlatb43;
      if (x_350) {
        break;
      }
      let x_355 : f32 = u_xlat42;
      let x_357 : f32 = x_16.x_LensFlareScreenSpaceParams2.y;
      u_xlat43 = (x_355 + x_357);
      let x_359 : f32 = u_xlat43;
      u_xlat43 = max(abs(x_359), 0.00000005960464477539f);
      let x_362 : f32 = u_xlat43;
      u_xlat43 = log2(x_362);
      let x_364 : f32 = u_xlat43;
      let x_366 : f32 = x_16.x_LensFlareScreenSpaceParams2.z;
      u_xlat43 = (x_364 * x_366);
      let x_368 : f32 = u_xlat43;
      u_xlat43 = exp2(x_368);
      let x_370 : f32 = u_xlat37;
      let x_371 : f32 = u_xlat42;
      u_xlat42 = (x_370 * x_371);
      let x_373 : f32 = u_xlat42;
      u_xlat42 = exp2(x_373);
      let x_376 : bool = u_xlatb14.x;
      if (x_376) {
        let x_381 : f32 = u_xlat5.x;
        let x_382 : f32 = u_xlat42;
        u_xlat44 = (x_381 * x_382);
        let x_385 : f32 = u_xlat43;
        u_xlatb9 = (-(x_385) < 0.0f);
        let x_389 : f32 = u_xlat43;
        u_xlat21.x = (1.0f / x_389);
        let x_392 : vec4<f32> = u_xlat1;
        let x_394 : vec2<f32> = u_xlat21;
        u_xlat21 = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_394.x, x_394.x)) + vec2<f32>(0.5f, 0.5f));
        let x_399 : vec2<f32> = u_xlat21;
        let x_401 : vec2<f32> = (-(x_399) + vec2<f32>(1.0f, 1.0f));
        let x_402 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_401.x, x_401.y, x_402.z);
        let x_405 : bool = u_xlatb9;
        if (x_405) {
          let x_410 : vec3<f32> = u_xlat10;
          x_407 = vec2<f32>(x_410.x, x_410.y);
        } else {
          let x_413 : vec2<f32> = u_xlat21;
          x_407 = x_413;
        }
        let x_414 : vec2<f32> = x_407;
        let x_415 : vec3<f32> = u_xlat9;
        u_xlat9 = vec3<f32>(x_414.x, x_414.y, x_415.z);
        let x_417 : bool = u_xlatb2;
        if (x_417) {
          let x_421 : vec2<f32> = u_xlat4;
          let x_422 : vec3<f32> = u_xlat9;
          u_xlat33 = min(x_421, vec2<f32>(x_422.x, x_422.y));
          let x_425 : vec2<f32> = u_xlat33;
          let x_427 : vec4<f32> = x_16.x_RTHandleScale;
          u_xlat33 = (x_425 * vec2<f32>(x_427.x, x_427.y));
          let x_434 : vec2<f32> = u_xlat33;
          let x_436 : f32 = x_16.x_GlobalMipBias.x;
          let x_437 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, x_434, x_436);
          u_xlat10.x = x_437.x;
          let x_441 : vec4<f32> = u_xlat3;
          let x_443 : vec3<f32> = u_xlat9;
          u_xlat11 = ((x_441 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_443.x, x_443.y, x_443.x, x_443.y));
          let x_446 : vec2<f32> = u_xlat4;
          let x_448 : vec4<f32> = u_xlat11;
          u_xlat11 = min(vec4<f32>(x_446.x, x_446.y, x_446.x, x_446.y), x_448);
          let x_450 : vec4<f32> = u_xlat11;
          let x_452 : vec4<f32> = x_16.x_RTHandleScale;
          u_xlat11 = (x_450 * vec4<f32>(x_452.x, x_452.y, x_452.x, x_452.y));
          let x_458 : vec4<f32> = u_xlat11;
          let x_461 : f32 = x_16.x_GlobalMipBias.x;
          let x_462 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_458.x, x_458.y), x_461);
          u_xlat10.y = x_462.y;
          let x_468 : vec4<f32> = u_xlat11;
          let x_471 : f32 = x_16.x_GlobalMipBias.x;
          let x_472 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_468.z, x_468.w), x_471);
          u_xlat10.z = x_472.z;
        } else {
          let x_476 : vec2<f32> = u_xlat28;
          let x_477 : vec3<f32> = u_xlat9;
          let x_479 : vec2<f32> = min(x_476, vec2<f32>(x_477.x, x_477.y));
          let x_480 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_479.x, x_479.y, x_480.z);
          let x_482 : vec3<f32> = u_xlat9;
          let x_485 : vec4<f32> = x_16.x_RTHandleScale;
          let x_487 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) * vec2<f32>(x_485.x, x_485.y));
          let x_488 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_487.x, x_487.y, x_488.z);
          let x_493 : vec3<f32> = u_xlat9;
          let x_496 : f32 = x_16.x_GlobalMipBias.x;
          let x_497 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_493.x, x_493.y), x_496);
          u_xlat10 = vec3<f32>(x_497.x, x_497.y, x_497.z);
        }
        let x_499 : vec3<f32> = u_xlat10;
        let x_501 : f32 = x_16.x_LensFlareScreenSpaceTintColor.x;
        let x_503 : f32 = x_16.x_LensFlareScreenSpaceTintColor.y;
        let x_505 : f32 = x_16.x_LensFlareScreenSpaceTintColor.z;
        u_xlat9 = (x_499 * vec3<f32>(x_501, x_503, x_505));
        let x_508 : vec3<f32> = u_xlat9;
        let x_509 : f32 = u_xlat44;
        let x_512 : vec3<f32> = u_xlat6;
        u_xlat6 = ((x_508 * vec3<f32>(x_509, x_509, x_509)) + x_512);
      }
      let x_515 : bool = u_xlatb14.y;
      if (x_515) {
        let x_519 : f32 = u_xlat5.y;
        let x_520 : f32 = u_xlat42;
        u_xlat44 = (x_519 * x_520);
        let x_522 : f32 = u_xlat43;
        u_xlatb9 = !((x_522 == 1.0f));
        let x_524 : f32 = u_xlat43;
        u_xlat21.x = (1.0f / x_524);
        let x_527 : vec4<f32> = u_xlat1;
        let x_529 : vec2<f32> = u_xlat21;
        u_xlat21 = ((vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_529.x, x_529.x)) + vec2<f32>(0.5f, 0.5f));
        let x_533 : bool = u_xlatb9;
        if (x_533) {
          let x_537 : vec2<f32> = u_xlat21;
          x_534 = x_537;
        } else {
          let x_539 : vec2<f32> = vs_TEXCOORD0;
          x_534 = x_539;
        }
        let x_540 : vec2<f32> = x_534;
        let x_541 : vec3<f32> = u_xlat9;
        u_xlat9 = vec3<f32>(x_540.x, x_540.y, x_541.z);
        let x_543 : bool = u_xlatb2;
        if (x_543) {
          let x_546 : vec2<f32> = u_xlat4;
          let x_547 : vec3<f32> = u_xlat9;
          u_xlat33 = min(x_546, vec2<f32>(x_547.x, x_547.y));
          let x_550 : vec2<f32> = u_xlat33;
          let x_552 : vec4<f32> = x_16.x_RTHandleScale;
          u_xlat33 = (x_550 * vec2<f32>(x_552.x, x_552.y));
          let x_558 : vec2<f32> = u_xlat33;
          let x_560 : f32 = x_16.x_GlobalMipBias.x;
          let x_561 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, x_558, x_560);
          u_xlat10.x = x_561.x;
          let x_564 : vec4<f32> = u_xlat3;
          let x_566 : vec3<f32> = u_xlat9;
          u_xlat11 = ((x_564 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_566.x, x_566.y, x_566.x, x_566.y));
          let x_569 : vec2<f32> = u_xlat4;
          let x_571 : vec4<f32> = u_xlat11;
          u_xlat11 = min(vec4<f32>(x_569.x, x_569.y, x_569.x, x_569.y), x_571);
          let x_573 : vec4<f32> = u_xlat11;
          let x_575 : vec4<f32> = x_16.x_RTHandleScale;
          u_xlat11 = (x_573 * vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y));
          let x_581 : vec4<f32> = u_xlat11;
          let x_584 : f32 = x_16.x_GlobalMipBias.x;
          let x_585 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_581.x, x_581.y), x_584);
          u_xlat10.y = x_585.y;
          let x_591 : vec4<f32> = u_xlat11;
          let x_594 : f32 = x_16.x_GlobalMipBias.x;
          let x_595 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_591.z, x_591.w), x_594);
          u_xlat10.z = x_595.z;
        } else {
          let x_599 : vec2<f32> = u_xlat28;
          let x_600 : vec3<f32> = u_xlat9;
          let x_602 : vec2<f32> = min(x_599, vec2<f32>(x_600.x, x_600.y));
          let x_603 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_602.x, x_602.y, x_603.z);
          let x_605 : vec3<f32> = u_xlat9;
          let x_608 : vec4<f32> = x_16.x_RTHandleScale;
          let x_610 : vec2<f32> = (vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_608.x, x_608.y));
          let x_611 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_610.x, x_610.y, x_611.z);
          let x_616 : vec3<f32> = u_xlat9;
          let x_619 : f32 = x_16.x_GlobalMipBias.x;
          let x_620 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_616.x, x_616.y), x_619);
          u_xlat10 = vec3<f32>(x_620.x, x_620.y, x_620.z);
        }
        let x_622 : vec3<f32> = u_xlat10;
        let x_624 : f32 = x_16.x_LensFlareScreenSpaceTintColor.x;
        let x_626 : f32 = x_16.x_LensFlareScreenSpaceTintColor.y;
        let x_628 : f32 = x_16.x_LensFlareScreenSpaceTintColor.z;
        u_xlat9 = (x_622 * vec3<f32>(x_624, x_626, x_628));
        let x_631 : vec3<f32> = u_xlat9;
        let x_632 : f32 = u_xlat44;
        let x_635 : vec3<f32> = u_xlat7;
        u_xlat7 = ((x_631 * vec3<f32>(x_632, x_632, x_632)) + x_635);
      }
      let x_638 : bool = u_xlatb14.z;
      if (x_638) {
        let x_642 : f32 = u_xlat5.z;
        let x_643 : f32 = u_xlat42;
        u_xlat42 = (x_642 * x_643);
        let x_646 : f32 = u_xlat43;
        u_xlatb44 = (-(x_646) < 0.0f);
        let x_649 : f32 = u_xlat43;
        u_xlat43 = (1.0f / x_649);
        let x_651 : f32 = u_xlat43;
        let x_652 : f32 = u_xlat43;
        u_xlat43 = (x_651 + x_652);
        let x_654 : vec4<f32> = u_xlat1;
        let x_656 : f32 = u_xlat43;
        let x_658 : vec2<f32> = (vec2<f32>(x_654.x, x_654.y) * vec2<f32>(x_656, x_656));
        let x_659 : vec3<f32> = u_xlat9;
        u_xlat9 = vec3<f32>(x_658.x, x_658.y, x_659.z);
        let x_661 : vec3<f32> = u_xlat9;
        let x_665 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams5;
        let x_667 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_665.y, x_665.z));
        let x_668 : vec3<f32> = u_xlat9;
        u_xlat9 = vec3<f32>(x_667.x, x_667.y, x_668.z);
        let x_670 : vec3<f32> = u_xlat9;
        u_xlat33 = max(abs(vec2<f32>(x_670.x, x_670.y)), vec2<f32>(0.00000005960464477539f, 0.00000005960464477539f));
        let x_674 : vec2<f32> = u_xlat33;
        let x_675 : vec2<f32> = u_xlat33;
        u_xlat33 = (x_674 * x_675);
        let x_678 : f32 = u_xlat33.y;
        let x_680 : f32 = u_xlat33.x;
        u_xlat43 = (x_678 + x_680);
        let x_682 : f32 = u_xlat43;
        u_xlat43 = sqrt(x_682);
        let x_684 : f32 = u_xlat43;
        u_xlat43 = (x_684 * 0.70710676908493041992f);
        let x_687 : f32 = u_xlat43;
        u_xlat43 = min(x_687, 1.0f);
        let x_690 : f32 = u_xlat9.x;
        let x_692 : f32 = u_xlat9.y;
        u_xlat9.z = (x_690 / x_692);
        let x_697 : f32 = u_xlat9.z;
        u_xlatb45 = (abs(x_697) < 1.0f);
        let x_701 : f32 = u_xlat9.z;
        u_xlat10.x = (1.0f / abs(x_701));
        let x_705 : bool = u_xlatb45;
        if (x_705) {
          let x_711 : f32 = u_xlat9.z;
          x_707 = abs(x_711);
        } else {
          let x_715 : f32 = u_xlat10.x;
          x_707 = x_715;
        }
        let x_716 : f32 = x_707;
        u_xlat10.x = x_716;
        let x_720 : f32 = u_xlat10.x;
        let x_722 : f32 = u_xlat10.x;
        u_xlat22 = (x_720 * x_722);
        let x_725 : f32 = u_xlat22;
        u_xlat34 = ((x_725 * 0.08729290217161178589f) + -0.30189499258995056152f);
        let x_730 : f32 = u_xlat34;
        let x_731 : f32 = u_xlat22;
        u_xlat22 = ((x_730 * x_731) + 1.0f);
        let x_735 : f32 = u_xlat10.x;
        let x_736 : f32 = u_xlat22;
        u_xlat34 = (x_735 * x_736);
        let x_738 : f32 = u_xlat22;
        let x_741 : f32 = u_xlat10.x;
        u_xlat10.x = ((-(x_738) * x_741) + 1.57079637050628662109f);
        let x_747 : bool = u_xlatb45;
        if (x_747) {
          let x_751 : f32 = u_xlat34;
          x_748 = x_751;
        } else {
          let x_754 : f32 = u_xlat10.x;
          x_748 = x_754;
        }
        let x_755 : f32 = x_748;
        u_xlat45 = x_755;
        let x_759 : vec3<f32> = u_xlat9;
        let x_761 : vec4<bool> = (vec4<f32>(x_759.y, x_759.z, x_759.y, x_759.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb21 = vec2<bool>(x_761.x, x_761.y);
        let x_764 : bool = u_xlatb21.y;
        if (x_764) {
          let x_768 : f32 = u_xlat45;
          x_765 = -(x_768);
        } else {
          let x_771 : f32 = u_xlat45;
          x_765 = x_771;
        }
        let x_772 : f32 = x_765;
        u_xlat33.x = x_772;
        let x_775 : f32 = u_xlat9.x;
        u_xlatb9 = (x_775 >= 0.0f);
        let x_777 : bool = u_xlatb9;
        u_xlat9.x = select(-3.14159274101257324219f, 3.14159274101257324219f, x_777);
        let x_783 : bool = u_xlatb21.x;
        u_xlat21.x = select(0.0f, 1.0f, x_783);
        let x_787 : f32 = u_xlat9.x;
        let x_789 : f32 = u_xlat21.x;
        let x_792 : f32 = u_xlat33.x;
        u_xlat9.x = ((x_787 * x_789) + x_792);
        let x_796 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_796 * 0.15915493667125701904f) + 0.5f);
        let x_802 : f32 = u_xlat9.x;
        u_xlat9.x = clamp(x_802, 0.0f, 1.0f);
        let x_806 : f32 = u_xlat9.x;
        u_xlat9.x = (-(x_806) + 1.0f);
        let x_810 : f32 = u_xlat43;
        u_xlat33.x = (-(x_810) + 1.0f);
        let x_814 : bool = u_xlatb44;
        if (x_814) {
          let x_819 : f32 = u_xlat33.x;
          x_815 = x_819;
        } else {
          let x_821 : f32 = u_xlat43;
          x_815 = x_821;
        }
        let x_822 : f32 = x_815;
        u_xlat9.y = x_822;
        let x_824 : bool = u_xlatb2;
        if (x_824) {
          let x_827 : vec2<f32> = u_xlat4;
          let x_828 : vec3<f32> = u_xlat9;
          u_xlat33 = min(x_827, vec2<f32>(x_828.x, x_828.y));
          let x_831 : vec2<f32> = u_xlat33;
          let x_833 : vec4<f32> = x_16.x_RTHandleScale;
          u_xlat33 = (x_831 * vec2<f32>(x_833.x, x_833.y));
          let x_839 : vec2<f32> = u_xlat33;
          let x_841 : f32 = x_16.x_GlobalMipBias.x;
          let x_842 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, x_839, x_841);
          u_xlat10.x = x_842.x;
          let x_845 : vec4<f32> = u_xlat3;
          let x_847 : vec3<f32> = u_xlat9;
          u_xlat11 = ((x_845 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.y));
          let x_850 : vec2<f32> = u_xlat4;
          let x_852 : vec4<f32> = u_xlat11;
          u_xlat11 = min(vec4<f32>(x_850.x, x_850.y, x_850.x, x_850.y), x_852);
          let x_854 : vec4<f32> = u_xlat11;
          let x_856 : vec4<f32> = x_16.x_RTHandleScale;
          u_xlat11 = (x_854 * vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y));
          let x_862 : vec4<f32> = u_xlat11;
          let x_865 : f32 = x_16.x_GlobalMipBias.x;
          let x_866 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_862.x, x_862.y), x_865);
          u_xlat10.y = x_866.y;
          let x_872 : vec4<f32> = u_xlat11;
          let x_875 : f32 = x_16.x_GlobalMipBias.x;
          let x_876 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_872.z, x_872.w), x_875);
          u_xlat10.z = x_876.z;
        } else {
          let x_880 : vec2<f32> = u_xlat28;
          let x_881 : vec3<f32> = u_xlat9;
          let x_883 : vec2<f32> = min(x_880, vec2<f32>(x_881.x, x_881.y));
          let x_884 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_883.x, x_883.y, x_884.z);
          let x_886 : vec3<f32> = u_xlat9;
          let x_889 : vec4<f32> = x_16.x_RTHandleScale;
          let x_891 : vec2<f32> = (vec2<f32>(x_886.x, x_886.y) * vec2<f32>(x_889.x, x_889.y));
          let x_892 : vec3<f32> = u_xlat9;
          u_xlat9 = vec3<f32>(x_891.x, x_891.y, x_892.z);
          let x_897 : vec3<f32> = u_xlat9;
          let x_900 : f32 = x_16.x_GlobalMipBias.x;
          let x_901 : vec4<f32> = textureSampleBias(x_BloomTexture, sampler_LinearClamp, vec2<f32>(x_897.x, x_897.y), x_900);
          u_xlat10 = vec3<f32>(x_901.x, x_901.y, x_901.z);
        }
        let x_903 : vec3<f32> = u_xlat10;
        let x_905 : f32 = x_16.x_LensFlareScreenSpaceTintColor.x;
        let x_907 : f32 = x_16.x_LensFlareScreenSpaceTintColor.y;
        let x_909 : f32 = x_16.x_LensFlareScreenSpaceTintColor.z;
        u_xlat9 = (x_903 * vec3<f32>(x_905, x_907, x_909));
        let x_912 : vec3<f32> = u_xlat9;
        let x_913 : f32 = u_xlat42;
        let x_916 : vec3<f32> = u_xlat8;
        u_xlat8 = ((x_912 * vec3<f32>(x_913, x_913, x_913)) + x_916);
      }
      let x_918 : i32 = u_xlati41;
      u_xlati41 = (x_918 + 1i);
    }
    let x_920 : vec3<f32> = u_xlat6;
    let x_921 : vec3<f32> = u_xlat7;
    let x_922 : vec3<f32> = (x_920 + x_921);
    let x_923 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_922.z);
    let x_925 : vec2<f32> = u_xlat25;
    let x_927 : vec3<f32> = u_xlat8;
    let x_928 : vec3<f32> = (vec3<f32>(x_925.x, x_925.x, x_925.x) * x_927);
    let x_929 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
    let x_931 : vec4<f32> = u_xlat1;
    let x_933 : f32 = u_xlat36;
    let x_936 : vec4<f32> = u_xlat2;
    let x_938 : vec3<f32> = ((vec3<f32>(x_931.x, x_931.y, x_931.w) * vec3<f32>(x_933, x_933, x_933)) + vec3<f32>(x_936.x, x_936.y, x_936.z));
    let x_939 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  } else {
    u_xlat1.x = 0.0f;
    u_xlat1.y = 0.0f;
    u_xlat1.z = 0.0f;
  }
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec4<f32> = u_xlat1;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  u_xlat0.w = 1.0f;
  let x_956 : vec4<f32> = u_xlat0;
  let x_958 : vec4<f32> = x_16.x_LensFlareScreenSpaceParams1;
  SV_Target0 = (x_956 * vec4<f32>(x_958.x, x_958.x, x_958.x, x_958.x));
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


