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

@group(0) @binding(3) var sampler_PointClamp : sampler;

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
  var x_277 : f32;
  var x_290 : f32;
  var x_302 : f32;
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
  let x_74 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_71, x_73);
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
  let x_187 : vec2<f32> = vs_TEXCOORD0;
  let x_190 : vec4<f32> = x_17.x_Dithering_Params;
  let x_194 : vec4<f32> = x_17.x_Dithering_Params;
  let x_196 : vec2<f32> = ((x_187 * vec2<f32>(x_190.x, x_190.y)) + vec2<f32>(x_194.z, x_194.w));
  let x_197 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_205 : vec3<f32> = u_xlat1;
  let x_208 : f32 = x_17.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat9 = x_209.w;
  let x_211 : f32 = u_xlat9;
  u_xlat9 = ((x_211 * 2.0f) + -1.0f);
  let x_216 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_216)) + 1.0f);
  let x_222 : f32 = u_xlat9;
  u_xlatb9 = (x_222 >= 0.0f);
  let x_224 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_224);
  let x_227 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_227);
  let x_231 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_231) + 1.0f);
  let x_235 : f32 = u_xlat9;
  let x_237 : f32 = u_xlat1.x;
  u_xlat9 = (x_235 * x_237);
  let x_239 : f32 = u_xlat9;
  let x_244 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_239, x_239, x_239) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_244);
  let x_246 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_246 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_250 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_250 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_254 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_254));
  let x_257 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_257 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_261 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_261);
  let x_263 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_263 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_269 : vec3<f32> = u_xlat0;
  let x_271 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_269.x, x_269.y, x_269.z, x_269.x));
  u_xlatb0 = vec3<bool>(x_271.x, x_271.y, x_271.z);
  let x_276 : bool = u_xlatb0.x;
  if (x_276) {
    let x_281 : f32 = u_xlat2.x;
    x_277 = x_281;
  } else {
    let x_284 : f32 = u_xlat1.x;
    x_277 = x_284;
  }
  let x_285 : f32 = x_277;
  SV_Target0.x = x_285;
  let x_289 : bool = u_xlatb0.y;
  if (x_289) {
    let x_294 : f32 = u_xlat2.y;
    x_290 = x_294;
  } else {
    let x_297 : f32 = u_xlat1.y;
    x_290 = x_297;
  }
  let x_298 : f32 = x_290;
  SV_Target0.y = x_298;
  let x_301 : bool = u_xlatb0.z;
  if (x_301) {
    let x_306 : f32 = u_xlat2.z;
    x_302 = x_306;
  } else {
    let x_309 : f32 = u_xlat1.z;
    x_302 = x_309;
  }
  let x_310 : f32 = x_302;
  SV_Target0.z = x_310;
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


