diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat2 : f32;

@group(1) @binding(1) var<uniform> x_45 : UnityPerMaterial;

var<private> u_xlat4 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BumpMap : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_107 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_33);
  u_xlat0.x = x_35.w;
  let x_42 : f32 = u_xlat0.x;
  let x_48 : f32 = x_45.x_BaseColor.w;
  u_xlat2 = (x_42 * x_48);
  let x_51 : f32 = u_xlat0.x;
  let x_53 : f32 = x_45.x_BaseColor.w;
  let x_57 : f32 = x_45.x_Cutoff;
  u_xlat0.x = ((x_51 * x_53) + -(x_57));
  let x_62 : f32 = u_xlat2;
  u_xlat4 = dpdxCoarse(x_62);
  let x_65 : f32 = u_xlat2;
  u_xlat6 = dpdyCoarse(x_65);
  let x_67 : f32 = u_xlat6;
  let x_69 : f32 = u_xlat4;
  u_xlat4 = (abs(x_67) + abs(x_69));
  let x_72 : f32 = u_xlat4;
  u_xlat4 = max(x_72, 0.00009999999747378752f);
  let x_76 : f32 = u_xlat0.x;
  let x_77 : f32 = u_xlat4;
  u_xlat0.x = (x_76 / x_77);
  let x_81 : f32 = u_xlat0.x;
  u_xlat0.x = (x_81 + 0.5f);
  let x_86 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_86, 0.0f, 1.0f);
  let x_95 : f32 = x_26.x_AlphaToMaskAvailable;
  u_xlatb4 = !((x_95 == 0.0f));
  let x_98 : f32 = u_xlat2;
  let x_100 : f32 = x_45.x_Cutoff;
  u_xlatb6 = (x_98 >= x_100);
  let x_102 : bool = u_xlatb6;
  let x_103 : f32 = u_xlat2;
  u_xlat2 = select(0.0f, x_103, x_102);
  let x_105 : bool = u_xlatb4;
  if (x_105) {
    let x_111 : f32 = u_xlat0.x;
    x_107 = x_111;
  } else {
    let x_113 : f32 = u_xlat2;
    x_107 = x_113;
  }
  let x_114 : f32 = x_107;
  u_xlat0.x = x_114;
  let x_117 : f32 = u_xlat0.x;
  u_xlat0.x = (x_117 + -0.00009999999747378752f);
  let x_123 : f32 = u_xlat0.x;
  u_xlatb0 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb0;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_138 : vec2<f32> = vs_TEXCOORD1;
  let x_140 : f32 = x_26.x_GlobalMipBias.x;
  let x_141 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_138, x_140);
  u_xlat0 = vec3<f32>(x_141.x, x_141.y, x_141.w);
  let x_144 : f32 = u_xlat0.x;
  let x_147 : f32 = u_xlat0.z;
  u_xlat0.x = (x_144 * x_147);
  let x_150 : vec3<f32> = u_xlat0;
  let x_157 : vec2<f32> = ((vec2<f32>(x_150.x, x_150.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_158 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_157.x, x_157.y, x_158.z);
  let x_161 : vec3<f32> = u_xlat0;
  let x_165 : vec4<f32> = vs_TEXCOORD4;
  u_xlat1 = (vec3<f32>(x_161.y, x_161.y, x_161.y) * vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec3<f32> = u_xlat0;
  let x_171 : vec4<f32> = vs_TEXCOORD3;
  let x_174 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_168.x, x_168.x, x_168.x) * vec3<f32>(x_171.x, x_171.y, x_171.z)) + x_174);
  let x_176 : vec3<f32> = u_xlat0;
  let x_178 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_176.x, x_176.y), vec2<f32>(x_178.x, x_178.y));
  let x_183 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_183, 1.0f);
  let x_187 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_187) + 1.0f);
  let x_192 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_192);
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_196, 0.0000000000000001f);
  let x_200 : vec3<f32> = u_xlat0;
  let x_203 : vec4<f32> = vs_TEXCOORD2;
  let x_206 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + x_206);
  let x_208 : vec3<f32> = u_xlat0;
  let x_209 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_208, x_209);
  let x_211 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_211);
  let x_215 : f32 = u_xlat6;
  let x_217 : vec3<f32> = u_xlat0;
  let x_218 : vec3<f32> = (vec3<f32>(x_215, x_215, x_215) * x_217);
  let x_219 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


