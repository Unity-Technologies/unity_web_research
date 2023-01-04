struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  x_Chroma_Params : f32,
  @size(8)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_424 : f32;
  var x_436 : f32;
  var x_448 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_594 : f32;
  var x_606 : f32;
  var x_618 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_710 : f32;
  var x_722 : f32;
  var x_734 : f32;
  var x_789 : f32;
  var x_801 : f32;
  var x_813 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_24 : vec4<f32> = u_xlat0;
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_24.z, x_24.w), vec2<f32>(x_26.z, x_26.w));
  let x_33 : vec4<f32> = u_xlat0;
  let x_34 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_33 * vec4<f32>(x_34.x, x_34.x, x_34.x, x_34.x));
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : f32 = x_40.x_Chroma_Params;
  u_xlat0 = (x_37 * vec4<f32>(x_45, x_45, x_45, x_45));
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_40.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_58, x_61);
  u_xlat1.x = x_62.x;
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_65 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y));
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : f32 = x_40.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.y = x_80.y;
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : f32 = x_40.x_GlobalMipBias.x;
  let x_91 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_87.z, x_87.w), x_90);
  u_xlat1.z = x_91.z;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_101 : f32 = x_40.x_GlobalMipBias.x;
  let x_102 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_99, x_101);
  u_xlat0 = x_102;
  let x_109 : f32 = x_40.x_Bloom_RGBM;
  u_xlatb16 = (0.0f < x_109);
  let x_111 : bool = u_xlatb16;
  if (x_111) {
    let x_115 : vec4<f32> = u_xlat0;
    let x_117 : vec4<f32> = u_xlat0;
    let x_119 : vec3<f32> = (vec3<f32>(x_115.w, x_115.w, x_115.w) * vec3<f32>(x_117.x, x_117.y, x_117.z));
    let x_120 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
    let x_122 : vec4<f32> = u_xlat2;
    let x_126 : vec3<f32> = (vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_127 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  }
  let x_129 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = x_40.x_Bloom_Params;
  let x_136 : vec3<f32> = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_134.x, x_134.x, x_134.x));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = x_40.x_Bloom_Params;
  let x_145 : vec3<f32> = u_xlat1;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_142.y, x_142.z, x_142.w)) + x_145);
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_152 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_152);
  let x_154 : bool = u_xlatb15;
  if (x_154) {
    let x_157 : vec2<f32> = vs_TEXCOORD0;
    let x_159 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_162 : vec2<f32> = (x_157 + -(vec2<f32>(x_159.x, x_159.y)));
    let x_163 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_162.x, x_162.y, x_163.z);
    let x_165 : vec3<f32> = u_xlat1;
    let x_169 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_171 : vec2<f32> = (abs(vec2<f32>(x_165.x, x_165.y)) * vec2<f32>(x_169.z, x_169.z));
    let x_172 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_172.x, x_171.x, x_171.y);
    let x_175 : f32 = u_xlat1.y;
    let x_179 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat1.x = (x_175 * x_179);
    let x_183 : vec3<f32> = u_xlat1;
    let x_185 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_183.x, x_183.z), vec2<f32>(x_185.x, x_185.z));
    let x_188 : f32 = u_xlat15;
    u_xlat15 = (-(x_188) + 1.0f);
    let x_192 : f32 = u_xlat15;
    u_xlat15 = max(x_192, 0.0f);
    let x_194 : f32 = u_xlat15;
    u_xlat15 = log2(x_194);
    let x_196 : f32 = u_xlat15;
    let x_198 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat15 = (x_196 * x_198);
    let x_200 : f32 = u_xlat15;
    u_xlat15 = exp2(x_200);
    let x_203 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_208 : f32 = u_xlat15;
    let x_210 : vec3<f32> = u_xlat1;
    let x_213 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_208, x_208, x_208) * x_210) + vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_216 : vec4<f32> = u_xlat0;
    let x_218 : vec3<f32> = u_xlat1;
    let x_219 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) * x_218);
    let x_220 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  }
  let x_222 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_40.x_Lut_Params;
  let x_228 : vec3<f32> = (vec3<f32>(x_222.z, x_222.x, x_222.y) * vec3<f32>(x_226.w, x_226.w, x_226.w));
  let x_229 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat0;
  let x_244 : vec3<f32> = max(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = log2(vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = clamp(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = u_xlat0;
  let x_273 : vec4<f32> = x_40.x_Lut_Params;
  u_xlat5 = (vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_273.z, x_273.z, x_273.z));
  let x_277 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_277);
  let x_281 : vec4<f32> = x_40.x_Lut_Params;
  let x_285 : vec2<f32> = (vec2<f32>(x_281.x, x_281.y) * vec2<f32>(0.5f, 0.5f));
  let x_286 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_285.x, x_285.y, x_286.z);
  let x_288 : vec3<f32> = u_xlat5;
  let x_291 : vec4<f32> = x_40.x_Lut_Params;
  let x_294 : vec3<f32> = u_xlat1;
  let x_296 : vec2<f32> = ((vec2<f32>(x_288.y, x_288.z) * vec2<f32>(x_291.x, x_291.y)) + vec2<f32>(x_294.x, x_294.y));
  let x_297 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_297.x, x_296.x, x_296.y);
  let x_300 : f32 = u_xlat5.x;
  let x_302 : f32 = x_40.x_Lut_Params.y;
  let x_305 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_300 * x_302) + x_305);
  let x_312 : vec3<f32> = u_xlat1;
  let x_314 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_312.x, x_312.z), 0.0f);
  let x_315 : vec3<f32> = vec3<f32>(x_314.x, x_314.y, x_314.z);
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_320 : f32 = x_40.x_Lut_Params.y;
  u_xlat3.x = x_320;
  u_xlat3.y = 0.0f;
  let x_325 : vec3<f32> = u_xlat1;
  let x_327 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_325.x, x_325.z) + vec2<f32>(x_327.x, x_327.y));
  let x_333 : vec2<f32> = u_xlat10;
  let x_334 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_333, 0.0f);
  u_xlat1 = vec3<f32>(x_334.x, x_334.y, x_334.z);
  let x_337 : f32 = u_xlat0.x;
  let x_339 : f32 = x_40.x_Lut_Params.z;
  let x_342 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_337 * x_339) + -(x_342));
  let x_346 : vec4<f32> = u_xlat2;
  let x_349 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_346.x, x_346.y, x_346.z)) + x_349);
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = u_xlat5;
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.x, x_351.x) * x_353) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_362 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_362);
  let x_364 : bool = u_xlatb15;
  if (x_364) {
    let x_367 : vec4<f32> = u_xlat0;
    let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
    let x_369 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat0;
    let x_375 : vec3<f32> = clamp(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_376 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_383 : vec4<f32> = u_xlat0;
    let x_385 : vec3<f32> = log2(vec3<f32>(x_383.x, x_383.y, x_383.z));
    let x_386 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_388 : vec4<f32> = u_xlat2;
    let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_393 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat2;
    let x_397 : vec3<f32> = exp2(vec3<f32>(x_395.x, x_395.y, x_395.z));
    let x_398 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_400 : vec4<f32> = u_xlat2;
    let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_408 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_415 : vec4<f32> = u_xlat0;
    let x_418 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_415.x, x_415.y, x_415.z, x_415.x));
    u_xlatb3 = vec3<bool>(x_418.x, x_418.y, x_418.z);
    let x_421 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_421;
    let x_423 : bool = u_xlatb3.x;
    if (x_423) {
      let x_428 : f32 = u_xlat1.x;
      x_424 = x_428;
    } else {
      let x_431 : f32 = u_xlat2.x;
      x_424 = x_431;
    }
    let x_432 : f32 = x_424;
    hlslcc_movcTemp.x = x_432;
    let x_435 : bool = u_xlatb3.y;
    if (x_435) {
      let x_440 : f32 = u_xlat1.y;
      x_436 = x_440;
    } else {
      let x_443 : f32 = u_xlat2.y;
      x_436 = x_443;
    }
    let x_444 : f32 = x_436;
    hlslcc_movcTemp.y = x_444;
    let x_447 : bool = u_xlatb3.z;
    if (x_447) {
      let x_452 : f32 = u_xlat1.z;
      x_448 = x_452;
    } else {
      let x_455 : f32 = u_xlat2.z;
      x_448 = x_455;
    }
    let x_456 : f32 = x_448;
    hlslcc_movcTemp.z = x_456;
    let x_458 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_458;
    let x_459 : vec3<f32> = u_xlat1;
    let x_462 : vec4<f32> = x_40.x_UserLut_Params;
    let x_464 : vec3<f32> = (vec3<f32>(x_459.z, x_459.x, x_459.y) * vec3<f32>(x_462.z, x_462.z, x_462.z));
    let x_465 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_468 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_468);
    let x_471 : vec4<f32> = x_40.x_UserLut_Params;
    let x_473 : vec2<f32> = (vec2<f32>(x_471.x, x_471.y) * vec2<f32>(0.5f, 0.5f));
    let x_474 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_473.x, x_474.y, x_474.z, x_473.y);
    let x_476 : vec4<f32> = u_xlat2;
    let x_479 : vec4<f32> = x_40.x_UserLut_Params;
    let x_482 : vec4<f32> = u_xlat2;
    let x_484 : vec2<f32> = ((vec2<f32>(x_476.y, x_476.z) * vec2<f32>(x_479.x, x_479.y)) + vec2<f32>(x_482.x, x_482.w));
    let x_485 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_485.x, x_484.x, x_484.y, x_485.w);
    let x_487 : f32 = u_xlat15;
    let x_489 : f32 = x_40.x_UserLut_Params.y;
    let x_492 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_487 * x_489) + x_492);
    let x_499 : vec4<f32> = u_xlat2;
    let x_501 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_499.x, x_499.z), 0.0f);
    u_xlat3 = vec3<f32>(x_501.x, x_501.y, x_501.z);
    let x_505 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_505;
    u_xlat4.y = 0.0f;
    let x_508 : vec4<f32> = u_xlat2;
    let x_510 : vec2<f32> = u_xlat4;
    let x_511 : vec2<f32> = (vec2<f32>(x_508.x, x_508.z) + x_510);
    let x_512 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
    let x_517 : vec4<f32> = u_xlat2;
    let x_519 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_517.x, x_517.y), 0.0f);
    let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.z);
    let x_521 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_524 : f32 = u_xlat1.z;
    let x_526 : f32 = x_40.x_UserLut_Params.z;
    let x_528 : f32 = u_xlat15;
    u_xlat15 = ((x_524 * x_526) + -(x_528));
    let x_531 : vec3<f32> = u_xlat3;
    let x_533 : vec4<f32> = u_xlat2;
    let x_535 : vec3<f32> = (-(x_531) + vec3<f32>(x_533.x, x_533.y, x_533.z));
    let x_536 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_538 : f32 = u_xlat15;
    let x_540 : vec4<f32> = u_xlat2;
    let x_543 : vec3<f32> = u_xlat3;
    let x_544 : vec3<f32> = ((vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + x_543);
    let x_545 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
    let x_547 : vec3<f32> = u_xlat1;
    let x_549 : vec4<f32> = u_xlat2;
    let x_551 : vec3<f32> = (-(x_547) + vec3<f32>(x_549.x, x_549.y, x_549.z));
    let x_552 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_555 : vec4<f32> = x_40.x_UserLut_Params;
    let x_557 : vec4<f32> = u_xlat2;
    let x_560 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_555.w, x_555.w, x_555.w) * vec3<f32>(x_557.x, x_557.y, x_557.z)) + x_560);
    let x_562 : vec3<f32> = u_xlat1;
    let x_565 : vec3<f32> = (x_562 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_566 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_568 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_568 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_572 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_572 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_576 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_576));
    let x_579 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_579 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_583 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_583);
    let x_588 : vec3<f32> = u_xlat1;
    let x_590 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_588.x, x_588.y, x_588.z, x_588.x));
    u_xlatb1 = vec3<bool>(x_590.x, x_590.y, x_590.z);
    let x_593 : bool = u_xlatb1.x;
    if (x_593) {
      let x_598 : f32 = u_xlat2.x;
      x_594 = x_598;
    } else {
      let x_601 : f32 = u_xlat3.x;
      x_594 = x_601;
    }
    let x_602 : f32 = x_594;
    u_xlat0.x = x_602;
    let x_605 : bool = u_xlatb1.y;
    if (x_605) {
      let x_610 : f32 = u_xlat2.y;
      x_606 = x_610;
    } else {
      let x_613 : f32 = u_xlat3.y;
      x_606 = x_613;
    }
    let x_614 : f32 = x_606;
    u_xlat0.y = x_614;
    let x_617 : bool = u_xlatb1.z;
    if (x_617) {
      let x_622 : f32 = u_xlat2.z;
      x_618 = x_622;
    } else {
      let x_625 : f32 = u_xlat3.z;
      x_618 = x_625;
    }
    let x_626 : f32 = x_618;
    u_xlat0.z = x_626;
  }
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = sqrt(vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec2<f32> = vs_TEXCOORD0;
  let x_636 : vec4<f32> = x_40.x_Dithering_Params;
  let x_640 : vec4<f32> = x_40.x_Dithering_Params;
  let x_642 : vec2<f32> = ((x_633 * vec2<f32>(x_636.x, x_636.y)) + vec2<f32>(x_640.z, x_640.w));
  let x_643 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_642.x, x_642.y, x_643.z);
  let x_650 : vec3<f32> = u_xlat1;
  let x_653 : f32 = x_40.x_GlobalMipBias.x;
  let x_654 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_650.x, x_650.y), x_653);
  u_xlat15 = x_654.w;
  let x_656 : f32 = u_xlat15;
  u_xlat15 = ((x_656 * 2.0f) + -1.0f);
  let x_659 : f32 = u_xlat15;
  u_xlatb1.x = (x_659 >= 0.0f);
  let x_663 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_663);
  let x_666 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_666)) + 1.0f);
  let x_670 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_670);
  let x_672 : f32 = u_xlat15;
  u_xlat15 = (-(x_672) + 1.0f);
  let x_675 : f32 = u_xlat15;
  let x_677 : f32 = u_xlat1.x;
  u_xlat15 = (x_675 * x_677);
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec3<f32> = log2(vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat2;
  let x_689 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_690 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = exp2(vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat2;
  let x_700 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : vec4<f32> = u_xlat0;
  let x_706 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.x));
  u_xlatb0 = vec3<bool>(x_706.x, x_706.y, x_706.z);
  let x_709 : bool = u_xlatb0.x;
  if (x_709) {
    let x_714 : f32 = u_xlat1.x;
    x_710 = x_714;
  } else {
    let x_717 : f32 = u_xlat2.x;
    x_710 = x_717;
  }
  let x_718 : f32 = x_710;
  u_xlat0.x = x_718;
  let x_721 : bool = u_xlatb0.y;
  if (x_721) {
    let x_726 : f32 = u_xlat1.y;
    x_722 = x_726;
  } else {
    let x_729 : f32 = u_xlat2.y;
    x_722 = x_729;
  }
  let x_730 : f32 = x_722;
  u_xlat0.y = x_730;
  let x_733 : bool = u_xlatb0.z;
  if (x_733) {
    let x_738 : f32 = u_xlat1.z;
    x_734 = x_738;
  } else {
    let x_741 : f32 = u_xlat2.z;
    x_734 = x_741;
  }
  let x_742 : f32 = x_734;
  u_xlat0.z = x_742;
  let x_744 : f32 = u_xlat15;
  let x_749 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744, x_744, x_744) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_757 : vec4<f32> = u_xlat0;
  let x_759 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat2;
  let x_770 : vec3<f32> = log2(abs(vec3<f32>(x_767.x, x_767.y, x_767.z)));
  let x_771 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat2;
  let x_775 : vec3<f32> = (vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat2;
  let x_780 : vec3<f32> = exp2(vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat0;
  let x_785 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_783.x, x_783.y, x_783.z, x_783.x));
  u_xlatb0 = vec3<bool>(x_785.x, x_785.y, x_785.z);
  let x_788 : bool = u_xlatb0.x;
  if (x_788) {
    let x_793 : f32 = u_xlat1.x;
    x_789 = x_793;
  } else {
    let x_796 : f32 = u_xlat2.x;
    x_789 = x_796;
  }
  let x_797 : f32 = x_789;
  u_xlat0.x = x_797;
  let x_800 : bool = u_xlatb0.y;
  if (x_800) {
    let x_805 : f32 = u_xlat1.y;
    x_801 = x_805;
  } else {
    let x_808 : f32 = u_xlat2.y;
    x_801 = x_808;
  }
  let x_809 : f32 = x_801;
  u_xlat0.y = x_809;
  let x_812 : bool = u_xlatb0.z;
  if (x_812) {
    let x_817 : f32 = u_xlat1.z;
    x_813 = x_817;
  } else {
    let x_820 : f32 = u_xlat2.z;
    x_813 = x_820;
  }
  let x_821 : f32 = x_813;
  u_xlat0.z = x_821;
  let x_825 : vec4<f32> = u_xlat0;
  let x_827 : vec3<f32> = max(vec3<f32>(x_825.x, x_825.y, x_825.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_828 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  SV_Target0.w = 1.0f;
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

