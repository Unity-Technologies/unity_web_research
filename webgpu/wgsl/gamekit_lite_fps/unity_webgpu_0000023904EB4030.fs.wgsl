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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

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

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlat20 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_327 : f32;
  var x_535 : f32;
  var x_547 : f32;
  var x_559 : f32;
  var x_701 : f32;
  var x_713 : f32;
  var x_725 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat10;
  let x_44 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat30;
  let x_49 : vec3<f32> = u_xlat10;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat10;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat10;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_98);
  let x_102 : f32 = u_xlat30;
  u_xlati30 = i32(x_102);
  let x_104 : i32 = u_xlati30;
  u_xlati30 = max(x_104, 3i);
  let x_106 : i32 = u_xlati30;
  u_xlati30 = min(x_106, 16i);
  let x_109 : i32 = u_xlati30;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat10;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  let x_127 : f32 = x_58.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_127);
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
  let x_150 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_150;
  u_xlati_loop_1 = 0i;
  loop {
    let x_159 : i32 = u_xlati_loop_1;
    let x_160 : i32 = u_xlati30;
    if ((x_159 < x_160)) {
    } else {
      break;
    }
    let x_163 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_163);
    let x_167 : f32 = u_xlat16.x;
    u_xlat16.x = (x_167 + 0.5f);
    let x_171 : f32 = u_xlat16.x;
    let x_173 : f32 = u_xlat1.x;
    u_xlat2.x = (x_171 / x_173);
    let x_176 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_176 + vec2<f32>(-0.5f, -0.5f));
    let x_181 : vec2<f32> = u_xlat16;
    let x_183 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_186 : vec2<f32> = ((x_181 * vec2<f32>(x_183.z, x_183.z)) + vec2<f32>(0.5f, 0.5f));
    let x_187 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
    let x_189 : vec2<f32> = u_xlat16;
    let x_191 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_196 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = ((x_189 * vec2<f32>(x_191.z, x_191.z)) + -(vec2<f32>(x_196.x, x_196.y)));
    let x_200 : vec2<f32> = u_xlat16;
    let x_202 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = (x_200 * vec2<f32>(x_202.z, x_202.w));
    let x_206 : vec2<f32> = u_xlat16;
    let x_207 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_206, x_207);
    let x_209 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_209);
    let x_211 : bool = u_xlatb11;
    if (x_211) {
      let x_215 : f32 = u_xlat36;
      let x_218 : vec4<f32> = x_58.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_215, x_215) * vec2<f32>(x_218.x, x_218.y));
      let x_223 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_223);
      let x_227 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_227);
      let x_229 : f32 = u_xlat8;
      let x_230 : f32 = u_xlat9;
      u_xlat27.x = (x_229 / x_230);
      let x_235 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_235);
      let x_238 : f32 = u_xlat27.x;
      let x_239 : f32 = u_xlat37;
      u_xlat27.x = ((x_238 * x_239) + -1.0f);
      let x_243 : vec2<f32> = u_xlat16;
      let x_244 : vec2<f32> = u_xlat27;
      let x_247 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_243 * vec2<f32>(x_244.x, x_244.x)) + vec2<f32>(x_247.x, x_247.y));
    } else {
      let x_251 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_251);
      let x_253 : f32 = u_xlat8;
      let x_255 : f32 = x_58.x_Distortion_Amount.x;
      u_xlat8 = (x_253 * x_255);
      let x_257 : f32 = u_xlat36;
      let x_259 : f32 = x_58.x_Distortion_Amount.y;
      u_xlat36 = (x_257 * x_259);
      let x_262 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_262), 1.0f);
      let x_266 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_266), 1.0f);
      let x_269 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_269);
      let x_271 : f32 = u_xlat28;
      let x_272 : f32 = u_xlat18;
      u_xlat18 = (x_271 * x_272);
      let x_274 : f32 = u_xlat18;
      let x_275 : f32 = u_xlat18;
      u_xlat28 = (x_274 * x_275);
      let x_278 : f32 = u_xlat28;
      u_xlat38 = ((x_278 * 0.0208351f) + -0.085133001f);
      let x_283 : f32 = u_xlat28;
      let x_284 : f32 = u_xlat38;
      u_xlat38 = ((x_283 * x_284) + 0.180141002f);
      let x_288 : f32 = u_xlat28;
      let x_289 : f32 = u_xlat38;
      u_xlat38 = ((x_288 * x_289) + -0.330299497f);
      let x_293 : f32 = u_xlat28;
      let x_294 : f32 = u_xlat38;
      u_xlat28 = ((x_293 * x_294) + 0.999866009f);
      let x_298 : f32 = u_xlat28;
      let x_299 : f32 = u_xlat18;
      u_xlat38 = (x_298 * x_299);
      let x_302 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_302));
      let x_305 : f32 = u_xlat38;
      u_xlat38 = ((x_305 * -2.0f) + 1.570796371f);
      let x_310 : bool = u_xlatb9;
      let x_311 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_311, x_310);
      let x_313 : f32 = u_xlat18;
      let x_314 : f32 = u_xlat28;
      let x_316 : f32 = u_xlat38;
      u_xlat18 = ((x_313 * x_314) + x_316);
      let x_318 : f32 = u_xlat36;
      u_xlat36 = min(x_318, 1.0f);
      let x_321 : f32 = u_xlat36;
      let x_322 : f32 = u_xlat36;
      u_xlatb36 = (x_321 < -(x_322));
      let x_325 : bool = u_xlatb36;
      if (x_325) {
        let x_330 : f32 = u_xlat18;
        x_327 = -(x_330);
      } else {
        let x_333 : f32 = u_xlat18;
        x_327 = x_333;
      }
      let x_334 : f32 = x_327;
      u_xlat36 = x_334;
      let x_335 : f32 = u_xlat8;
      let x_336 : f32 = u_xlat36;
      u_xlat36 = ((x_335 * x_336) + -1.0f);
      let x_339 : vec2<f32> = u_xlat16;
      let x_340 : f32 = u_xlat36;
      let x_343 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_339 * vec2<f32>(x_340, x_340)) + vec2<f32>(x_343.x, x_343.y));
    }
    let x_346 : vec2<f32> = u_xlat27;
    u_xlat27 = x_346;
    let x_347 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_347, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_351 : vec2<f32> = u_xlat27;
    let x_353 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_351 * vec2<f32>(x_353, x_353));
    let x_361 : vec2<f32> = u_xlat16;
    let x_362 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_361, 0.0f);
    u_xlat7 = x_362;
    let x_368 : vec3<f32> = u_xlat2;
    let x_370 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_368.x, x_368.y), 0.0f);
    let x_371 : vec3<f32> = vec3<f32>(x_370.x, x_370.y, x_370.z);
    let x_372 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat7;
    let x_375 : vec4<f32> = u_xlat3;
    let x_377 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_374 * x_375) + x_377);
    let x_379 : vec4<f32> = u_xlat3;
    let x_380 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_379 + x_380);
    let x_382 : vec3<f32> = u_xlat10;
    let x_384 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_382.x, x_382.y) + x_384);

    continuing {
      let x_386 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_386 + 1i);
    }
  }
  let x_388 : vec4<f32> = u_xlat4;
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_388 / x_389);
  let x_391 : vec3<f32> = u_xlat0;
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_391.x, x_391.x, x_391.x) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_397 : vec2<f32> = vs_TEXCOORD1;
  let x_400 : vec4<f32> = x_58.x_Grain_Params2;
  let x_404 : vec4<f32> = x_58.x_Grain_Params2;
  let x_406 : vec2<f32> = ((x_397 * vec2<f32>(x_400.x, x_400.y)) + vec2<f32>(x_404.z, x_404.w));
  let x_407 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_406.x, x_406.y, x_407.z);
  let x_414 : vec3<f32> = u_xlat2;
  let x_416 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_414.x, x_414.y));
  let x_417 : vec3<f32> = vec3<f32>(x_416.x, x_416.y, x_416.z);
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec3<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat4;
  let x_427 : vec3<f32> = clamp(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_437 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_437);
  let x_441 : f32 = x_58.x_Grain_Params1.x;
  let x_442 : f32 = u_xlat30;
  u_xlat30 = ((x_441 * -(x_442)) + 1.0f);
  let x_446 : vec3<f32> = u_xlat0;
  let x_447 : vec4<f32> = u_xlat3;
  let x_449 : vec3<f32> = (x_446 * vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat3;
  let x_455 : f32 = x_58.x_Grain_Params1.y;
  let x_457 : f32 = x_58.x_Grain_Params1.y;
  let x_459 : f32 = x_58.x_Grain_Params1.y;
  let x_461 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_455, x_457, x_459));
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat3;
  let x_466 : f32 = u_xlat30;
  let x_469 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466, x_466, x_466)) + x_469);
  let x_471 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_471, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_476 : f32 = u_xlat1.w;
  u_xlat1.w = x_476;
  let x_479 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_479, 0.0f, 1.0f);
  let x_482 : vec3<f32> = u_xlat0;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.z, x_482.x, x_482.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = u_xlat0;
  let x_493 : vec3<f32> = max(vec3<f32>(x_489.z, x_489.x, x_489.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat4;
  let x_498 : vec3<f32> = log2(vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_505 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec3<f32> = exp2(vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat4;
  let x_520 : vec3<f32> = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_528 : vec3<f32> = u_xlat0;
  let x_531 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_528.z, x_528.x, x_528.y, x_528.z));
  u_xlatb0 = vec3<bool>(x_531.x, x_531.y, x_531.z);
  let x_534 : bool = u_xlatb0.x;
  if (x_534) {
    let x_539 : f32 = u_xlat3.x;
    x_535 = x_539;
  } else {
    let x_542 : f32 = u_xlat4.x;
    x_535 = x_542;
  }
  let x_543 : f32 = x_535;
  u_xlat0.x = x_543;
  let x_546 : bool = u_xlatb0.y;
  if (x_546) {
    let x_551 : f32 = u_xlat3.y;
    x_547 = x_551;
  } else {
    let x_554 : f32 = u_xlat4.y;
    x_547 = x_554;
  }
  let x_555 : f32 = x_547;
  u_xlat0.y = x_555;
  let x_558 : bool = u_xlatb0.z;
  if (x_558) {
    let x_563 : f32 = u_xlat3.z;
    x_559 = x_563;
  } else {
    let x_566 : f32 = u_xlat4.z;
    x_559 = x_566;
  }
  let x_567 : f32 = x_559;
  u_xlat0.z = x_567;
  let x_569 : vec3<f32> = u_xlat0;
  let x_573 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat10 = (x_569 * vec3<f32>(x_573.z, x_573.z, x_573.z));
  let x_577 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_577);
  let x_581 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_583 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(0.5f, 0.5f));
  let x_584 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_583.x, x_583.y, x_584.z);
  let x_586 : vec3<f32> = u_xlat10;
  let x_589 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_592 : vec3<f32> = u_xlat2;
  let x_594 : vec2<f32> = ((vec2<f32>(x_586.y, x_586.z) * vec2<f32>(x_589.x, x_589.y)) + vec2<f32>(x_592.x, x_592.y));
  let x_595 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_595.x, x_594.x, x_594.y, x_595.w);
  let x_598 : f32 = u_xlat10.x;
  let x_600 : f32 = x_58.x_Lut2D_Params.y;
  let x_603 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_598 * x_600) + x_603);
  let x_611 : vec4<f32> = u_xlat3;
  let x_613 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_611.x, x_611.z));
  let x_614 : vec3<f32> = vec3<f32>(x_613.x, x_613.y, x_613.z);
  let x_615 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_618 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat22.x = x_618;
  let x_621 : vec2<f32> = u_xlat22;
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat20 = (x_621 + vec2<f32>(x_622.x, x_622.z));
  let x_628 : vec2<f32> = u_xlat20;
  let x_629 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_628);
  u_xlat2 = vec3<f32>(x_629.x, x_629.y, x_629.z);
  let x_632 : f32 = u_xlat0.x;
  let x_634 : f32 = x_58.x_Lut2D_Params.z;
  let x_637 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_632 * x_634) + -(x_637));
  let x_641 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = u_xlat2;
  u_xlat10 = (-(vec3<f32>(x_641.x, x_641.y, x_641.z)) + x_644);
  let x_646 : vec3<f32> = u_xlat0;
  let x_648 : vec3<f32> = u_xlat10;
  let x_650 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_646.x, x_646.x, x_646.x) * x_648) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_653 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_657 : vec3<f32> = u_xlat0;
  let x_660 : vec3<f32> = (x_657 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat3;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = max(abs(vec3<f32>(x_670.x, x_670.y, x_670.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec3<f32> = log2(vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec3<f32> = exp2(vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_695 : vec3<f32> = u_xlat0;
  let x_697 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_695.x, x_695.y, x_695.z, x_695.x));
  u_xlatb0 = vec3<bool>(x_697.x, x_697.y, x_697.z);
  let x_700 : bool = u_xlatb0.x;
  if (x_700) {
    let x_705 : f32 = u_xlat2.x;
    x_701 = x_705;
  } else {
    let x_708 : f32 = u_xlat3.x;
    x_701 = x_708;
  }
  let x_709 : f32 = x_701;
  u_xlat1.x = x_709;
  let x_712 : bool = u_xlatb0.y;
  if (x_712) {
    let x_717 : f32 = u_xlat2.y;
    x_713 = x_717;
  } else {
    let x_720 : f32 = u_xlat3.y;
    x_713 = x_720;
  }
  let x_721 : f32 = x_713;
  u_xlat1.y = x_721;
  let x_724 : bool = u_xlatb0.z;
  if (x_724) {
    let x_729 : f32 = u_xlat2.z;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat3.z;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  u_xlat1.z = x_733;
  let x_737 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_737);
  let x_741 : bool = u_xlatb0.x;
  if (x_741) {
    let x_744 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_744.x, x_744.y, x_744.z);
    let x_746 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_746, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_750 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_750, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_755 : vec4<f32> = u_xlat1;
  SV_Target0 = x_755;
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

