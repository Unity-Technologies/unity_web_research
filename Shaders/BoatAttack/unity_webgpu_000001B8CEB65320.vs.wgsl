struct VGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_FlareData0 : vec4<f32>,
  x_FlareData1 : vec4<f32>,
  x_FlareData2 : vec4<f32>,
  x_FlareData3 : vec4<f32>,
}

@group(1) @binding(1) var<uniform> x_49 : VGlobals;

var<private> gl_VertexIndex : i32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var x_FlareOcclusionRemapTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_FlareOcclusionRemapTex : sampler;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatu5 : vec3<u32>;
  var u_xlati10 : i32;
  var u_xlati15 : i32;
  var u_xlat1 : vec2<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlati5 : i32;
  var u_xlat5 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlatb0 : bool;
  var u_xlatb10 : vec2<bool>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat2 : vec2<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlati12 : i32;
  var u_xlatu12 : u32;
  var u_xlatu17 : u32;
  var u_xlat12 : vec2<f32>;
  var u_xlati17 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlatu3 : u32;
  var u_xlat17 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb12 : vec2<bool>;
  var u_xlatb8 : vec3<bool>;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec2<bool>;
  var x_446 : f32;
  var x_465 : f32;
  var u_xlatb5 : bool;
  var u_xlatb15 : bool;
  var x_545 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_54 : f32 = x_49.x_ScaledScreenParams.y;
  let x_57 : f32 = x_49.x_ScaledScreenParams.x;
  u_xlat0.x = (x_54 / x_57);
  let x_66 : i32 = gl_VertexIndex;
  u_xlatu5.x = (bitcast<u32>(x_66) >> 1u);
  let x_71 : i32 = gl_VertexIndex;
  u_xlati10 = bitcast<i32>((bitcast<u32>(x_71) & 1u));
  let x_76 : i32 = u_xlati10;
  let x_79 : u32 = u_xlatu5.x;
  u_xlati15 = (-(x_76) + -(bitcast<i32>(x_79)));
  let x_83 : i32 = u_xlati15;
  u_xlati15 = (x_83 + 1i);
  let x_86 : i32 = u_xlati15;
  u_xlatu5.z = (bitcast<u32>(x_86) & 1u);
  let x_93 : vec3<u32> = u_xlatu5;
  u_xlat1 = vec2<f32>(vec2<u32>(x_93.x, x_93.z));
  let x_97 : vec2<f32> = u_xlat1;
  u_xlat6 = ((x_97 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_105 : i32 = u_xlati10;
  let x_107 : u32 = u_xlatu5.x;
  u_xlati5 = (x_105 + bitcast<i32>(x_107));
  let x_110 : i32 = u_xlati5;
  u_xlatu5.x = (bitcast<u32>(x_110) & 1u);
  let x_116 : u32 = u_xlatu5.x;
  u_xlat5.x = f32(x_116);
  let x_122 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = (-(x_122) + 1.0f);
  let x_129 : f32 = u_xlat1.x;
  vs_TEXCOORD0.x = (-(x_129) + 1.0f);
  let x_133 : vec2<f32> = u_xlat6;
  let x_137 : vec4<f32> = x_49.x_FlareData2;
  u_xlat5 = (x_133 * vec2<f32>(x_137.z, x_137.w));
  let x_142 : f32 = u_xlat5.y;
  let x_145 : f32 = x_49.x_FlareData0.y;
  u_xlat15 = (x_142 * x_145);
  let x_148 : f32 = u_xlat5.x;
  let x_150 : f32 = x_49.x_FlareData0.x;
  let x_152 : f32 = u_xlat15;
  u_xlat15 = ((x_148 * x_150) + -(x_152));
  let x_155 : vec2<f32> = u_xlat5;
  let x_158 : vec4<f32> = x_49.x_FlareData0;
  u_xlat1.y = dot(vec2<f32>(x_155.y, x_155.x), vec2<f32>(x_158.x, x_158.y));
  let x_163 : f32 = u_xlat0.x;
  let x_164 : f32 = u_xlat15;
  u_xlat1.x = (x_163 * x_164);
  let x_167 : vec2<f32> = u_xlat1;
  let x_169 : vec4<f32> = x_49.x_FlareData2;
  u_xlat0 = (x_167 + vec2<f32>(x_169.x, x_169.y));
  let x_176 : vec2<f32> = u_xlat0;
  let x_178 : vec4<f32> = x_49.x_FlareData0;
  let x_180 : vec2<f32> = (x_176 + vec2<f32>(x_178.z, x_178.w));
  let x_183 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_180.x, x_180.y, x_183.z, x_183.w);
  let x_190 : f32 = x_49.x_FlareData1.y;
  u_xlatb0 = !((x_190 == 0.0f));
  let x_193 : bool = u_xlatb0;
  if (x_193) {
    let x_197 : f32 = x_49.x_FlareData1.y;
    u_xlat0.x = (1.0f / x_197);
    let x_201 : f32 = x_49.x_FlareData1.y;
    u_xlatu5.x = u32(x_201);
    let x_209 : f32 = x_49.x_FlareData3.x;
    u_xlatb10.x = (0.0f < x_209);
    u_xlatu1.z = 0u;
    u_xlatu1.w = 0u;
    u_xlat2.x = 0.0f;
    u_xlatu_loop_1 = 0u;
    loop {
      let x_226 : u32 = u_xlatu_loop_1;
      let x_228 : u32 = u_xlatu5.x;
      if ((x_226 < x_228)) {
      } else {
        break;
      }
      let x_231 : u32 = u_xlatu_loop_1;
      u_xlati12 = (bitcast<i32>(x_231) << bitcast<u32>(1i));
      let x_234 : i32 = u_xlati12;
      u_xlati12 = bitcast<i32>((bitcast<u32>(x_234) ^ 2747636419u));
      let x_240 : i32 = u_xlati12;
      u_xlatu12 = (bitcast<u32>(x_240) * 2654435769u);
      let x_245 : u32 = u_xlatu12;
      u_xlatu17 = (x_245 >> 16u);
      let x_248 : u32 = u_xlatu17;
      let x_249 : u32 = u_xlatu12;
      u_xlati12 = bitcast<i32>((x_248 ^ x_249));
      let x_252 : i32 = u_xlati12;
      u_xlatu12 = (bitcast<u32>(x_252) * 2654435769u);
      let x_255 : u32 = u_xlatu12;
      u_xlatu17 = (x_255 >> 16u);
      let x_257 : u32 = u_xlatu17;
      let x_258 : u32 = u_xlatu12;
      u_xlati12 = bitcast<i32>((x_257 ^ x_258));
      let x_261 : i32 = u_xlati12;
      u_xlatu12 = (bitcast<u32>(x_261) * 2654435769u);
      let x_265 : u32 = u_xlatu12;
      u_xlat12.x = f32(x_265);
      let x_269 : f32 = u_xlat12.x;
      u_xlat12.x = (x_269 * 2.32830644e-10f);
      let x_274 : u32 = u_xlatu_loop_1;
      param = 1i;
      param_1 = bitcast<i32>(x_274);
      param_2 = 1i;
      param_3 = 31i;
      let x_281 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
      u_xlati17 = x_281;
      let x_282 : i32 = u_xlati17;
      u_xlati17 = bitcast<i32>((bitcast<u32>(x_282) ^ 2747636419u));
      let x_286 : i32 = u_xlati17;
      u_xlatu17 = (bitcast<u32>(x_286) * 2654435769u);
      let x_290 : u32 = u_xlatu17;
      u_xlatu3 = (x_290 >> 16u);
      let x_292 : u32 = u_xlatu17;
      let x_293 : u32 = u_xlatu3;
      u_xlati17 = bitcast<i32>((x_292 ^ x_293));
      let x_296 : i32 = u_xlati17;
      u_xlatu17 = (bitcast<u32>(x_296) * 2654435769u);
      let x_299 : u32 = u_xlatu17;
      u_xlatu3 = (x_299 >> 16u);
      let x_301 : u32 = u_xlatu17;
      let x_302 : u32 = u_xlatu3;
      u_xlati17 = bitcast<i32>((x_301 ^ x_302));
      let x_305 : i32 = u_xlati17;
      u_xlatu17 = (bitcast<u32>(x_305) * 2654435769u);
      let x_309 : u32 = u_xlatu17;
      u_xlat17 = f32(x_309);
      let x_312 : f32 = u_xlat12.x;
      u_xlat12.x = sqrt(x_312);
      let x_315 : f32 = u_xlat17;
      u_xlat17 = (x_315 * 1.46291812e-09f);
      let x_321 : f32 = u_xlat17;
      u_xlat3.x = sin(x_321);
      let x_325 : f32 = u_xlat17;
      u_xlat4.x = cos(x_325);
      let x_329 : f32 = u_xlat3.x;
      u_xlat4.y = x_329;
      let x_331 : vec2<f32> = u_xlat12;
      let x_333 : vec2<f32> = u_xlat4;
      u_xlat12 = (vec2<f32>(x_331.x, x_331.x) * x_333);
      let x_336 : vec4<f32> = x_49.x_FlareData1;
      let x_338 : vec2<f32> = u_xlat12;
      let x_341 : vec4<f32> = x_49.x_FlareData2;
      u_xlat12 = ((vec2<f32>(x_336.x, x_336.x) * x_338) + vec2<f32>(x_341.x, x_341.y));
      let x_344 : vec2<f32> = u_xlat12;
      let x_348 : vec2<f32> = ((x_344 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
      let x_349 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_348.x, x_348.y, x_349.z);
      let x_352 : f32 = u_xlat3.y;
      u_xlat3.z = (-(x_352) + 1.0f);
      let x_357 : vec3<f32> = u_xlat3;
      let x_361 : vec4<bool> = (vec4<f32>(x_357.x, x_357.z, x_357.x, x_357.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
      u_xlatb12 = vec2<bool>(x_361.x, x_361.y);
      let x_364 : bool = u_xlatb12.y;
      let x_366 : bool = u_xlatb12.x;
      u_xlatb12.x = (x_364 & x_366);
      let x_373 : vec3<f32> = u_xlat3;
      let x_375 : vec4<bool> = (vec4<f32>(1.0f, 0.0f, 1.0f, 1.0f) >= vec4<f32>(x_373.x, x_373.x, x_373.z, x_373.z));
      let x_376 : vec2<bool> = vec2<bool>(x_375.x, x_375.z);
      let x_377 : vec3<bool> = u_xlatb8;
      u_xlatb8 = vec3<bool>(x_376.x, x_377.y, x_376.y);
      let x_381 : bool = u_xlatb8.z;
      let x_383 : bool = u_xlatb8.x;
      u_xlatb17 = (x_381 & x_383);
      let x_385 : bool = u_xlatb17;
      let x_387 : bool = u_xlatb12.x;
      u_xlatb12.x = (x_385 & x_387);
      let x_391 : bool = u_xlatb12.x;
      if (x_391) {
        let x_394 : vec3<f32> = u_xlat3;
        let x_397 : vec4<f32> = x_49.x_ScaledScreenParams;
        u_xlat12 = (vec2<f32>(x_394.x, x_394.z) * vec2<f32>(x_397.x, x_397.y));
        let x_400 : vec2<f32> = u_xlat12;
        let x_401 : vec2<u32> = vec2<u32>(x_400);
        let x_402 : vec4<u32> = u_xlatu1;
        u_xlatu1 = vec4<u32>(x_401.x, x_401.y, x_402.z, x_402.w);
        let x_408 : vec4<u32> = u_xlatu1;
        let x_413 : u32 = u_xlatu1.w;
        let x_415 : vec4<f32> = textureLoad(x_CameraDepthTexture, bitcast<vec2<i32>>(vec2<u32>(x_408.x, x_408.y)), bitcast<i32>(x_413));
        u_xlat1.x = x_415.x;
        let x_419 : f32 = x_49.x_ZBufferParams.z;
        let x_421 : f32 = u_xlat1.x;
        let x_424 : f32 = x_49.x_ZBufferParams.w;
        u_xlat1.x = ((x_419 * x_421) + x_424);
        let x_428 : f32 = u_xlat1.x;
        u_xlat1.x = (1.0f / x_428);
        let x_433 : f32 = x_49.x_FlareData1.z;
        let x_435 : f32 = u_xlat1.x;
        u_xlatb1.x = (x_433 < x_435);
        let x_439 : f32 = u_xlat0.x;
        let x_441 : f32 = u_xlat2.x;
        u_xlat6.x = (x_439 + x_441);
        let x_445 : bool = u_xlatb1.x;
        if (x_445) {
          let x_450 : f32 = u_xlat6.x;
          x_446 = x_450;
        } else {
          let x_453 : f32 = u_xlat2.x;
          x_446 = x_453;
        }
        let x_454 : f32 = x_446;
        u_xlat2.x = x_454;
      } else {
        let x_458 : f32 = u_xlat0.x;
        let x_460 : f32 = u_xlat2.x;
        u_xlat1.x = (x_458 + x_460);
        let x_464 : bool = u_xlatb10.x;
        if (x_464) {
          let x_469 : f32 = u_xlat1.x;
          x_465 = x_469;
        } else {
          let x_472 : f32 = u_xlat2.x;
          x_465 = x_472;
        }
        let x_473 : f32 = x_465;
        u_xlat2.x = x_473;
      }

      continuing {
        let x_475 : u32 = u_xlatu_loop_1;
        u_xlatu_loop_1 = (x_475 + bitcast<u32>(1i));
      }
    }
    let x_478 : f32 = u_xlat2.x;
    u_xlat2.x = x_478;
    let x_481 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_481, 0.0f, 1.0f);
    u_xlat2.y = 0.0f;
    let x_493 : vec2<f32> = u_xlat2;
    let x_494 : vec4<f32> = textureSampleLevel(x_FlareOcclusionRemapTex, sampler_FlareOcclusionRemapTex, x_493, 0.0f);
    u_xlat0.x = x_494.x;
    let x_498 : f32 = u_xlat0.x;
    u_xlat0.x = x_498;
    let x_501 : f32 = u_xlat0.x;
    u_xlat0.x = clamp(x_501, 0.0f, 1.0f);
  } else {
    u_xlat0.x = 1.0f;
  }
  let x_508 : f32 = x_49.x_FlareData3.x;
  u_xlatb5 = (x_508 < 0.0f);
  let x_511 : vec4<f32> = x_49.x_FlareData2;
  let x_514 : vec4<bool> = (vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y) < vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  u_xlatb10 = vec2<bool>(x_514.x, x_514.y);
  let x_517 : bool = u_xlatb10.y;
  let x_519 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_517 | x_519);
  let x_523 : vec4<f32> = x_49.x_FlareData2;
  let x_526 : vec4<bool> = (vec4<f32>(x_523.x, x_523.y, x_523.x, x_523.x) >= vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb1 = vec2<bool>(x_526.x, x_526.y);
  let x_530 : bool = u_xlatb1.y;
  let x_532 : bool = u_xlatb1.x;
  u_xlatb15 = (x_530 | x_532);
  let x_534 : bool = u_xlatb15;
  let x_536 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_534 | x_536);
  let x_540 : bool = u_xlatb10.x;
  let x_541 : bool = u_xlatb5;
  u_xlatb5 = (x_540 & x_541);
  let x_544 : bool = u_xlatb5;
  if (x_544) {
    x_545 = 0.0f;
  } else {
    let x_550 : f32 = u_xlat0.x;
    x_545 = x_550;
  }
  let x_551 : f32 = x_545;
  vs_TEXCOORD1 = x_551;
  let x_554 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_554.x, x_554.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

