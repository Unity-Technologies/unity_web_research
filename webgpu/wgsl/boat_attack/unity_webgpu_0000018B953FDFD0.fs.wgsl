diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_Grain_Params : vec2<f32>,
  /* @offset(16) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(32) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat9 : f32;

@group(0) @binding(2) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointRepeat : sampler;

var<private> u_xlatb9 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_152 : f32;
  var x_164 : f32;
  var x_177 : f32;
  var x_205 : f32;
  var x_217 : f32;
  var x_229 : f32;
  var x_329 : f32;
  var x_342 : f32;
  var x_354 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_26 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_48 : f32 = x_17.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_41.x, x_41.y), x_48);
  u_xlat0.x = x_49.w;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 + -0.5f);
  let x_60 : f32 = u_xlat0.x;
  let x_62 : f32 = u_xlat0.x;
  u_xlat0.x = (x_60 + x_62);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_17.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_71, x_73);
  u_xlat3 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_77 : vec3<f32> = u_xlat0;
  let x_79 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * x_79);
  let x_81 : vec3<f32> = u_xlat1;
  let x_85 : vec2<f32> = x_17.x_Grain_Params;
  u_xlat1 = (x_81 * vec3<f32>(x_85.x, x_85.x, x_85.x));
  let x_88 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_88, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_96 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_96);
  let x_101 : f32 = x_17.x_Grain_Params.y;
  let x_103 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_101 * -(x_103)) + 1.0f);
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_109 * vec3<f32>(x_110.x, x_110.x, x_110.x)) + x_113);
  let x_115 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_115));
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_118 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_122 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_122);
  let x_124 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_124 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_132 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_132 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_143 : vec3<f32> = u_xlat0;
  let x_146 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_143.x, x_143.y, x_143.z, x_143.x));
  u_xlatb0 = vec3<bool>(x_146.x, x_146.y, x_146.z);
  let x_150 : bool = u_xlatb0.x;
  if (x_150) {
    let x_156 : f32 = u_xlat2.x;
    x_152 = x_156;
  } else {
    let x_159 : f32 = u_xlat1.x;
    x_152 = x_159;
  }
  let x_160 : f32 = x_152;
  u_xlat0.x = x_160;
  let x_163 : bool = u_xlatb0.y;
  if (x_163) {
    let x_168 : f32 = u_xlat2.y;
    x_164 = x_168;
  } else {
    let x_171 : f32 = u_xlat1.y;
    x_164 = x_171;
  }
  let x_172 : f32 = x_164;
  u_xlat0.y = x_172;
  let x_176 : bool = u_xlatb0.z;
  if (x_176) {
    let x_181 : f32 = u_xlat2.z;
    x_177 = x_181;
  } else {
    let x_184 : f32 = u_xlat1.z;
    x_177 = x_184;
  }
  let x_185 : f32 = x_177;
  u_xlat0.z = x_185;
  let x_187 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_187));
  let x_190 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_190 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_192 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_192);
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_194 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_197 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_197 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_199.x, x_199.y, x_199.z, x_199.x));
  u_xlatb0 = vec3<bool>(x_201.x, x_201.y, x_201.z);
  let x_204 : bool = u_xlatb0.x;
  if (x_204) {
    let x_209 : f32 = u_xlat2.x;
    x_205 = x_209;
  } else {
    let x_212 : f32 = u_xlat1.x;
    x_205 = x_212;
  }
  let x_213 : f32 = x_205;
  u_xlat0.x = x_213;
  let x_216 : bool = u_xlatb0.y;
  if (x_216) {
    let x_221 : f32 = u_xlat2.y;
    x_217 = x_221;
  } else {
    let x_224 : f32 = u_xlat1.y;
    x_217 = x_224;
  }
  let x_225 : f32 = x_217;
  u_xlat0.y = x_225;
  let x_228 : bool = u_xlatb0.z;
  if (x_228) {
    let x_233 : f32 = u_xlat2.z;
    x_229 = x_233;
  } else {
    let x_236 : f32 = u_xlat1.z;
    x_229 = x_236;
  }
  let x_237 : f32 = x_229;
  u_xlat0.z = x_237;
  let x_239 : vec2<f32> = vs_TEXCOORD0;
  let x_242 : vec4<f32> = x_17.x_Dithering_Params;
  let x_246 : vec4<f32> = x_17.x_Dithering_Params;
  let x_248 : vec2<f32> = ((x_239 * vec2<f32>(x_242.x, x_242.y)) + vec2<f32>(x_246.z, x_246.w));
  let x_249 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_248.x, x_248.y, x_249.z);
  let x_257 : vec3<f32> = u_xlat1;
  let x_260 : f32 = x_17.x_GlobalMipBias.x;
  let x_261 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_257.x, x_257.y), x_260);
  u_xlat9 = x_261.w;
  let x_263 : f32 = u_xlat9;
  u_xlat9 = ((x_263 * 2.0f) + -1.0f);
  let x_268 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_268)) + 1.0f);
  let x_274 : f32 = u_xlat9;
  u_xlatb9 = (x_274 >= 0.0f);
  let x_276 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_276);
  let x_279 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_279);
  let x_283 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_283) + 1.0f);
  let x_287 : f32 = u_xlat9;
  let x_289 : f32 = u_xlat1.x;
  u_xlat9 = (x_287 * x_289);
  let x_291 : f32 = u_xlat9;
  let x_296 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_291, x_291, x_291) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_296);
  let x_298 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_298 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_302 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_302 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_306 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_306));
  let x_309 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_309 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_313 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_313);
  let x_315 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_315 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_321 : vec3<f32> = u_xlat0;
  let x_323 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_321.x, x_321.y, x_321.z, x_321.x));
  u_xlatb0 = vec3<bool>(x_323.x, x_323.y, x_323.z);
  let x_328 : bool = u_xlatb0.x;
  if (x_328) {
    let x_333 : f32 = u_xlat2.x;
    x_329 = x_333;
  } else {
    let x_336 : f32 = u_xlat1.x;
    x_329 = x_336;
  }
  let x_337 : f32 = x_329;
  SV_Target0.x = x_337;
  let x_341 : bool = u_xlatb0.y;
  if (x_341) {
    let x_346 : f32 = u_xlat2.y;
    x_342 = x_346;
  } else {
    let x_349 : f32 = u_xlat1.y;
    x_342 = x_349;
  }
  let x_350 : f32 = x_342;
  SV_Target0.y = x_350;
  let x_353 : bool = u_xlatb0.z;
  if (x_353) {
    let x_358 : f32 = u_xlat2.z;
    x_354 = x_358;
  } else {
    let x_361 : f32 = u_xlat1.z;
    x_354 = x_361;
  }
  let x_362 : f32 = x_354;
  SV_Target0.z = x_362;
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


