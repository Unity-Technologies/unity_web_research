struct PGlobals {
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_169 : f32;
  var x_181 : f32;
  var x_194 : f32;
  var x_321 : f32;
  var x_333 : f32;
  var x_345 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_47 : vec2<f32> = vs_TEXCOORD1;
  let x_55 : vec4<f32> = x_50.x_Grain_Params2;
  let x_59 : vec4<f32> = x_50.x_Grain_Params2;
  let x_61 : vec2<f32> = ((x_47 * vec2<f32>(x_55.x, x_55.y)) + vec2<f32>(x_59.z, x_59.w));
  let x_62 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_61.x, x_61.y, x_62.z);
  let x_69 : vec3<f32> = u_xlat2;
  let x_71 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_69.x, x_69.y));
  u_xlat2 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat3 = x_74;
  let x_75 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_75, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_82, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_88 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_88);
  let x_93 : f32 = x_50.x_Grain_Params1.x;
  let x_94 : f32 = u_xlat15;
  u_xlat15 = ((x_93 * -(x_94)) + 1.0f);
  let x_98 : vec3<f32> = u_xlat0;
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_98 * x_99);
  let x_101 : vec3<f32> = u_xlat2;
  let x_104 : f32 = x_50.x_Grain_Params1.y;
  let x_106 : f32 = x_50.x_Grain_Params1.y;
  let x_108 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_101 * vec3<f32>(x_104, x_106, x_108));
  let x_111 : vec3<f32> = u_xlat2;
  let x_112 : f32 = u_xlat15;
  let x_115 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_111 * vec3<f32>(x_112, x_112, x_112)) + x_115);
  let x_117 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_117, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_123 : f32 = u_xlat1.w;
  u_xlat1.w = x_123;
  let x_126 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_126, 0.0f, 1.0f);
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_129.z, x_129.x, x_129.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_134 : vec3<f32> = u_xlat0;
  u_xlat3 = max(vec3<f32>(x_134.z, x_134.x, x_134.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_139 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_139);
  let x_141 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_141 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_145 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_145);
  let x_147 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_147 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_160 : vec3<f32> = u_xlat0;
  let x_163 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_160.z, x_160.x, x_160.y, x_160.z));
  u_xlatb0 = vec3<bool>(x_163.x, x_163.y, x_163.z);
  let x_167 : bool = u_xlatb0.x;
  if (x_167) {
    let x_173 : f32 = u_xlat2.x;
    x_169 = x_173;
  } else {
    let x_176 : f32 = u_xlat3.x;
    x_169 = x_176;
  }
  let x_177 : f32 = x_169;
  u_xlat0.x = x_177;
  let x_180 : bool = u_xlatb0.y;
  if (x_180) {
    let x_185 : f32 = u_xlat2.y;
    x_181 = x_185;
  } else {
    let x_188 : f32 = u_xlat3.y;
    x_181 = x_188;
  }
  let x_189 : f32 = x_181;
  u_xlat0.y = x_189;
  let x_193 : bool = u_xlatb0.z;
  if (x_193) {
    let x_198 : f32 = u_xlat2.z;
    x_194 = x_198;
  } else {
    let x_201 : f32 = u_xlat3.z;
    x_194 = x_201;
  }
  let x_202 : f32 = x_194;
  u_xlat0.z = x_202;
  let x_205 : vec3<f32> = u_xlat0;
  let x_209 : vec3<f32> = x_50.x_Lut2D_Params;
  u_xlat5 = (x_205 * vec3<f32>(x_209.z, x_209.z, x_209.z));
  let x_213 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_213);
  let x_217 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_221 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) * vec2<f32>(0.5f, 0.5f));
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_221.x, x_221.y, x_222.z);
  let x_224 : vec3<f32> = u_xlat5;
  let x_227 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_230 : vec3<f32> = u_xlat2;
  let x_232 : vec2<f32> = ((vec2<f32>(x_224.y, x_224.z) * vec2<f32>(x_227.x, x_227.y)) + vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_233.x, x_232.x, x_232.y);
  let x_236 : f32 = u_xlat5.x;
  let x_238 : f32 = x_50.x_Lut2D_Params.y;
  let x_241 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_236 * x_238) + x_241);
  let x_249 : vec3<f32> = u_xlat2;
  let x_251 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_249.x, x_249.z));
  u_xlat3 = vec3<f32>(x_251.x, x_251.y, x_251.z);
  let x_256 : f32 = x_50.x_Lut2D_Params.y;
  u_xlat4.x = x_256;
  u_xlat4.y = 0.0f;
  let x_260 : vec3<f32> = u_xlat2;
  let x_262 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_260.x, x_260.z) + x_262);
  let x_267 : vec2<f32> = u_xlat10;
  let x_268 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_267);
  u_xlat2 = vec3<f32>(x_268.x, x_268.y, x_268.z);
  let x_271 : f32 = u_xlat0.x;
  let x_273 : f32 = x_50.x_Lut2D_Params.z;
  let x_276 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_271 * x_273) + -(x_276));
  let x_280 : vec3<f32> = u_xlat3;
  let x_282 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_280) + x_282);
  let x_284 : vec3<f32> = u_xlat0;
  let x_286 : vec3<f32> = u_xlat5;
  let x_288 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_284.x, x_284.x, x_284.x) * x_286) + x_288);
  let x_290 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_290 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_294 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_294 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_298 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_298 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_302 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_302), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_305);
  let x_307 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_307 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_311);
  let x_315 : vec3<f32> = u_xlat0;
  let x_317 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_315.x, x_315.y, x_315.z, x_315.x));
  u_xlatb0 = vec3<bool>(x_317.x, x_317.y, x_317.z);
  let x_320 : bool = u_xlatb0.x;
  if (x_320) {
    let x_325 : f32 = u_xlat2.x;
    x_321 = x_325;
  } else {
    let x_328 : f32 = u_xlat3.x;
    x_321 = x_328;
  }
  let x_329 : f32 = x_321;
  u_xlat1.x = x_329;
  let x_332 : bool = u_xlatb0.y;
  if (x_332) {
    let x_337 : f32 = u_xlat2.y;
    x_333 = x_337;
  } else {
    let x_340 : f32 = u_xlat3.y;
    x_333 = x_340;
  }
  let x_341 : f32 = x_333;
  u_xlat1.y = x_341;
  let x_344 : bool = u_xlatb0.z;
  if (x_344) {
    let x_349 : f32 = u_xlat2.z;
    x_345 = x_349;
  } else {
    let x_352 : f32 = u_xlat3.z;
    x_345 = x_352;
  }
  let x_353 : f32 = x_345;
  u_xlat1.z = x_353;
  let x_357 : f32 = x_50.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_357);
  let x_361 : bool = u_xlatb0.x;
  if (x_361) {
    let x_364 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_364.x, x_364.y, x_364.z);
    let x_366 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_366, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_370 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_370, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_375 : vec4<f32> = u_xlat1;
  SV_Target0 = x_375;
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

