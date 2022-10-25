struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_Grain_Params : vec2<f32>,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointClamp : sampler;

@group(0) @binding(2) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_151 : f32;
  var x_163 : f32;
  var x_176 : f32;
  var u_xlat9 : f32;
  var u_xlatb9 : bool;
  var x_276 : f32;
  var x_289 : f32;
  var x_301 : f32;
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
  u_xlat0.x = dot(x_88, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
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
  u_xlat1 = (x_118 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_122 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_122);
  let x_124 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_124 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_132 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_132 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_143 : vec3<f32> = u_xlat0;
  let x_146 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_143.x, x_143.y, x_143.z, x_143.x));
  u_xlatb0 = vec3<bool>(x_146.x, x_146.y, x_146.z);
  let x_150 : bool = u_xlatb0.x;
  if (x_150) {
    let x_155 : f32 = u_xlat2.x;
    x_151 = x_155;
  } else {
    let x_158 : f32 = u_xlat1.x;
    x_151 = x_158;
  }
  let x_159 : f32 = x_151;
  u_xlat0.x = x_159;
  let x_162 : bool = u_xlatb0.y;
  if (x_162) {
    let x_167 : f32 = u_xlat2.y;
    x_163 = x_167;
  } else {
    let x_170 : f32 = u_xlat1.y;
    x_163 = x_170;
  }
  let x_171 : f32 = x_163;
  u_xlat0.y = x_171;
  let x_175 : bool = u_xlatb0.z;
  if (x_175) {
    let x_180 : f32 = u_xlat2.z;
    x_176 = x_180;
  } else {
    let x_183 : f32 = u_xlat1.z;
    x_176 = x_183;
  }
  let x_184 : f32 = x_176;
  u_xlat0.z = x_184;
  let x_186 : vec2<f32> = vs_TEXCOORD0;
  let x_189 : vec4<f32> = x_17.x_Dithering_Params;
  let x_193 : vec4<f32> = x_17.x_Dithering_Params;
  let x_195 : vec2<f32> = ((x_186 * vec2<f32>(x_189.x, x_189.y)) + vec2<f32>(x_193.z, x_193.w));
  let x_196 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_195.x, x_195.y, x_196.z);
  let x_204 : vec3<f32> = u_xlat1;
  let x_207 : f32 = x_17.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_204.x, x_204.y), x_207);
  u_xlat9 = x_208.w;
  let x_210 : f32 = u_xlat9;
  u_xlat9 = ((x_210 * 2.0f) + -1.0f);
  let x_215 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_215)) + 1.0f);
  let x_221 : f32 = u_xlat9;
  u_xlatb9 = (x_221 >= 0.0f);
  let x_223 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_223);
  let x_226 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_226);
  let x_230 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_230) + 1.0f);
  let x_234 : f32 = u_xlat9;
  let x_236 : f32 = u_xlat1.x;
  u_xlat9 = (x_234 * x_236);
  let x_238 : f32 = u_xlat9;
  let x_243 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_238, x_238, x_238) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_243);
  let x_245 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_245 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_249 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_249 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_253 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_253));
  let x_256 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_256 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_260 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_260);
  let x_262 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_262 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_268 : vec3<f32> = u_xlat0;
  let x_270 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_268.x, x_268.y, x_268.z, x_268.x));
  u_xlatb0 = vec3<bool>(x_270.x, x_270.y, x_270.z);
  let x_275 : bool = u_xlatb0.x;
  if (x_275) {
    let x_280 : f32 = u_xlat2.x;
    x_276 = x_280;
  } else {
    let x_283 : f32 = u_xlat1.x;
    x_276 = x_283;
  }
  let x_284 : f32 = x_276;
  SV_Target0.x = x_284;
  let x_288 : bool = u_xlatb0.y;
  if (x_288) {
    let x_293 : f32 = u_xlat2.y;
    x_289 = x_293;
  } else {
    let x_296 : f32 = u_xlat1.y;
    x_289 = x_296;
  }
  let x_297 : f32 = x_289;
  SV_Target0.y = x_297;
  let x_300 : bool = u_xlatb0.z;
  if (x_300) {
    let x_305 : f32 = u_xlat2.z;
    x_301 = x_305;
  } else {
    let x_308 : f32 = u_xlat1.z;
    x_301 = x_308;
  }
  let x_309 : f32 = x_301;
  SV_Target0.z = x_309;
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

