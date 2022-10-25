struct PGlobals {
  x_SourceSize : vec4<f32>,
  x_DownSampleScaleFactor : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var x_FullCoCTexture : texture_2d<f32>;

@group(0) @binding(1) var x_ColorTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_SourceSize;
  u_xlat0 = (x_12 * vec2<f32>(x_21.x, x_21.y));
  let x_28 : vec2<f32> = u_xlat0;
  let x_32 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(x_28));
  let x_33 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_32.x, x_32.y, x_33.z, x_33.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_48 : vec4<u32> = u_xlatu0;
  let x_52 : u32 = u_xlatu0.w;
  let x_54 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_48.x, x_48.y)), bitcast<i32>(x_52));
  u_xlat1 = vec3<f32>(x_54.x, x_54.y, x_54.z);
  let x_58 : vec4<u32> = u_xlatu0;
  let x_62 : u32 = u_xlatu0.w;
  let x_64 : vec4<f32> = textureLoad(x_FullCoCTexture, bitcast<vec2<i32>>(vec2<u32>(x_58.x, x_58.y)), bitcast<i32>(x_62));
  u_xlat0.x = x_64.x;
  let x_73 : f32 = u_xlat0.x;
  u_xlatb6 = (0.0f < x_73);
  let x_75 : bool = u_xlatb6;
  if (x_75) {
    let x_81 : vec4<f32> = x_16.x_SourceSize;
    let x_84 : vec4<f32> = x_16.x_DownSampleScaleFactor;
    u_xlat2 = (x_81 * x_84);
    let x_87 : vec2<f32> = vs_TEXCOORD0;
    let x_88 : vec4<f32> = u_xlat2;
    let x_93 : vec2<f32> = ((x_87 * vec2<f32>(x_88.x, x_88.y)) + vec2<f32>(0.5f, 0.5f));
    let x_94 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_93.x, x_93.y, x_94.z);
    let x_96 : vec3<f32> = u_xlat6;
    let x_98 : vec2<f32> = floor(vec2<f32>(x_96.x, x_96.y));
    let x_99 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_99.w);
    let x_101 : vec3<f32> = u_xlat6;
    let x_103 : vec2<f32> = fract(vec2<f32>(x_101.x, x_101.y));
    let x_104 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_103.x, x_103.y, x_104.z);
    let x_107 : vec3<f32> = u_xlat6;
    u_xlat3 = ((-(vec4<f32>(x_107.x, x_107.y, x_107.x, x_107.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
    let x_115 : vec3<f32> = u_xlat6;
    let x_117 : vec4<f32> = u_xlat3;
    u_xlat3 = ((vec4<f32>(x_115.x, x_115.y, x_115.x, x_115.y) * x_117) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
    let x_123 : vec3<f32> = u_xlat6;
    let x_128 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
    let x_129 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
    let x_132 : vec3<f32> = u_xlat6;
    let x_134 : vec3<f32> = u_xlat6;
    u_xlat16 = (vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_134.x, x_134.y));
    let x_137 : vec2<f32> = u_xlat16;
    let x_138 : vec4<f32> = u_xlat4;
    let x_143 : vec2<f32> = ((x_137 * vec2<f32>(x_138.x, x_138.y)) + vec2<f32>(0.666666687f, 0.666666687f));
    let x_144 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_144.z, x_144.w);
    let x_146 : vec3<f32> = u_xlat6;
    let x_148 : vec4<f32> = u_xlat3;
    u_xlat3 = ((vec4<f32>(x_146.x, x_146.y, x_146.x, x_146.y) * x_148) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
    let x_152 : vec4<f32> = u_xlat4;
    let x_157 : vec2<f32> = (-(vec2<f32>(x_152.x, x_152.y)) + vec2<f32>(1.0f, 1.0f));
    let x_158 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_157.x, x_157.y, x_158.z);
    let x_160 : vec4<f32> = u_xlat3;
    let x_163 : vec3<f32> = u_xlat6;
    let x_165 : vec2<f32> = (-(vec2<f32>(x_160.x, x_160.y)) + vec2<f32>(x_163.x, x_163.y));
    let x_166 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_165.x, x_165.y, x_166.z);
    let x_168 : vec4<f32> = u_xlat3;
    let x_171 : vec3<f32> = u_xlat6;
    let x_173 : vec2<f32> = (-(vec2<f32>(x_168.z, x_168.w)) + vec2<f32>(x_171.x, x_171.y));
    let x_174 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_173.x, x_173.y, x_174.z);
    let x_177 : vec4<f32> = u_xlat4;
    let x_179 : vec4<f32> = u_xlat3;
    u_xlat15 = (vec2<f32>(x_177.x, x_177.y) + vec2<f32>(x_179.z, x_179.w));
    let x_182 : vec3<f32> = u_xlat6;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec2<f32> = (vec2<f32>(x_182.x, x_182.y) + vec2<f32>(x_184.x, x_184.y));
    let x_187 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
    let x_189 : vec2<f32> = u_xlat15;
    u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_189.x, x_189.y));
    let x_194 : vec4<f32> = u_xlat4;
    let x_196 : vec2<f32> = u_xlat16;
    let x_198 : vec2<f32> = ((vec2<f32>(x_194.x, x_194.y) * x_196) + vec2<f32>(-1.0f, -1.0f));
    let x_199 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_199.y, x_198.x, x_198.y);
    let x_202 : vec4<f32> = u_xlat3;
    let x_203 : vec2<f32> = vec2<f32>(x_202.x, x_202.y);
    let x_207 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_203.x, x_203.y));
    let x_208 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_207.x, x_207.y, x_208.z, x_208.w);
    let x_210 : vec3<f32> = u_xlat6;
    let x_212 : vec4<f32> = u_xlat5;
    let x_215 : vec2<f32> = ((vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_212.x, x_212.y)) + vec2<f32>(1.0f, 1.0f));
    let x_216 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
    let x_218 : vec4<f32> = u_xlat2;
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat5 = (vec4<f32>(x_218.x, x_218.y, x_218.x, x_218.y) + vec4<f32>(x_220.z, x_220.w, x_220.x, x_220.w));
    let x_223 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_223 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
    let x_226 : vec4<f32> = u_xlat2;
    let x_228 : vec4<f32> = u_xlat5;
    u_xlat5 = (vec4<f32>(x_226.z, x_226.w, x_226.z, x_226.w) * x_228);
    let x_230 : vec4<f32> = u_xlat5;
    u_xlat5 = min(x_230, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
    let x_241 : vec4<f32> = u_xlat5;
    let x_243 : vec4<f32> = textureSampleLevel(x_ColorTexture, sampler_LinearClamp, vec2<f32>(x_241.x, x_241.y), 0.0f);
    u_xlat6 = vec3<f32>(x_243.x, x_243.y, x_243.z);
    let x_248 : vec4<f32> = u_xlat5;
    let x_250 : vec4<f32> = textureSampleLevel(x_ColorTexture, sampler_LinearClamp, vec2<f32>(x_248.z, x_248.w), 0.0f);
    let x_251 : vec3<f32> = vec3<f32>(x_250.x, x_250.y, x_250.z);
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat3;
    let x_256 : vec4<f32> = u_xlat5;
    let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.x, x_254.x) * vec3<f32>(x_256.x, x_256.y, x_256.z));
    let x_259 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec2<f32> = u_xlat15;
    let x_263 : vec3<f32> = u_xlat6;
    let x_265 : vec4<f32> = u_xlat5;
    u_xlat6 = ((vec3<f32>(x_261.x, x_261.x, x_261.x) * x_263) + vec3<f32>(x_265.x, x_265.y, x_265.z));
    let x_268 : vec4<f32> = u_xlat2;
    let x_270 : vec4<f32> = u_xlat4;
    u_xlat4 = (vec4<f32>(x_268.x, x_268.y, x_268.x, x_268.y) + vec4<f32>(x_270.z, x_270.y, x_270.x, x_270.y));
    let x_273 : vec4<f32> = u_xlat4;
    u_xlat4 = (x_273 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
    let x_275 : vec4<f32> = u_xlat2;
    let x_277 : vec4<f32> = u_xlat4;
    u_xlat2 = (vec4<f32>(x_275.z, x_275.w, x_275.z, x_275.w) * x_277);
    let x_279 : vec4<f32> = u_xlat2;
    u_xlat2 = min(x_279, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
    let x_284 : vec4<f32> = u_xlat2;
    let x_286 : vec4<f32> = textureSampleLevel(x_ColorTexture, sampler_LinearClamp, vec2<f32>(x_284.x, x_284.y), 0.0f);
    let x_287 : vec3<f32> = vec3<f32>(x_286.x, x_286.y, x_286.z);
    let x_288 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_293 : vec4<f32> = u_xlat2;
    let x_295 : vec4<f32> = textureSampleLevel(x_ColorTexture, sampler_LinearClamp, vec2<f32>(x_293.z, x_293.w), 0.0f);
    let x_296 : vec3<f32> = vec3<f32>(x_295.x, x_295.y, x_295.z);
    let x_297 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_299 : vec4<f32> = u_xlat2;
    let x_301 : vec4<f32> = u_xlat3;
    let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.x, x_301.x));
    let x_304 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : vec2<f32> = u_xlat15;
    let x_308 : vec4<f32> = u_xlat4;
    let x_311 : vec4<f32> = u_xlat2;
    let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.x, x_306.x) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat2;
    let x_318 : vec4<f32> = u_xlat3;
    let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.y, x_318.y, x_318.y));
    let x_321 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : vec2<f32> = u_xlat15;
    let x_325 : vec3<f32> = u_xlat6;
    let x_327 : vec4<f32> = u_xlat2;
    u_xlat6 = ((vec3<f32>(x_323.y, x_323.y, x_323.y) * x_325) + vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_331 : f32 = u_xlat0.x;
    u_xlat0.x = (x_331 * 6.283185482f);
    let x_336 : f32 = u_xlat0.x;
    u_xlat0.x = sqrt(x_336);
    let x_341 : f32 = u_xlat0.x;
    u_xlat19 = min(x_341, 1.0f);
    let x_343 : vec3<f32> = u_xlat6;
    let x_344 : f32 = u_xlat19;
    u_xlat6 = (x_343 * vec3<f32>(x_344, x_344, x_344));
    let x_348 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_348) + 1.0f);
    let x_353 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_353, 0.0f);
  } else {
    u_xlat0.x = 1.0f;
    u_xlat6.x = 0.0f;
    u_xlat6.y = 0.0f;
    u_xlat6.z = 0.0f;
  }
  let x_364 : vec3<f32> = u_xlat1;
  let x_365 : vec2<f32> = u_xlat0;
  let x_368 : vec3<f32> = u_xlat6;
  let x_369 : vec3<f32> = ((x_364 * vec3<f32>(x_365.x, x_365.x, x_365.x)) + x_368);
  let x_370 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
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

