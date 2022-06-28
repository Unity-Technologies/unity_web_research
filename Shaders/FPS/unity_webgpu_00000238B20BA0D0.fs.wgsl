struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb11 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_313 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat10;
  let x_41 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat30;
  let x_45 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat10;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat10 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat10;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_87);
  let x_91 : f32 = u_xlat30;
  u_xlati30 = i32(x_91);
  let x_93 : i32 = u_xlati30;
  u_xlati30 = max(x_93, 3i);
  let x_95 : i32 = u_xlati30;
  u_xlati30 = min(x_95, 16i);
  let x_98 : i32 = u_xlati30;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat10;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
  let x_113 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_113);
  u_xlat2.y = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_136;
  u_xlati_loop_1 = 0i;
  loop {
    let x_145 : i32 = u_xlati_loop_1;
    let x_146 : i32 = u_xlati30;
    if ((x_145 < x_146)) {
    } else {
      break;
    }
    let x_149 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_149);
    let x_153 : f32 = u_xlat16.x;
    u_xlat16.x = (x_153 + 0.5f);
    let x_157 : f32 = u_xlat16.x;
    let x_159 : f32 = u_xlat1.x;
    u_xlat2.x = (x_157 / x_159);
    let x_162 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_162 + vec2<f32>(-0.5f, -0.5f));
    let x_167 : vec2<f32> = u_xlat16;
    let x_169 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_172 : vec2<f32> = ((x_167 * vec2<f32>(x_169.z, x_169.z)) + vec2<f32>(0.5f, 0.5f));
    let x_173 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_172.x, x_172.y, x_173.z, x_173.w);
    let x_175 : vec2<f32> = u_xlat16;
    let x_177 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_182 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = ((x_175 * vec2<f32>(x_177.z, x_177.z)) + -(vec2<f32>(x_182.x, x_182.y)));
    let x_186 : vec2<f32> = u_xlat16;
    let x_188 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = (x_186 * vec2<f32>(x_188.z, x_188.w));
    let x_192 : vec2<f32> = u_xlat16;
    let x_193 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_192, x_193);
    let x_195 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_195);
    let x_197 : bool = u_xlatb11;
    if (x_197) {
      let x_201 : f32 = u_xlat36;
      let x_204 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_201, x_201) * vec2<f32>(x_204.x, x_204.y));
      let x_209 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_209);
      let x_213 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_213);
      let x_215 : f32 = u_xlat8;
      let x_216 : f32 = u_xlat9;
      u_xlat27.x = (x_215 / x_216);
      let x_221 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_221);
      let x_224 : f32 = u_xlat27.x;
      let x_225 : f32 = u_xlat37;
      u_xlat27.x = ((x_224 * x_225) + -1.0f);
      let x_229 : vec2<f32> = u_xlat16;
      let x_230 : vec2<f32> = u_xlat27;
      let x_233 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_229 * vec2<f32>(x_230.x, x_230.x)) + vec2<f32>(x_233.x, x_233.y));
    } else {
      let x_237 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_237);
      let x_239 : f32 = u_xlat8;
      let x_241 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat8 = (x_239 * x_241);
      let x_243 : f32 = u_xlat36;
      let x_245 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat36 = (x_243 * x_245);
      let x_248 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_248), 1.0f);
      let x_252 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_252), 1.0f);
      let x_255 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_255);
      let x_257 : f32 = u_xlat28;
      let x_258 : f32 = u_xlat18;
      u_xlat18 = (x_257 * x_258);
      let x_260 : f32 = u_xlat18;
      let x_261 : f32 = u_xlat18;
      u_xlat28 = (x_260 * x_261);
      let x_264 : f32 = u_xlat28;
      u_xlat38 = ((x_264 * 0.0208351f) + -0.085133001f);
      let x_269 : f32 = u_xlat28;
      let x_270 : f32 = u_xlat38;
      u_xlat38 = ((x_269 * x_270) + 0.180141002f);
      let x_274 : f32 = u_xlat28;
      let x_275 : f32 = u_xlat38;
      u_xlat38 = ((x_274 * x_275) + -0.330299497f);
      let x_279 : f32 = u_xlat28;
      let x_280 : f32 = u_xlat38;
      u_xlat28 = ((x_279 * x_280) + 0.999866009f);
      let x_284 : f32 = u_xlat28;
      let x_285 : f32 = u_xlat18;
      u_xlat38 = (x_284 * x_285);
      let x_288 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_288));
      let x_291 : f32 = u_xlat38;
      u_xlat38 = ((x_291 * -2.0f) + 1.570796371f);
      let x_296 : bool = u_xlatb9;
      let x_297 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_297, x_296);
      let x_299 : f32 = u_xlat18;
      let x_300 : f32 = u_xlat28;
      let x_302 : f32 = u_xlat38;
      u_xlat18 = ((x_299 * x_300) + x_302);
      let x_304 : f32 = u_xlat36;
      u_xlat36 = min(x_304, 1.0f);
      let x_307 : f32 = u_xlat36;
      let x_308 : f32 = u_xlat36;
      u_xlatb36 = (x_307 < -(x_308));
      let x_311 : bool = u_xlatb36;
      if (x_311) {
        let x_316 : f32 = u_xlat18;
        x_313 = -(x_316);
      } else {
        let x_319 : f32 = u_xlat18;
        x_313 = x_319;
      }
      let x_320 : f32 = x_313;
      u_xlat36 = x_320;
      let x_321 : f32 = u_xlat8;
      let x_322 : f32 = u_xlat36;
      u_xlat36 = ((x_321 * x_322) + -1.0f);
      let x_325 : vec2<f32> = u_xlat16;
      let x_326 : f32 = u_xlat36;
      let x_329 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_325 * vec2<f32>(x_326, x_326)) + vec2<f32>(x_329.x, x_329.y));
    }
    let x_332 : vec2<f32> = u_xlat27;
    u_xlat27 = x_332;
    let x_333 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_333, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_337 : vec2<f32> = u_xlat27;
    let x_339 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_337 * vec2<f32>(x_339, x_339));
    let x_347 : vec2<f32> = u_xlat16;
    let x_348 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_347, 0.0f);
    u_xlat7 = x_348;
    let x_354 : vec3<f32> = u_xlat2;
    let x_356 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_354.x, x_354.y), 0.0f);
    let x_357 : vec3<f32> = vec3<f32>(x_356.x, x_356.y, x_356.z);
    let x_358 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat7;
    let x_361 : vec4<f32> = u_xlat3;
    let x_363 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_360 * x_361) + x_363);
    let x_365 : vec4<f32> = u_xlat3;
    let x_366 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_365 + x_366);
    let x_368 : vec2<f32> = u_xlat10;
    let x_369 : vec2<f32> = u_xlat21;
    u_xlat21 = (x_368 + x_369);

    continuing {
      let x_371 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_371 + 1i);
    }
  }
  let x_373 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_373 / x_374);
  let x_376 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.x, x_376.x) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec2<f32> = vs_TEXCOORD1;
  let x_387 : vec4<f32> = x_51.x_Grain_Params2;
  let x_391 : vec4<f32> = x_51.x_Grain_Params2;
  let x_393 : vec2<f32> = ((x_384 * vec2<f32>(x_387.x, x_387.y)) + vec2<f32>(x_391.z, x_391.w));
  let x_394 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_393.x, x_393.y, x_394.z);
  let x_401 : vec3<f32> = u_xlat2;
  let x_403 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_401.x, x_401.y));
  let x_404 : vec3<f32> = vec3<f32>(x_403.x, x_403.y, x_403.z);
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat4;
  let x_415 : vec3<f32> = clamp(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_425 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_425);
  let x_429 : f32 = x_51.x_Grain_Params1.x;
  let x_430 : f32 = u_xlat30;
  u_xlat30 = ((x_429 * -(x_430)) + 1.0f);
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = u_xlat3;
  let x_438 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat3;
  let x_444 : f32 = x_51.x_Grain_Params1.y;
  let x_446 : f32 = x_51.x_Grain_Params1.y;
  let x_448 : f32 = x_51.x_Grain_Params1.y;
  let x_450 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_444, x_446, x_448));
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat3;
  let x_455 : f32 = u_xlat30;
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_455, x_455, x_455)) + vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat1;
  let x_466 : f32 = x_51.x_PostExposure;
  let x_468 : f32 = x_51.x_PostExposure;
  let x_470 : f32 = x_51.x_PostExposure;
  let x_472 : f32 = x_51.x_PostExposure;
  let x_473 : vec4<f32> = vec4<f32>(x_466, x_468, x_470, x_472);
  u_xlat0 = (x_463 * vec4<f32>(x_473.x, x_473.y, x_473.z, x_473.w));
  let x_480 : vec4<f32> = u_xlat0;
  let x_487 : vec3<f32> = ((vec3<f32>(x_480.z, x_480.x, x_480.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_488 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat1;
  let x_492 : vec3<f32> = log2(vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = clamp(vec3<f32>(x_505.x, x_505.y, x_505.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : vec4<f32> = u_xlat1;
  let x_518 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_518.z, x_518.z, x_518.z));
  let x_522 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_522);
  let x_526 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_528 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(0.5f, 0.5f));
  let x_529 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_528.x, x_528.y, x_529.z);
  let x_531 : vec3<f32> = u_xlat11;
  let x_534 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_537 : vec3<f32> = u_xlat2;
  let x_539 : vec2<f32> = ((vec2<f32>(x_531.y, x_531.z) * vec2<f32>(x_534.x, x_534.y)) + vec2<f32>(x_537.x, x_537.y));
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_540.x, x_539.x, x_539.y, x_540.w);
  let x_543 : f32 = u_xlat11.x;
  let x_545 : f32 = x_51.x_Lut2D_Params.y;
  let x_548 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_543 * x_545) + x_548);
  let x_556 : vec4<f32> = u_xlat3;
  let x_558 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_556.x, x_556.z));
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.z);
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat22.x = x_563;
  let x_565 : vec2<f32> = u_xlat22;
  let x_566 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_565 + vec2<f32>(x_566.x, x_566.z));
  let x_572 : vec2<f32> = u_xlat21;
  let x_573 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_572);
  u_xlat2 = vec3<f32>(x_573.x, x_573.y, x_573.z);
  let x_576 : f32 = u_xlat1.x;
  let x_578 : f32 = x_51.x_Lut2D_Params.z;
  let x_581 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_576 * x_578) + -(x_581));
  let x_585 : vec4<f32> = u_xlat4;
  let x_588 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_585.x, x_585.y, x_585.z)) + x_588);
  let x_590 : vec4<f32> = u_xlat1;
  let x_592 : vec3<f32> = u_xlat11;
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec3<f32> = ((vec3<f32>(x_590.x, x_590.x, x_590.x) * x_592) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_602 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_602);
  let x_604 : bool = u_xlatb1;
  if (x_604) {
    let x_607 : vec4<f32> = u_xlat0;
    let x_608 : vec3<f32> = vec3<f32>(x_607.x, x_607.y, x_607.z);
    let x_609 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    let x_611 : vec4<f32> = u_xlat1;
    let x_615 : vec3<f32> = clamp(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_616 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
    let x_618 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_618.x, x_618.y, x_618.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_624 : vec4<f32> = u_xlat0;
  SV_Target0 = x_624;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

