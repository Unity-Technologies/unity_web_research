struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : f32;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_211 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2 = sin(x_95);
    let x_99 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_99);
    let x_101 : f32 = u_xlat2;
    let x_102 : f32 = u_xlat3;
    u_xlat5.x = (x_101 / x_102);
    let x_109 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_109);
    let x_112 : f32 = u_xlat5.x;
    let x_113 : f32 = u_xlat9;
    u_xlat5.x = ((x_112 * x_113) + -1.0f);
    let x_118 : vec3<f32> = u_xlat0;
    let x_120 : vec2<f32> = u_xlat5;
    let x_123 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_120.x, x_120.x)) + x_123);
  } else {
    let x_128 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_128);
    let x_130 : f32 = u_xlat13;
    let x_132 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_130 * x_132);
    let x_135 : f32 = u_xlat1.x;
    let x_137 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    u_xlat2 = min(abs(x_141), 1.0f);
    let x_146 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_146), 1.0f);
    let x_149 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_149);
    let x_151 : f32 = u_xlat6;
    let x_152 : f32 = u_xlat2;
    u_xlat2 = (x_151 * x_152);
    let x_154 : f32 = u_xlat2;
    let x_155 : f32 = u_xlat2;
    u_xlat6 = (x_154 * x_155);
    let x_158 : f32 = u_xlat6;
    u_xlat10 = ((x_158 * 0.0208351f) + -0.085133001f);
    let x_163 : f32 = u_xlat6;
    let x_164 : f32 = u_xlat10;
    u_xlat10 = ((x_163 * x_164) + 0.180141002f);
    let x_168 : f32 = u_xlat6;
    let x_169 : f32 = u_xlat10;
    u_xlat10 = ((x_168 * x_169) + -0.330299497f);
    let x_173 : f32 = u_xlat6;
    let x_174 : f32 = u_xlat10;
    u_xlat6 = ((x_173 * x_174) + 0.999866009f);
    let x_178 : f32 = u_xlat6;
    let x_179 : f32 = u_xlat2;
    u_xlat10 = (x_178 * x_179);
    let x_183 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_183));
    let x_186 : f32 = u_xlat10;
    u_xlat10 = ((x_186 * -2.0f) + 1.570796371f);
    let x_191 : bool = u_xlatb14;
    let x_192 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_192, x_191);
    let x_194 : f32 = u_xlat2;
    let x_195 : f32 = u_xlat6;
    let x_197 : f32 = u_xlat10;
    u_xlat2 = ((x_194 * x_195) + x_197);
    let x_200 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_200, 1.0f);
    let x_205 : f32 = u_xlat1.x;
    let x_207 : f32 = u_xlat1.x;
    u_xlatb1 = (x_205 < -(x_207));
    let x_210 : bool = u_xlatb1;
    if (x_210) {
      let x_214 : f32 = u_xlat2;
      x_211 = -(x_214);
    } else {
      let x_217 : f32 = u_xlat2;
      x_211 = x_217;
    }
    let x_218 : f32 = x_211;
    u_xlat1.x = x_218;
    let x_220 : f32 = u_xlat13;
    let x_222 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_220 * x_222) + -1.0f);
    let x_226 : vec3<f32> = u_xlat0;
    let x_228 : vec4<f32> = u_xlat1;
    let x_231 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_226.x, x_226.y) * vec2<f32>(x_228.x, x_228.x)) + x_231);
  }
  let x_244 : vec2<f32> = vs_TEXCOORD0;
  let x_245 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_244);
  u_xlat0.x = x_245.x;
  let x_253 : vec2<f32> = u_xlat5;
  let x_254 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_253);
  u_xlat1 = x_254;
  let x_255 : vec3<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.x, x_255.x) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_265 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_265);
  let x_267 : bool = u_xlatb0;
  if (x_267) {
    let x_270 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_270.x, x_270.y, x_270.z);
    let x_272 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_272, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_276 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_276, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_285 : vec4<f32> = u_xlat1;
  SV_Target0 = x_285;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

