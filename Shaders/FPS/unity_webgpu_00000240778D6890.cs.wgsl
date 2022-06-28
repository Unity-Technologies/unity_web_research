struct Params {
  x_Size : vec4<f32>,
  x_ColorBalance : vec4<f32>,
  x_ColorFilter : vec4<f32>,
  x_HueSatCon : vec4<f32>,
  x_ChannelMixerRed : vec4<f32>,
  x_ChannelMixerGreen : vec4<f32>,
  x_ChannelMixerBlue : vec4<f32>,
  x_Lift : vec4<f32>,
  x_InvGamma : vec4<f32>,
  x_Gain : vec4<f32>,
  x_CustomToneCurve : vec4<f32>,
  x_ToeSegmentA : vec4<f32>,
  x_ToeSegmentB : vec4<f32>,
  x_MidSegmentA : vec4<f32>,
  x_MidSegmentB : vec4<f32>,
  x_ShoSegmentA : vec4<f32>,
  x_ShoSegmentB : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var<uniform> x_27 : Params;

var<private> u_xlatb12 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlatb0 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(1) var x_Curves : texture_2d<f32>;

@group(0) @binding(3) var sampler_Curves : sampler;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat8 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb7 : bool;

var<private> u_xlatb13 : bool;

@group(0) @binding(2) var x_Output_origX0X : texture_storage_3d<rgba32float, write>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_188 : f32;
  var x_200 : f32;
  var x_212 : f32;
  var x_790 : f32;
  var x_802 : f32;
  var x_1178 : f32;
  var x_1227 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec3<u32> = gl_GlobalInvocationID;
  let x_16 : vec3<f32> = vec3<f32>(x_14);
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_16.z, x_17.w);
  let x_23 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = x_27.x_Size;
  let x_35 : vec4<bool> = (vec4<f32>(x_23.x, x_23.y, x_23.z, x_23.x) < vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  u_xlatb1 = vec3<bool>(x_35.x, x_35.y, x_35.z);
  let x_41 : bool = u_xlatb1.y;
  let x_44 : bool = u_xlatb1.x;
  u_xlatb12 = (x_41 & x_44);
  let x_48 : bool = u_xlatb1.z;
  let x_49 : bool = u_xlatb12;
  u_xlatb12 = (x_48 & x_49);
  let x_51 : bool = u_xlatb12;
  if (x_51) {
    let x_54 : vec4<f32> = u_xlat0;
    let x_57 : vec4<f32> = x_27.x_Size;
    let x_62 : vec3<f32> = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(x_57.y, x_57.y, x_57.y)) + vec3<f32>(-0.386036009f, -0.386036009f, -0.386036009f));
    let x_63 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
    let x_65 : vec4<f32> = u_xlat0;
    let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(13.605482101f, 13.605482101f, 13.605482101f));
    let x_70 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
    let x_72 : vec4<f32> = u_xlat0;
    let x_74 : vec3<f32> = exp2(vec3<f32>(x_72.x, x_72.y, x_72.z));
    let x_75 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
    let x_77 : vec4<f32> = u_xlat0;
    let x_81 : vec3<f32> = (vec3<f32>(x_77.x, x_77.y, x_77.z) + vec3<f32>(-0.047995999f, -0.047995999f, -0.047995999f));
    let x_82 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
    let x_84 : vec4<f32> = u_xlat0;
    let x_88 : vec3<f32> = (vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(0.179999992f, 0.179999992f, 0.179999992f));
    let x_89 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
    let x_96 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), vec3<f32>(x_96.x, x_96.y, x_96.z));
    let x_105 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), vec3<f32>(x_105.x, x_105.y, x_105.z));
    let x_113 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), vec3<f32>(x_113.x, x_113.y, x_113.z));
    let x_117 : vec4<f32> = u_xlat1;
    let x_121 : vec3<f32> = max(vec3<f32>(x_117.x, x_117.y, x_117.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_122 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
    let x_124 : vec4<f32> = u_xlat0;
    let x_128 : vec3<f32> = min(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(65504.0f, 65504.0f, 65504.0f));
    let x_129 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
    let x_131 : vec4<f32> = u_xlat0;
    let x_135 : vec4<bool> = (vec4<f32>(x_131.x, x_131.y, x_131.z, x_131.x) < vec4<f32>(3.05175708e-05f, 3.05175708e-05f, 3.05175708e-05f, 0.0f));
    u_xlatb1 = vec3<bool>(x_135.x, x_135.y, x_135.z);
    let x_138 : vec4<f32> = u_xlat0;
    let x_145 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(1.525878e-05f, 1.525878e-05f, 1.525878e-05f));
    let x_146 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
    let x_148 : vec4<f32> = u_xlat2;
    let x_150 : vec3<f32> = log2(vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_153 : vec4<f32> = u_xlat2;
    let x_157 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) + vec3<f32>(9.720000267f, 9.720000267f, 9.720000267f));
    let x_158 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
    let x_160 : vec4<f32> = u_xlat2;
    let x_164 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(0.057077624f, 0.057077624f, 0.057077624f));
    let x_165 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_167 : vec4<f32> = u_xlat0;
    let x_169 : vec3<f32> = log2(vec3<f32>(x_167.x, x_167.y, x_167.z));
    let x_170 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
    let x_172 : vec4<f32> = u_xlat0;
    let x_174 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + vec3<f32>(9.720000267f, 9.720000267f, 9.720000267f));
    let x_175 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_177 : vec4<f32> = u_xlat0;
    let x_179 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(0.057077624f, 0.057077624f, 0.057077624f));
    let x_180 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_184 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_184;
    let x_186 : bool = u_xlatb1.x;
    if (x_186) {
      let x_192 : f32 = u_xlat2.x;
      x_188 = x_192;
    } else {
      let x_195 : f32 = u_xlat0.x;
      x_188 = x_195;
    }
    let x_196 : f32 = x_188;
    hlslcc_movcTemp.x = x_196;
    let x_199 : bool = u_xlatb1.y;
    if (x_199) {
      let x_204 : f32 = u_xlat2.y;
      x_200 = x_204;
    } else {
      let x_207 : f32 = u_xlat0.y;
      x_200 = x_207;
    }
    let x_208 : f32 = x_200;
    hlslcc_movcTemp.y = x_208;
    let x_211 : bool = u_xlatb1.z;
    if (x_211) {
      let x_216 : f32 = u_xlat2.z;
      x_212 = x_216;
    } else {
      let x_219 : f32 = u_xlat0.z;
      x_212 = x_219;
    }
    let x_220 : f32 = x_212;
    hlslcc_movcTemp.z = x_220;
    let x_222 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_222;
    let x_223 : vec4<f32> = u_xlat0;
    let x_227 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + vec3<f32>(-0.413588405f, -0.413588405f, -0.413588405f));
    let x_228 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_230 : vec4<f32> = u_xlat0;
    let x_234 : vec4<f32> = x_27.x_HueSatCon;
    let x_239 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_234.z, x_234.z, x_234.z)) + vec3<f32>(0.413588405f, 0.413588405f, 0.413588405f));
    let x_240 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat0;
    let x_246 : vec4<bool> = (vec4<f32>(x_242.x, x_242.y, x_242.z, x_242.x) < vec4<f32>(-0.301369876f, -0.301369876f, -0.301369876f, 0.0f));
    u_xlatb1 = vec3<bool>(x_246.x, x_246.y, x_246.z);
    let x_249 : bool = u_xlatb1.x;
    if (x_249) {
      let x_254 : f32 = u_xlat0.x;
      u_xlat12 = ((x_254 * 17.520000458f) + -9.720000267f);
      let x_259 : f32 = u_xlat12;
      u_xlat12 = exp2(x_259);
      let x_261 : f32 = u_xlat12;
      u_xlat12 = (x_261 + -1.52587891e-05f);
      let x_264 : f32 = u_xlat12;
      let x_265 : f32 = u_xlat12;
      u_xlat2.x = (x_264 + x_265);
    } else {
      let x_270 : f32 = u_xlat0.x;
      u_xlatb12 = (x_270 < 1.467996359f);
      let x_273 : bool = u_xlatb12;
      if (x_273) {
        let x_277 : f32 = u_xlat0.x;
        u_xlat0.x = ((x_277 * 17.520000458f) + -9.720000267f);
        let x_282 : f32 = u_xlat0.x;
        u_xlat2.x = exp2(x_282);
      } else {
        u_xlat2.x = 65504.0f;
      }
    }
    let x_288 : bool = u_xlatb1.y;
    if (x_288) {
      let x_292 : f32 = u_xlat0.y;
      u_xlat0.x = ((x_292 * 17.520000458f) + -9.720000267f);
      let x_297 : f32 = u_xlat0.x;
      u_xlat0.x = exp2(x_297);
      let x_301 : f32 = u_xlat0.x;
      u_xlat0.x = (x_301 + -1.52587891e-05f);
      let x_305 : f32 = u_xlat0.x;
      let x_307 : f32 = u_xlat0.x;
      u_xlat2.y = (x_305 + x_307);
    } else {
      let x_313 : f32 = u_xlat0.y;
      u_xlatb0 = (x_313 < 1.467996359f);
      let x_315 : bool = u_xlatb0;
      if (x_315) {
        let x_319 : f32 = u_xlat0.y;
        u_xlat0.x = ((x_319 * 17.520000458f) + -9.720000267f);
        let x_324 : f32 = u_xlat0.x;
        u_xlat2.y = exp2(x_324);
      } else {
        u_xlat2.y = 65504.0f;
      }
    }
    let x_330 : bool = u_xlatb1.z;
    if (x_330) {
      let x_334 : f32 = u_xlat0.z;
      u_xlat0.x = ((x_334 * 17.520000458f) + -9.720000267f);
      let x_339 : f32 = u_xlat0.x;
      u_xlat0.x = exp2(x_339);
      let x_343 : f32 = u_xlat0.x;
      u_xlat0.x = (x_343 + -1.52587891e-05f);
      let x_347 : f32 = u_xlat0.x;
      let x_349 : f32 = u_xlat0.x;
      u_xlat2.z = (x_347 + x_349);
    } else {
      let x_354 : f32 = u_xlat0.z;
      u_xlatb0 = (x_354 < 1.467996359f);
      let x_356 : bool = u_xlatb0;
      if (x_356) {
        let x_360 : f32 = u_xlat0.z;
        u_xlat0.x = ((x_360 * 17.520000458f) + -9.720000267f);
        let x_365 : f32 = u_xlat0.x;
        u_xlat2.z = exp2(x_365);
      } else {
        u_xlat2.z = 65504.0f;
      }
    }
    let x_374 : vec4<f32> = u_xlat2;
    u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_374.x, x_374.y, x_374.z));
    let x_382 : vec4<f32> = u_xlat2;
    u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_382.x, x_382.y, x_382.z));
    let x_390 : vec4<f32> = u_xlat2;
    u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_390.x, x_390.y, x_390.z));
    let x_398 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_406 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_406.x, x_406.y, x_406.z));
    let x_414 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_414.x, x_414.y, x_414.z));
    let x_418 : vec4<f32> = u_xlat1;
    let x_422 : vec4<f32> = x_27.x_ColorBalance;
    let x_424 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_422.x, x_422.y, x_422.z));
    let x_425 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
    let x_431 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_431.x, x_431.y, x_431.z));
    let x_439 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_439.x, x_439.y, x_439.z));
    let x_447 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_447.x, x_447.y, x_447.z));
    let x_451 : vec4<f32> = u_xlat1;
    let x_455 : vec4<f32> = x_27.x_ColorFilter;
    let x_457 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_455.x, x_455.y, x_455.z));
    let x_458 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat0;
    let x_464 : vec4<f32> = x_27.x_ChannelMixerRed;
    u_xlat1.x = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(x_464.x, x_464.y, x_464.z));
    let x_468 : vec4<f32> = u_xlat0;
    let x_472 : vec4<f32> = x_27.x_ChannelMixerGreen;
    u_xlat1.y = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_476 : vec4<f32> = u_xlat0;
    let x_480 : vec4<f32> = x_27.x_ChannelMixerBlue;
    u_xlat1.z = dot(vec3<f32>(x_476.x, x_476.y, x_476.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
    let x_484 : vec4<f32> = u_xlat1;
    let x_488 : vec4<f32> = x_27.x_Gain;
    let x_493 : vec4<f32> = x_27.x_Lift;
    let x_495 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_488.x, x_488.y, x_488.z)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
    let x_496 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
    let x_498 : vec4<f32> = u_xlat0;
    let x_503 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
    let x_504 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_506 : vec4<f32> = u_xlat1;
    let x_511 : vec3<f32> = clamp(vec3<f32>(x_506.x, x_506.y, x_506.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_512 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
    let x_514 : vec4<f32> = u_xlat1;
    let x_521 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_522 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : vec4<f32> = u_xlat0;
    let x_527 : vec3<f32> = log2(abs(vec3<f32>(x_524.x, x_524.y, x_524.z)));
    let x_528 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
    let x_530 : vec4<f32> = u_xlat0;
    let x_534 : vec4<f32> = x_27.x_InvGamma;
    let x_536 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(x_534.x, x_534.y, x_534.z));
    let x_537 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat0;
    let x_541 : vec3<f32> = exp2(vec3<f32>(x_539.x, x_539.y, x_539.z));
    let x_542 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat0;
    let x_546 : vec4<f32> = u_xlat1;
    let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_551 : vec4<f32> = u_xlat0;
    let x_553 : vec3<f32> = max(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_554 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_557 : f32 = u_xlat0.y;
    let x_559 : f32 = u_xlat0.z;
    u_xlatb12 = (x_557 >= x_559);
    let x_561 : bool = u_xlatb12;
    u_xlat12 = select(0.0f, 1.0f, x_561);
    let x_564 : vec4<f32> = u_xlat0;
    let x_565 : vec2<f32> = vec2<f32>(x_564.z, x_564.y);
    let x_566 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
    u_xlat1.z = -1.0f;
    u_xlat1.w = 0.666666687f;
    let x_572 : vec4<f32> = u_xlat0;
    let x_574 : vec4<f32> = u_xlat1;
    let x_577 : vec2<f32> = (vec2<f32>(x_572.y, x_572.z) + -(vec2<f32>(x_574.x, x_574.y)));
    let x_578 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
    u_xlat2.z = 1.0f;
    u_xlat2.w = -1.0f;
    let x_582 : f32 = u_xlat12;
    let x_584 : vec4<f32> = u_xlat2;
    let x_586 : vec4<f32> = u_xlat1;
    u_xlat1 = ((vec4<f32>(x_582, x_582, x_582, x_582) * x_584) + x_586);
    let x_589 : f32 = u_xlat0.x;
    let x_591 : f32 = u_xlat1.x;
    u_xlatb12 = (x_589 >= x_591);
    let x_593 : bool = u_xlatb12;
    u_xlat12 = select(0.0f, 1.0f, x_593);
    let x_595 : vec4<f32> = u_xlat1;
    let x_596 : vec3<f32> = vec3<f32>(x_595.x, x_595.y, x_595.w);
    let x_597 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_600 : f32 = u_xlat0.x;
    u_xlat2.w = x_600;
    let x_602 : vec4<f32> = u_xlat2;
    let x_603 : vec3<f32> = vec3<f32>(x_602.w, x_602.y, x_602.x);
    let x_604 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_603.z);
    let x_606 : vec4<f32> = u_xlat2;
    let x_608 : vec4<f32> = u_xlat1;
    u_xlat1 = (-(x_606) + x_608);
    let x_610 : f32 = u_xlat12;
    let x_612 : vec4<f32> = u_xlat1;
    let x_614 : vec4<f32> = u_xlat2;
    u_xlat1 = ((vec4<f32>(x_610, x_610, x_610, x_610) * x_612) + x_614);
    let x_617 : f32 = u_xlat1.y;
    let x_619 : f32 = u_xlat1.w;
    u_xlat12 = min(x_617, x_619);
    let x_621 : f32 = u_xlat12;
    let x_624 : f32 = u_xlat1.x;
    u_xlat12 = (-(x_621) + x_624);
    let x_629 : f32 = u_xlat1.y;
    let x_632 : f32 = u_xlat1.w;
    u_xlat5.x = (-(x_629) + x_632);
    let x_636 : f32 = u_xlat12;
    u_xlat13 = ((x_636 * 6.0f) + 0.0001f);
    let x_642 : f32 = u_xlat5.x;
    let x_643 : f32 = u_xlat13;
    u_xlat5.x = (x_642 / x_643);
    let x_647 : f32 = u_xlat5.x;
    let x_649 : f32 = u_xlat1.z;
    u_xlat5.x = (x_647 + x_649);
    let x_653 : f32 = u_xlat5.x;
    u_xlat2.x = abs(x_653);
    let x_657 : f32 = u_xlat1.x;
    u_xlat5.x = (x_657 + 0.0001f);
    let x_662 : f32 = u_xlat12;
    let x_664 : f32 = u_xlat5.x;
    u_xlat10.x = (x_662 / x_664);
    u_xlat2.y = 0.25f;
    u_xlat10.y = 0.25f;
    let x_680 : vec4<f32> = u_xlat2;
    let x_682 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_680.x, x_680.y), 0.0f);
    u_xlat12 = x_682.y;
    let x_684 : f32 = u_xlat12;
    u_xlat12 = x_684;
    let x_685 : f32 = u_xlat12;
    u_xlat12 = clamp(x_685, 0.0f, 1.0f);
    let x_687 : f32 = u_xlat12;
    let x_688 : f32 = u_xlat12;
    u_xlat12 = (x_687 + x_688);
    let x_693 : vec2<f32> = u_xlat10;
    let x_694 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_693, 0.0f);
    u_xlat5.x = x_694.z;
    let x_698 : f32 = u_xlat5.x;
    u_xlat5.x = x_698;
    let x_701 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_701, 0.0f, 1.0f);
    let x_704 : vec3<f32> = u_xlat5;
    let x_706 : f32 = u_xlat12;
    u_xlat12 = dot(vec2<f32>(x_704.x, x_704.x), vec2<f32>(x_706, x_706));
    let x_710 : vec4<f32> = u_xlat0;
    u_xlat3.x = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    u_xlat3.y = 0.25f;
    u_xlat11.y = 0.25f;
    let x_724 : vec2<f32> = u_xlat3;
    let x_725 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_724, 0.0f);
    u_xlat0.x = x_725.w;
    let x_729 : f32 = u_xlat0.x;
    u_xlat0.x = x_729;
    let x_732 : f32 = u_xlat0.x;
    u_xlat0.x = clamp(x_732, 0.0f, 1.0f);
    let x_735 : f32 = u_xlat12;
    let x_737 : f32 = u_xlat0.x;
    u_xlat0.x = (x_735 * x_737);
    let x_741 : f32 = u_xlat2.x;
    let x_744 : f32 = x_27.x_HueSatCon.x;
    u_xlat11.x = (x_741 + x_744);
    let x_751 : vec2<f32> = u_xlat11;
    let x_752 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_751, 0.0f);
    u_xlat4.x = x_752.x;
    let x_756 : f32 = u_xlat4.x;
    u_xlat4.x = x_756;
    let x_759 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_759, 0.0f, 1.0f);
    let x_763 : f32 = u_xlat4.x;
    u_xlat4.x = (x_763 + -0.5f);
    let x_768 : f32 = u_xlat4.x;
    let x_770 : f32 = u_xlat11.x;
    u_xlat4.x = (x_768 + x_770);
    let x_777 : f32 = u_xlat4.x;
    u_xlatb8.x = (x_777 < 0.0f);
    let x_781 : f32 = u_xlat4.x;
    u_xlatb12 = (1.0f < x_781);
    let x_783 : vec3<f32> = u_xlat4;
    let x_786 : vec2<f32> = (vec2<f32>(x_783.x, x_783.x) + vec2<f32>(1.0f, -1.0f));
    let x_787 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_786.x, x_786.y, x_787.z);
    let x_789 : bool = u_xlatb12;
    if (x_789) {
      let x_794 : f32 = u_xlat5.y;
      x_790 = x_794;
    } else {
      let x_797 : f32 = u_xlat4.x;
      x_790 = x_797;
    }
    let x_798 : f32 = x_790;
    u_xlat4.x = x_798;
    let x_801 : bool = u_xlatb8.x;
    if (x_801) {
      let x_806 : f32 = u_xlat5.x;
      x_802 = x_806;
    } else {
      let x_809 : f32 = u_xlat4.x;
      x_802 = x_809;
    }
    let x_810 : f32 = x_802;
    u_xlat4.x = x_810;
    let x_812 : vec3<f32> = u_xlat4;
    u_xlat4 = (vec3<f32>(x_812.x, x_812.x, x_812.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
    let x_817 : vec3<f32> = u_xlat4;
    u_xlat4 = fract(x_817);
    let x_819 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_819 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
    let x_825 : vec3<f32> = u_xlat4;
    u_xlat4 = (abs(x_825) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_828 : vec3<f32> = u_xlat4;
    u_xlat4 = clamp(x_828, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_832 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_832 + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_834 : vec2<f32> = u_xlat10;
    let x_836 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_834.x, x_834.x, x_834.x) * x_836) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_840 : vec3<f32> = u_xlat4;
    let x_841 : vec4<f32> = u_xlat1;
    u_xlat5 = (x_840 * vec3<f32>(x_841.x, x_841.x, x_841.x));
    let x_845 : vec4<f32> = x_27.x_HueSatCon;
    let x_847 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_845.y, x_845.y), vec2<f32>(x_847.x, x_847.x));
    let x_851 : vec3<f32> = u_xlat5;
    u_xlat5.x = dot(x_851, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    let x_854 : vec4<f32> = u_xlat1;
    let x_856 : vec3<f32> = u_xlat4;
    let x_858 : vec3<f32> = u_xlat5;
    u_xlat4 = ((vec3<f32>(x_854.x, x_854.x, x_854.x) * x_856) + -(vec3<f32>(x_858.x, x_858.x, x_858.x)));
    let x_862 : vec4<f32> = u_xlat0;
    let x_864 : vec3<f32> = u_xlat4;
    let x_866 : vec3<f32> = u_xlat5;
    let x_868 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.x, x_862.x) * x_864) + vec3<f32>(x_866.x, x_866.x, x_866.x));
    let x_869 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
    let x_875 : vec4<f32> = u_xlat0;
    u_xlat5.x = dot(vec3<f32>(0.695452213f, 0.140678704f, 0.163869068f), vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_883 : vec4<f32> = u_xlat0;
    u_xlat5.y = dot(vec3<f32>(0.044794563f, 0.859671116f, 0.095534317f), vec3<f32>(x_883.x, x_883.y, x_883.z));
    let x_891 : vec4<f32> = u_xlat0;
    u_xlat5.z = dot(vec3<f32>(-0.005525883f, 0.00402521f, 1.001500726f), vec3<f32>(x_891.x, x_891.y, x_891.z));
    let x_896 : f32 = u_xlat5.y;
    let x_898 : f32 = u_xlat5.x;
    u_xlat0.x = min(x_896, x_898);
    let x_902 : f32 = u_xlat5.z;
    let x_904 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_902, x_904);
    let x_908 : f32 = u_xlat5.y;
    let x_910 : f32 = u_xlat5.x;
    u_xlat4.x = max(x_908, x_910);
    let x_914 : f32 = u_xlat5.z;
    let x_916 : f32 = u_xlat4.x;
    u_xlat0.y = max(x_914, x_916);
    let x_919 : vec4<f32> = u_xlat0;
    let x_923 : vec3<f32> = max(vec3<f32>(x_919.x, x_919.y, x_919.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
    let x_924 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
    let x_927 : f32 = u_xlat0.x;
    let x_930 : f32 = u_xlat0.y;
    u_xlat0.x = (-(x_927) + x_930);
    let x_934 : f32 = u_xlat0.x;
    let x_936 : f32 = u_xlat0.z;
    u_xlat0.x = (x_934 / x_936);
    let x_939 : vec3<f32> = u_xlat5;
    let x_942 : vec3<f32> = u_xlat5;
    u_xlat4 = (-(vec3<f32>(x_939.y, x_939.x, x_939.z)) + vec3<f32>(x_942.z, x_942.y, x_942.x));
    let x_945 : vec3<f32> = u_xlat4;
    let x_947 : vec3<f32> = u_xlat5;
    let x_949 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(x_947.z, x_947.y));
    let x_950 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_949.x, x_949.y, x_950.z);
    let x_953 : f32 = u_xlat4.y;
    let x_955 : f32 = u_xlat4.x;
    u_xlat4.x = (x_953 + x_955);
    let x_959 : f32 = u_xlat5.x;
    let x_961 : f32 = u_xlat4.z;
    let x_964 : f32 = u_xlat4.x;
    u_xlat4.x = ((x_959 * x_961) + x_964);
    let x_968 : f32 = u_xlat4.x;
    u_xlat4.x = sqrt(x_968);
    let x_973 : f32 = u_xlat5.y;
    let x_975 : f32 = u_xlat5.z;
    u_xlat8 = (x_973 + x_975);
    let x_978 : f32 = u_xlat5.x;
    let x_979 : f32 = u_xlat8;
    u_xlat8 = (x_978 + x_979);
    let x_982 : f32 = u_xlat4.x;
    let x_985 : f32 = u_xlat8;
    u_xlat4.x = ((x_982 * 1.75f) + x_985);
    let x_989 : f32 = u_xlat0.x;
    u_xlat8 = (x_989 + -0.400000006f);
    let x_992 : f32 = u_xlat8;
    u_xlat12 = (x_992 * 2.5f);
    let x_995 : f32 = u_xlat12;
    u_xlat12 = (-(abs(x_995)) + 1.0f);
    let x_999 : f32 = u_xlat12;
    u_xlat12 = max(x_999, 0.0f);
    let x_1001 : f32 = u_xlat8;
    u_xlat8 = ((x_1001 * bitcast<f32>(2139095040i)) + 0.5f);
    let x_1006 : f32 = u_xlat8;
    u_xlat8 = clamp(x_1006, 0.0f, 1.0f);
    let x_1008 : f32 = u_xlat8;
    u_xlat8 = ((x_1008 * 2.0f) + -1.0f);
    let x_1011 : f32 = u_xlat12;
    let x_1013 : f32 = u_xlat12;
    u_xlat12 = ((-(x_1011) * x_1013) + 1.0f);
    let x_1016 : f32 = u_xlat8;
    let x_1017 : f32 = u_xlat12;
    u_xlat8 = ((x_1016 * x_1017) + 1.0f);
    let x_1020 : f32 = u_xlat8;
    u_xlat8 = (x_1020 * 0.025f);
    let x_1025 : f32 = u_xlat4.x;
    u_xlatb12 = (0.159999996f >= x_1025);
    let x_1027 : bool = u_xlatb12;
    if (!(x_1027)) {
      let x_1032 : f32 = u_xlat4.x;
      u_xlatb12 = (x_1032 >= 0.479999989f);
      let x_1035 : bool = u_xlatb12;
      if (x_1035) {
        u_xlat8 = 0.0f;
      } else {
        let x_1040 : f32 = u_xlat4.x;
        u_xlat4.x = (x_1040 * 0.333333343f);
        let x_1045 : f32 = u_xlat4.x;
        u_xlat4.x = (0.079999998f / x_1045);
        let x_1049 : f32 = u_xlat4.x;
        u_xlat4.x = (x_1049 + -0.5f);
        let x_1053 : f32 = u_xlat4.x;
        let x_1054 : f32 = u_xlat8;
        u_xlat8 = (x_1053 * x_1054);
      }
    }
    let x_1056 : f32 = u_xlat8;
    u_xlat4.x = (x_1056 + 1.0f);
    let x_1059 : vec3<f32> = u_xlat4;
    let x_1061 : vec3<f32> = u_xlat5;
    let x_1062 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.x, x_1059.x) * x_1061);
    let x_1063 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1063.x, x_1062.x, x_1062.y, x_1062.z);
    let x_1065 : vec4<f32> = u_xlat2;
    let x_1067 : vec4<f32> = u_xlat2;
    let x_1069 : vec4<bool> = (vec4<f32>(x_1065.z, x_1065.w, x_1065.z, x_1065.w) == vec4<f32>(x_1067.y, x_1067.z, x_1067.y, x_1067.z));
    u_xlatb8 = vec2<bool>(x_1069.x, x_1069.y);
    let x_1072 : bool = u_xlatb8.y;
    let x_1074 : bool = u_xlatb8.x;
    u_xlatb8.x = (x_1072 & x_1074);
    let x_1078 : bool = u_xlatb8.x;
    if (x_1078) {
      u_xlat8 = 0.0f;
    } else {
      let x_1083 : f32 = u_xlat5.y;
      let x_1085 : f32 = u_xlat4.x;
      let x_1088 : f32 = u_xlat2.w;
      u_xlat12 = ((x_1083 * x_1085) + -(x_1088));
      let x_1091 : f32 = u_xlat12;
      u_xlat12 = (x_1091 * 1.732050776f);
      let x_1095 : f32 = u_xlat2.y;
      let x_1098 : f32 = u_xlat2.z;
      u_xlat1.x = ((x_1095 * 2.0f) + -(x_1098));
      let x_1103 : f32 = u_xlat5.z;
      let x_1106 : f32 = u_xlat4.x;
      let x_1109 : f32 = u_xlat1.x;
      u_xlat1.x = ((-(x_1103) * x_1106) + x_1109);
      let x_1113 : f32 = u_xlat12;
      let x_1116 : f32 = u_xlat1.x;
      u_xlat9 = min(abs(x_1113), abs(x_1116));
      let x_1119 : f32 = u_xlat12;
      let x_1122 : f32 = u_xlat1.x;
      u_xlat13 = max(abs(x_1119), abs(x_1122));
      let x_1125 : f32 = u_xlat13;
      u_xlat13 = (1.0f / x_1125);
      let x_1127 : f32 = u_xlat13;
      let x_1128 : f32 = u_xlat9;
      u_xlat9 = (x_1127 * x_1128);
      let x_1130 : f32 = u_xlat9;
      let x_1131 : f32 = u_xlat9;
      u_xlat13 = (x_1130 * x_1131);
      let x_1133 : f32 = u_xlat13;
      u_xlat3.x = ((x_1133 * 0.0208351f) + -0.085133001f);
      let x_1139 : f32 = u_xlat13;
      let x_1141 : f32 = u_xlat3.x;
      u_xlat3.x = ((x_1139 * x_1141) + 0.180141002f);
      let x_1146 : f32 = u_xlat13;
      let x_1148 : f32 = u_xlat3.x;
      u_xlat3.x = ((x_1146 * x_1148) + -0.330299497f);
      let x_1153 : f32 = u_xlat13;
      let x_1155 : f32 = u_xlat3.x;
      u_xlat13 = ((x_1153 * x_1155) + 0.999866009f);
      let x_1159 : f32 = u_xlat13;
      let x_1160 : f32 = u_xlat9;
      u_xlat3.x = (x_1159 * x_1160);
      let x_1165 : f32 = u_xlat1.x;
      let x_1167 : f32 = u_xlat12;
      u_xlatb7 = (abs(x_1165) < abs(x_1167));
      let x_1171 : f32 = u_xlat3.x;
      u_xlat3.x = ((x_1171 * -2.0f) + 1.570796371f);
      let x_1177 : bool = u_xlatb7;
      if (x_1177) {
        let x_1182 : f32 = u_xlat3.x;
        x_1178 = x_1182;
      } else {
        x_1178 = 0.0f;
      }
      let x_1184 : f32 = x_1178;
      u_xlat3.x = x_1184;
      let x_1186 : f32 = u_xlat9;
      let x_1187 : f32 = u_xlat13;
      let x_1190 : f32 = u_xlat3.x;
      u_xlat9 = ((x_1186 * x_1187) + x_1190);
      let x_1194 : f32 = u_xlat1.x;
      let x_1196 : f32 = u_xlat1.x;
      u_xlatb13 = (x_1194 < -(x_1196));
      let x_1199 : bool = u_xlatb13;
      u_xlat13 = select(0.0f, -3.141592741f, x_1199);
      let x_1202 : f32 = u_xlat13;
      let x_1203 : f32 = u_xlat9;
      u_xlat9 = (x_1202 + x_1203);
      let x_1205 : f32 = u_xlat12;
      let x_1207 : f32 = u_xlat1.x;
      u_xlat13 = min(x_1205, x_1207);
      let x_1209 : f32 = u_xlat12;
      let x_1211 : f32 = u_xlat1.x;
      u_xlat12 = max(x_1209, x_1211);
      let x_1213 : f32 = u_xlat13;
      let x_1214 : f32 = u_xlat13;
      u_xlatb1.x = (x_1213 < -(x_1214));
      let x_1218 : f32 = u_xlat12;
      let x_1219 : f32 = u_xlat12;
      u_xlatb12 = (x_1218 >= -(x_1219));
      let x_1222 : bool = u_xlatb12;
      let x_1224 : bool = u_xlatb1.x;
      u_xlatb12 = (x_1222 & x_1224);
      let x_1226 : bool = u_xlatb12;
      if (x_1226) {
        let x_1230 : f32 = u_xlat9;
        x_1227 = -(x_1230);
      } else {
        let x_1233 : f32 = u_xlat9;
        x_1227 = x_1233;
      }
      let x_1234 : f32 = x_1227;
      u_xlat12 = x_1234;
      let x_1235 : f32 = u_xlat12;
      u_xlat8 = (x_1235 * 57.295780182f);
    }
    let x_1238 : f32 = u_xlat8;
    u_xlatb12 = (x_1238 < 0.0f);
    let x_1240 : bool = u_xlatb12;
    if (x_1240) {
      let x_1243 : f32 = u_xlat8;
      u_xlat8 = (x_1243 + 360.0f);
    }
    let x_1246 : f32 = u_xlat8;
    u_xlatb12 = (x_1246 < -180.0f);
    let x_1249 : bool = u_xlatb12;
    if (x_1249) {
      let x_1252 : f32 = u_xlat8;
      u_xlat8 = (x_1252 + 360.0f);
    } else {
      let x_1256 : f32 = u_xlat8;
      u_xlatb12 = (180.0f < x_1256);
      let x_1258 : bool = u_xlatb12;
      if (x_1258) {
        let x_1261 : f32 = u_xlat8;
        u_xlat8 = (x_1261 + -360.0f);
      }
    }
    let x_1264 : f32 = u_xlat8;
    u_xlat8 = (x_1264 * 0.014814815f);
    let x_1267 : f32 = u_xlat8;
    u_xlat8 = (-(abs(x_1267)) + 1.0f);
    let x_1271 : f32 = u_xlat8;
    u_xlat8 = max(x_1271, 0.0f);
    let x_1273 : f32 = u_xlat8;
    u_xlat12 = ((x_1273 * -2.0f) + 3.0f);
    let x_1277 : f32 = u_xlat8;
    let x_1278 : f32 = u_xlat8;
    u_xlat8 = (x_1277 * x_1278);
    let x_1280 : f32 = u_xlat8;
    let x_1281 : f32 = u_xlat12;
    u_xlat8 = (x_1280 * x_1281);
    let x_1283 : f32 = u_xlat8;
    let x_1284 : f32 = u_xlat8;
    u_xlat8 = (x_1283 * x_1284);
    let x_1287 : f32 = u_xlat0.x;
    let x_1288 : f32 = u_xlat8;
    u_xlat0.x = (x_1287 * x_1288);
    let x_1292 : f32 = u_xlat5.x;
    let x_1295 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_1292) * x_1295) + 0.029999999f);
    let x_1301 : f32 = u_xlat4.x;
    let x_1303 : f32 = u_xlat0.x;
    u_xlat0.x = (x_1301 * x_1303);
    let x_1307 : f32 = u_xlat0.x;
    let x_1311 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1307 * 0.180000007f) + x_1311);
    let x_1314 : vec4<f32> = u_xlat2;
    u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_1314.x, x_1314.z, x_1314.w));
    let x_1318 : vec4<f32> = u_xlat2;
    u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_1318.x, x_1318.z, x_1318.w));
    let x_1322 : vec4<f32> = u_xlat2;
    u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_1322.x, x_1322.z, x_1322.w));
    let x_1326 : vec4<f32> = u_xlat0;
    let x_1328 : vec3<f32> = max(vec3<f32>(x_1326.x, x_1326.y, x_1326.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_1329 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
    let x_1331 : vec4<f32> = u_xlat0;
    u_xlat12 = dot(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
    let x_1338 : f32 = u_xlat12;
    let x_1341 : vec4<f32> = u_xlat0;
    let x_1343 : vec3<f32> = (-(vec3<f32>(x_1338, x_1338, x_1338)) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
    let x_1346 : vec4<f32> = u_xlat0;
    let x_1351 : f32 = u_xlat12;
    let x_1353 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_1351, x_1351, x_1351));
    let x_1354 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
    let x_1356 : vec4<f32> = u_xlat0;
    let x_1363 : vec3<f32> = ((vec3<f32>(x_1356.x, x_1356.y, x_1356.z) * vec3<f32>(278.508514404f, 278.508514404f, 278.508514404f)) + vec3<f32>(10.777199745f, 10.777199745f, 10.777199745f));
    let x_1364 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
    let x_1366 : vec4<f32> = u_xlat0;
    let x_1368 : vec4<f32> = u_xlat1;
    let x_1370 : vec3<f32> = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
    let x_1373 : vec4<f32> = u_xlat0;
    let x_1380 : vec3<f32> = ((vec3<f32>(x_1373.x, x_1373.y, x_1373.z) * vec3<f32>(293.604492188f, 293.604492188f, 293.604492188f)) + vec3<f32>(88.71219635f, 88.71219635f, 88.71219635f));
    let x_1381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    let x_1383 : vec4<f32> = u_xlat0;
    let x_1385 : vec4<f32> = u_xlat2;
    let x_1390 : vec3<f32> = ((vec3<f32>(x_1383.x, x_1383.y, x_1383.z) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + vec3<f32>(80.688903809f, 80.688903809f, 80.688903809f));
    let x_1391 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
    let x_1393 : vec4<f32> = u_xlat1;
    let x_1395 : vec4<f32> = u_xlat0;
    let x_1397 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) / vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1404 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
    let x_1412 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1412.x, x_1412.y, x_1412.z));
    let x_1420 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
    let x_1424 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_1424.x, x_1424.y, x_1424.z), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1429 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_1429, 0.0001f);
    let x_1432 : vec4<f32> = u_xlat1;
    let x_1434 : vec4<f32> = u_xlat0;
    let x_1436 : vec2<f32> = (vec2<f32>(x_1432.x, x_1432.y) / vec2<f32>(x_1434.x, x_1434.x));
    let x_1437 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
    let x_1440 : f32 = u_xlat1.y;
    u_xlat12 = max(x_1440, 0.0f);
    let x_1442 : f32 = u_xlat12;
    u_xlat12 = min(x_1442, 65504.0f);
    let x_1444 : f32 = u_xlat12;
    u_xlat12 = log2(x_1444);
    let x_1446 : f32 = u_xlat12;
    u_xlat12 = (x_1446 * 0.981100023f);
    let x_1449 : f32 = u_xlat12;
    u_xlat1.y = exp2(x_1449);
    let x_1453 : f32 = u_xlat0.y;
    u_xlat12 = max(x_1453, 0.0001f);
    let x_1456 : f32 = u_xlat1.y;
    let x_1457 : f32 = u_xlat12;
    u_xlat12 = (x_1456 / x_1457);
    let x_1460 : f32 = u_xlat0.x;
    u_xlat13 = (-(x_1460) + 1.0f);
    let x_1464 : f32 = u_xlat0.y;
    let x_1466 : f32 = u_xlat13;
    u_xlat0.z = (-(x_1464) + x_1466);
    let x_1469 : f32 = u_xlat12;
    let x_1471 : vec4<f32> = u_xlat0;
    let x_1473 : vec2<f32> = (vec2<f32>(x_1469, x_1469) * vec2<f32>(x_1471.x, x_1471.z));
    let x_1474 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
    let x_1480 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
    let x_1488 : vec4<f32> = u_xlat1;
    u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
    let x_1496 : vec4<f32> = u_xlat1;
    u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
    let x_1500 : vec4<f32> = u_xlat0;
    u_xlat12 = dot(vec3<f32>(x_1500.x, x_1500.y, x_1500.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
    let x_1503 : f32 = u_xlat12;
    let x_1506 : vec4<f32> = u_xlat0;
    let x_1508 : vec3<f32> = (-(vec3<f32>(x_1503, x_1503, x_1503)) + vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : vec4<f32> = u_xlat0;
    let x_1516 : f32 = u_xlat12;
    let x_1518 : vec3<f32> = ((vec3<f32>(x_1511.x, x_1511.y, x_1511.z) * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1516, x_1516, x_1516));
    let x_1519 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
    let x_1521 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
    let x_1525 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
    let x_1529 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
    let x_1537 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
    let x_1545 : vec4<f32> = u_xlat1;
    u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1553 : vec4<f32> = u_xlat1;
    u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
    let x_1561 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
    let x_1569 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
    let x_1577 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
    let x_1581 : vec4<f32> = u_xlat1;
    let x_1583 : vec3<f32> = max(vec3<f32>(x_1581.x, x_1581.y, x_1581.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_1584 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
    u_xlat0.w = 1.0f;
    let x_1591 : vec3<u32> = gl_GlobalInvocationID;
    let x_1594 : vec4<f32> = u_xlat0;
    textureStore(x_Output_origX0X, bitcast<vec3<i32>>(x_1591), x_1594);
  }
  return;
}

@compute @workgroup_size(4i, 4i, 4i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

